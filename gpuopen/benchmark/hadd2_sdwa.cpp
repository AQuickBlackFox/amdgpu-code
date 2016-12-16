#include <iostream>
#include <stdio.h>
#include <time.h>
#include <time.h>
#include <sys/time.h>
#include <hip/hip_runtime.h>
#include <hip/hip_runtime_api.h>

typedef unsigned __half2;

#define CU_COUNT 64

#define USECPSEC 1000000ULL
#define ITER 1024*1024*128
#define WI 64
#define WG 40*CU_COUNT

extern "C" int __rocm_hadd_nosdwa(int,int);
extern "C" int __rocm_hadd_w1_w1_w1_preserve(int,int,int);

unsigned long long dtime_usec(unsigned long long start){
  timeval tv;
  gettimeofday(&tv, 0);
  return ((tv.tv_sec*USECPSEC)+tv.tv_usec)-start;
}

__global__ void DoHAddPK(hipLaunchParm lp, __half2 *a, __half2 *b, __half2 *c)
{
  int tx = hipThreadIdx_x;
  int a0 = a[tx];
  int b0 = b[tx];
  for(int i=0;i<ITER;i++) {
    b0 = __rocm_hadd_nosdwa(a0, b0);
    b0 = __rocm_hadd_w1_w1_w1_preserve(b0, a0, b0);
  }
  c[tx] = b0;
}

#define val  0x35553555

int main() {
  __half2 *ah, *bh, *ch;
  __half2 *ad, *bd, *cd;
  ah = new __half2[WI];
  bh = new __half2[WI];
  ch = new __half2[WI];
  for(unsigned i=0;i<WI;i++) {
    ah[i] = val;
    bh[i] = 0;
    ch[i] = 0;
  }

  hipMalloc((void**)&ad, WI*4);
  hipMalloc((void**)&bd, WI*4);
  hipMalloc((void**)&cd, WI*4);

  hipMemcpy(ad, ah, WI*4, hipMemcpyHostToDevice);
  hipMemcpy(bd, bh, WI*4, hipMemcpyHostToDevice);
  hipMemcpy(cd, ch, WI*4, hipMemcpyHostToDevice);

  unsigned long long dt = dtime_usec(0);
  hipLaunchKernel(DoHAddPK, dim3(WG,1,1), dim3(WI,1,1), 0,0, ad, bd, cd);
  hipDeviceSynchronize();
  dt = dtime_usec(dt);
  unsigned long long ops = ITER;
  ops *= WI;
  ops *= WG;

  float et = dt/(float)USECPSEC;
  unsigned long long Mops = ops/1000000;
  std::cout<<et<<"s for "<<Mops<<" Half Adds"<<std::endl;
  float tp = (Mops * 2) / (et*1000000);
  std::cout<<"Throughput: "<<tp<<" Tops/s"<<std::endl;
}

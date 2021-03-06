#include<iostream>
#include<hip/hip_runtime_api.h>
#include<hip/hip_runtime.h>
#include<time.h>
#include<sys/time.h>
#include"rocm_cu.h"

typedef __fp16 __half;

#define USECPSEC 1000000ULL
#define ITER 1024*1024*128
#define WI 64
#define WG 40*CU_COUNT
#define SIZE WI<<1

unsigned long long dtime_usec(unsigned long long start){
  timeval tv;
  gettimeofday(&tv, 0);
  return ((tv.tv_sec*USECPSEC)+tv.tv_usec)-start;
}

__global__ void DoHMul(hipLaunchParm lp, __half *a, __half *b, __half *c) {
  int tx = hipThreadIdx_x;
  __half a0 = a[tx];
  __half b0 = b[tx];
  __half c0 = c[tx];
  for(unsigned i=0;i<ITER;i++) {
    b0 = a0 * b0 + c0;
  }
  b[tx] = b0;
}

int main() {
  __half *ah, *bh, *ch;
  __half *ad, *bd, *cd;
  ah = new __half[WI];
  bh = new __half[WI];
  ch = new __half[WI];
  for(unsigned i=0;i<WI;i++) {
    ah[i] = 0x3555;
    bh[i] = 0;
    ch[i] = 0x3555;
  }
  hipMalloc(&ad, SIZE);
  hipMalloc(&bd, SIZE);
  hipMalloc(&cd, SIZE);
  hipMemcpy(ad, ah, SIZE, hipMemcpyHostToDevice);
  hipMemcpy(bd, bh, SIZE, hipMemcpyHostToDevice);
  hipMemcpy(cd, ch, SIZE, hipMemcpyHostToDevice);
  unsigned long long dt = dtime_usec(0);
  hipLaunchKernel(DoHMul, dim3(WG,1,1), dim3(WI,1,1), 0, 0, ad, bd, cd);
  hipDeviceSynchronize();
  dt = dtime_usec(dt);
  unsigned long long ops = ITER;
  ops *= WG;
  ops *= WI;
  float et = dt/(float)USECPSEC;
  unsigned long long Mops = ops/1000000;
  std::cout<<et<<"s for "<<Mops<<" Half FMAs"<<std::endl;
  float tp = (Mops)/(et*1000000);
  std::cout<<"Throughput: "<<2 * tp<<" Tops/s"<<std::endl;
}

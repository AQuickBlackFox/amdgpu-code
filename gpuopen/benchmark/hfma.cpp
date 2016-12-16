#include <iostream>
#include <stdio.h>
#include <time.h>
#include <time.h>
#include <sys/time.h>
#include <hip/hip_runtime.h>
#include <hip/hip_runtime_api.h>

typedef __fp16 __half;

//extern __attribute__((const))  __half __rocm_hfma(__half, __half, __half) __asm("llvm.fma.f16");
extern __attribute__((const)) float __rocm_fmaf(float, float, float) __asm("llvm.fma.f32");
//extern "C" __half __rocm_hfma(__half, __half, __half);

#define CU_COUNT 64

#define USECPSEC 1000000ULL
#define ITER 1024*1024*128
#define WI 64
#define WG 40*CU_COUNT

unsigned long long dtime_usec(unsigned long long start){
  timeval tv;
  gettimeofday(&tv, 0);
  return ((tv.tv_sec*USECPSEC)+tv.tv_usec)-start;
}

__global__ void DoHAddPK(hipLaunchParm lp, __half *a, __half *b, __half *c)
{
  int tx = hipThreadIdx_x;
  float a0, b0, c0;
  a0 = (float)a[tx];
  b0 = (float)b[tx];
  c0 = (float)c[tx];
  for(int i=0;i<ITER;i++) {
    c0 = __rocm_fmaf(a0, b0, c0);
  }
  c[tx] = (__half)c0;
}

#define val  0x3555

int main() {
  __half *ah, *bh, *ch;
  __half *ad, *bd, *cd;
  ah = new __half[WI];
  bh = new __half[WI];
  ch = new __half[WI];
  for(unsigned i=0;i<WI;i++) {
    ah[i] = val;
    bh[i] = 0;
    ch[i] = 0;
  }

  hipMalloc((void**)&ad, WI*2);
  hipMalloc((void**)&bd, WI*2);
  hipMalloc((void**)&cd, WI*2);
  hipMemcpy(ad, ah, WI*2, hipMemcpyHostToDevice);
  hipMemcpy(bd, bh, WI*2, hipMemcpyHostToDevice);
  hipMemcpy(cd, ch, WI*2, hipMemcpyHostToDevice);

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
  float tp = (Mops * 3) / (et*1000000);
  std::cout<<"Throughput: "<<tp<<" Tops/s"<<std::endl;
}

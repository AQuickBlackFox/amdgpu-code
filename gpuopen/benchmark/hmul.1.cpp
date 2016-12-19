#include<iostream>
#include<hip/hip_runtime_api.h>
#include<hip/hip_runtime.h>
#include<time.h>
#include<sys/time.h>
#define USECPSEC 1000000ULL

typedef __fp16 __half;

#define WI 64
#define SIZE 64<<1
#define WG 40*64
#define ITER 1024*1024*128

unsigned long long dtime_usec(unsigned long long start){
  timeval tv;
  gettimeofday(&tv, 0);
  return ((tv.tv_sec*USECPSEC)+tv.tv_usec)-start;
}

__global__ void DoHMul(hipLaunchParm lp, __half *a, __half *b) {
  int tx = hipThreadIdx_x;
  __half a0 = a[tx];
  __half b0 = b[tx];
  for(unsigned i=0;i<ITER;i++) {
    b0 = a0 * b0;
  }
  b[tx] = b0;
}

int main() {
  __half *ah, *bh;
  __half *ad, *bd;
  ah = new __half[WI];
  bh = new __half[WI];
  for(unsigned i=0;i<WI;i++) {
    ah[i] = 0x3555;
    bh[i] = 0;
  }
  hipMalloc(&ad, SIZE);
  hipMalloc(&bd, SIZE);
  hipMemcpy(ad, ah, SIZE, hipMemcpyHostToDevice);
  hipMemcpy(bd, bh, SIZE, hipMemcpyHostToDevice);
  unsigned long long dt = dtime_usec(0);
  hipLaunchKernel(DoHMul, dim3(WG,1,1), dim3(WI,1,1), 0, 0, ad, bd);
  hipDeviceSynchronize();
  dt = dtime_usec(dt);
  unsigned long long ops = ITER;
  ops *= WG;
  ops *= WI;
  float et = dt/(float)USECPSEC;
  unsigned long long Mops = ops/1000000;
  std::cout<<et<<"s for "<<Mops<<" HAdd"<<std::endl;
  float tp = (Mops)/(et*1000000);
  std::cout<<"Throughput: "<<tp<<" Tops/s"<<std::endl;
}

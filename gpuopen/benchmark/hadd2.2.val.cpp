#include<iostream>
#include<hip/hip_runtime_api.h>
#include<hip/hip_runtime.h>
#include<time.h>
#include<sys/time.h>
#define USECPSEC 1000000ULL

typedef unsigned __half2;

#define point5 0x38003800
#define one 0x3C003C00

#define WI 64
#define SIZE WI<<2
#define WG 1
#define ITER 1

extern "C" __half2 __rocm_hadd_nosdwa(__half2, __half2);

unsigned long long dtime_usec(unsigned long long start){
  timeval tv;
  gettimeofday(&tv, 0);
  return ((tv.tv_sec*USECPSEC)+tv.tv_usec)-start;
}

__device__ __half2 __rocm_hadd_low(__half2 a, __half2 b) {
  return __rocm_hadd_nosdwa(a, b);
}

__device__ __half2 __rocm_hadd_high(__half2 a, __half2 b, __half2 c) {
  __half2 a0 = a >> 16;
  __half2 b0 = b >> 16;
  __half2 c0 = __rocm_hadd_nosdwa(a0, b0);
  c0 = c0 << 16;
  return (c | c0);
}

__global__ void DoHAdd2PK(hipLaunchParm lp, __half2 *a, __half2 *b) {
  int tx = hipThreadIdx_x;
  __half2 a0 = a[tx];
  __half2 b0 = b[tx];
  __half2 c0;
  for(unsigned i=0;i<ITER;i++) {
    c0 = __rocm_hadd_low(a0, b0);
    b0 = __rocm_hadd_high(a0, b0, c0);
  }
  b[tx] = b0;
}

int main() {
  __half2 *ah, *bh;
  __half2 *ad, *bd;
  ah = new __half2[WI];
  bh = new __half2[WI];
  for(unsigned i=0;i<WI;i++) {
    ah[i] = point5;
    bh[i] = point5;
  }
  hipMalloc(&ad, SIZE);
  hipMalloc(&bd, SIZE);
  hipMemcpy(ad, ah, SIZE, hipMemcpyHostToDevice);
  hipMemcpy(bd, bh, SIZE, hipMemcpyHostToDevice);
  unsigned long long dt = dtime_usec(0);
  hipLaunchKernel(DoHAdd2PK, dim3(WG,1,1), dim3(WI,1,1), 0, 0, ad, bd);
  hipDeviceSynchronize();
  dt = dtime_usec(dt);
  unsigned long long ops = ITER;
  ops *= WG;
  ops *= WI;
  float et = dt/(float)USECPSEC;
  unsigned long long Mops = ops/1000000;
  std::cout<<et<<"s for "<<Mops<<" HAdd2PK"<<std::endl;
  float tp = (Mops*2)/(et*1000000);
  std::cout<<"Throughput: "<<tp<<" Tops/s"<<std::endl;
  hipMemcpy(bh, bd, SIZE, hipMemcpyDeviceToHost);
  std::cout<<std::hex<<bh[0]<<std::endl;
}

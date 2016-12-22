#include<iostream>
#include<hip/hip_runtime_api.h>
#include<hip/hip_runtime.h>
#include<time.h>
#include<sys/time.h>
#define USECPSEC 1000000ULL

typedef struct {
union {
unsigned x;
__fp16 y[2];
};
} __half2;

#define point5 0x38003800
#define one 0x3C003C00

#define WI 64
#define SIZE WI<<2
#define WG 40*64
#define ITER 1024*1024*128

extern "C" __half2 __rocm_hadd_nosdwa(__half2, __half2);

unsigned long long dtime_usec(unsigned long long start){
  timeval tv;
  gettimeofday(&tv, 0);
  return ((tv.tv_sec*USECPSEC)+tv.tv_usec)-start;
}

__device__ __half2 __rocm_hfma_low(__half2 a, __half2 b, __half2 c) {
  __half2 c0;
  c0.y[0] = a.y[0] * b.y[0] + c.y[0];
  return c0;
}

__device__ __half2 __rocm_hfma_high(__half2 a, __half2 b, __half2 c) {
  __half2 a0, b0, c0, d0;
  a0.x = a.x >> 16;
  b0.x = b.x >> 16;
  c0.x = c.x >> 16;
  d0.y[0] = a0.y[0] * b0.y[0] + c0.y[0];
  d0.x = d0.x << 16;
  return d0;
}

__global__ void DoHAdd2PK(hipLaunchParm lp, __half2 *a, __half2 *b, __half2 *c) {
  int tx = hipThreadIdx_x;
  __half2 a0 = a[tx];
  __half2 b0 = b[tx];
  __half2 c0 = c[tx];
  __half2 d0, e0;

  for(unsigned i=0;i<ITER;i++) {
    d0 = __rocm_hfma_low(a0, b0, c0);
    e0 = __rocm_hfma_high(a0, b0, c0);
    b0.x = e0.x | d0.x;
  }
  c[tx] = b0;
}

int main() {
  __half2 *ah, *bh, *ch;
  __half2 *ad, *bd, *cd;
  ah = new __half2[WI];
  bh = new __half2[WI];
  ch = new __half2[WI];
  for(unsigned i=0;i<WI;i++) {
    ah[i].x = point5;
    bh[i].x = point5;
    ch[i].x = point5;
  }
  hipMalloc(&ad, SIZE);
  hipMalloc(&bd, SIZE);
  hipMalloc(&cd, SIZE);
  hipMemcpy(ad, ah, SIZE, hipMemcpyHostToDevice);
  hipMemcpy(bd, bh, SIZE, hipMemcpyHostToDevice);
  hipMemcpy(cd, ch, SIZE, hipMemcpyHostToDevice);
  unsigned long long dt = dtime_usec(0);
  hipLaunchKernel(DoHAdd2PK, dim3(WG,1,1), dim3(WI,1,1), 0, 0, ad, bd, cd);
  hipDeviceSynchronize();
  dt = dtime_usec(dt);
  unsigned long long ops = ITER;
  ops *= WG;
  ops *= WI;
  float et = dt/(float)USECPSEC;
  unsigned long long Mops = ops/1000000;
  std::cout<<et<<"s for "<<Mops<<" HFMA2PK"<<std::endl;
  float tp = (Mops*4)/(et*1000000);
  std::cout<<"Throughput: "<<tp<<" Tops/s"<<std::endl;
  hipMemcpy(bh, bd, SIZE, hipMemcpyDeviceToHost);
  std::cout<<std::hex<<bh[0].x<<std::endl;
}

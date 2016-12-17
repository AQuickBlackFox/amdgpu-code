#include<iostream>
#include<hip/hip_runtime_api.h>
#include<hip/hip_runtime.h>

typedef __fp16 __half;

#define WI 64
#define SIZE 64<<1
#define WG 40*64
#define ITER 1024*1024*128

__global__ void DoHAdd(hipLaunchParm lp, __half *a, __half *b) {
  int tx = hipThreadIdx_x;
  __half a0 = a[tx];
  __half b0 = b[tx];
  for(unsigned i=0;i<ITER;i++) {
    b0 += a0;
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
  hipLaunchKernel(DoHAdd, dim3(WG,1,1), dim3(WI,1,1), 0, 0, ad, bd);
}

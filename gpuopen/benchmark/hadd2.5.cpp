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

#define WI 64
#define SIZE WI<<2
#define WG 40*64
#define ITER 1024*1024*128

unsigned long long dtime_usec(unsigned long long start){
  timeval tv;
  gettimeofday(&tv, 0);
  return ((tv.tv_sec*USECPSEC)+tv.tv_usec)-start;
}


__global__ void DoHAdd2PK(hipLaunchParm lp, __half2 *a, __half2 *b) {
  int tx = hipThreadIdx_x;
  __half2 a0 = a[tx];
  __half2 b0 = b[tx];
  for(unsigned i=0;i<ITER;i++) {
    b0.y[0] = b0.y[0] + a0.y[0];
    b0.y[1] = b0.y[1] + a0.y[1];
  }
  b[tx] = b0;
}

int main() {
  __half2 *ah, *bh;
  __half2 *ad, *bd;
  ah = new __half2[WI];
  bh = new __half2[WI];
  for(unsigned i=0;i<WI;i++) {
    ah[i].x = 0x35553555;
    bh[i].x = 0;
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
}

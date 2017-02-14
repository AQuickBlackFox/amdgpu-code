#include <iostream>
#include <stdio.h>
#include <time.h>
#include <time.h>
#include <sys/time.h>
#include <hip/hip_runtime.h>
#include <hip/hip_runtime_api.h>
#include "rocm_cu.h"

#define USECPSEC 1000000ULL
#define ITER 1024*1024*128
#define WI 64
#define WG 40*CU_COUNT
#define SIZE WI<<2

unsigned long long dtime_usec(unsigned long long start){
  timeval tv;
  gettimeofday(&tv, 0);
  return ((tv.tv_sec*USECPSEC)+tv.tv_usec)-start;
}

__global__ void DoFFma(hipLaunchParm lp, float *in1d, float *in2d, float* outd) {
    int tx = hipThreadIdx_x;
    float in1 = in1d[tx];
    float in2 = in2d[tx];
    float out = outd[tx];
    for (int i = 0; i < ITER; i++) {
      out = out * in1 + in2;
    }
    outd[tx] = out;
}


int main() {
    float *in1d, *in2d, *outd;
    hipMalloc((void**)&in1d, SIZE);
    hipMalloc((void**)&in2d, SIZE);
    hipMalloc((void**)&outd, SIZE);
    unsigned long long dt = dtime_usec(0);
    hipLaunchKernel(DoFFma,dim3(WG), dim3(WI),0,0, in1d, in2d, outd);
    hipDeviceSynchronize();
    dt = dtime_usec(dt);
    unsigned long long ops = ITER;
    ops *= WI;
    ops *= WG;
    float et = dt/(float)USECPSEC;
    unsigned long long Mops = ops/1000000;
    std::cout<<et<<"s for "<< Mops << " Float FMAs"<<std::endl;
    float tp = (Mops*2)/(et*1000000);
    std::cout << "Throughput: " << tp << " Tops/s" << std::endl;
}

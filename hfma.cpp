#include<iostream>
#include <stdio.h>

#define ITER 1024*1024
#define SSZ 256
#define BSZ 64
typedef unsigned int __half;

extern "C" int __rocm_hfma(__half, __half, __half);

#include <time.h>
#include <sys/time.h>
#include <hip/hip_runtime_api.h>
#include <hip/hip_runtime.h>
#define USECPSEC 1000000ULL

unsigned long long dtime_usec(unsigned long long start){

  timeval tv;
  gettimeofday(&tv, 0);
  return ((tv.tv_sec*USECPSEC)+tv.tv_usec)-start;
}

__global__ void DoHFMA(hipLaunchParm lp, int *in1d, int *in2d, int* in3d, int* outd) {
    int tx = hipThreadIdx_x;
    int in1 = in1d[tx];
    int in2 = in2d[tx];
    int in3 = in3d[tx];
    int out = 0;
    for (int i = 0; i < ITER; i++) {
      out += __rocm_hfma(in1, in2, in3);// 4 * in1 * in2 + in3;
    }
    outd[tx] = out;
}


int main() {
    int *in1d, *in2d, *in3d, *outd;
    hipMalloc((void**)&in1d, SSZ*4);
    hipMalloc((void**)&in2d, SSZ*4);
    hipMalloc((void**)&in3d, SSZ*4);
    hipMalloc((void**)&outd, SSZ*4);
//    hipLaunchKernel(DoDP4A, 1, SSZ, 0, 0, in1d, in2d, in3d, outd);  // warm up
    hipDeviceSynchronize();
    unsigned long long dt = dtime_usec(0);
    hipLaunchKernel(DoHFMA, BSZ, SSZ, 0, 0, in1d, in2d, in3d, outd);
    hipDeviceSynchronize();
    dt = dtime_usec(dt);
    unsigned long long ops = ITER;
    ops *= BSZ;
    ops *= SSZ;
    float et = dt/(float)USECPSEC;
    unsigned long long Mops = ops/1000000;
    std::cout<<et<<"s for "<< Mops << " Mdp4a"<<std::endl;
    float tp = (Mops*8)/(et*1000000);
    std::cout << "throughput: " << tp << " Tops/s" << std::endl;
}

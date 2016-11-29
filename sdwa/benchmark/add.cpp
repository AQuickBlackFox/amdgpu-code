#include<iostream>

#define ITER 1024*1024*1024
#define SSZ 256
#define BSZ 64*4

#include <hip/hip_runtime_api.h>
#include <hip/hip_runtime.h>

__device__ static inline  int new_rocm_dp4a(int a, int b){
  return a + b ;
}

__global__ void DoDP4A(hipLaunchParm lp, int *in1d, int *in2d, int *in3d, int* outd) {
    int tx = hipThreadIdx_x;
    int in1 = in1d[tx];
    int in2 = in2d[tx];
    int in3 = in3d[tx];
    int out = 0;
    for(int i=0;i<ITER;i++){
    out += new_rocm_dp4a(in1, in2);
  }
    outd[tx] = out;
}


int main() {
    int *in1d, *in2d, *in3d, *outd;
    hipMalloc((void**)&in1d, SSZ*4);
    hipMalloc((void**)&in2d, SSZ*4);
    hipMalloc((void**)&outd, SSZ*4);



    hipLaunchKernel(DoDP4A, BSZ, SSZ, 0, 0, in1d, in2d, outd);
    hipDeviceSynchronize();

}

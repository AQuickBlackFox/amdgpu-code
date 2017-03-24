#include<iostream>
#include<hip/hip_runtime.h>
#include<hip/hip_runtime_api.h>

#define LEN 16

__global__ void vAdd(hipLaunchParm lp, float *A, float *B, float *C){
  int tx = hipThreadIdx_x;
  C[tx] = A[tx] + B[tx];
}

int main(){}

#include<hip/hip_runtime.h>
#include<hip/hip_runtime_api.h>
#include<iostream>

#define X 64
#define Y 64
#define NUM X*Y
#define SIZE X*Y*sizeof(float)
#define WI 64
#define SUB_ITER 64
#define ITER 1024*1024

__global__ void Coalesced(hipLaunchParm lp, float *Ad, float *Bd){
  int tx = hipThreadIdx_x;
  float A = 0.0f;
  for(int j=0;j<ITER;j++){
    for(int i=0;i<SUB_ITER;i++){
      A = A + Ad[tx + i * WI];
    }
  }
  Bd[tx] = A;
}

int main(){
  float *A, *B, *Ad, *Bd;
  A = new float[NUM];
  B = new float[NUM];
  hipMalloc((void**)&Ad, SIZE);
  hipMalloc((void**)&Bd, SIZE);
  hipLaunchKernel(Coalesced, dim3(1,1,1),dim3(WI,1,1),0,0,Ad, Bd);
  hipDeviceSynchronize();
}

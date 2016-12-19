#include <iostream>
#include <stdio.h>
#include <time.h>
#include <time.h>
#include <sys/time.h>
#include <hip/hip_runtime.h>
#include <hip/hip_runtime_api.h>


#define CU_COUNT 64

#define USECPSEC 1000000ULL
#define ITER 1024*1024*128
#define SSZ 64
#define BSZ 40*CU_COUNT

unsigned long long dtime_usec(unsigned long long start){
  timeval tv;
  gettimeofday(&tv, 0);
  return ((tv.tv_sec*USECPSEC)+tv.tv_usec)-start;
}

__global__ void DoFAdd(hipLaunchParm lp, float *in1d, float* outd) {
    int tx = hipThreadIdx_x;
    float in1 = in1d[tx];
    float out = outd[tx];
    for (int i = 0; i < ITER; i++) {
      out = out + in1 ;
    }
    outd[tx] = out;
}


int main() {
    float *in1d, *outd;
    hipMalloc((void**)&in1d, SSZ*4);
    hipMalloc((void**)&outd, SSZ*4);
    unsigned long long dt = dtime_usec(0);
    hipLaunchKernel(DoFAdd,dim3(BSZ), dim3(SSZ),0,0,in1d, outd);
    hipDeviceSynchronize();
    dt = dtime_usec(dt);
    unsigned long long ops = ITER;
    ops *= BSZ;
    ops *= SSZ;
    float et = dt/(float)USECPSEC;
    unsigned long long Mops = ops/1000000;
    std::cout<<et<<"s for "<< Mops << " FAdds"<<std::endl;
    float tp = (Mops)/(et*1000000);
    std::cout << "Throughput: " << tp << " Tops/s" << std::endl;
}
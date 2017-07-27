#include<iostream>
#include <stdio.h>

#define ITER 1024*1024*64
#define SSZ 256
#define BSZ 64*10

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


__global__ void DoFMAC(float *in1d, float *in2d, float* outd) {
    int tx = hipThreadIdx_x;
    float in1 = in1d[tx];
    float in2 = in2d[tx];
    float out = 0;
    for (int i = 0; i < ITER; i++) {
      out += in1 * in2;
    }
    outd[tx] = out;
}


int main() {
    float *in1d, *in2d, *outd;
    int count;
    hipGetDeviceCount(&count);
    std::cout<<"Num GPUs: "<<count<<std::endl;
    hipDeviceProp_t prop;
    for(int i=0;i<count;i++) {
        hipGetDeviceProperties(&prop, i);
        std::cout<<prop.name<<std::endl;
        hipSetDevice(i);
        hipMalloc((void**)&in1d, SSZ*4);
        hipMalloc((void**)&in2d, SSZ*4);
        hipMalloc((void**)&outd, SSZ*4);
        hipDeviceSynchronize();
        unsigned long long dt = dtime_usec(0);
        hipLaunchKernelGGL(DoFMAC, BSZ, SSZ, 0, 0, in1d, in2d, outd);
        hipDeviceSynchronize();
        dt = dtime_usec(dt);
        unsigned long long ops = ITER;
        ops *= BSZ;
        ops *= SSZ;
        float et = dt/(float)USECPSEC;
        unsigned long long Mops = ops/1000000;
        std::cout<<et<<"s for "<< Mops << " FMAC"<<std::endl;
        float tp = (Mops*2)/(et*1000000);
        std::cout << "throughput: " << tp << " Tops/s" << std::endl;
    }
}

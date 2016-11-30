#include<iostream>
#include <stdio.h>
#include <bitset>
#define ITER 1024*1024*128
#define SSZ 256
#define BSZ 64*40
typedef unsigned int __half2;

extern "C" int __rocm_hadd2(__half2, __half2);
extern "C" int __rocm_hadd(__half2, __half2);

#include <time.h>
#include <sys/time.h>
#include <hip/hip_runtime_api.h>
#include <hip/hip_runtime.h>
#define USECPSEC 1000000ULL

#define VAL 0x35553555

unsigned long long dtime_usec(unsigned long long start){
  timeval tv;
  gettimeofday(&tv, 0);
  return ((tv.tv_sec*USECPSEC)+tv.tv_usec)-start;
}

__global__ void DoHADD2(hipLaunchParm lp, int *in1d, int *in2d, int* outd) {
    int tx = hipThreadIdx_x;
    int in1 = in1d[tx];
    int in2 = in2d[tx];

    int out = 0;
    for (int i = 0; i < ITER; i++) {
			int one = __rocm_hadd(in1, in2);
      int tmp1 = in1 >> 16;
			int tmp2 = in2 >> 16;
			int two = __rocm_hadd(tmp1, tmp2);
			out = ((two & 0x0000FFFF) << 16) | (one & 0x0000FFFF);
    }
    outd[tx] = out;
}

__global__ void FuncHADD2(hipLaunchParm lp, int *in1d, int *in2d, int *outd) {
	int tx = hipThreadIdx_x;
	int in1 = in1d[tx];
	int in2 = in2d[tx];
	int out = 0;
	int one = __rocm_hadd(in1, in2);
	int tmp1 = in1 >> 16;
	int tmp2 = in2 >> 16;
	int two = __rocm_hadd(tmp1, tmp2);
	out =  ((two & 0x0000FFFF) << 16) |  (one & 0x0000FFFF);
	outd[tx] = out;
}

int main() {
    int *in1d, *in2d, *outd;
		int *in1, *in2, *out;
		in1 = new int[SSZ];
		in2 = new int[SSZ];
		out = new int[SSZ];
		for(unsigned i=0;i<SSZ;i++) {
				in1[i] = VAL;
				in2[i] = VAL;
				out[i] = 0;
		}
    hipMalloc((void**)&in1d, SSZ*4);
    hipMalloc((void**)&in2d, SSZ*4);
		hipMalloc((void**)&outd, SSZ*4);
		hipMemcpy(in1d, in1, SSZ*4, hipMemcpyHostToDevice);
		hipMemcpy(in2d, in2, SSZ*4, hipMemcpyHostToDevice);
    hipLaunchKernel(FuncHADD2, 1, SSZ, 0, 0, in1d, in2d, outd);  // warm up
    hipDeviceSynchronize();
		hipMemcpy(out, outd, SSZ*4, hipMemcpyDeviceToHost);
		std::cout<<in1[10]<<" "<<out[10]<<" "<<out[11]<<std::endl;
		std::cout<<std::bitset<32>(in1[10])<<" "<<std::bitset<32>(out[10])<<std::endl;
    unsigned long long dt = dtime_usec(0);
    hipLaunchKernel(DoHADD2, BSZ, SSZ, 0, 0, in1d, in2d, outd);
    hipDeviceSynchronize();
    dt = dtime_usec(dt);
    unsigned long long ops = ITER;
    ops *= BSZ;
    ops *= SSZ;
    float et = dt/(float)USECPSEC;
    unsigned long long Mops = ops/1000000;
    std::cout<<et<<"s for "<< Mops << " Mdp4a"<<std::endl;
    float tp = (Mops*2)/(et*1000000);
    std::cout << "throughput: " << tp << " Tops/s" << std::endl;
}

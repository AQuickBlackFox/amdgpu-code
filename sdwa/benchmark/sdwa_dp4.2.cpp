/*
Copyright (c) 2016 Aditya Atluri. All rights reserved.
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

#include<hip/hip_runtime.h>
#include<hip/hip_runtime_api.h>
#include<iostream>
#include<time.h>
#include<sys/time.h>

extern "C" int __rocm_dp4a(int,int,int);

#define MASK1 0x000000FF
#define MASK2 0x0000FF00
#define SHIFT2 8
#define MASK3 0x00FF0000
#define SHIFT3 16
#define MASK4 0xFF000000
#define SHIFT4 24

__device__ inline int __new_rocm_dp4a(int a, int b, int c){
  int tmp1 = a & MASK1;
  int tmp2 = b & MASK1;
  int ret = tmp1 * tmp2 + c;
  tmp1 = (a & MASK2) >> SHIFT2;
  tmp2 = (b & MASK2) >> SHIFT2;
  ret = tmp1 * tmp2 + ret;
  tmp1 = (a & MASK3) >> SHIFT3;
  tmp2 = (b & MASK3) >> SHIFT3;
  ret = tmp1 * tmp2 + ret;
  tmp1 = (a & MASK4) >> SHIFT4;
  tmp2 = (b & MASK4) >> SHIFT4;
  return tmp1 * tmp2 + ret;
}

#define ITER 1024
#define SSZ 512
#define BSZ 512
#define USECPSEC 1000000ULL

#define VAL 0x01010101

unsigned long long dtime_usec(unsigned long long start) {
  timeval tv;
  gettimeofday(&tv, 0);
  return ((tv.tv_sec*USECPSEC) + tv.tv_usec) - start;
}

__global__ void DoDP4A(hipLaunchParm lp, int *out_d) {
  __shared__ int data1[SSZ];
  __shared__ int data2[SSZ];
  __shared__ int data3[SSZ];
  int out;
  int tx = hipThreadIdx_x ;
  for(unsigned int i=0;i<ITER;i++) {
    out += __new_rocm_dp4a(data1[tx], data2[tx], data3[tx]);
  }
  if(out == 0) { out_d[tx] = out;}
}

int main() {
//  hipLaunchKernel(DoDP4A, dim3(1,1,1), dim3(1,1,1),0,0);
  int *out;
  hipMalloc((void**)&out,SSZ*BSZ*4);
  hipLaunchKernel(DoDP4A, dim3(BSZ*ITER,1,1), dim3(SSZ,1,1),0,0,out);
  hipDeviceSynchronize();
  unsigned long long dt = dtime_usec(0);
  hipLaunchKernel(DoDP4A, dim3(BSZ*ITER,1,1), dim3(SSZ,1,1),0,0,out);
  hipDeviceSynchronize();
  dt = dtime_usec(dt);
unsigned long long ops = ITER;
ops *= ITER;
ops *= SSZ;
ops *= BSZ;
float et = dt/(float)USECPSEC;
unsigned long long Mops = ops/1000000;
std::cout<<et<<"s for "<< Mops << " Mdp4a"<<std::endl;
float tp = (Mops*8)/(et*1000000);
std::cout << "throughput: " << tp << " Tops/s" << std::endl;
}

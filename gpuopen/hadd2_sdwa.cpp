#include<iostream>
#include<hip/hip_runtime_api.h>
#include<hip/hip_runtime.h>

typedef unsigned __half2;

extern "C" int __rocm_hadd_nosdwa(__half2, __half2);
extern "C" int __rocm_hadd_w1_w1_w1_preserve(__half2, __half2, __half2);

__global__ void DoHAddPK(hipLaunchParm lp, __half2 *a, __half2 *b, __half2 *c)
{
  int tx = hipThreadIdx_x;
  int a0 = a[tx];
  int b0 = b[tx];
  b0 = __rocm_hadd_nosdwa(a0, b0);
  b0 = __rocm_hadd_w1_w1_w1_preserve(b0, a0, b0);
  c[tx] = b0;
}

#define val  0x35553555
#define WI 64
#define SIZE WI << 2

int main() {
  __half2 *ah, *bh, *ch;
  __half2 *ad, *bd, *cd;
  ah = new __half2[WI];
  bh = new __half2[WI];
  ch = new __half2[WI];
  for(unsigned i=0;i<WI;i++) {
    ah[i] = val;
    bh[i] = 0;
    ch[i] = 0;
  }

  hipMalloc((void**)&ad, SIZE);
  hipMalloc((void**)&bd, SIZE);
  hipMalloc((void**)&cd, SIZE);

  hipMemcpy(ad, ah, SIZE, hipMemcpyHostToDevice);
  hipMemcpy(bd, bh, SIZE, hipMemcpyHostToDevice);
  hipMemcpy(cd, ch, SIZE, hipMemcpyHostToDevice);

  hipLaunchKernel(DoHAddPK, dim3(1,1,1), dim3(WI,1,1), 0,0, ad, bd, cd);
  hipDeviceSynchronize();
  hipMemcpy(ch, cd, SIZE, hipMemcpyDeviceToHost);

  std::cout<<std::hex<<ch[0]<<std::endl;

}

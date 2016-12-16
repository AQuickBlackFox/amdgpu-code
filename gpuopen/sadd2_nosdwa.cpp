#include <iostream>
#include <hip/hip_runtime.h>
#include <hip/hip_runtime_api.h>

typedef unsigned __half2;

#define WI 64

extern "C" int __rocm_hadd_nosdwa(int,int);

__global__ void DoHAddPK(hipLaunchParm lp, __half2 *a, __half2 *b, __half2 *c)
{
  int tx = hipThreadIdx_x;
  __half2 a0 = a[tx];
  __half2 b0 = b[tx];
  __half2 a1, b1;
  a1 = a0 >> 16;
  b1 = b0 >> 16;
  b0 = __rocm_hadd_nosdwa(a0, b0);
  b1 = __rocm_hadd_nosdwa(a1, b1);
  b1 = b1 << 16;
  b0 = b0  | b1;
  c[tx] = b0;
}

#define val  0x35553555

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

  hipMalloc((void**)&ad, WI*4);
  hipMalloc((void**)&bd, WI*4);
  hipMalloc((void**)&cd, WI*4);

  hipMemcpy(ad, ah, WI*4, hipMemcpyHostToDevice);
  hipMemcpy(bd, bh, WI*4, hipMemcpyHostToDevice);
  hipMemcpy(cd, ch, WI*4, hipMemcpyHostToDevice);

  hipLaunchKernel(DoHAddPK, dim3(1,1,1), dim3(WI,1,1), 0,0, ad, bd, cd);
  hipDeviceSynchronize();
  hipMemcpy(ch, cd, WI*4, hipMemcpyDeviceToHost);
  std::cout<<std::hex<<ch[10]<<std::endl;
}

#include<iostream>
#include<hip/hip_runtime_api.h>
#include<hip/hip_runtime.h>

typedef int __short2;

extern "C" __short2 __rocm_sadd_nosdwa(__short2, __short2);
extern "C" int __rocm_sadd_w1_w1_w1_preserve(__short2, __short2, __short2);

__global__ void DoHAddPK(hipLaunchParm lp, __short2 *a, __short2 *b, __short2 *c)
{
  int tx = hipThreadIdx_x;
  __short2 a0 = a[tx];
  __short2 b0 = b[tx];
  __short2 c0 = __rocm_sadd_nosdwa(a0, b0);
  c0 = __rocm_sadd_w1_w1_w1_preserve(c0, a0, b0);
  c[tx] = c0;
}

#define val  0x80018001
#define WI 64
#define SIZE WI << 2

int main() {
  __short2 *ah, *bh, *ch;
  __short2 *ad, *bd, *cd;
  ah = new __short2[WI];
  bh = new __short2[WI];
  ch = new __short2[WI];
  for(unsigned i=0;i<WI;i++) {
    ah[i] = val;
    bh[i] = val;
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

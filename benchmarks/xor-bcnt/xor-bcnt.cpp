#include <iostream>
#include "perf_test.h"

#define fileName "xor-bcnt.co"
#define kernelName "xor_bcnt"

#define LEN 256
#define SIZE LEN << 2
#define WI 256
#define WG 36*40
#define ITER 2097152

int main(){
  int *A, *B;
  hipDeviceptr_t Ad, Bd;
  A = new int[LEN];
  B = new int[LEN];
  for(int i=0;i<LEN;i++){
    A[i] = 0xffffffff;
    B[i] = 0;
  }

  CHECK(hipInit(0));
  hipDevice_t device;
  hipCtx_t context;
  CHECK(hipDeviceGet(&device, 0));
  CHECK(hipCtxCreate(&context, 0, device));
  hipModule_t Module;
  hipFunction_t Function;

  hipMalloc((void**)&Ad, SIZE);
  hipMalloc((void**)&Bd, SIZE);

  hipMemcpyHtoD(Ad, A, SIZE);
  hipMemcpyHtoD(Bd, B, SIZE);

  CHECK(hipModuleLoad(&Module, fileName));
  CHECK(hipModuleGetFunction(&Function, Module, kernelName));

  struct{
    void *Ad;
    void *Bd;
  } args;
  args.Ad = Ad;
  args.Bd = Bd;

  size_t size = sizeof(args);

  void *config[] = {
    HIP_LAUNCH_PARAM_BUFFER_POINTER, &args,
    HIP_LAUNCH_PARAM_BUFFER_SIZE, &size,
    HIP_LAUNCH_PARAM_END
  };
  unsigned long long dt = dtime_usec(0);
  hipModuleLaunchKernel(Function, WG, 1, 1, WI, 1, 1, 0, 0, NULL, (void**)&config);
  hipDeviceSynchronize();
  dt = dtime_usec(dt);
  hipMemcpyDtoH(B, Bd, SIZE);

  unsigned long long ops = ITER;
  ops *= WI;
  ops *= WG;
  ops *= 1;
  float et = dt/(float)USECPSEC;
  unsigned long long Mops = ops/1000000;
  std::cout<<et<<"s for "<< Mops << " XOR+BCNT MOps"<<std::endl;
  float tp = (Mops)/(et*1000000);
  std::cout << "throughput: " << tp << " Tops/s" << std::endl;

}

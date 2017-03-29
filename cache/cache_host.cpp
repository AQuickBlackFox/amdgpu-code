#include<hip/hip_runtime.h>
#include<hip/hip_runtime_api.h>
#include<iostream>

#define X 64
#define Y 64
#define NUM X*Y*2
#define SIZE NUM*sizeof(float)
#define WI 64
#define SUB_ITER 64
#define ITER 1024*1024

#define fileName "cache.co"
#define kernelName "_ZN12_GLOBAL__N_143_Z9Coalesced16grid_launch_parmPfS0__functor19__cxxamp_trampolineEiiiiiiPKfPf"

int main() {
  float *Ah, *Bh;
  hipDeviceptr_t Ad, Bd;
  Ah = new float[NUM];
  Bh = new float[NUM];

  for(unsigned i=0;i<NUM;i++) {
    Ah[i] = 0;
    Bh[i] = 0;
  }

  hipInit(0);
  hipDevice_t device;
  hipCtx_t context;
  hipDeviceGet(&device, 0);
  hipCtxCreate(&context, 0, device);
  hipModule_t Module;
  hipFunction_t Function;

  hipMalloc((void**)&Ad, SIZE);
  hipMemcpyHtoD(Ad, Ah, SIZE);
  hipMalloc((void**)&Bd, SIZE);
  hipMemcpyHtoD(Bd, Bh, SIZE);

  hipModuleLoad(&Module, fileName);
  hipModuleGetFunction(&Function, Module, kernelName);

  struct {
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

  hipModuleLaunchKernel(Function, 1,1,1, WI,1,1, 0, 0, NULL, (void**)&config);

}

#include<hip/hip_runtime.h>
#include<hip/hip_runtime_api.h>
#include<iostream>

#define LEN 64
#define SIZE LEN<<2

#define fileName "sdwa_mul.co"
#define kernelName "sdwa_mul"

int main() {
  unsigned *Ah, *Bh, *Ch;
  hipDeviceptr_t Ad, Bd, Cd;
  Ah = new unsigned[LEN];
  Bh = new unsigned[LEN];
  Ch = new unsigned[LEN];

  for(unsigned i=0;i<LEN;i++) {
    Ah[i] = 2;
    Bh[i] = 3;
    Ch[i] = 0;
  }

  hipInit(0);
  hipDevice_t device;
  hipCtx_t context;
  hipDeviceGet(&device, 0);
  hipCtxCreate(&context, 0, device);
  hipModule_t Module;
  hipFunction_t Function;

  hipMalloc((void**)&Ad, SIZE);
  hipMalloc((void**)&Bd, SIZE);
  hipMalloc((void**)&Cd, SIZE);

  hipMemcpyHtoD(Ad, Ah, SIZE);
  hipMemcpyHtoD(Bd, Bh, SIZE);

  hipModuleLoad(&Module, fileName);
  hipModuleGetFunction(&Function, Module, kernelName);

  struct {
    void *Ad;
    void *Bd;
    void *Cd;
  } args;

  args.Ad = Ad;
  args.Bd = Bd;
  args.Cd = Cd;

  size_t size = sizeof(args);

  void *config[] = {
    HIP_LAUNCH_PARAM_BUFFER_POINTER, &args,
    HIP_LAUNCH_PARAM_BUFFER_SIZE, &size,
    HIP_LAUNCH_PARAM_END
  };

  hipModuleLaunchKernel(Function, 1,1,1, LEN,1,1, 0, 0, NULL, (void**)&config);

  hipMemcpyDtoH(Ch, Cd, SIZE);

  std::cout<<Ch[10]<<std::endl;
}

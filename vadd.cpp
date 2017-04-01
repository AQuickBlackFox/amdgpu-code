#include<iostream>
#include<hip/hip_runtime.h>
#include<hip/hip_runtime_api.h>
#include<iostream>

#define fileName "vadd.co"
#define kernelName "hello_world"

#define WI 256
#define WG 1
#define SIZE WI<<2


int main() {
  float *Ah, *Bh;
  hipDeviceptr_t Ad, Bd;
  Ah = new float[WI];
  Bh = new float[WI];

  for(unsigned i=0;i<WI;i++) {
    Ah[i] = 1.0f;
    Bh[i] = 1.0f;
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

  assert(hipSuccess == hipMemcpyHtoD(Ad, Ah, SIZE));
  assert(hipSuccess == hipMemcpyHtoD(Bd, Bh, SIZE));

  assert(hipSuccess == hipModuleLoad(&Module, fileName));
  assert(hipSuccess == hipModuleGetFunction(&Function, Module, kernelName));

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

  assert(hipSuccess == hipModuleLaunchKernel(Function, WG,1,1, WI,1,1, 0, 0, NULL, (void**)&config));
  hipDeviceSynchronize();
  hipMemcpyDtoH(Bh, Bd, SIZE);
//  std::cout<<Bh[10]<<std::endl;

}

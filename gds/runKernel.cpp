#include <hip/hip_runtime.h>
#include <iostream>
#include <hip/hip_runtime_api.h>

#define fileName "vadd.co"
#define kernelName "hello_world"

#define LEN 16
#define SIZE LEN*sizeof(float)

int main(){
  float *A, *B, *C;
  hipDeviceptr_t Ad, Bd, Cd;
  A = new float[LEN];
  B = new float[LEN];
  C = new float[LEN];
  for(int i=0;i<LEN;i++){
    A[i] = 1.0f;
    B[i] = 2.0f;
    C[i] = 0.0f;
  }
  hipInit(0);
  hipDevice_t device;
  hipCtx_t context;
  hipDeviceGet(&device,0);
  hipCtxCreate(&context, 0, device);
  hipMalloc(&Ad, SIZE);
  hipMalloc(&Bd, SIZE);
  hipMalloc(&Cd, SIZE);
  hipMemcpyHtoD(Ad, A, SIZE);
  hipMemcpyHtoD(Bd, B, SIZE);
  hipMemcpyHtoD(Cd, C, SIZE);
  hipModule_t module;
  hipFunction_t function;
  hipModuleLoad(&module, fileName);
  hipModuleGetFunction(&function, module, kernelName);
  struct{
    void *Ad;
    void *Bd;
    void *Cd;
  }args;

  args.Ad = Ad;
  args.Bd = Bd;
  args.Cd = Cd;

  size_t size = sizeof(args);

  void *config[] = {
    HIP_LAUNCH_PARAM_BUFFER_POINTER, &args,
    HIP_LAUNCH_PARAM_BUFFER_SIZE, &size,
    HIP_LAUNCH_PARAM_END
  };

  hipModuleLaunchKernel(function, 1, 1, 1, LEN, 1, 1, SIZE, 0, NULL, (void**)&config);
  hipMemcpyDtoH(C, Cd, SIZE);
  for(int i=0;i<LEN;i++){
    if(C[i] != A[i] + B[i]){
      std::cout<<"Output mismatch at: "<<i<<std::endl;
      return 0;
    }
  }

}

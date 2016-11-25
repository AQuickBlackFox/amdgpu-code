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

#define LEN 64
#define SIZE LEN<<2

#define fileName "mul.co"
#define kernelName "sdwa_mul"

int main() {
  signed *Ah, *Bh, *Ch;
  hipDeviceptr_t Ad, Bd, Cd;
  Ah = new signed[LEN];
  Bh = new signed[LEN];
  Ch = new signed[LEN];

  for(unsigned i=0;i<LEN;i++) {
    Ah[i] = -2;
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

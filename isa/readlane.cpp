#include <iostream>
#include <hip/hip_runtime.h>
#include <hip/hip_runtime_api.h>

typedef unsigned unsigned2 __attribute__((ext_vector_type(2)));

constexpr int len = 16;

union desc {
  float *ptr;
  unsigned2 a;
};

__global__ void Main(float *A, unsigned2 *Out) {
  int tx = hipThreadIdx_x;
  desc d, out;
  d.ptr = A;

  asm volatile("\n\t"
  // This moves data from first thread to sgpr
    "v_readfirstlane_b32 s8, %2\n\t"
    "v_readfirstlane_b32 s9, %3\n\t"
  // This moves data from sgpr to each thread
    "v_mov_b32 %0, s8\n\t"
    "v_mov_b32 %1, s9\n\t"
    :"=v"(out.a.x),"=v"(out.a.y)
    :"v"(d.a.x),"v"(d.a.y)
  );

  Out[tx] = out.a;
}

int main() {
  std::vector<unsigned2> ptrval(len);
  unsigned2 val;
  val.x = 0;
  val.y = 0;
  std::fill(ptrval.begin(), ptrval.end(), val);
  unsigned2 *dPtrVal;
  float *dA;
  hipMalloc(&dA, sizeof(float));
  hipMalloc(&dPtrVal, ptrval.size() * sizeof(unsigned2));
  hipMemcpy(dPtrVal, ptrval.data(), sizeof(unsigned2)*ptrval.size(), hipMemcpyHostToDevice);
  hipLaunchKernelGGL(Main, dim3(1,1,1), dim3(len,1,1), 0, 0, dA, dPtrVal);
  hipDeviceSynchronize();
  hipMemcpy(ptrval.data(), dPtrVal, sizeof(unsigned2)*ptrval.size(), hipMemcpyDeviceToHost);
  for(int i=0;i<len;i++) {
    desc v;
    v.a = ptrval[i];
    std::cout<<(float*)(v.ptr)<<std::endl;
  }
}

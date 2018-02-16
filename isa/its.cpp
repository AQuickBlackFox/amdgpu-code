#include <iostream>
#include <hip/hip_runtime.h>
#include <hip/hip_runtime_api.h>

constexpr int len = 16;
typedef unsigned T;
constexpr size_t size = len * sizeof(T);

/**
Independent Thread Scheduling on AMD GCN
Software Emulation
*/
__global__ void ITS(T *A, T *B, T *C, T *D) {
  int tx = hipThreadIdx_x;

#ifndef ASM
  auto a = A[tx];
  auto b = B[tx];
  auto c = C[tx];
  auto d = D[tx];
 
  if(tx < 9) {
    if(a > b) {
      c = 10;
//      __sync_cu();
      d = 11;
    } else {
      c = 2;
//      __sync_cu();
      d = 3;
    }
  }

  C[tx] = c + 1;
  D[tx] = d + 1;

#else

  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;

  asm volatile("\n\t"
    // a = A[tx]
    "flat_load_dword %0, %4\n\t"
    // b = B[tx]
    "flat_load_dword %1, %5\n\t"
    // c = C[tx]
    "flat_load_dword %2, %6\n\t"
    // d = D[tx]
    "flat_load_dword %3, %7\n\t"
    "s_waitcnt vmcnt(0) \n\t"
    // save current exec mask
    "s_mov_b64 s[14:15], exec \n\t"
    // if(tx < 9) {
    "v_cmp_lt_u32 s[8:9], %8, 9\n\t"
    "s_mov_b64 exec, s[8:9] \n\t"
    //   if(a > b) {
    "v_cmp_gt_u32 s[10:11], %0, %1 \n\t"
    "s_xor_b64 s[12:13], s[10:11], s[8:9]\n\t"
    "s_mov_b64 exec, s[10:11] \n\t"
    //     c = 10
    "v_mov_b32 %2, 10\n\t"
    // switch to else for __sync_cu
    "s_mov_b64 exec, s[12:13] \n\t" 
    //     c = 2
    "v_mov_b32 %2, 2\n\t"
    // switch to if for d = 11
    "s_mov_b64 exec, s[10:11]\n\t"
    //     d = 11
    "v_mov_b32 %3, 11\n\t"
    // switch to else for d = 3
    "s_mov_b64 exec, s[12:13]\n\t"
    //     d = 3
    "v_mov_b32 %3, 3\n\t"
    //   }
    "s_mov_b64 exec, s[8:9]\n\t"
    // }
    "s_mov_b64 exec, s[14:15]\n\t"
    "v_add_u32 %2, %2, 1\n\t"
    "v_add_u32 %3, %3, 3\n\t"
    "flat_store_dword %6, %2\n\t"
    "flat_store_dword %7, %3\n\t"
  :"=v"(a),"=v"(b), "=v"(c), "=v"(d)
  :"v"(A + tx), "v"(B + tx), "v"(C + tx), "v"(D + tx), "v"(tx)
  );
#endif

}

int main() {
  std::vector<T> A = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
  std::vector<T> B = {2, 1, 6, 7, 9, 2, 6, 6, 6, 9,  9,  9,  10, 13, 14, 15};
  std::vector<T> C(len), D(len);
  for(int i=0;i<len;i++) {
    C[i] = 0;
    D[i] = 0;
  }
  T *Ad, *Bd, *Cd, *Dd;
  hipMalloc(&Ad, size);
  hipMalloc(&Bd, size);
  hipMalloc(&Cd, size);
  hipMalloc(&Dd, size);
  hipMemcpy(Ad, A.data(), size, hipMemcpyHostToDevice);
  hipMemcpy(Bd, B.data(), size, hipMemcpyHostToDevice);
  hipMemcpy(Cd, C.data(), size, hipMemcpyHostToDevice);
  hipMemcpy(Dd, D.data(), size, hipMemcpyHostToDevice);
  hipLaunchKernelGGL(ITS, dim3(1,1,1), dim3(len,1,1), 0, 0, Ad, Bd, Cd, Dd);
  hipDeviceSynchronize();
  hipMemcpy(C.data(), Cd, size, hipMemcpyDeviceToHost);
  hipMemcpy(D.data(), Dd, size, hipMemcpyDeviceToHost);
  for(int i=0;i<len;i++) {
    std::cout<<"At index: "<<i<<" "<<C[i]<<" "<<D[i]<<std::endl;
  }
}

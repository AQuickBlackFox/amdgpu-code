#include <iostream>
#include <hip/hip_runtime_api.h>
#include <hip/hip_runtime.h>
#include <chrono>

typedef float float4_t __attribute__((ext_vector_type(4)));

constexpr int knum_iter = 65536;
constexpr int knum_elements = 63 * 4 + 1;
constexpr size_t ksize = sizeof(float) * knum_elements;

__global__ void Add01(float4_t* out, float4_t* in1, float4_t* in2, int num) {
    int tx = threadIdx.x;
    int num_vec = num / 4;

    if(tx < num_vec) {
        float4_t out_val = out[tx];
        float4_t in1_val = in1[tx];
        float4_t in2_val = in2[tx];
        #pragma unroll 64
        for(int i = 0; i < knum_iter; i++) out_val += in1_val * in2_val;
        out[tx] = out_val;
    }
    if(tx == num_vec) {
        auto out_s = reinterpret_cast<float*>(out) + num_vec * 4;
        auto in1_s = reinterpret_cast<float*>(in1) + num_vec * 4;
        auto in2_s = reinterpret_cast<float*>(in2) + num_vec * 4;
        int back = num - num_vec * 4;
        float out_val = out_s[0];
        float in1_val = in1_s[0];
        float in2_val = in2_s[0];
        for(int j = 0; j < knum_iter; j++) {
//        for(int i = 0; i < back; i++) {
//            out_s[i] += in1_s[i] * in2_s[i];
//        }
            out_val += in1_val * in2_val;
        }
        out_s[0] = out_val;
    }
}


// assuming you already know how many tail elements are there
__global__ void Add02(float4_t* out, float4_t* in1, float4_t* in2, int num) {
    int tx = threadIdx.x;
    int num_vec = num / 4;
    int back = num - num_vec * 4;

    float4_t* out_ = (tx == num_vec) ? reinterpret_cast<float4_t*>(reinterpret_cast<float*>(out + num_vec) - 3) : out + tx;
    float4_t* in1_ = (tx == num_vec) ? reinterpret_cast<float4_t*>(reinterpret_cast<float*>(in1 + num_vec) - 3) : in1 + tx;
    float4_t* in2_ = (tx == num_vec) ? reinterpret_cast<float4_t*>(reinterpret_cast<float*>(in2 + num_vec) - 3) : in2 + tx;

    float4_t out_val = *out_;;
    float4_t in1_val = *in1_;
    float4_t in2_val = *in2_;

    #pragma unroll 64
    for(int i = 0; i < knum_iter; i++) {
        out_val += in1_val * in2_val;
    }

    if(tx < num_vec) {
        out[tx] = out_val;
    }
    if(tx == num_vec) {
        reinterpret_cast<float*>(out + num_vec)[0] = out_val.w;
    }
}

int main() {
    float* in1 = new float[knum_elements];
    float* in2 = new float[knum_elements];
    float* out = new float[knum_elements];

    std::fill(in1, in1 + knum_elements, 2.0f);
    std::fill(in2, in2 + knum_elements, 1.0f);
    std::fill(out, out + knum_elements, -1.0f);

    float* in1d, *in2d, *outd;

    hipMalloc(&in1d, ksize);
    hipMalloc(&in2d, ksize);
    hipMalloc(&outd, ksize);

    hipMemcpy(in1d, in1, ksize, hipMemcpyHostToDevice);
    hipMemcpy(in2d, in2, ksize, hipMemcpyHostToDevice);
    hipMemcpy(outd, out, ksize, hipMemcpyHostToDevice);

    auto start = std::chrono::high_resolution_clock::now();

    hipLaunchKernelGGL(Add01, dim3(1,1,1), dim3(64,1,1), 0, 0, outd, in1d, in2d, knum_elements);

    hipDeviceSynchronize();

    auto stop = std::chrono::high_resolution_clock::now();

    double elapsed_sec = std::chrono::duration_cast<std::chrono::duration<double>>(stop - start).count();

    std::cout << "Elapsed Time for Add01: " << elapsed_sec << std::endl;

    hipMemcpy(out, outd, ksize, hipMemcpyDeviceToHost);

    for(int i = 0; i < knum_elements; i++) {
        std::cout << out[i] << " ";
    }
    std::cout << std::endl;
}

#include<iostream>
#include<hip/hip_runtime.h>
#include<hip/hip_runtime_api.h>
#include<hip/hip_fp16.h>

#define FH_TILE_X_16 16
#define FH_TILE_Y_16 16
#define FH_TILE_X_32 32
#define FH_TILE_Y_32 32

#define W_HEIGHT 64
#define W_WIDTH  64
#define X_HEIGHT W_WIDTH
#define X_WIDTH  64
#define Y_HEIGHT W_HEIGHT
#define Y_WIDTH X_WIDTH

#define W_SIZE W_HEIGHT * W_WIDTH * sizeof(half)
#define X_SIZE X_HEIGHT * X_WIDTH * sizeof(half)
#define Y_SIZE Y_HEIGHT * Y_WIDTH * sizeof(half)

template<typename T, int w_height, int w_width, int x_height, int x_width>
__global__ void Dotv1(T* Y, T* W, T* X)
{
    int tx = hipThreadIdx_x;
    int ty = hipThreadIdx_y;

    int bx = hipBlockIdx_x;
    int by = hipBlockIdx_y;

    int row = ty + by * 16;
    int col = tx + bx * 16;

    __half2 *_W = (__half2*)W;
    __half2 *_X = (__half2*)X;
    __half2 *_Y = (__half2*)Y;
    __shared__ __half2 sW[32][16];
    __shared__ __half2 sX[32][16];
    __half2 c0 = {0.0, 0.0};
    __half2 c1 = {0.0, 0.0};
    for (int j = 0; j < w_width / 32; j++) {
        sW[ty][tx] = _W[row*(32) + (j*16 + tx)];
        sX[ty][tx] = _X[col + (j*16+ty)*32];
        __syncthreads();

        for (int i = 0; i < FH_TILE_Y_16; i++) {
            __half2 a0 = sW[2*ty][i];
            __half2 a1 = sW[2*ty+1][i];
            __half2 b0 = sX[2*i][tx];
            __half2 b1 = sX[2*i+1][tx];
            c0.x = c0.x + a0.x * b0.x + a0.y * b1.x;
            c0.y = c0.y + a0.x * b0.y + a0.y * b1.y;
            c1.x = c1.x + a1.x * b0.x + a1.y * b1.x;
            c1.y = c1.y + a1.x * b0.y + a1.y * b1.y;
        }
        __syncthreads();

        _Y[row*16+col] = c0;
    }
}


int main()
{
    half *Wh, *Xh, *Yh;
    half *Wd, *Xd, *Yd;

    Wh = (half*)malloc(W_SIZE);
    Xh = (half*)malloc(X_SIZE);
    Yh = (half*)malloc(Y_SIZE);

    for(int i=0;i<W_HEIGHT*W_WIDTH;i++){
        Wh[i] = 0.5;
    }
    for(int i=0;i<X_HEIGHT*X_WIDTH;i++){
        Xh[i] = 1.0;
    }
    for(int i=0;i<Y_HEIGHT*Y_WIDTH;i++){
        Yh[i] = 2.0;
    }

    hipMalloc(&Wd, W_SIZE);
    hipMalloc(&Xd, X_SIZE);
    hipMalloc(&Yd, Y_SIZE);

    hipMemcpy(Wd, Wh, W_SIZE, hipMemcpyHostToDevice);
    hipMemcpy(Xd, Xh, X_SIZE, hipMemcpyHostToDevice);
    hipMemcpy(Yd, Yh, Y_SIZE, hipMemcpyHostToDevice);

    dim3 dimBlock(16, 16);
    dim3 dimGrid(X_WIDTH/dimBlock.x/2, W_HEIGHT/dimBlock.y/2);
    hipLaunchKernelGGL((Dotv1<half, W_HEIGHT, W_WIDTH, X_HEIGHT, X_WIDTH>), dimGrid, dimBlock, 0, 0, Yd, Wd, Xd);
    hipDeviceSynchronize();
    hipMemcpy(Yh, Yd, Y_SIZE, hipMemcpyDeviceToHost);

    for(int i=0;i<Y_WIDTH;i++){
        std::cout<<float(Yh[i])<<std::endl;
    }
}

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

    int row = ty + by * FH_TILE_Y_32;
    int col = tx + bx * FH_TILE_X_16;

    __half2 *_W = (__half2*)W;
    __half2 *_X = (__half2*)X;
    __half2 *_Y = (__half2*)Y;
    __shared__ __half2 sW[FH_TILE_Y_32][FH_TILE_X_16];
    __shared__ __half2 sX[FH_TILE_Y_32][FH_TILE_X_16];
    __half2 C = {0.0, 0.0};
    for (int j = 0; j < w_width / FH_TILE_X_16; j++) {
        sW[2*ty][tx] = _W[row*w_width/2 + (j*FH_TILE_X_16 + tx)];
        sW[2*ty+1][tx] = _W[row*w_width/2 + (j*FH_TILE_X_16 + tx)];
        sX[2*ty][tx] = _X[col + (j*FH_TILE_X_16+ty)*x_width];
        sX[2*ty+1][tx] = _X[col + (2*(j*FH_TILE_X_16+ty)+1)*x_width];
        __syncthreads();
        for (int i = 0; i < FH_TILE_Y_16; i++) {
            __half2 a = sW[ty][i];
            __half2 b0 = sX[2*i][tx];
            __half2 b1 = sX[2*i+1][tx];
            C.x = C.x + a.x * b0.x + a.y * b1.x;
            C.y = C.y + a.x * b0.y + a.y * b1.y;
        }
        __syncthreads();
        _Y[row*x_width/2+col] = C;
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
        Wh[i] = 1.0;
    }
    for(int i=0;i<X_HEIGHT*X_WIDTH;i++){
        Xh[i] = 1.0;
    }
    for(int i=0;i<Y_HEIGHT*Y_WIDTH;i++){
        Yh[i] = 1.0;
    }

    hipMalloc(&Wd, W_SIZE);
    hipMalloc(&Xd, X_SIZE);
    hipMalloc(&Yd, Y_SIZE);

    hipMemcpy(Wd, Wh, W_SIZE, hipMemcpyHostToDevice);
    hipMemcpy(Xd, Xh, X_SIZE, hipMemcpyHostToDevice);
    hipMemcpy(Yd, Yh, Y_SIZE, hipMemcpyHostToDevice);

    dim3 dimBlock(FH_TILE_X_16, FH_TILE_Y_32);
    dim3 dimGrid(X_WIDTH/dimBlock.x, W_HEIGHT/dimBlock.y);
    hipLaunchKernelGGL((Dotv1<half, W_HEIGHT, W_WIDTH, X_HEIGHT, X_WIDTH>), dimGrid, dimBlock, 0, 0, Yd, Wd, Xd);
    hipDeviceSynchronize();
    hipMemcpy(Yh, Yd, Y_SIZE, hipMemcpyDeviceToHost);

    for(int i=0;i<Y_WIDTH;i++){
        std::cout<<float(Yh[i])<<std::endl;
    }
}

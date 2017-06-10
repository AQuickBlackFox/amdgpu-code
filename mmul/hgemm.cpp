#include<iostream>
#include<hip/hip_runtime.h>
#include<hip/hip_runtime_api.h>
#include<hip/hip_fp16.h>

#define FH_WI_X 16
#define FH_WI_Y 16
#define FH_TILE_X 16
#define FH_TILE_Y 16

#define W_HEIGHT 8192
#define W_WIDTH  8192
#define X_HEIGHT W_WIDTH
#define X_WIDTH  8192
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

    int row = ty + by * FH_TILE_Y;
    int col = tx + bx * FH_TILE_X;

    __shared__ half sW[FH_TILE_Y][FH_TILE_X];
    __shared__ half sX[FH_TILE_Y][FH_TILE_X];
    half c = 0.0;
    for (int j = 0; j < w_width / FH_TILE_Y; j++) {
        sW[ty][tx] = W[row * w_width + (j*FH_WI_X+tx)];
        sX[ty][tx] = X[col + (j * FH_WI_Y + ty) * x_width];
        __syncthreads();

        for (int i = 0; i < FH_TILE_X; i++) {
            half a = sW[ty][i];
            half b = sX[i][tx];
            c = c + a * b;
        }
        __syncthreads();

        Y[row*FH_WI_X+col] = c;
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
        Wh[i] = 0.1;
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
    dim3 dimGrid(X_WIDTH/dimBlock.x, W_HEIGHT/dimBlock.y);
    hipLaunchKernelGGL((Dotv1<half, W_HEIGHT, W_WIDTH, X_HEIGHT, X_WIDTH>), dimGrid, dimBlock, 0, 0, Yd, Wd, Xd);
    hipDeviceSynchronize();
    hipMemcpy(Yh, Yd, Y_SIZE, hipMemcpyDeviceToHost);

    for(int i=0;i<16;i++){
        std::cout<<float(Yh[i])<<std::endl;
    }
}

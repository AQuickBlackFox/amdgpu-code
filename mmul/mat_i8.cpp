#include<iostream>
#include<hip/hip_runtime.h>
#include<hip/hip_runtime_api.h>
#include<hip/hip_fp16.h>

#define FH_WI_X 16
#define FH_WI_Y 16
#define FH_TILE_X 16
#define FH_TILE_Y 64

#define W_HEIGHT 128
#define W_WIDTH  128
#define X_HEIGHT W_WIDTH
#define X_WIDTH  128
#define Y_HEIGHT W_HEIGHT
#define Y_WIDTH X_WIDTH

#define W_SIZE W_HEIGHT * W_WIDTH * sizeof(uint8_t)
#define X_SIZE X_HEIGHT * X_WIDTH * sizeof(uint8_t)
#define Y_SIZE Y_HEIGHT * Y_WIDTH * sizeof(uint8_t)

typedef struct {
uint8_t x, y, z, w;
} uint8x4_t;

template<typename T, int w_height, int w_width, int x_height, int x_width>
__global__ void Dotv1(T* Y, T* W, T* X)
{
    int tx = hipThreadIdx_x;
    int ty = hipThreadIdx_y;

    int bx = hipBlockIdx_x;
    int by = hipBlockIdx_y;

    int ty0 = 2 * ty;
    int ty1 = 2 * ty + 1;

    int row0 = ty0 + by * FH_TILE_Y;
    int row1 = ty1 + by * FH_TILE_Y;
    int col = tx + bx * FH_TILE_X;

    uint8_t *_W = (uint8_t*)W;
    uint8_t *_X = (uint8_t*)X;
    uint8_t *_Y = (uint8_t*)Y;
    __shared__ uint8_t sW[FH_TILE_Y][FH_TILE_X];
    __shared__ uint8_t sX[FH_TILE_Y][FH_TILE_X];
    uint8x4_t c0 = {0, 0, 0, 0};
    uint8x4_t c1 = {0, 0, 0, 0};
    uint8x4_t c2 = {0, 0, 0, 0};
    uint8x4_t c3 = {0, 0, 0, 0};
    for (int j = 0; j < w_width / FH_TILE_Y; j++) {
        sW[ty0][tx] = _W[row0 * (w_width/2) + (j*FH_WI_X+tx)];
        sW[ty1][tx] = _W[row1 * (w_width/2) + (j*FH_WI_X+tx)];
        sX[ty0][tx] = _X[col + (j * FH_WI_Y + ty0) * (x_width/2)];
        sX[ty1][tx] = _X[col + (j * FH_WI_Y + ty1) * (x_width/2)];
        __syncthreads();

        for (int i = 0; i < 16; i++) {
            uint8_t a0 = sW[ty0][i];
            uint8_t a1 = sW[ty1][i];
            uint8_t b0 = sX[2*i][tx];
            uint8_t b1 = sX[2*i+1][tx];
            c0.x = c0.x + a0.x * b0.x + a0.y * b1.x;
            c0.y = c0.y + a0.x * b0.y + a0.y * b1.y;
            c1.x = c1.x + a1.x * b0.x + a1.y * b1.x;
            c1.y = c1.y + a1.x * b0.y + a1.y * b1.y;
        }
        __syncthreads();

        _Y[row0*FH_WI_Y+col] = c0;
        _Y[row1*FH_WI_Y+col] = c1;
    }
}


int main()
{
    uint8_t *Wh, *Xh, *Yh;
    uint8_t *Wd, *Xd, *Yd;

    Wh = (uint8_t*)malloc(W_SIZE);
    Xh = (uint8_t*)malloc(X_SIZE);
    Yh = (uint8_t*)malloc(Y_SIZE);

    for(int i=0;i<W_HEIGHT*W_WIDTH;i++){
        Wh[i] = 1;
    }
    for(int i=0;i<X_HEIGHT*X_WIDTH;i++){
        Xh[i] = 1;
    }
    for(int i=0;i<Y_HEIGHT*Y_WIDTH;i++){
        Yh[i] = 2;
    }

    hipMalloc(&Wd, W_SIZE);
    hipMalloc(&Xd, X_SIZE);
    hipMalloc(&Yd, Y_SIZE);

    hipMemcpy(Wd, Wh, W_SIZE, hipMemcpyHostToDevice);
    hipMemcpy(Xd, Xh, X_SIZE, hipMemcpyHostToDevice);
    hipMemcpy(Yd, Yh, Y_SIZE, hipMemcpyHostToDevice);

    dim3 dimBlock(16, 16);
    dim3 dimGrid(X_WIDTH/dimBlock.x/4, W_HEIGHT/dimBlock.y/4);
    hipLaunchKernelGGL((Dotv1<uint8_t, W_HEIGHT, W_WIDTH, X_HEIGHT, X_WIDTH>), dimGrid, dimBlock, 0, 0, Yd, Wd, Xd);
    hipDeviceSynchronize();
    hipMemcpy(Yh, Yd, Y_SIZE, hipMemcpyDeviceToHost);

    for(int i=0;i<16;i++){
        std::cout<<float(Yh[i])<<std::endl;
    }
}

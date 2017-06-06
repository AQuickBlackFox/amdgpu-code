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

#define W_SIZE W_HEIGHT * W_WIDTH * sizeof(char)
#define X_SIZE X_HEIGHT * X_WIDTH * sizeof(char)
#define Y_SIZE Y_HEIGHT * Y_WIDTH * sizeof(char)

typedef struct {
char x, y, z, w;
} int8x4_t;

template<typename T, int w_height, int w_width, int x_height, int x_width>
__global__ void Dotv1(T* Y, T* W, T* X)
{
    int tx = hipThreadIdx_x;
    int ty = hipThreadIdx_y;

    int bx = hipBlockIdx_x;
    int by = hipBlockIdx_y;

    int ty0 = 4 * ty;
    int ty1 = 4 * ty + 1;
    int ty2 = 4 * ty + 2;
    int ty3 = 4 * ty + 3;

    int row0 = ty0 + by * FH_TILE_Y;
    int row1 = ty1 + by * FH_TILE_Y;
    int row2 = ty2 + by * FH_TILE_Y;
    int row3 = ty3 + by * FH_TILE_Y;

    int col = tx + bx * FH_TILE_X;

    int8x4_t *_W = (int8x4_t*)W;
    int8x4_t *_X = (int8x4_t*)X;
    int8x4_t *_Y = (int8x4_t*)Y;

    __shared__ int8x4_t sW[FH_TILE_Y][FH_TILE_X];
    __shared__ int8x4_t sX[FH_TILE_Y][FH_TILE_X];

    int8x4_t c0 = {0, 0, 0, 0};
    int8x4_t c1 = {0, 0, 0, 0};
    int8x4_t c2 = {0, 0, 0, 0};
    int8x4_t c3 = {0, 0, 0, 0};
    for (int j = 0; j < w_width / FH_TILE_Y; j++) {
        sW[ty0][tx] = _W[row0 * (w_width/4) + (j*FH_WI_X+tx)];
        sW[ty1][tx] = _W[row1 * (w_width/4) + (j*FH_WI_X+tx)];
        sW[ty2][tx] = _W[row2 * (w_width/4) + (j*FH_WI_X+tx)];
        sW[ty3][tx] = _W[row3 * (w_width/4) + (j*FH_WI_X+tx)];

        sX[ty0][tx] = _X[col + (j * FH_WI_Y + ty0) * (x_width/4)];
        sX[ty1][tx] = _X[col + (j * FH_WI_Y + ty1) * (x_width/4)];
        sX[ty2][tx] = _X[col + (j * FH_WI_Y + ty2) * (x_width/4)];
        sX[ty3][tx] = _X[col + (j * FH_WI_Y + ty3) * (x_width/4)];

        __syncthreads();

        for (int i = 0; i < 16; i++) {
            int i0 = 4 * i;
            int i1 = 4 * i + 1;
            int i2 = 4 * i + 2;
            int i3 = 4 * i + 3;

            int8x4_t a0 = sW[ty0][i];
            int8x4_t a1 = sW[ty1][i];
            int8x4_t a2 = sW[ty2][i];
            int8x4_t a3 = sW[ty3][i];

            int8x4_t b0 = sX[i0][tx];
            int8x4_t b1 = sX[i1][tx];
            int8x4_t b2 = sX[i2][tx];
            int8x4_t b3 = sX[i3][tx];

            c0.x = c0.x + a0.x * b0.x + a0.y * b1.x + a0.z * b2.x + a0.w * b3.x;
            c0.y = c0.y + a0.x * b0.y + a0.y * b1.y + a0.z * b2.y + a0.w * b3.y;
            c0.z = c0.z + a0.x * b0.z + a0.y * b1.z + a0.z * b2.z + a0.w * b3.z;
            c0.w = c0.w + a0.x * b0.w + a0.y * b1.w + a0.z * b2.w + a0.w * b3.w;

            c1.x = c1.x + a1.x * b0.x + a1.y * b1.x + a1.z * b2.x + a1.w * b3.x;
            c1.y = c1.y + a1.x * b0.y + a1.y * b1.y + a1.z * b2.y + a1.w * b3.y;
            c1.z = c1.z + a1.x * b0.z + a1.y * b1.z + a1.z * b2.z + a1.w * b3.z;
            c1.w = c1.w + a1.x * b0.w + a1.y * b1.w + a1.z * b2.w + a1.w * b3.w;

            c2.x = c2.x + a2.x * b0.x + a2.y * b1.x + a2.z * b2.x + a2.w * b3.x;
            c2.y = c2.y + a2.x * b0.y + a2.y * b1.y + a2.z * b2.y + a2.w * b3.y;
            c2.z = c2.z + a2.x * b0.z + a2.y * b1.z + a2.z * b2.z + a2.w * b3.z;
            c2.w = c2.w + a2.x * b0.w + a2.y * b1.w + a2.z * b2.w + a2.w * b3.w;

            c3.x = c3.x + a3.x * b0.x + a3.y * b1.x + a3.z * b2.x + a3.w * b3.x;
            c3.y = c3.y + a3.x * b0.y + a3.y * b1.y + a3.z * b2.y + a3.w * b3.y;
            c3.z = c3.z + a3.x * b0.z + a3.y * b1.z + a3.z * b2.z + a3.w * b3.z;
            c3.w = c3.w + a3.x * b0.w + a3.y * b1.w + a3.z * b2.w + a3.w * b3.w;

        }
        __syncthreads();

        _Y[row0*FH_WI_Y+col] = c0;
        _Y[row1*FH_WI_Y+col] = c1;
        _Y[row2*FH_WI_Y+col] = c2;
        _Y[row3*FH_WI_Y+col] = c3;
    }
}


int main()
{
    char *Wh, *Xh, *Yh;
    char *Wd, *Xd, *Yd;

    Wh = (char*)malloc(W_SIZE);
    Xh = (char*)malloc(X_SIZE);
    Yh = (char*)malloc(Y_SIZE);

    for(int i=0;i<W_HEIGHT*W_WIDTH;i++){
        Wh[i] = 1;
    }
    for(int i=0;i<X_HEIGHT*X_WIDTH;i++){
        Xh[i] = 1;
    }
    for(int i=0;i<Y_HEIGHT*Y_WIDTH;i++){
        Yh[i] = 4;
    }

    hipMalloc(&Wd, W_SIZE);
    hipMalloc(&Xd, X_SIZE);
    hipMalloc(&Yd, Y_SIZE);

    hipMemcpy(Wd, Wh, W_SIZE, hipMemcpyHostToDevice);
    hipMemcpy(Xd, Xh, X_SIZE, hipMemcpyHostToDevice);
    hipMemcpy(Yd, Yh, Y_SIZE, hipMemcpyHostToDevice);

    dim3 dimBlock(16, 16);
    dim3 dimGrid(X_WIDTH/dimBlock.x/4, W_HEIGHT/dimBlock.y/4);
    hipLaunchKernelGGL((Dotv1<char, W_HEIGHT, W_WIDTH, X_HEIGHT, X_WIDTH>), dimGrid, dimBlock, 0, 0, Yd, Wd, Xd);
    hipDeviceSynchronize();
    hipMemcpy(Yh, Yd, Y_SIZE, hipMemcpyDeviceToHost);

    for(int i=0;i<16;i++){
        std::cout<<signed(Yh[i])<<std::endl;
    }
}

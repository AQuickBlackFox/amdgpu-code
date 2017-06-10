#include<iostream>
#include<hip/hip_runtime.h>
#include<hip/hip_runtime_api.h>
#include<hip/hip_fp16.h>
#include<sys/time.h>

#define FH_WI_X 16
#define FH_WI_Y 16
#define FH_TILE_X 16
#define FH_TILE_Y 32

#define W_HEIGHT WIDTH
#define W_WIDTH  WIDTH
#define X_HEIGHT W_WIDTH
#define X_WIDTH  WIDTH
#define Y_HEIGHT W_HEIGHT
#define Y_WIDTH X_WIDTH

#define W_SIZE W_HEIGHT * W_WIDTH * sizeof(short)
#define X_SIZE X_HEIGHT * X_WIDTH * sizeof(short)
#define Y_SIZE Y_HEIGHT * Y_WIDTH * sizeof(short)

#define USECPSEC 1000000ULL

unsigned long long dtime_usec(unsigned long long start){
  timeval tv;
  gettimeofday(&tv, 0);
  return ((tv.tv_sec*USECPSEC)+tv.tv_usec)-start;
}


template<typename T, size_t w_height, size_t w_width, size_t x_height, size_t x_width>
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

    short2 *_W = (short2*)W;
    short2 *_X = (short2*)X;
    short2 *_Y = (short2*)Y;
    __shared__ short2 sW[FH_TILE_Y][FH_TILE_X];
    __shared__ short2 sX[FH_TILE_Y][FH_TILE_X];
    short2 c0 = {0, 0};
    short2 c1 = {0, 0};
    for (int j = 0; j < w_width / FH_TILE_Y; j++) {
        sW[ty0][tx] = _W[row0 * (w_width/2) + (j*FH_WI_X+tx)];
        sW[ty1][tx] = _W[row1 * (w_width/2) + (j*FH_WI_X+tx)];
        sX[ty0][tx] = _X[col + (j * FH_WI_Y + ty0) * (x_width/2)];
        sX[ty1][tx] = _X[col + (j * FH_WI_Y + ty1) * (x_width/2)];
        __syncthreads();

        for (int i = 0; i < FH_TILE_X; i++) {
            short2 a0 = sW[ty0][i];
            short2 a1 = sW[ty1][i];
            short2 b0 = sX[2*i][tx];
            short2 b1 = sX[2*i+1][tx];

            c0.x = c0.x + a0.x * b0.x + a0.y * b1.x;
            c0.y = c0.y + a0.x * b0.y + a0.y * b1.y;
            c1.x = c1.x + a1.x * b0.x + a1.y * b1.x;
            c1.y = c1.y + a1.x * b0.y + a1.y * b1.y;

        }
        __syncthreads();

        _Y[row0*FH_WI_X+col] = c0;
        _Y[row1*FH_WI_X+col] = c1;
    }
}


int main()
{
    short *Wh, *Xh, *Yh;
    short *Wd, *Xd, *Yd;

    Wh = (short*)malloc(W_SIZE);
    Xh = (short*)malloc(X_SIZE);
    Yh = (short*)malloc(Y_SIZE);

    for(size_t i=0;i<W_HEIGHT*W_WIDTH;i++){
        Wh[i] = 1;
    }
    for(size_t i=0;i<X_HEIGHT*X_WIDTH;i++){
        Xh[i] = 1;
    }
    for(size_t i=0;i<Y_HEIGHT*Y_WIDTH;i++){
        Yh[i] = 2;
    }

    hipMalloc(&Wd, W_SIZE);
    hipMalloc(&Xd, X_SIZE);
    hipMalloc(&Yd, Y_SIZE);

    hipMemcpy(Wd, Wh, W_SIZE, hipMemcpyHostToDevice);
    hipMemcpy(Xd, Xh, X_SIZE, hipMemcpyHostToDevice);
    hipMemcpy(Yd, Yh, Y_SIZE, hipMemcpyHostToDevice);

    dim3 dimBlock(16, 16);
    dim3 dimGrid((X_WIDTH/dimBlock.x)/2, (W_HEIGHT/dimBlock.y)/2);

    unsigned long long dt = dtime_usec(0);

    hipLaunchKernelGGL((Dotv1<short, W_HEIGHT, W_WIDTH, X_HEIGHT, X_WIDTH>), dimGrid, dimBlock, 0, 0, Yd, Wd, Xd);
    hipDeviceSynchronize();

    dt = dtime_usec(dt);

    unsigned long long ops = X_HEIGHT * W_WIDTH * X_WIDTH;
    unsigned long long Mops = ops / 1000000;
    float et = dt/(float)USECPSEC;
    float tp = (Mops*2)/(et*1000000);
    std::cout<<"Tp: "<<tp<<" Time: "<<et<<std::endl;


    hipMemcpy(Yh, Yd, Y_SIZE, hipMemcpyDeviceToHost);

}

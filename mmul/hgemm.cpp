#include<iostream>
#include<hip/hip_runtime.h>
#include<hip/hip_runtime_api.h>
#include<hip/hip_fp16.h>
#include<sys/time.h>

#define FH_WI_X 16
#define FH_WI_Y 16
#define FH_TILE_X 16
#define FH_TILE_Y 16

#define W_HEIGHT WIDTH
#define W_WIDTH  WIDTH
#define X_HEIGHT W_WIDTH
#define X_WIDTH  WIDTH
#define Y_HEIGHT W_HEIGHT
#define Y_WIDTH X_WIDTH

#define W_SIZE W_HEIGHT * W_WIDTH * sizeof(half)
#define X_SIZE X_HEIGHT * X_WIDTH * sizeof(half)
#define Y_SIZE Y_HEIGHT * Y_WIDTH * sizeof(float)

#define USECPSEC 1000000ULL

unsigned long long dtime_usec(unsigned long long start){
  timeval tv;
  gettimeofday(&tv, 0);
  return ((tv.tv_sec*USECPSEC)+tv.tv_usec)-start;
}

template<typename T, typename U, int w_height, int w_width, int x_height, int x_width>
__global__ void Dotv1(U* Y, T* W, T* X)
{
    int tx = hipThreadIdx_x;
    int ty = hipThreadIdx_y;

    int bx = hipBlockIdx_x;
    int by = hipBlockIdx_y;

    int row = ty + by * FH_TILE_Y;
    int col = tx + bx * FH_TILE_X;

    __shared__ half sW[FH_TILE_Y][FH_TILE_X];
    __shared__ half sX[FH_TILE_Y][FH_TILE_X];
    U c = 0.0;
    for (int j = 0; j < w_width / FH_TILE_Y; j++) {
        sW[ty][tx] = W[row * w_width + (j*FH_WI_X+tx)];
        sX[ty][tx] = X[col + (j * FH_WI_Y + ty) * x_width];
        __syncthreads();

        for (int i = 0; i < FH_TILE_X; i++) {
            T a = sW[ty][i];
            T b = sX[i][tx];
            c = c + U(a * b);
        }
        __syncthreads();

        Y[row*FH_WI_X+col] = c;
    }
}


int main()
{
    half *Wh, *Xh, *Wd, *Xd;
    float *Yh, *Yd;

    Wh = (half*)malloc(W_SIZE);
    Xh = (half*)malloc(X_SIZE);
    Yh = (float*)malloc(Y_SIZE);

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
    unsigned long long dt = dtime_usec(0);
    hipLaunchKernelGGL((Dotv1<half, float, W_HEIGHT, W_WIDTH, X_HEIGHT, X_WIDTH>), dimGrid, dimBlock, 0, 0, Yd, Wd, Xd);
    hipDeviceSynchronize();
    dt = dtime_usec(dt);

    unsigned long long ops = X_HEIGHT * W_WIDTH * X_WIDTH;
    unsigned long long Mops = ops / 1000000;
    float et = dt/(float)USECPSEC;
    float tp = (Mops*2)/(et*1000000);
    std::cout<<"Tp: "<<tp<<" Time: "<<et<<std::endl;
    hipMemcpy(Yh, Yd, Y_SIZE, hipMemcpyDeviceToHost);

}

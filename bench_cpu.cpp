#include<iostream>
#include<vector>
#include<time.h>

#define ITER 1024*1024
#define WI 64
#define USECPSEC 1000000ULL

void Bench(float *In, float *Out){
	for (int j = 0; j < WI; j++){
		for (int i = 0; i < ITER; i++){
			Out[j] = Out[j] + In[j];
		}
	}
}

int main() {
	float *In = new float[WI];
	float *Out = new float[WI];

	clock_t start = clock();
	Bench(In, Out);
	clock_t stop = clock();
	double t = (double)(stop - start) / (CLOCKS_PER_SEC);
	std::cout << (WI*ITER)/(t*1000000)<< std::endl;
}

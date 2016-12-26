#include<iostream>
#include<vector>
#include<time.h>
#include<thread>

#define WI 64
#define SMT 2

void Bench(float *In, float *Out, uint64_t iter){
	for (uint64_t j = 0; j < WI; j++){
		for (uint64_t i = 0; i < iter; i++){
			Out[j] = Out[j] + In[j];
		}
	}
}

void SingleThread(uint64_t iter){
	std::cout << "SingleThread:\t" << " Iter: " << iter << std::endl;
	float *In = new float[WI];
	float *Out = new float[WI];

	clock_t start = clock();
	Bench(In, Out, iter);
	clock_t stop = clock();
	double t = (double)(stop - start) / (CLOCKS_PER_SEC);
	uint64_t Ops = iter * WI;
	double Tp = Ops / (t * 1000000);
	std::cout << "Total Ops: " << Ops << " took: " << t << " secs" << std::endl;
	std::cout << "Throughput: " << Tp << " MOps" << std::endl;
}

void MultiThread(uint64_t iter) {
	std::cout << "MultiThread:\t" << " Iter: " << iter << std::endl;
	uint64_t numThreads = std::thread::hardware_concurrency() / SMT;
	float** In = new float*[numThreads];
	float** Out = new float*[numThreads];
	for (uint32_t i = 0; i < numThreads; i++){
		In[i] = new float[WI];
		Out[i] = new float[WI];
	}
	std::vector<std::thread>threads(numThreads);
	clock_t start = clock();
	for (uint32_t i = 0; i < numThreads; i++){
		threads[i] = std::thread(Bench, In[i], Out[i], iter);
	}
	for (uint32_t i = 0; i < numThreads; i++){
		threads[i].join();
	}
	clock_t stop = clock();
	double t = (double)(stop - start) / (CLOCKS_PER_SEC);
	uint64_t Ops = iter * WI * numThreads;
	double Tp = Ops / (t * 1000000);
	std::cout << "Total Ops: " << Ops << " took: " << t << " secs" << std::endl;
	std::cout << "Throughput: " << Tp <<" MOps"<< std::endl;
}

void MultiThreadSMT(uint64_t iter) {
	std::cout << "MultiThreadSMT:\t" << " Iter: " << iter << std::endl;
	uint64_t numThreads = std::thread::hardware_concurrency();
	float** In = new float*[numThreads];
	float** Out = new float*[numThreads];
	for (uint32_t i = 0; i < numThreads; i++){
		In[i] = new float[WI];
		Out[i] = new float[WI];
	}
	std::vector<std::thread>threads(numThreads);
	clock_t start = clock();
	for (uint32_t i = 0; i < numThreads; i++){
		threads[i] = std::thread(Bench, In[i], Out[i], iter);
	}
	for (uint32_t i = 0; i < numThreads; i++){
		threads[i].join();
	}
	clock_t stop = clock();
	double t = (double)(stop - start) / (CLOCKS_PER_SEC);
	uint64_t Ops = iter * WI * numThreads;
	double Tp = Ops / (t * 1000000);
	std::cout << "Total Ops: " << Ops << " took: " << t << " secs" << std::endl;
	std::cout << "Throughput: " << Tp << " MOps" << std::endl;
}

int main() {
	for (uint64_t i = 1024 * 4; i < 1024 * 1024 * 8; i = i * 2){
		SingleThread(i);
		MultiThread(i);
		MultiThreadSMT(i);
	}
	std::cout << std::endl;
}

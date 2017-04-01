#ifndef PERF_TEST_PERF_TEST_H
#define PERF_TEST_PERF_TEST_H

#include <hip/hip_runtime_api.h>
#include <time.h>
#include <sys/time.h>

#define USECPSEC 1000000ULL

#define CHECK(status) \
if(status != hipSuccess) { std::cout<<"Got : "<< hipGetErrorString(status)<<" at L: "<<__LINE__<<std::endl; }

unsigned long long dtime_usec(unsigned long long start){
  timeval tv;
  gettimeofday(&tv, 0);
  return ((tv.tv_sec*USECPSEC)+tv.tv_usec)-start;
}

#endif

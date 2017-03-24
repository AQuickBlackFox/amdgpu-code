LLC=/home/aditya/rocm/llvm/bin/llc
CLANG=/home/aditya/rocm/llvm/bin/clang
TARGET=amdgcn--amdhsa
CPU=fiji

all: co host

co:
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o vadd.o vadd.s
	$(CLANG) -target $(TARGET) vadd.o -o vadd.co
host:
	hipcc runKernel.cpp -o runKernel

clean:
	rm -f runKernel vadd.o vadd.co

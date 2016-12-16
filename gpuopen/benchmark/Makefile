HIPCC=$(HIP_PATH)/bin/hipcc
LLVM_PATH=~/rocm/llvm.rocm
LLC=$(LLVM_PATH)/bin/llc
CLANG=$(LLVM_PATH)/bin/clang
TARGET=amdgcn--amdhsa
CPU=fiji

all: hadd2.1.device hadd2.1.host

hadd2.1.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) hadd2.1.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o hadd2.1.o hadd2.1.s
	$(CLANG) -target $(TARGET) hadd2.1.o -o hadd2.1.co

hadd2.1.host:
	$(HIPCC) hadd2.1.cpp -o hadd2.1

clean:
	rm -r -f *.co *.o *.s hadd2.1

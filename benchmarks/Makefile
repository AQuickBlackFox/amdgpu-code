HIPCC=$(HIP_PATH)/bin/hipcc
LLVM_PATH=~/rocm/llvm.rocm
LLC=$(LLVM_PATH)/bin/llc
CLANG=$(LLVM_PATH)/bin/clang
TARGET=amdgcn--amdhsa
CPU=fiji

log2.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) log2.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o log2.o log2.s
	$(CLANG) -target $(TARGET) log2.o -o log2.co
log2.host:
	$(HIPCC) log2.cpp -o log2

pow2.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) pow2.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o pow2.o pow2.s
	$(CLANG) -target $(TARGET) pow2.o -o pow2.co
pow2.host:
	$(HIPCC) pow2.cpp -o pow2

clean:
	rm -rf log2 pow2 *.o *.s *.co dump* a.out

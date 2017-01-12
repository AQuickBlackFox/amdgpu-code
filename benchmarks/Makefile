HIPCC=$(HIP_PATH)/bin/hipcc
LLVM_PATH=~/rocm/llvm.rocm
LLC=$(LLVM_PATH)/bin/llc
CLANG=$(LLVM_PATH)/bin/clang
TARGET=amdgcn--amdhsa
CPU=fiji

log.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) log.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o log.o log.s
	$(CLANG) -target $(TARGET) log.o -o log.co
log.host:
	$(HIPCC) log.cpp -o log

pow2.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) pow2.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o pow2.o pow2.s
	$(CLANG) -target $(TARGET) pow2.o -o pow2.co
pow2.host:
	$(HIPCC) pow2.cpp -o pow2

clean:
	rm -rf log pow2 *.o *.s *.co dump* a.out

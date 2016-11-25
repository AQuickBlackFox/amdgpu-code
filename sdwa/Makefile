HIPCC=$(HIP_PATH)/bin/hipcc
LLVM_PATH=~/llvm
LLC=$(LLVM_PATH)/bin/llc
CLANG=$(LLVM_PATH)/bin/clang
TARGET=amdgcn--amdhsa
CPU=fiji

all: sdwa_mul.host sdwa_mul.device sdwa_comp.device sdwa_comp.host

sdwa_mul.host:
	$(HIPCC) sdwa_mul.cpp -o sdwa_mul

sdwa_mul.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) sdwa_mul.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o sdwa_mul.o sdwa_mul.s
	$(CLANG) -target $(TARGET) sdwa_mul.o -o sdwa_mul.co

sdwa_comp.host:
	$(HIPCC) sdwa_comp.cpp -o sdwa_comp

sdwa_comp.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) sdwa_comp.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o sdwa_comp.o sdwa_comp.s
	$(CLANG) -target $(TARGET) sdwa_comp.o -o sdwa_comp.co


clean:
	rm -r -f *.o *.co *.s sdwa_mul

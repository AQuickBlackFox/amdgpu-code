HIPCC=$(HIP_PATH)/bin/hipcc
LLVM_PATH=~/llvm
LLC=$(LLVM_PATH)/bin/llc
CLANG=$(LLVM_PATH)/bin/clang
TARGET=amdgcn--amdhsa
CPU=fiji

all: sdwa_dp4.host sdwa_dp4.device


sdwa_dp4.host:
	$(HIPCC) sdwa_dp4.cpp -o sdwa_dp4

sdwa_dp4.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) sdwa_dp4.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o sdwa_dp4.o sdwa_dp4.s
	$(CLANG) -target $(TARGET) sdwa_dp4.o -o sdwa_dp4.co


clean:
	rm -r -f *.o *.co *.s sdwa_dp4

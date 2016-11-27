HIPCC=$(HIP_PATH)/bin/hipcc
LLVM_PATH=~/llvm
LLC=$(LLVM_PATH)/bin/llc
CLANG=$(LLVM_PATH)/bin/clang
TARGET=amdgcn--amdhsa
CPU=fiji

all: sdwa_mul.host sdwa_mul.device sdwa_comp.device sdwa_comp.host sdwa_dp4.host sdwa_dp4.device

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

sdwa_dp4.host:
	$(HIPCC) sdwa_dp4.cpp -o sdwa_dp4

sdwa_dp4.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) sdwa_dp4.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o sdwa_dp4.o sdwa_dp4.s
	$(CLANG) -target $(TARGET) sdwa_dp4.o -o sdwa_dp4.co

sdwa_half.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) sdwa_half.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o sdwa_half.o sdwa_half.s
	$(CLANG) -target $(TARGET) sdwa_half.o -o sdwa_half.co

clean:
	rm -r -f *.o *.co *.s sdwa_mul sdwa_comp sdwa_dp4 

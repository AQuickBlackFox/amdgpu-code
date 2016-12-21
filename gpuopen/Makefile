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

hadd2.2.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) hadd2.2.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o hadd2.2.o hadd2.2.s
	$(CLANG) -target $(TARGET) hadd2.2.o -o hadd2.2.co

hadd2.2.host:
	$(HIPCC) hadd2.2.cpp -o hadd2.2



clean:
	rm -r -f *.co *.o *.s fadd.2 fmul.2 ffma.2 ffma.3 hadd.1 hadd.2 hadd.3 hmul.1 hmul.2 hmul.3 hadd2.1 hmul2.1 ffma.1 hfma.1 hfma.2 dump*

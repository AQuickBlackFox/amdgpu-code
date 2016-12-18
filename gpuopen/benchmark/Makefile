HIPCC=$(HIP_PATH)/bin/hipcc
LLVM_PATH=~/rocm/llvm.rocm
LLC=$(LLVM_PATH)/bin/llc
CLANG=$(LLVM_PATH)/bin/clang
TARGET=amdgcn--amdhsa
CPU=fiji

all: hadd2.1.device hadd2.1.host hmul2.1.device hmul2.1.host

hadd2.1.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) hadd2.1.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o hadd2.1.o hadd2.1.s
	$(CLANG) -target $(TARGET) hadd2.1.o -o hadd2.1.co

hadd2.1.host:
	$(HIPCC) hadd2.1.cpp -o hadd2.1

hmul2.1.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) hmul2.1.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o hmul2.1.o hmul2.1.s
	$(CLANG) -target $(TARGET) hmul2.1.o -o hmul2.1.co

hmul2.1.host:
	$(HIPCC) hmul2.1.cpp -o hmul2.1

ffma.1.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) ffma.1.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o ffma.1.o ffma.1.s
	$(CLANG) -target $(TARGET) ffma.1.o -o ffma.1.co

ffma.1.host:
	$(HIPCC) ffma.1.cpp -o ffma.1

hadd.2.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) hadd.2.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o hadd.2.o hadd.2.s
	$(CLANG) -target $(TARGET) hadd.2.o -o hadd.2.co

hadd.1.host:
	$(HIPCC) hadd.1.cpp -o hadd.1

hadd.2.host:
	$(HIPCC) hadd.2.cpp -o hadd.2

hfma.1.host:
	$(HIPCC) hfma.1.cpp -o hfma.1

hfma.2.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) hfma.2.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o hfma.2.o hfma.2.s
	$(CLANG) -target $(TARGET) hfma.2.o -o hfma.2.co

hfma.2.code:
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o hfma.2.o hfma.2.isa
	$(CLANG) -target $(TARGET) hfma.2.o -o hfma.2.co

hfma.2.host:
	$(HIPCC) hfma.2.cpp -o hfma.2

clean:
	rm -r -f *.co *.o *.s hadd.1 hadd.2 hadd2.1 hmul2.1 ffma.1 hfma.1 hfma.2

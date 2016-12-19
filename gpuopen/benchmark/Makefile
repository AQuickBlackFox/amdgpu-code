HIPCC=$(HIP_PATH)/bin/hipcc
LLVM_PATH=~/rocm/llvm.rocm
LLC=$(LLVM_PATH)/bin/llc
CLANG=$(LLVM_PATH)/bin/clang
TARGET=amdgcn--amdhsa
CPU=fiji

all: hadd2.1.device hadd2.1.host hmul2.1.device hmul2.1.host

fadd.2.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) fadd.2.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o fadd.2.o fadd.2.s
	$(CLANG) -target $(TARGET) fadd.2.o -o fadd.2.co

fadd.2.host:
	$(HIPCC) fadd.2.cpp -o fadd.2


fmul.2.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) fmul.2.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o fmul.2.o fmul.2.s
	$(CLANG) -target $(TARGET) fmul.2.o -o fmul.2.co

fmul.2.host:
	$(HIPCC) fmul.2.cpp -o fmul.2



ffma.2.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) ffma.2.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o ffma.2.o ffma.2.s
	$(CLANG) -target $(TARGET) ffma.2.o -o ffma.2.co

ffma.2.host:
	$(HIPCC) ffma.2.cpp -o ffma.2

ffma.3.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) ffma.3.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o ffma.3.o ffma.3.s
	$(CLANG) -target $(TARGET) ffma.3.o -o ffma.3.co

ffma.3.host:
	$(HIPCC) ffma.3.cpp -o ffma.3


hadd.1.host:
	$(HIPCC) hadd.1.cpp -o hadd.1

hadd.2.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) hadd.2.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o hadd.2.o hadd.2.s
	$(CLANG) -target $(TARGET) hadd.2.o -o hadd.2.co

hadd.2.host:
	$(HIPCC) hadd.2.cpp -o hadd.2


hadd.3.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) hadd.3.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o hadd.3.o hadd.3.s
	$(CLANG) -target $(TARGET) hadd.3.o -o hadd.3.co

hadd.3.host:
	$(HIPCC) hadd.3.cpp -o hadd.3


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
	rm -r -f *.co *.o *.s fadd.2 fmul.2 ffma.2 ffma.3 hadd.1 hadd.2 hadd.3 hadd2.1 hmul2.1 ffma.1 hfma.1 hfma.2 dump*

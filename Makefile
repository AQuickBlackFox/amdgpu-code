LLVM_PATH=~/rocm/llvm/bin
LLC=$(LLVM_PATH)/llc
CLANG=$(LLVM_PATH)/clang

TARGET=amdgcn--amdhsa
ARCH=amdgcn
CPU=fiji
HIPCC=hipcc

all: half short

half:
	$(LLC) -mtriple $(TARGET) -march=$(ARCH) -mcpu=$(CPU) vaddf16.ll -o vaddf16.s
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o vaddf16.o vaddf16.s
	$(CLANG) -target $(TARGET) vaddf16.o -o vaddf16.co


short:
	$(LLC) -mtriple $(TARGET) -march=$(ARCH) -mcpu=$(CPU) vaddi16.ll -o vaddi16.s
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o vaddi16.o vaddi16.s
	$(CLANG) -target $(TARGET) vaddi16.o -o vaddi16.co

mul_sign:
	$(LLC) -mtriple $(TARGET) -march=$(ARCH) -mcpu=$(CPU) mul.ll -o mul.s
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o mul.o mul.s
	$(CLANG) -target $(TARGET) mul.o -o mul.co
	$(HIPCC) mul.cpp -o mul

mul:
	$(LLC) -mtriple $(TARGET) -march=$(ARCH) -mcpu=$(CPU) muli32.ll -o muli32.s
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o muli32.o muli32.s
	$(CLANG) -target $(TARGET) muli32.o -o muli32.co
	$(HIPCC) muli32.cpp -o muli32

add:
	$(CLANG) -x assembler -target amdgcn--amdhsa -mcpu=fiji -c vadd.s -o vadd.o
	$(CLANG) -target amdgcn--amdhsa vadd.o -o vadd.co

clean:
	rm *.s *.co *.o mul

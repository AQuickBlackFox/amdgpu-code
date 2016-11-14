LLC=llc
CLANG=clang

TARGET=amdgcn--amdhsa
ARCH=amdgcn
CPU=fiji

all: half short

half:
	$(LLC) -mtriple $(TARGET) -march=$(ARCH) -mcpu=$(CPU) vaddf16.ll -o vaddf16.s
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o vaddf16.o vaddf16.s
	$(CLANG) -target $(TARGET) vaddf16.o -o vaddf16.co


short:
	$(LLC) -mtriple $(TARGET) -march=$(ARCH) -mcpu=$(CPU) vaddi16.ll -o vaddi16.s
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o vaddi16.o vaddi16.s
	$(CLANG) -target $(TARGET) vaddi16.o -o vaddi16.co


clean:
	rm *.s *.co *.o

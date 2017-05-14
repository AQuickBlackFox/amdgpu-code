HIPCC=$(HIP_PATH)/bin/hipcc
LLVM_PATH=~/rocm/llvm.rocm
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

sdwa_mulpk.host:
	$(HIPCC) sdwa_mulpk.cpp -o sdwa_mulpk

sdwa_mulpk.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) sdwa_mulpk.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o sdwa_mulpk.o sdwa_mulpk.s
	$(CLANG) -target $(TARGET) sdwa_mulpk.o -o sdwa_mulpk.co

sdwa_half.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) sdwa_half.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o sdwa_half.o sdwa_half.s
	$(CLANG) -target $(TARGET) sdwa_half.o -o sdwa_half.co

sdwa_sdp4.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) sdwa_sdp4.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o sdwa_sdp4.o sdwa_sdp4.s
	$(CLANG) -target $(TARGET) sdwa_sdp4.o -o sdwa_sdp4.co

sdwa_sdp4.host:
	$(HIPCC) sdwa_sdp4.cpp -o sdwa_sdp4

sdwa_half2.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) sdwa_half2.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o sdwa_half2.o sdwa_half2.s
	$(CLANG) -target $(TARGET) sdwa_half2.o -o sdwa_half2.co

sdwa_half2.host:
	$(HIPCC) sdwa_half2.cpp -o sdwa_half2

sdwa_short.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) sdwa_short.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o sdwa_short.o sdwa_short.s
	$(CLANG) -target $(TARGET) sdwa_short.o -o sdwa_short.co

sdwa_short.host:
	$(HIPCC) sdwa_short.cpp -o sdwa_short

sdwa_bitcast.device:
	$(LLC) -mtriple $(TARGET) -march=amdgcn -mcpu=$(CPU) sdwa_bitcast.ll
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o sdwa_bitcast.o sdwa_bitcast.s
	$(CLANG) -target $(TARGET) sdwa_bitcast.o -o sdwa_bitcast.co

sdwa_short.device:
	cp sdwa_mac_f16.txt sdwa_mac_f16.s
	$(CLANG) -x assembler -target $(TARGET) -mcpu=$(CPU) -c -o sdwa_mac_f16.o sdwa_mac_f16.s
	$(CLANG) -target $(TARGET) sdwa_mac_f16.o -o smacf16.co

sdwa_short.host:
	$(HIPCC) sdwa_mac_f16.cpp -o sdwa_mac_f16



clean:
	rm -r -f *.o *.co *.s sdwa_mul sdwa_comp sdwa_dp4 sdwa_sdp4 sdwa_mulpk sdwa_half sdwa_half2 sdwa_mac_f16

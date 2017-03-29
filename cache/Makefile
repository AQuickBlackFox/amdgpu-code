LLVM_PATH=~/rocm/llvm
CLANG=$(LLVM_PATH)/bin/clang


all: compile assemble

compile:
	$(CLANG) -x assembler -target amdgcn--amdhsa -mcpu=fiji -c -o cache.o cache.s

assemble:
	$(CLANG) -target amdgcn--amdhsa cache.o -o cache.co

host:
	hipcc cache_host.cpp -o cache_host

clean:
	rm -f cache_host dump* *.co *.o

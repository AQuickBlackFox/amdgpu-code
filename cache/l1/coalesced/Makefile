LLC=~/rocm/llvm/bin/llc
CLANG=~/rocm/llvm/bin/clang

all: assemble host

assemble:
	mkdir -p bin
	$(CLANG) -x assembler -target amdgcn--amdhsa -mcpu=fiji -c l1_coalesced.s -o ./bin/l1_coalesced.o
	$(CLANG) -target amdgcn--amdhsa -mcpu=fiji ./bin/l1_coalesced.o -o ./bin/l1_coalesced.co

host:
	mkdir -p bin
	hipcc -I../../../benchmarks l1_coalesced.cpp -o ./bin/l1_coalesced

test:
	cd ./bin; ./l1_coalesced; cd ..

clean:
	rm -rf ./bin dump*

LLC=~/rocm/llvm/bin/llc
CLANG=~/rocm/llvm/bin/clang

all: assemble host

assemble:
	mkdir -p bin
	$(CLANG) -x assembler -target amdgcn--amdhsa -mcpu=fiji -c l2.s -o ./bin/l2.o
	$(CLANG) -target amdgcn--amdhsa -mcpu=fiji ./bin/l2.o -o ./bin/l2.co

host:
	mkdir -p bin
	hipcc -DNUM_CU=36 -I../../benchmarks l2.cpp -o ./bin/l2

test:
	cd ./bin; ./l2; cd ..

clean:
	rm -rf ./bin dump*

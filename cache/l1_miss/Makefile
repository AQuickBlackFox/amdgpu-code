LLC=~/rocm/llvm/bin/llc
CLANG=~/rocm/llvm/bin/clang

all: assemble host

assemble:
	mkdir -p bin
	$(CLANG) -x assembler -target amdgcn--amdhsa -mcpu=fiji -c l1.s -o ./bin/l1.o
	$(CLANG) -target amdgcn--amdhsa -mcpu=fiji ./bin/l1.o -o ./bin/l1.co

host:
	mkdir -p bin
	hipcc -I../../benchmarks l1.cpp -o ./bin/l1

test:
	cd ./bin; ./l1; cd ..

clean:
	rm -rf ./bin dump*

LLC=~/rocm/llvm/bin/llc
CLANG=~/rocm/llvm/bin/clang

all: assemble host

assemble:
	mkdir -p bin
	$(CLANG) -x assembler -target amdgcn--amdhsa -mcpu=fiji -c l1_transpose.s -o ./bin/l1_transpose.o
	$(CLANG) -target amdgcn--amdhsa -mcpu=fiji ./bin/l1_transpose.o -o ./bin/l1_transpose.co

host:
	mkdir -p bin
	hipcc -I../../../benchmarks l1_transpose.cpp -o ./bin/l1_transpose

validate:
	mkdir -p bin
	$(CLANG) -x assembler -target amdgcn--amdhsa -mcpu=fiji -c validate.s -o ./bin/validate.o
	$(CLANG) -target amdgcn--amdhsa -mcpu=fiji ./bin/validate.o -o ./bin/validate.co
	hipcc -I../../../benchmarks validate.cpp -o ./bin/validate

test:
	cd ./bin; ./l1_transpose; cd ..

clean:
	rm -rf ./bin dump*

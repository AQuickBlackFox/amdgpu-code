CLANG=/home/aditya/rocm/llvm/bin/clang
LLC=/home/aditya/rocm/llvm/bin/llc

all:
	mkdir -p bin
	$(LLC) -mtriple amdgcn--amdhsa -march=amdgcn -mcpu=fiji xor-bcnt.ll -o ./bin/xor-bcnt.s
	$(CLANG) -x assembler -target amdgcn--amdhsa -mcpu=fiji -c ./bin/xor-bcnt.s -o ./bin/xor-bcnt.o
	$(CLANG) -target amdgcn--amdhsa ./bin/xor-bcnt.o -o ./bin/xor-bcnt.co
	hipcc -I../ xor-bcnt.cpp -o ./bin/xor-bcnt

clean:
	rm -rf bin dump*

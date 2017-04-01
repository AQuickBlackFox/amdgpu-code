CLANG=/home/aditya/rocm/llvm/bin/clang
LLC=/home/aditya/rocm/llvm/bin/llc

all:
	mkdir -p bin
	$(LLC) -mtriple amdgcn--amdhsa -march=amdgcn -mcpu=fiji xnor-bcnt.ll -o ./bin/xnor-bcnt.s
	$(CLANG) -x assembler -target amdgcn--amdhsa -mcpu=fiji -c ./bin/xnor-bcnt.s -o ./bin/xnor-bcnt.o
	$(CLANG) -target amdgcn--amdhsa ./bin/xnor-bcnt.o -o ./bin/xnor-bcnt.co
	hipcc -I../ xnor-bcnt.cpp -o ./bin/xnor-bcnt

clean:
	rm -rf bin dump*

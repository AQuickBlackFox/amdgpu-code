HIP_PATH?= $(wildcard /opt/rocm/hip)
ifeq (,$(HIP_PATH))
	HIP_PATH=../../..
endif
HIPCC=$(HIP_PATH)/bin/hipcc
HIP_PLATFORM=$(shell $(HIP_PATH)/bin/hipconfig --compiler)

all: vcpy.code runKernel.hip.out vcpy.glc.code runKernel.hip.glc.out

runKernel.hip.out: runKernel.cpp
	$(HIPCC) $(HIPCC_FLAGS) $< -o $@

runKernel.hip.glc.out: runKernel.glc.cpp
	$(HIPCC) $(HIPCC_FLAGS) $< -o $@

vcpy.code:
	~/rocm/llvm/bin/clang -x assembler -target amdgcn--amdhsa -mcpu=fiji -c -o vcpy.o vcpy.s
	~/rocm/llvm/bin/clang -target amdgcn--amdhsa vcpy.o -o $@

vcpy.glc.code:
	~/rocm/llvm/bin/clang -x assembler -target amdgcn--amdhsa -mcpu=fiji -c -o vcpy.glc.o vcpy.glc.s
	~/rocm/llvm/bin/clang -target amdgcn--amdhsa vcpy.glc.o -o $@
clean:
	rm -f *.code *.out *.o

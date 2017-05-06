
declare i32 @llvm.amdgcn.workitem.id.x()

define spir_kernel void @hello_world(<2 x half> addrspace(1)* noalias %in1, <2 x half> addrspace(1)* noalias %in2, <2 x half> addrspace(1)* noalias %out) {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() readnone
  %in1_ptr = getelementptr <2 x half>, <2 x half> addrspace(1)* %in1, i32 %tid
  %in2_ptr = getelementptr <2 x half>, <2 x half> addrspace(1)* %in2, i32 %tid
  %out_ptr = getelementptr <2 x half>, <2 x half> addrspace(1)* %out, i32 %tid
  %in1_val = load <2 x half>, <2 x half> addrspace(1)* %in1_ptr
  %in2_val = load <2 x half>, <2 x half> addrspace(1)* %in2_ptr
  %out_val = fadd <2 x half> %in1_val, %in2_val
  store <2 x half> %out_val, <2 x half> addrspace(1)* %out_ptr
  ret void
}

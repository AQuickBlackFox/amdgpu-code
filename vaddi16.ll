
declare i32 @llvm.amdgcn.workitem.id.x()

define spir_kernel void @hello_world(i16 addrspace(1)* noalias %in1, i16 addrspace(1)* noalias %in2, i16 addrspace(1)* noalias %out) {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() readnone
  %in1_ptr = getelementptr i16, i16 addrspace(1)* %in1, i32 %tid
  %in2_ptr = getelementptr i16, i16 addrspace(1)* %in2, i32 %tid
  %out_ptr = getelementptr i16, i16 addrspace(1)* %out, i32 %tid
  %in1_val = load i16, i16 addrspace(1)* %in1_ptr
  %in2_val = load i16, i16 addrspace(1)* %in2_ptr
  %out_val = add i16 %in1_val, %in2_val
  store i16 %out_val, i16 addrspace(1)* %out_ptr
  ret void
}

declare half @llvm.fma.f16(half %a, half %b, half %c)
declare i32 @llvm.amdgcn.workitem.id.x()

define spir_kernel void @hello_world(half addrspace(1)* noalias %in1, half addrspace(1)* noalias %in2, half addrspace(1)* noalias %in3, half addrspace(1)* noalias %out) {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() readnone
  %in1_ptr = getelementptr half, half addrspace(1)* %in1, i32 %tid
  %in2_ptr = getelementptr half, half addrspace(1)* %in2, i32 %tid
  %in3_ptr = getelementptr half, half addrspace(1)* %in3, i32 %tid
  %out_ptr = getelementptr half, half addrspace(1)* %out, i32 %tid
  %in1_val = load half, half addrspace(1)* %in1_ptr
  %in2_val = load half, half addrspace(1)* %in2_ptr
  %in3_val = load half, half addrspace(1)* %in3_ptr
  %out_val = call half @llvm.fma.f16(half %in1_val, half %in2_val, half %in3_val)
  store half %out_val, half addrspace(1)* %out_ptr
  ret void
}

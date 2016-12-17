define half @__cast(half %in1, half %in2) {
  %1 = bitcast half %in1 to i16
  %2 = bitcast half %in2 to i16
  %3 = zext i16 %1 to i32
  %4 = zext i16 %2 to i32
  %5 = add i32 %3, %4
  %6 = trunc i32 %5 to i16
  %7 = bitcast i16 %6 to half
  ret half %7
}

declare i32 @llvm.amdgcn.workitem.id.x()

define spir_kernel void @hello_world(half addrspace(1)* noalias %in1, half addrspace(1)* noalias %in2, half addrspace(1)* noalias %out) {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() readnone
  %in1_ptr = getelementptr half, half addrspace(1)* %in1, i32 %tid
  %in2_ptr = getelementptr half, half addrspace(1)* %in2, i32 %tid
  %out_ptr = getelementptr half, half addrspace(1)* %out, i32 %tid
  %in1_val = load half, half addrspace(1)* %in1_ptr
  %in2_val = load half, half addrspace(1)* %in2_ptr
;  %out_val = call half @__cast(half %in1_val, half %in2_val)
  %out_val = fadd half %in1_val, %in2_val
  store half %out_val, half addrspace(1)* %out_ptr
  ret void
}

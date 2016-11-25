declare i32 @llvm.amdgcn.workitem.id.x()

define i32 @sdwa(i32 %in1, i32 %in2) {
  %val = tail call i32 asm "v_mul_u32_u24_sdwa $0, $1, $2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:DWORD","=v,v,v"(i32 %in1, i32 %in2)
  ret i32 %val
}

define spir_kernel void @sdwa_mul(i32 addrspace(1)* %in1, i32 addrspace(1)* %in2, i32 addrspace(1)* %out) {
  %id = call i32 @llvm.amdgcn.workitem.id.x()
  %in1_ptr = getelementptr i32, i32 addrspace(1)* %in1, i32 %id
  %in2_ptr = getelementptr i32, i32 addrspace(1)* %in2, i32 %id
  %out_ptr = getelementptr i32, i32 addrspace(1)* %out, i32 %id
  %r1 = load i32, i32 addrspace(1)* %in1_ptr
  %r2 = load i32, i32 addrspace(1)* %in2_ptr
  %r3 = call i32 @sdwa(i32 %r1, i32 %r2)
  store i32 %r3, i32 addrspace(1)* %out_ptr
  ret void
}

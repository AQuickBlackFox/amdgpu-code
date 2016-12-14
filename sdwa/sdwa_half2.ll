declare i32 @llvm.amdgcn.workitem.id.x()

define i32 @sdwa(i32 %in1, i32 %in2) {
  %val1 = tail call i32 asm "v_add_f16_sdwa $0, $1, $2 dst_sel:WORD_0 dst_unused:UNUSED_PRESERVE src0_sel:WORD_0 src1_sel:WORD_0","=v,v,v"(i32 %in1, i32 %in2)
  call void asm "v_add_f16_sdwa $0, $1, $2 dst_sel:WORD_1 dst_unused:UNUSED_PRESERVE src0_sel:WORD_1 src1_sel:WORD_1","v,v,v"(i32 %val1, i32 %in1, i32 %in2)
  ret i32 %val1
}

define spir_kernel void @sdwa_half2(i32 addrspace(1)* %in1, i32 addrspace(1)* %in2, i32 addrspace(1)* %out) {
  %id = call i32 @llvm.amdgcn.workitem.id.x()
  %in1_ptr = getelementptr i32, i32 addrspace(1)* %in1, i32 %id
  %in2_ptr = getelementptr i32, i32 addrspace(1)* %in2, i32 %id
  %out_ptr = getelementptr i32, i32 addrspace(1)* %out, i32 %id
  %r1 = load i32, i32 addrspace(1)* %in1_ptr
  %r2 = load i32, i32 addrspace(1)* %in2_ptr
  %r4 = call i32 @sdwa(i32 %r1, i32 %r2)
  store i32 %r4, i32 addrspace(1)* %out_ptr
  ret void
}

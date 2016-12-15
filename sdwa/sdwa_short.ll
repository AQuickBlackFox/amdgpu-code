declare i32 @llvm.amdgcn.workitem.id.x()

define i16 @sdwa(i16 %in1, i16 %in2, i16 %in3) {
  %val1 = tail call i16 asm "v_add_f16_sdwa $0, $1, $2 dst_sel:WORD_0 dst_unused:UNUSED_PAD src0_sel:WORD_0 src1_sel:WORD_0","=v,v,v"(i16 %in1, i16 %in2)
  ret i16 %val1
}

define spir_kernel void @sdwa_dp4(i16 addrspace(1)* %in1, i16 addrspace(1)* %in2, i16 addrspace(1)* %in3, i16 addrspace(1)* %out) {
  %id = call i32 @llvm.amdgcn.workitem.id.x()
  %in1_ptr = getelementptr i16, i16 addrspace(1)* %in1, i32 %id
  %in2_ptr = getelementptr i16, i16 addrspace(1)* %in2, i32 %id
  %in3_ptr = getelementptr i16, i16 addrspace(1)* %in3, i32 %id
  %out_ptr = getelementptr i16, i16 addrspace(1)* %out, i32 %id
  %r1 = load i16, i16 addrspace(1)* %in1_ptr
  %r2 = load i16, i16 addrspace(1)* %in2_ptr
  %r3 = load i16, i16 addrspace(1)* %in3_ptr
  %r4 = call i16 @sdwa(i16 %r1, i16 %r2, i16 %r3)
  store i16 %r4, i16 addrspace(1)* %out_ptr
  ret void
}

declare i32 @llvm.amdgcn.workitem.id.x()

define i32 @sdwa(i32 %in1, i32 %in2, i32 %in3) {
  %val1 = tail call i32 asm "v_mul_lo_u16_sdwa $0, $1, $2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:BYTE_0 src1_sel:BYTE_0","=v,v,v"(i32 %in1, i32 %in2)
	%ret1 = add i32 %val1, %in3
  %val2 = tail call i32 asm "v_mul_lo_u16_sdwa $0, $1, $2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:BYTE_1 src1_sel:BYTE_1","=v,v,v"(i32 %in1, i32 %in2)
	%ret2 = add i32 %ret1, %val2
  %val3 = tail call i32 asm "v_mul_lo_u16_sdwa $0, $1, $2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:BYTE_2 src1_sel:BYTE_2","=v,v,v"(i32 %in1, i32 %in2)
	%ret3 = add i32 %val3, %ret2
  %val4 = tail call i32 asm "v_mul_lo_u16_sdwa $0, $1, $2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:BYTE_3 src1_sel:BYTE_3","=v,v,v"(i32 %in1, i32 %in2)
	%ret4 = add i32 %val4, %ret3
  ret i32 %ret4
}

define spir_kernel void @sdwa_dp4(i32 addrspace(1)* %in1, i32 addrspace(1)* %in2, i32 addrspace(1)* %in3, i32 addrspace(1)* %out) {
  %id = call i32 @llvm.amdgcn.workitem.id.x()
  %in1_ptr = getelementptr i32, i32 addrspace(1)* %in1, i32 %id
  %in2_ptr = getelementptr i32, i32 addrspace(1)* %in2, i32 %id
	%in3_ptr = getelementptr i32, i32 addrspace(1)* %in3, i32 %id
  %out_ptr = getelementptr i32, i32 addrspace(1)* %out, i32 %id
  %r1 = load i32, i32 addrspace(1)* %in1_ptr
  %r2 = load i32, i32 addrspace(1)* %in2_ptr
	%r3 = load i32, i32 addrspace(1)* %in3_ptr
  %r4 = call i32 @sdwa(i32 %r1, i32 %r2, i32 %r3)
  store i32 %r4, i32 addrspace(1)* %out_ptr
  ret void
}


declare i32 @llvm.amdgcn.workitem.id.x()

define i32 @__rocm_hfma_low(i32 %a, i32 %b, i32 %c) {
  tail call void asm sideeffect "v_mac_f16 $0, $1, $2","v,v,v"(i32 %a, i32 %b, i32 %c)
  tail call void asm sideeffect "v_mac_f16_sdwa $0, $1, $2 dst_sel:DWORD dst_unused:UNUSED_PRESERVE src0_sel:WORD_1 src1_sel:WORD_1","v,v,v"(i32 %a, i32 %b, i32 %c)
  ret i32 %a
}

define amdgpu_kernel void @DoHFma2PK(i32 addrspace(1)* noalias %in1, i32 addrspace(1)* noalias %in2, i32 addrspace(1)* noalias %out) {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() readnone
  %a_ptr = getelementptr i32, i32 addrspace(1)* %in1, i32 %tid
  %b_ptr = getelementptr i32, i32 addrspace(1)* %in2, i32 %tid
  %c_ptr = getelementptr i32, i32 addrspace(1)* %out, i32 %tid
  %a = load i32, i32 addrspace(1)* %a_ptr
  %b = load i32, i32 addrspace(1)* %b_ptr
  %c = load i32, i32 addrspace(1)* %c_ptr
  %d = tail call i32 @__rocm_hfma_low(i32 %a, i32 %b, i32 %c)
  store i32 %d, i32 addrspace(1)* %c_ptr
  ret void
}

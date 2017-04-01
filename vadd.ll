
declare i32 @llvm.amdgcn.workitem.id.x()

define amdgpu_kernel void @hello_world(float addrspace(1)* %in1, float addrspace(1)* %in2, float addrspace(1)* %out) {
  %tid = call i32 @llvm.amdgcn.workitem.id.x() readnone
  %in1_ptr = getelementptr float, float addrspace(1)* %in1, i32 %tid
  %in2_ptr = getelementptr float, float addrspace(1)* %in2, i32 %tid
  %out_ptr = getelementptr float, float addrspace(1)* %out, i32 %tid
  %in1_val = load float, float addrspace(1)* %in1_ptr
  %in2_val = load float, float addrspace(1)* %in2_ptr
  %out_val = fadd float %in1_val, %in2_val
  store float %out_val, float addrspace(1)* %out_ptr
  ret void
}

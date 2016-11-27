declare i32 @llvm.amdgcn.workitem.id.x()



define spir_kernel void @sdwa_mul(i32 addrspace(1)* %in1, i32 addrspace(1)* %in2, i32 addrspace(1)* %out) {
  %id = call i32 @llvm.amdgcn.workitem.id.x()
  %in1_ptr = getelementptr i32, i32 addrspace(1)* %in1, i32 %id
  %in2_ptr = getelementptr i32, i32 addrspace(1)* %in2, i32 %id
  %out_ptr = getelementptr i32, i32 addrspace(1)* %out, i32 %id
  %r1 = load i32, i32 addrspace(1)* %in1_ptr
  %r2 = load i32, i32 addrspace(1)* %in2_ptr
  %r3 = call i32 %r1, %r2
  store i32 %r3, i32 addrspace(1)* %out_ptr
  ret void
}

declare i32 @llvm.amdgcn.workitem.id.x()
declare i32 @llvm.amdgcn.s.getreg(i32)

define spir_func i32 @damn() {
  %val = call i32 @llvm.amdgcn.s.getreg(i32 17158)
  ret i32 %val
}

define spir_kernel void @damn_kernel(i32 addrspace(1)* %out) {
  %id = call i32 @llvm.amdgcn.workitem.id.x()
  %out_ptr = getelementptr i32, i32 addrspace(1)* %out, i32 %id
  %r3 = call i32 @damn()
  store i32 %r3, i32 addrspace(1)* %out_ptr
  ret void
}

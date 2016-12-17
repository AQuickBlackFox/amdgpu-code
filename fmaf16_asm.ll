define linkonce_odr spir_func i32 @hsail_add_f32(i32, i32, i32) #2 {
  %ret = tail call i32 asm "v_fma_f16 $0, $1, $2", "=v,v,v,v"(i32 %0, i32 %1, i32 %2) #1
  ret i32 %ret
}

define spir_func void @vAdd(i32 addrspace(1)* %out, i32 addrspace(1)* %in1, i32 addrspace(1)* %in2, i32 addrspace(1)* %in3) #3 {
  %id = call i32 @llvm.amdgcn.workitem.id.x()
%k1 = getelementptr i32, i32 addrspace(1)* %in1, i32 %id
%k2 = getelementptr i32, i32 addrspace(1)* %in2, i32 %id
%k3 = getelementptr i32, i32 addrspace(1)* %in3, i32 %id
%k4 = getelementptr i32, i32 addrspace(1)* %out, i32 %id
%r0 = load i32, i32 addrspace(1)* %k1
%r1 = load i32, i32 addrspace(1)* %k2
%r2 = load i32, i32 addrspace(1)* %k3
;%r2 = fadd i32 %r0, %r1
%r3 = call i32 @hsail_add_f32(i32 %r0, i32 %r1, i32 %r2) #2
store i32 %r3, i32 addrspace(1)* %k4
ret void
}
attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }

declare i32 @llvm.amdgcn.workitem.id.x() #0
declare i32 @llvm.amdgcn.workitem.id.y() #0
declare i32 @llvm.amdgcn.workitem.id.z() #0

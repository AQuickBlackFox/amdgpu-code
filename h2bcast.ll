;Bit cast from <2 x half> to i32

declare i32 @llvm.amdgcn.workitem.id.x()

define <2 x half> @hadd_lo(<2 x half> %a, <2 x half> %b) #1 {
    %1 = bitcast <2 x half> %a to i32
    %2 = bitcast <2 x half> %b to i32
    %3 = tail call i32 asm sideeffect "v_add_f16 $0, $1, $2","=v,v,v"(i32 %1, i32 %2)
    %4 = bitcast i32 %3 to <2 x half>
    ret <2 x half> %4
}

define amdgpu_kernel void @hello_world(<2 x half> addrspace(1)* %A, <2 x half> addrspace(1)* %B, <2 x half> addrspace(1)* %C)
{
    %tid = call i32 @llvm.amdgcn.workitem.id.x()
    %1 = getelementptr <2 x half>, <2 x half> addrspace(1)* %A, i32 %tid
    %2 = getelementptr <2 x half>, <2 x half> addrspace(1)* %B, i32 %tid
    %3 = getelementptr <2 x half>, <2 x half> addrspace(1)* %C, i32 %tid
    %4 = load<2 x half>, <2 x half> addrspace(1)* %1
    %5 = load<2 x half>, <2 x half> addrspace(1)* %2
    %6 = fadd <2 x half> %4, %5
    store <2 x half> %6, <2 x half> addrspace(1)* %3
    ret void
}

attributes #0 = {nounwind readnone}
attributes #1 = {nounwind}

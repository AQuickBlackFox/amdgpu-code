define <4 x half> @__hdp2x2a(<4 x half> %a, <4 x half> %b, <4 x half> %c)
{
    %1 = extractelement <4 x half> %a, i32 0 ; a.x
    %2 = extractelement <4 x half> %a, i32 1 ; a.y
    %3 = extractelement <4 x half> %a, i32 2 ; a.z
    %4 = extractelement <4 x half> %a, i32 3 ; a.w

    %5 = extractelement <4 x half> %b, i32 0 ; b.x
    %6 = extractelement <4 x half> %b, i32 1 ; b.y
    %7 = extractelement <4 x half> %b, i32 2 ; b.z
    %8 = extractelement <4 x half> %b, i32 3 ; b.w

    %9 = extractelement <4 x half> %c, i32 0  ; c.x
    %10 = extractelement <4 x half> %c, i32 1 ; c.y
    %11 = extractelement <4 x half> %c, i32 2 ; c.z
    %12 = extractelement <4 x half> %c, i32 3 ; c.w

    %13 = fmul half %1, %5  ; a.x * b.x
    %14 = fadd half %13, %9 ; c.x = a.x * b.x + c.x

    %15 = fmul half %1, %6; a.x * b.y
    %16 = fadd half %15, %10 ; c.y = a.x * b.y + c.y

    %17 = fmul half %3, %5 ; a.z * b.x
    %18 = fadd half %17, %11; a.z * b.x + c.z

    %19 = fmul half %3, %6 ; a.z * b.y
    %20 = fadd half %19, %12; c.w = a.z * b.y + c.w

    %21 = fmul half %2, %7 ; a.y * b.z
    %22 = fadd half %21, %14; c.x = a.y * b.z + c.x

    %23 = fmul half %2, %8 ; a.y * b.w
    %24 = fadd half %23, %16; c.y = a.y * b.w + c.y

    %25 = fmul half %4, %7; a.w * b.z
    %26 = fadd half %25, %18; c.z = a.w * b.z + c.z

    %27 = fmul half %4, %8; a.w * b.w
    %28 = fadd half %27, %20 ; c.w = a.w * b.w + c.w

    %29 = insertelement <4 x half> %c, half %22, i32 0
    %30 = insertelement <4 x half> %29, half %24, i32 1
    %31 = insertelement <4 x half> %30, half %26, i32 2
    %32 = insertelement <4 x half> %31, half %28, i32 3
    ret <4 x half> %32
}

declare i32 @llvm.amdgcn.workitem.id.x()

define amdgpu_kernel void @hello_world(<4 x half> addrspace(1)* %A, <4 x half> addrspace(1)* %B, <4 x half> addrspace(1)* %C) {
    %tid = call i32 @llvm.amdgcn.workitem.id.x()
    %1 = getelementptr <4 x half>, <4 x half> addrspace(1)* %A, i32 %tid
    %2 = getelementptr <4 x half>, <4 x half> addrspace(1)* %B, i32 %tid
    %3 = getelementptr <4 x half>, <4 x half> addrspace(1)* %C, i32 %tid
    %4 = load<4 x half>, <4 x half> addrspace(1)* %1
    %5 = load<4 x half>, <4 x half> addrspace(1)* %2
    %6 = load<4 x half>, <4 x half> addrspace(1)* %3
    %7 = tail call <4 x half> @__hdp2x2a(<4 x half> %4, <4 x half> %5, <4 x half> %6)
    store <4 x half> %7, <4 x half> addrspace(1)* %3
    ret void
}

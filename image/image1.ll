define amdgpu_kernel void @image.copy(<8 x i32> %in, <8 x i32> %out, <4 x i32> %c) {
  %tex = call <4 x float> @llvm.amdgcn.image.load.v4f32.v4i32.v8i32(<4 x i32> %c, <8 x i32> %in, i32 15, i1 0, i1 0, i1 0, i1 0)
  call void @llvm.amdgcn.image.store.v4f32.v4i32.v8i32(<4 x float> %tex, <4 x i32> %c, <8 x i32> %out, i32 15, i1 0, i1 0, i1 0, i1 0)
  ret void
}

declare void @llvm.amdgcn.image.store.v4f32.i32.v8i32(<4 x float>, i32, <8 x i32>, i32, i1, i1, i1, i1)
declare void @llvm.amdgcn.image.store.v4f32.v2i32.v8i32(<4 x float>, <2 x i32>, <8 x i32>, i32, i1, i1, i1, i1)
declare void @llvm.amdgcn.image.store.v4f32.v4i32.v8i32(<4 x float>, <4 x i32>, <8 x i32>, i32, i1, i1, i1, i1)
declare void @llvm.amdgcn.image.store.mip.v4f32.v4i32.v8i32(<4 x float>, <4 x i32>, <8 x i32>, i32, i1, i1, i1, i1)

declare <4 x float> @llvm.amdgcn.image.load.v4f32.i32.v8i32(i32, <8 x i32>, i32, i1, i1, i1, i1) #1
declare <4 x float> @llvm.amdgcn.image.load.v4f32.v2i32.v8i32(<2 x i32>, <8 x i32>, i32, i1, i1, i1, i1) #1
declare <4 x float> @llvm.amdgcn.image.load.v4f32.v4i32.v8i32(<4 x i32>, <8 x i32>, i32, i1, i1, i1, i1) #1
declare <4 x float> @llvm.amdgcn.image.load.mip.v4f32.v4i32.v8i32(<4 x i32>, <8 x i32>, i32, i1, i1, i1, i1) #1

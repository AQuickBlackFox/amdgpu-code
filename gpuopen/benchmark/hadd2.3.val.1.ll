; Function Attrs: alwaysinline norecurse nounwind readnone
define i32 @_Z15__rocm_hadd_lowjj(i32 %a, i32 %b)  {
  %1 = tail call i32 asm sideeffect "v_add_f16 $0, $1, $2","=v,v,v"(i32 %a, i32 %b)
  ret i32 %1
}

; Function Attrs: alwaysinline nounwind
define amdgpu_kernel void @DoHAdd2PK(i32* nocapture readonly %a, i32* nocapture %b)  {
  %1 = tail call i32 @llvm.amdgcn.workitem.id.x() 
  %arrayidx = getelementptr inbounds i32, i32* %a, i32 %1
  %2 = load i32, i32* %arrayidx
  %arrayidx2 = getelementptr inbounds i32, i32* %b, i32 %1
  %3 = load i32, i32* %arrayidx2
  %4 = call i32 @_Z15__rocm_hadd_lowjj(i32 %1, i32 %2)
  store i32 %2, i32* %arrayidx2
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.amdgcn.workitem.id.x()
declare float @llvm.convert.from.fp16.f32(i16)
declare i16 @llvm.convert.to.fp16.f32(float)



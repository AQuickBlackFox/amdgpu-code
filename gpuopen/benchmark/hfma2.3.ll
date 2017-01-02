; ModuleID = '<stdin>'
source_filename = "hfma2.3.bak.cpp"
target datalayout = "e-p:32:32-p1:64:64-p2:64:64-p3:32:32-p4:64:64-p5:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64"
target triple = "amdgcn--amdhsa-hcc"

define i32 @__rocm_mad_low(i32 %a, i32 %b, i32 %c) #1 {
    %1 = tail call i32 asm sideeffect "v_mad_f16 $0, $1, $2, $3","=v,v,v,v"(i32 %a, i32 %b, i32 %c)
    ret i32 %1
}

define i32 @__rocm_mad_high(i32 %a, i32 %b, i32 %c, i32 %d) #1 {
    tail call void asm sideeffect "v_mul_f16_sdwa $0, $1, $2 dst_sel:WORD_1 dst_unused:UNUSED_PRESERVE src0_sel:WORD_1 src1_sel:WORD_1","v,v,v"(i32 %d, i32 %a, i32 %b)
    tail call void asm sideeffect "v_add_f16_sdwa $0, $1, $2 dst_sel:WORD_1 dst_unused:UNUSED_PRESERVE src0_sel:WORD_1 src1_sel:WORD_1","v,v,v"(i32 %d, i32 %d, i32 %c)
    ret i32 %d
}

; Function Attrs: alwaysinline
define amdgpu_kernel void @DoHFma2PK(i32* nocapture readonly %a, i32* nocapture readonly %b, i32* nocapture %c) local_unnamed_addr #5 {
  %1 = tail call i32 @llvm.amdgcn.workitem.id.x() #12
  %arrayidx = getelementptr inbounds i32, i32* %a, i32 %1
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %arrayidx2 = getelementptr inbounds i32, i32* %b, i32 %1
  %3 = load i32, i32* %arrayidx2, align 4, !tbaa !7
  %arrayidx4 = getelementptr inbounds i32, i32* %c, i32 %1
  %4 = load i32, i32* %arrayidx4, align 4, !tbaa !7
  br label %6

; <label>:5:                                      ; preds = %6
  store i32 %call6.7, i32* %arrayidx4, align 4, !tbaa !7
  ret void

; <label>:6:                                      ; preds = %6, %0
  %i.026 = phi i32 [ 0, %0 ], [ %inc.7, %6 ]
  %b0.025 = phi i32 [ %3, %0 ], [ %call6.7, %6 ]
  %call5 = tail call i32 @__rocm_mad_low(i32 %2, i32 %b0.025, i32 %4) #13
  %call6 = tail call i32 @__rocm_mad_high(i32 %2, i32 %b0.025, i32 %4, i32 %call5) #13
  %call5.1 = tail call i32 @__rocm_mad_low(i32 %2, i32 %call6, i32 %4) #13
  %call6.1 = tail call i32 @__rocm_mad_high(i32 %2, i32 %call6, i32 %4, i32 %call5.1) #13
  %call5.2 = tail call i32 @__rocm_mad_low(i32 %2, i32 %call6.1, i32 %4) #13
  %call6.2 = tail call i32 @__rocm_mad_high(i32 %2, i32 %call6.1, i32 %4, i32 %call5.2) #13
  %call5.3 = tail call i32 @__rocm_mad_low(i32 %2, i32 %call6.2, i32 %4) #13
  %call6.3 = tail call i32 @__rocm_mad_high(i32 %2, i32 %call6.2, i32 %4, i32 %call5.3) #13
  %call5.4 = tail call i32 @__rocm_mad_low(i32 %2, i32 %call6.3, i32 %4) #13
  %call6.4 = tail call i32 @__rocm_mad_high(i32 %2, i32 %call6.3, i32 %4, i32 %call5.4) #13
  %call5.5 = tail call i32 @__rocm_mad_low(i32 %2, i32 %call6.4, i32 %4) #13
  %call6.5 = tail call i32 @__rocm_mad_high(i32 %2, i32 %call6.4, i32 %4, i32 %call5.5) #13
  %call5.6 = tail call i32 @__rocm_mad_low(i32 %2, i32 %call6.5, i32 %4) #13
  %call6.6 = tail call i32 @__rocm_mad_high(i32 %2, i32 %call6.5, i32 %4, i32 %call5.6) #13
  %call5.7 = tail call i32 @__rocm_mad_low(i32 %2, i32 %call6.6, i32 %4) #13
  %call6.7 = tail call i32 @__rocm_mad_high(i32 %2, i32 %call6.6, i32 %4, i32 %call5.7) #13
  %inc.7 = add nsw i32 %i.026, 8
  %exitcond.7 = icmp eq i32 %inc.7, 134217728
  br i1 %exitcond.7, label %5, label %6
}

; Function Attrs: nounwind readnone
declare i32 @llvm.amdgcn.workitem.id.x() local_unnamed_addr #6

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { alwaysinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "hc_grid_launch" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin nounwind readnone }
attributes #13 = { nobuiltin }
attributes #14 = { builtin nobuiltin }
attributes #15 = { nobuiltin noreturn }

!llvm.ident = !{!0}

!0 = !{!"HCC clang version 4.0.0  (based on HCC 1.0.16501-04a69df-ef406d4-eef66ba )"}
!1 = !{!2, !3, i64 0}
!2 = !{!"_ZTS7timeval", !3, i64 0, !3, i64 8}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!2, !3, i64 8}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !4, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!12, !8, i64 0}
!12 = !{!"_ZTS7gl_dim3", !8, i64 0, !8, i64 4, !8, i64 8}
!13 = !{!12, !8, i64 4}
!14 = !{!12, !8, i64 8}
!15 = !{!16, !8, i64 24}
!16 = !{!"_ZTS16grid_launch_parm", !12, i64 0, !12, i64 12, !8, i64 24, !17, i64 28, !8, i64 32, !10, i64 40, !10, i64 48}
!17 = !{!"_ZTS14gl_barrier_bit", !4, i64 0}
!18 = !{!19, !8, i64 0}
!19 = !{!"_ZTS4dim3", !8, i64 0, !8, i64 4, !8, i64 8}
!20 = !{!19, !8, i64 4}
!21 = !{!19, !8, i64 8}
!22 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !7, i64 12, i64 4, !7, i64 16, i64 4, !7, i64 20, i64 4, !7, i64 24, i64 4, !7, i64 28, i64 4, !23, i64 32, i64 4, !7, i64 40, i64 8, !9, i64 48, i64 8, !9}
!23 = !{!17, !17, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !5, i64 0}
!26 = !{!27, !10, i64 240}
!27 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !10, i64 216, !4, i64 224, !28, i64 225, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256}
!28 = !{!"bool", !4, i64 0}
!29 = !{!30, !4, i64 56}
!30 = !{!"_ZTSSt5ctypeIcE", !10, i64 16, !28, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !4, i64 56, !4, i64 57, !4, i64 313, !4, i64 569}
!31 = !{!4, !4, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"_ZTSSt13_Ios_Fmtflags", !4, i64 0}

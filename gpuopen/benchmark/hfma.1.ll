

declare i32 @llvm.amdgcn.workitem.id.x()

define spir_func i32 @__rocm_hmul_nosdwa(i32 %a, i32 %b) #1 {
    %out = tail call i32 asm sideeffect "v_mul_f16 $0, $1, $2","=v,v,v"(i32 %a, i32 %b)
    ret i32 %out
}

define spir_func i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %c, i32 %a, i32 %b) #1 {
    tail call void asm sideeffect "v_mul_f16_sdwa $0, $1, $2 dst_sel:WORD_1 dst_unused:UNUSED_PRESERVE src0_sel:WORD_1 src1_sel:WORD_1","v,v,v"(i32 %c, i32 %a, i32 %b)
    ret i32 %c
}

define spir_kernel void @DoHFma(half* nocapture readonly %a, half* nocapture readonly %b, half* nocapture readonly %c, half* nocapture %d) local_unnamed_addr #5 {
  %1 = tail call i32 @llvm.amdgcn.workitem.id.x() #12
  %arrayidx = getelementptr inbounds half, half* %a, i32 %1
  %2 = load half, half* %arrayidx, align 4, !tbaa !7
  %arrayidx2 = getelementptr inbounds half, half* %b, i32 %1
  %3 = load half, half* %arrayidx2, align 4, !tbaa !7
  %arrayidx3 = getelementptr inbounds half, half* %c, i32 %1

  br label %5

; <label>:4:                                      ; preds = %5
  %arrayidx6 = getelementptr inbounds half, half* %c, i32 %1
  store half %call4.15, i32* %arrayidx6, align 4, !tbaa !7
  ret void

; <label>:5:                                      ; preds = %5, %0
  %i.020 = phi i32 [ 0, %0 ], [ %inc.15, %5 ]
  %b0.019 = phi i32 [ %3, %0 ], [ %call4.15, %5 ]
  %call3 = tail call i32 @__rocm_hmul_nosdwa(i32 %2, i32 %b0.019) #13
  %call4 = tail call i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %call3, i32 %2, i32 %call3) #13
  %call3.1 = tail call i32 @__rocm_hmul_nosdwa(i32 %2, i32 %call4) #13
  %call4.1 = tail call i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %call3.1, i32 %2, i32 %call3.1) #13
  %call3.2 = tail call i32 @__rocm_hmul_nosdwa(i32 %2, i32 %call4.1) #13
  %call4.2 = tail call i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %call3.2, i32 %2, i32 %call3.2) #13
  %call3.3 = tail call i32 @__rocm_hmul_nosdwa(i32 %2, i32 %call4.2) #13
  %call4.3 = tail call i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %call3.3, i32 %2, i32 %call3.3) #13
  %call3.4 = tail call i32 @__rocm_hmul_nosdwa(i32 %2, i32 %call4.3) #13
  %call4.4 = tail call i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %call3.4, i32 %2, i32 %call3.4) #13
  %call3.5 = tail call i32 @__rocm_hmul_nosdwa(i32 %2, i32 %call4.4) #13
  %call4.5 = tail call i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %call3.5, i32 %2, i32 %call3.5) #13
  %call3.6 = tail call i32 @__rocm_hmul_nosdwa(i32 %2, i32 %call4.5) #13
  %call4.6 = tail call i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %call3.6, i32 %2, i32 %call3.6) #13
  %call3.7 = tail call i32 @__rocm_hmul_nosdwa(i32 %2, i32 %call4.6) #13
  %call4.7 = tail call i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %call3.7, i32 %2, i32 %call3.7) #13
  %call3.8 = tail call i32 @__rocm_hmul_nosdwa(i32 %2, i32 %call4.7) #13
  %call4.8 = tail call i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %call3.8, i32 %2, i32 %call3.8) #13
  %call3.9 = tail call i32 @__rocm_hmul_nosdwa(i32 %2, i32 %call4.8) #13
  %call4.9 = tail call i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %call3.9, i32 %2, i32 %call3.9) #13
  %call3.10 = tail call i32 @__rocm_hmul_nosdwa(i32 %2, i32 %call4.9) #13
  %call4.10 = tail call i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %call3.10, i32 %2, i32 %call3.10) #13
  %call3.11 = tail call i32 @__rocm_hmul_nosdwa(i32 %2, i32 %call4.10) #13
  %call4.11 = tail call i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %call3.11, i32 %2, i32 %call3.11) #13
  %call3.12 = tail call i32 @__rocm_hmul_nosdwa(i32 %2, i32 %call4.11) #13
  %call4.12 = tail call i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %call3.12, i32 %2, i32 %call3.12) #13
  %call3.13 = tail call i32 @__rocm_hmul_nosdwa(i32 %2, i32 %call4.12) #13
  %call4.13 = tail call i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %call3.13, i32 %2, i32 %call3.13) #13
  %call3.14 = tail call i32 @__rocm_hmul_nosdwa(i32 %2, i32 %call4.13) #13
  %call4.14 = tail call i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %call3.14, i32 %2, i32 %call3.14) #13
  %call3.15 = tail call i32 @__rocm_hmul_nosdwa(i32 %2, i32 %call4.14) #13
  %call4.15 = tail call i32 @__rocm_hmul_w1_w1_w1_preserve(i32 %call3.15, i32 %2, i32 %call3.15) #13
  %inc.15 = add nsw i32 %i.020, 16
  %exitcond.15 = icmp eq i32 %inc.15, 134217728
  br i1 %exitcond.15, label %4, label %5
}

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

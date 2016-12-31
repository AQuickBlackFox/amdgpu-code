; ModuleID = '<stdin>'
source_filename = "ffma.cpp"
target datalayout = "e-p:32:32-p1:64:64-p2:64:64-p3:32:32-p4:64:64-p5:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64"
target triple = "amdgcn--amdhsa-hcc"

declare i32 @llvm.amdgcn.workitem.id.x() #6

define float @__rocm_fmaf(float %a, float %b, float %c) {
  tail call void asm sideeffect "v_mac_f32 $0, $1, $2","v,v,v"(float %c, float %a, float %b)
  ret float %c
}

; Function Attrs: alwaysinline nounwind
define amdgpu_kernel void @DoFFma(float* nocapture readonly %in1d, float* nocapture readonly %in2d, float* nocapture %outd) local_unnamed_addr #5 {
  %1 = tail call i32 @llvm.amdgcn.workitem.id.x() #12
  %arrayidx = getelementptr inbounds float, float* %in1d, i32 %1
  %2 = load float, float* %arrayidx, align 4, !tbaa !7
  %arrayidx2 = getelementptr inbounds float, float* %in2d, i32 %1
  %3 = load float, float* %arrayidx2, align 4, !tbaa !7
  %arrayidx4 = getelementptr inbounds float, float* %outd, i32 %1
  %4 = load float, float* %arrayidx4, align 4, !tbaa !7
  br label %6

; <label>:5:                                      ; preds = %6
  store float %call5.63, float* %arrayidx4, align 4, !tbaa !7
  ret void

; <label>:6:                                      ; preds = %6, %0
  %i.021 = phi i32 [ 0, %0 ], [ %inc.63, %6 ]
  %out.020 = phi float [ %4, %0 ], [ %call5.63, %6 ]
  %call5 = tail call float @__rocm_fmaf(float %out.020, float %2, float %3) #12
  %call5.1 = tail call float @__rocm_fmaf(float %call5, float %2, float %3) #12
  %call5.2 = tail call float @__rocm_fmaf(float %call5.1, float %2, float %3) #12
  %call5.3 = tail call float @__rocm_fmaf(float %call5.2, float %2, float %3) #12
  %call5.4 = tail call float @__rocm_fmaf(float %call5.3, float %2, float %3) #12
  %call5.5 = tail call float @__rocm_fmaf(float %call5.4, float %2, float %3) #12
  %call5.6 = tail call float @__rocm_fmaf(float %call5.5, float %2, float %3) #12
  %call5.7 = tail call float @__rocm_fmaf(float %call5.6, float %2, float %3) #12
  %call5.8 = tail call float @__rocm_fmaf(float %call5.7, float %2, float %3) #12
  %call5.9 = tail call float @__rocm_fmaf(float %call5.8, float %2, float %3) #12
  %call5.10 = tail call float @__rocm_fmaf(float %call5.9, float %2, float %3) #12
  %call5.11 = tail call float @__rocm_fmaf(float %call5.10, float %2, float %3) #12
  %call5.12 = tail call float @__rocm_fmaf(float %call5.11, float %2, float %3) #12
  %call5.13 = tail call float @__rocm_fmaf(float %call5.12, float %2, float %3) #12
  %call5.14 = tail call float @__rocm_fmaf(float %call5.13, float %2, float %3) #12
  %call5.15 = tail call float @__rocm_fmaf(float %call5.14, float %2, float %3) #12
  %call5.16 = tail call float @__rocm_fmaf(float %call5.15, float %2, float %3) #12
  %call5.17 = tail call float @__rocm_fmaf(float %call5.16, float %2, float %3) #12
  %call5.18 = tail call float @__rocm_fmaf(float %call5.17, float %2, float %3) #12
  %call5.19 = tail call float @__rocm_fmaf(float %call5.18, float %2, float %3) #12
  %call5.20 = tail call float @__rocm_fmaf(float %call5.19, float %2, float %3) #12
  %call5.21 = tail call float @__rocm_fmaf(float %call5.20, float %2, float %3) #12
  %call5.22 = tail call float @__rocm_fmaf(float %call5.21, float %2, float %3) #12
  %call5.23 = tail call float @__rocm_fmaf(float %call5.22, float %2, float %3) #12
  %call5.24 = tail call float @__rocm_fmaf(float %call5.23, float %2, float %3) #12
  %call5.25 = tail call float @__rocm_fmaf(float %call5.24, float %2, float %3) #12
  %call5.26 = tail call float @__rocm_fmaf(float %call5.25, float %2, float %3) #12
  %call5.27 = tail call float @__rocm_fmaf(float %call5.26, float %2, float %3) #12
  %call5.28 = tail call float @__rocm_fmaf(float %call5.27, float %2, float %3) #12
  %call5.29 = tail call float @__rocm_fmaf(float %call5.28, float %2, float %3) #12
  %call5.30 = tail call float @__rocm_fmaf(float %call5.29, float %2, float %3) #12
  %call5.31 = tail call float @__rocm_fmaf(float %call5.30, float %2, float %3) #12
  %call5.32 = tail call float @__rocm_fmaf(float %call5.31, float %2, float %3) #12
  %call5.33 = tail call float @__rocm_fmaf(float %call5.32, float %2, float %3) #12
  %call5.34 = tail call float @__rocm_fmaf(float %call5.33, float %2, float %3) #12
  %call5.35 = tail call float @__rocm_fmaf(float %call5.34, float %2, float %3) #12
  %call5.36 = tail call float @__rocm_fmaf(float %call5.35, float %2, float %3) #12
  %call5.37 = tail call float @__rocm_fmaf(float %call5.36, float %2, float %3) #12
  %call5.38 = tail call float @__rocm_fmaf(float %call5.37, float %2, float %3) #12
  %call5.39 = tail call float @__rocm_fmaf(float %call5.38, float %2, float %3) #12
  %call5.40 = tail call float @__rocm_fmaf(float %call5.39, float %2, float %3) #12
  %call5.41 = tail call float @__rocm_fmaf(float %call5.40, float %2, float %3) #12
  %call5.42 = tail call float @__rocm_fmaf(float %call5.41, float %2, float %3) #12
  %call5.43 = tail call float @__rocm_fmaf(float %call5.42, float %2, float %3) #12
  %call5.44 = tail call float @__rocm_fmaf(float %call5.43, float %2, float %3) #12
  %call5.45 = tail call float @__rocm_fmaf(float %call5.44, float %2, float %3) #12
  %call5.46 = tail call float @__rocm_fmaf(float %call5.45, float %2, float %3) #12
  %call5.47 = tail call float @__rocm_fmaf(float %call5.46, float %2, float %3) #12
  %call5.48 = tail call float @__rocm_fmaf(float %call5.47, float %2, float %3) #12
  %call5.49 = tail call float @__rocm_fmaf(float %call5.48, float %2, float %3) #12
  %call5.50 = tail call float @__rocm_fmaf(float %call5.49, float %2, float %3) #12
  %call5.51 = tail call float @__rocm_fmaf(float %call5.50, float %2, float %3) #12
  %call5.52 = tail call float @__rocm_fmaf(float %call5.51, float %2, float %3) #12
  %call5.53 = tail call float @__rocm_fmaf(float %call5.52, float %2, float %3) #12
  %call5.54 = tail call float @__rocm_fmaf(float %call5.53, float %2, float %3) #12
  %call5.55 = tail call float @__rocm_fmaf(float %call5.54, float %2, float %3) #12
  %call5.56 = tail call float @__rocm_fmaf(float %call5.55, float %2, float %3) #12
  %call5.57 = tail call float @__rocm_fmaf(float %call5.56, float %2, float %3) #12
  %call5.58 = tail call float @__rocm_fmaf(float %call5.57, float %2, float %3) #12
  %call5.59 = tail call float @__rocm_fmaf(float %call5.58, float %2, float %3) #12
  %call5.60 = tail call float @__rocm_fmaf(float %call5.59, float %2, float %3) #12
  %call5.61 = tail call float @__rocm_fmaf(float %call5.60, float %2, float %3) #12
  %call5.62 = tail call float @__rocm_fmaf(float %call5.61, float %2, float %3) #12
  %call5.63 = tail call float @__rocm_fmaf(float %call5.62, float %2, float %3) #12
  %inc.63 = add nsw i32 %i.021, 64
  %exitcond.63 = icmp eq i32 %inc.63, 134217728
  br i1 %exitcond.63, label %5, label %6
}

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "hc_grid_launch" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { norecurse "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin nounwind readnone }
attributes #13 = { nobuiltin }
attributes #14 = { nobuiltin noreturn }

!llvm.ident = !{!0}

!0 = !{!"HCC clang version 4.0.0  (based on HCC 1.0.16501-04a69df-ef406d4-eef66ba )"}
!1 = !{!2, !3, i64 0}
!2 = !{!"_ZTS7timeval", !3, i64 0, !3, i64 8}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!2, !3, i64 8}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTS7gl_dim3", !11, i64 0, !11, i64 4, !11, i64 8}
!11 = !{!"int", !4, i64 0}
!12 = !{!10, !11, i64 4}
!13 = !{!10, !11, i64 8}
!14 = !{!15, !11, i64 24}
!15 = !{!"_ZTS16grid_launch_parm", !10, i64 0, !10, i64 12, !11, i64 24, !16, i64 28, !11, i64 32, !17, i64 40, !17, i64 48}
!16 = !{!"_ZTS14gl_barrier_bit", !4, i64 0}
!17 = !{!"any pointer", !4, i64 0}
!18 = !{!19, !11, i64 0}
!19 = !{!"_ZTS4dim3", !11, i64 0, !11, i64 4, !11, i64 8}
!20 = !{!19, !11, i64 4}
!21 = !{!19, !11, i64 8}
!22 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 4, !23, i64 16, i64 4, !23, i64 20, i64 4, !23, i64 24, i64 4, !23, i64 28, i64 4, !24, i64 32, i64 4, !23, i64 40, i64 8, !25, i64 48, i64 8, !25}
!23 = !{!11, !11, i64 0}
!24 = !{!16, !16, i64 0}
!25 = !{!17, !17, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !5, i64 0}
!28 = !{!29, !17, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !17, i64 216, !4, i64 224, !30, i64 225, !17, i64 232, !17, i64 240, !17, i64 248, !17, i64 256}
!30 = !{!"bool", !4, i64 0}
!31 = !{!32, !4, i64 56}
!32 = !{!"_ZTSSt5ctypeIcE", !17, i64 16, !30, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !4, i64 56, !4, i64 57, !4, i64 313, !4, i64 569}
!33 = !{!4, !4, i64 0}

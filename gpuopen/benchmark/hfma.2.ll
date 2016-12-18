; ModuleID = '<stdin>'
source_filename = "ffma.cpp"
target datalayout = "e-p:32:32-p1:64:64-p2:64:64-p3:32:32-p4:64:64-p5:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64"
target triple = "amdgcn--amdhsa-hcc"

define half @__rocm_hfma(half %a, half %b, half %c) {
  %1 = bitcast half %a to i16
  %2 = bitcast half %b to i16
  %3 = bitcast half %c to i16
  %4 = zext i16 %1 to i32
  %5 = zext i16 %2 to i32
  %6 = zext i16 %3 to i32
  %7 = tail call i32 asm sideeffect "v_mad_f16 $0, $1, $2, $3","=v,v,v,v"(i32 %4, i32 %5, i32 %6)
  %8 = trunc i32 %7 to i16
  %9 = bitcast i16 %8 to half
  ret half %9
}

; Function Attrs: alwaysinline nounwind
define amdgpu_kernel void @DoHFma(half* nocapture readonly %in1d, half* nocapture readnone %in2d, half* nocapture %outd) local_unnamed_addr #5 {
  %1 = tail call i32 @llvm.amdgcn.workitem.id.x() #11
  %arrayidx = getelementptr inbounds half, half* %in1d, i32 %1
  %2 = load half, half* %arrayidx, align 2, !tbaa !7
  %arrayidx4 = getelementptr inbounds half, half* %outd, i32 %1
  %3 = load half, half* %arrayidx4, align 2, !tbaa !7
  br label %5

; <label>:4:                                      ; preds = %5
  store half %mul.31, half* %arrayidx4, align 2, !tbaa !7
  ret void

; <label>:5:                                      ; preds = %5, %0
  %i.022 = phi i32 [ 0, %0 ], [ %inc.31, %5 ]
  %out.021 = phi half [ %3, %0 ], [ %mul.31, %5 ]
  %mul = call half @__rocm_hfma(half %2, half %out.021, half %2)
  %mul.1 = call half @__rocm_hfma(half %2, half %mul, half %2)
  %mul.2 = call half @__rocm_hfma(half %2, half %mul.1, half %2)
  %mul.3 = call half @__rocm_hfma(half %2, half %mul.2, half %2)
  %mul.4 = call half @__rocm_hfma(half %2, half %mul.3, half %2)
  %mul.5 = call half @__rocm_hfma(half %2, half %mul.4, half %2)
  %mul.6 = call half @__rocm_hfma(half %2, half %mul.5, half %2)
  %mul.7 = call half @__rocm_hfma(half %2, half %mul.6, half %2)
  %mul.8 = call half @__rocm_hfma(half %2, half %mul.7, half %2)
  %mul.9 = call half @__rocm_hfma(half %2, half %mul.8, half %2)
  %mul.10 = call half @__rocm_hfma(half %2, half %mul.9, half %2)
  %mul.11 = call half @__rocm_hfma(half %2, half %mul.10, half %2)
  %mul.12 = call half @__rocm_hfma(half %2, half %mul.11, half %2)
  %mul.13 = call half @__rocm_hfma(half %2, half %mul.12, half %2)
  %mul.14 = call half @__rocm_hfma(half %2, half %mul.13, half %2)
  %mul.15 = call half @__rocm_hfma(half %2, half %mul.14, half %2)
  %mul.16 = call half @__rocm_hfma(half %2, half %mul.15, half %2)
  %mul.17 = call half @__rocm_hfma(half %2, half %mul.16, half %2)
  %mul.18 = call half @__rocm_hfma(half %2, half %mul.17, half %2)
  %mul.19 = call half @__rocm_hfma(half %2, half %mul.18, half %2)
  %mul.20 = call half @__rocm_hfma(half %2, half %mul.19, half %2)
  %mul.21 = call half @__rocm_hfma(half %2, half %mul.20, half %2)
  %mul.22 = call half @__rocm_hfma(half %2, half %mul.21, half %2)
  %mul.23 = call half @__rocm_hfma(half %2, half %mul.22, half %2)
  %mul.24 = call half @__rocm_hfma(half %2, half %mul.23, half %2)
  %mul.25 = call half @__rocm_hfma(half %2, half %mul.24, half %2)
  %mul.26 = call half @__rocm_hfma(half %2, half %mul.25, half %2)
  %mul.27 = call half @__rocm_hfma(half %2, half %mul.26, half %2)
  %mul.28 = call half @__rocm_hfma(half %2, half %mul.27, half %2)
  %mul.29 = call half @__rocm_hfma(half %2, half %mul.28, half %2)
  %mul.30 = call half @__rocm_hfma(half %2, half %mul.29, half %2)
  %mul.31 = call half @__rocm_hfma(half %2, half %mul.30, half %2)


  %inc.31 = add nsw i32 %i.022, 32
  %exitcond.31 = icmp eq i32 %inc.31, 134217728
  br i1 %exitcond.31, label %4, label %5
}

; Function Attrs: nounwind readnone
declare i32 @llvm.amdgcn.workitem.id.x() local_unnamed_addr #6

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "hc_grid_launch" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nobuiltin nounwind readnone }
attributes #12 = { nobuiltin }
attributes #13 = { nobuiltin noreturn }

!llvm.ident = !{!0}

!0 = !{!"HCC clang version 4.0.0  (based on HCC 1.0.16501-04a69df-ef406d4-eef66ba )"}
!1 = !{!2, !3, i64 0}
!2 = !{!"_ZTS7timeval", !3, i64 0, !3, i64 8}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!2, !3, i64 8}
!7 = !{!8, !8, i64 0}
!8 = !{!"__fp16", !4, i64 0}
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

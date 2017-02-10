; ModuleID = '<stdin>'
source_filename = "hadd2.3.cpp"
target datalayout = "e-p:32:32-p1:64:64-p2:64:64-p3:32:32-p4:64:64-p5:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64"
target triple = "amdgcn--amdhsa-hcc"

%struct.__half2 = type { %union.anon }
%union.anon = type { i32 }

declare float @llvm.convert.from.fp16.f32(i16)
declare i16 @llvm.convert.to.fp16.f32(float)

define half @__rocm_hmul_float(half %a, half %b) {
  %1 = bitcast half %a to i16
  %2 = bitcast half %b to i16
  %3 = call float @llvm.convert.from.fp16.f32(i16 %1)
  %4 = call float @llvm.convert.from.fp16.f32(i16 %2)
  %5 = fmul float %3, %4
  %6 = call i16 @llvm.convert.to.fp16.f32(float %5)
  %7 = bitcast i16 %6 to half
  ret half %7
}

; Function Attrs: alwaysinline nounwind
define amdgpu_kernel void @DoHMul2PK(%struct.__half2* nocapture readonly %a, %struct.__half2* nocapture %b) local_unnamed_addr #6 {
  %1 = tail call i32 @llvm.amdgcn.workitem.id.x() #13
  %a0.sroa.0.0..sroa_idx = getelementptr inbounds %struct.__half2, %struct.__half2* %a, i32 %1, i32 0, i32 0
  %a0.sroa.0.0.copyload = load i32, i32* %a0.sroa.0.0..sroa_idx, align 4
  %b0.sroa.0.0..sroa_idx = getelementptr inbounds %struct.__half2, %struct.__half2* %b, i32 %1, i32 0, i32 0
  %b0.sroa.0.0.copyload = load i32, i32* %b0.sroa.0.0..sroa_idx, align 4
  %agg.tmp.sroa.0.sroa.0.0.extract.trunc = trunc i32 %a0.sroa.0.0.copyload to i16
  %agg.tmp.sroa.0.sroa.2.0.extract.shift = lshr i32 %a0.sroa.0.0.copyload, 16
  %2 = bitcast i16 %agg.tmp.sroa.0.sroa.0.0.extract.trunc to half
  %a0.sroa.0.0.extract.trunc.i = trunc i32 %agg.tmp.sroa.0.sroa.2.0.extract.shift to i16
  %3 = bitcast i16 %a0.sroa.0.0.extract.trunc.i to half
  br label %5

; <label>:4:                                      ; preds = %5
  store i32 %or.7, i32* %b0.sroa.0.0..sroa_idx, align 4
  ret void

; <label>:5:                                      ; preds = %5, %0
  %i.068 = phi i32 [ 0, %0 ], [ %inc.7, %5 ]
  %b0.sroa.0.067 = phi i32 [ %b0.sroa.0.0.copyload, %0 ], [ %or.7, %5 ]
  %agg.tmp3.sroa.0.sroa.0.0.extract.trunc = trunc i32 %b0.sroa.0.067 to i16
  %agg.tmp3.sroa.0.sroa.2.0.extract.shift = lshr i32 %b0.sroa.0.067, 16
  %6 = bitcast i16 %agg.tmp3.sroa.0.sroa.0.0.extract.trunc to half
  %add.i = call half @__rocm_hmul_float(half %2, half %6)
  %b0.sroa.0.0.extract.trunc.i = trunc i32 %agg.tmp3.sroa.0.sroa.2.0.extract.shift to i16
  %7 = bitcast i16 %b0.sroa.0.0.extract.trunc.i to half
  %add.i35 = call half @__rocm_hmul_float(half %3, half %7)
  %8 = bitcast half %add.i to i16
  %ref.tmp.sroa.0.0.insert.ext.7 = zext i16 %8 to i32
  %9 = bitcast half %add.i35 to i16
  %ref.tmp4.sroa.6.0.insert.ext.7 = zext i16 %9 to i32
  %ref.tmp4.sroa.6.0.insert.shift.7 = shl nuw i32 %ref.tmp4.sroa.6.0.insert.ext.7, 16
  %or.7 = or i32 %ref.tmp4.sroa.6.0.insert.shift.7, %ref.tmp.sroa.0.0.insert.ext.7
  %inc.7 = add nsw i32 %i.068, 1
  %exitcond.7 = icmp eq i32 %inc.7, 4194304
  br i1 %exitcond.7, label %4, label %5
}

; Function Attrs: nounwind readnone
declare i32 @llvm.amdgcn.workitem.id.x() local_unnamed_addr #7

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { alwaysinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "hc_grid_launch" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { norecurse "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nobuiltin nounwind readnone }
attributes #14 = { builtin nobuiltin }
attributes #15 = { nobuiltin }
attributes #16 = { nobuiltin noreturn }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !4, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!14, !10, i64 0}
!14 = !{!"_ZTS7gl_dim3", !10, i64 0, !10, i64 4, !10, i64 8}
!15 = !{!14, !10, i64 4}
!16 = !{!14, !10, i64 8}
!17 = !{!18, !10, i64 24}
!18 = !{!"_ZTS16grid_launch_parm", !14, i64 0, !14, i64 12, !10, i64 24, !19, i64 28, !10, i64 32, !12, i64 40, !12, i64 48}
!19 = !{!"_ZTS14gl_barrier_bit", !4, i64 0}
!20 = !{!21, !10, i64 0}
!21 = !{!"_ZTS4dim3", !10, i64 0, !10, i64 4, !10, i64 8}
!22 = !{!21, !10, i64 4}
!23 = !{!21, !10, i64 8}
!24 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !9, i64 20, i64 4, !9, i64 24, i64 4, !9, i64 28, i64 4, !25, i64 32, i64 4, !9, i64 40, i64 8, !11, i64 48, i64 8, !11}
!25 = !{!19, !19, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !5, i64 0}
!28 = !{!29, !12, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !12, i64 216, !4, i64 224, !30, i64 225, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256}
!30 = !{!"bool", !4, i64 0}
!31 = !{!32, !4, i64 56}
!32 = !{!"_ZTSSt5ctypeIcE", !12, i64 16, !30, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !4, i64 56, !4, i64 57, !4, i64 313, !4, i64 569}
!33 = !{!4, !4, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"_ZTSSt13_Ios_Fmtflags", !4, i64 0}

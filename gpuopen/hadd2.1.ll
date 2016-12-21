; ModuleID = '<stdin>'
source_filename = "hadd2.1.cpp"
target datalayout = "e-p:32:32-p1:64:64-p2:64:64-p3:32:32-p4:64:64-p5:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64"
target triple = "amdgcn--amdhsa-hcc"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, [4 x i8], i8, i8, [6 x i8], %"class.std::basic_streambuf"*, [4 x i8], %"class.std::ctype"*, [4 x i8], %"class.std::num_put"*, [4 x i8], %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, [4 x i8], %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, [4 x i8], %"struct.std::ios_base::_Words"*, [4 x i8], %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, [4 x i8], void (i32, %"class.std::ios_base"*, i32)*, [4 x i8], i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"*, [4 x i8] }
%"class.std::locale::_Impl" = type { i32, [4 x i8], %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, [4 x i8], i8** }
%"class.std::locale::facet" = type { i32 (...)**, [4 x i8], i32, [4 x i8] }
%"class.std::basic_streambuf" = type { i32 (...)**, [4 x i8], i8*, [4 x i8], i8*, [4 x i8], i8*, [4 x i8], i8*, [4 x i8], i8*, [4 x i8], i8*, [4 x i8], %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, [4 x i8], i8, [7 x i8], i32*, [4 x i8], i32*, [4 x i8], i16*, [4 x i8], i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type { i32 (...)**, [4 x i8], i32 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], [52 x i8], i16*, [4 x i8], i32*, [4 x i8], i32*, [4 x i8], [13 x i8*], [52 x i8] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.grid_launch_parm = type { %struct.gl_dim3, %struct.gl_dim3, i32, i32, i32, [4 x i8], %"class.hc::accelerator_view"*, [4 x i8], %"class.hc::completion_future"*, [4 x i8] }
%struct.gl_dim3 = type { i32, i32, i32 }
%"class.hc::accelerator_view" = type opaque
%"class.hc::completion_future" = type opaque
%struct.__half2 = type { %union.anon }
%union.anon = type { i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

define half @__rocm_hadd(half %a, half %b) {
  %1 = bitcast half %a to i16
  %2 = bitcast half %b to i16
  %3 = call float @llvm.convert.from.fp16.f32(i16 %1)
  %4 = call float @llvm.convert.from.fp16.f32(i16 %2)
  %5 = fadd float %3, %4
  %6 = call i16 @llvm.convert.to.fp16.f32(float %5)
  %7 = bitcast i16 %6 to half
  ret half %7
}

; Function Attrs: alwaysinline nounwind
define amdgpu_kernel void @DoHAdd2PK(%struct.__half2* nocapture readonly %a, %struct.__half2* nocapture %b) local_unnamed_addr #5 {
  %1 = tail call i32 @llvm.amdgcn.workitem.id.x() #12
  %arrayidx = getelementptr inbounds %struct.__half2, %struct.__half2* %a, i32 %1
  %2 = bitcast %struct.__half2* %arrayidx to i8*
  %a0.sroa.0.0..sroa_cast = bitcast %struct.__half2* %arrayidx to half*
  %a0.sroa.0.0.copyload = load half, half* %a0.sroa.0.0..sroa_cast, align 4
  %a0.sroa.4.0..sroa_idx = getelementptr inbounds i8, i8* %2, i32 2
  %a0.sroa.4.0..sroa_cast = bitcast i8* %a0.sroa.4.0..sroa_idx to half*
  %a0.sroa.4.0.copyload = load half, half* %a0.sroa.4.0..sroa_cast, align 2
  %arrayidx2 = getelementptr inbounds %struct.__half2, %struct.__half2* %b, i32 %1
  %3 = bitcast %struct.__half2* %arrayidx2 to i8*
  %b0.sroa.0.0..sroa_cast = bitcast %struct.__half2* %arrayidx2 to half*
  %b0.sroa.0.0.copyload = load half, half* %b0.sroa.0.0..sroa_cast, align 4
  %b0.sroa.6.0..sroa_idx = getelementptr inbounds i8, i8* %3, i32 2
  %b0.sroa.6.0..sroa_cast = bitcast i8* %b0.sroa.6.0..sroa_idx to half*
  %b0.sroa.6.0.copyload = load half, half* %b0.sroa.6.0..sroa_cast, align 2
  br label %5

; <label>:4:                                      ; preds = %5
  store half %add.31, half* %b0.sroa.0.0..sroa_cast, align 4
  store half %add12.31, half* %b0.sroa.6.0..sroa_cast, align 2
  ret void

; <label>:5:                                      ; preds = %5, %0
  %i.035 = phi i32 [ 0, %0 ], [ %inc.31, %5 ]
  %b0.sroa.0.034 = phi half [ %b0.sroa.0.0.copyload, %0 ], [ %add.31, %5 ]
  %b0.sroa.6.033 = phi half [ %b0.sroa.6.0.copyload, %0 ], [ %add12.31, %5 ]
  %add = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %b0.sroa.0.034)
  %add12 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %b0.sroa.6.033)
  %add.1 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add)
  %add12.1 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12)
  %add.2 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.1)
  %add12.2 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.1)
  %add.3 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.2)
  %add12.3 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.2)
  %add.4 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.3)
  %add12.4 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.3)
  %add.5 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.4)
  %add12.5 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.4)
  %add.6 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.5)
  %add12.6 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.5)
  %add.7 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.6)
  %add12.7 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.6)
  %add.8 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.7)
  %add12.8 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.7)
  %add.9 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.8)
  %add12.9 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.8)
  %add.10 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.9)
  %add12.10 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.9)
  %add.11 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.10)
  %add12.11 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.10)
  %add.12 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.11)
  %add12.12 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.11)
  %add.13 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.12)
  %add12.13 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.12)
  %add.14 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.13)
  %add12.14 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.13)
  %add.15 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.14)
  %add12.15 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.14)
  %add.16 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.15)
  %add12.16 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.15)
  %add.17 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.16)
  %add12.17 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.16)
  %add.18 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.17)
  %add12.18 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.17)
  %add.19 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.18)
  %add12.19 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.18)
  %add.20 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.19)
  %add12.20 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.19)
  %add.21 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.20)
  %add12.21 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.20)
  %add.22 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.21)
  %add12.22 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.21)
  %add.23 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.22)
  %add12.23 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.22)
  %add.24 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.23)
  %add12.24 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.23)
  %add.25 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.24)
  %add12.25 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.24)
  %add.26 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.25)
  %add12.26 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.25)
  %add.27 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.26)
  %add12.27 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.26)
  %add.28 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.27)
  %add12.28 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.27)
  %add.29 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.28)
  %add12.29 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.28)
  %add.30 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.29)
  %add12.30 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.29)
  %add.31 = call half @__rocm_hadd(half %a0.sroa.0.0.copyload, half %add.30)
  %add12.31 = call half @__rocm_hadd(half %a0.sroa.4.0.copyload, half %add12.30)
  %inc.31 = add nsw i32 %i.035, 32
  %exitcond.31 = icmp eq i32 %inc.31, 134217728
  br i1 %exitcond.31, label %4, label %5
}

; Function Attrs: nounwind readnone
declare i32 @llvm.amdgcn.workitem.id.x() local_unnamed_addr #6
declare i16 @llvm.convert.to.fp16.f32(float)
declare float @llvm.convert.from.fp16.f32(i16)

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "hc_grid_launch" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin nounwind readnone }
attributes #13 = { builtin nobuiltin }
attributes #14 = { nobuiltin }
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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTS7gl_dim3", !11, i64 0, !11, i64 4, !11, i64 8}
!11 = !{!"int", !4, i64 0}
!12 = !{!10, !11, i64 4}
!13 = !{!10, !11, i64 8}
!14 = !{!15, !11, i64 24}
!15 = !{!"_ZTS16grid_launch_parm", !10, i64 0, !10, i64 12, !11, i64 24, !16, i64 28, !11, i64 32, !8, i64 40, !8, i64 48}
!16 = !{!"_ZTS14gl_barrier_bit", !4, i64 0}
!17 = !{!18, !11, i64 0}
!18 = !{!"_ZTS4dim3", !11, i64 0, !11, i64 4, !11, i64 8}
!19 = !{!18, !11, i64 4}
!20 = !{!18, !11, i64 8}
!21 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22, i64 16, i64 4, !22, i64 20, i64 4, !22, i64 24, i64 4, !22, i64 28, i64 4, !23, i64 32, i64 4, !22, i64 40, i64 8, !7, i64 48, i64 8, !7}
!22 = !{!11, !11, i64 0}
!23 = !{!16, !16, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !5, i64 0}
!26 = !{!27, !8, i64 240}
!27 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !8, i64 216, !4, i64 224, !28, i64 225, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256}
!28 = !{!"bool", !4, i64 0}
!29 = !{!30, !4, i64 56}
!30 = !{!"_ZTSSt5ctypeIcE", !8, i64 16, !28, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !4, i64 56, !4, i64 57, !4, i64 313, !4, i64 569}
!31 = !{!4, !4, i64 0}

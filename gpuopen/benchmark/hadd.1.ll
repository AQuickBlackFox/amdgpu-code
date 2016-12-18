; ModuleID = '<stdin>'
source_filename = "hadd1.1.cpp"
target datalayout = "e-p:32:32-p1:64:64-p2:64:64-p3:32:32-p4:64:64-p5:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64"
target triple = "amdgcn--amdhsa-hcc"

%"class.std::ios_base::Init" = type { i8 }
%struct.grid_launch_parm = type { %struct.gl_dim3, %struct.gl_dim3, i32, i32, i32, [4 x i8], %"class.hc::accelerator_view"*, [4 x i8], %"class.hc::completion_future"*, [4 x i8] }
%struct.gl_dim3 = type { i32, i32, i32 }
%"class.hc::accelerator_view" = type opaque
%"class.hc::completion_future" = type opaque
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [7 x i8] c"DoHAdd\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_hadd1.1.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: alwaysinline nounwind
define void @_Z6DoHAdd16grid_launch_parmPDhS0_(%struct.grid_launch_parm* byval nocapture readnone align 8 %lp, half* nocapture readonly %a, half* nocapture %b) local_unnamed_addr #3 {
  %call = tail call i64 @hc_get_workitem_id(i32 0) #9
  %1 = trunc i64 %call to i32
  %arrayidx = getelementptr inbounds half, half* %a, i32 %1
  %2 = load half, half* %arrayidx, align 2, !tbaa !1
  %arrayidx2 = getelementptr inbounds half, half* %b, i32 %1
  %3 = load half, half* %arrayidx2, align 2, !tbaa !1
  br label %5

; <label>:4:                                      ; preds = %5
  store half %add.63, half* %arrayidx2, align 2, !tbaa !1
  ret void

; <label>:5:                                      ; preds = %5, %0
  %i.016 = phi i32 [ 0, %0 ], [ %inc.63, %5 ]
  %b0.015 = phi half [ %3, %0 ], [ %add.63, %5 ]
  %add = fadd half %2, %b0.015
  %add.1 = fadd half %2, %add
  %add.2 = fadd half %2, %add.1
  %add.3 = fadd half %2, %add.2
  %add.4 = fadd half %2, %add.3
  %add.5 = fadd half %2, %add.4
  %add.6 = fadd half %2, %add.5
  %add.7 = fadd half %2, %add.6
  %add.8 = fadd half %2, %add.7
  %add.9 = fadd half %2, %add.8
  %add.10 = fadd half %2, %add.9
  %add.11 = fadd half %2, %add.10
  %add.12 = fadd half %2, %add.11
  %add.13 = fadd half %2, %add.12
  %add.14 = fadd half %2, %add.13
  %add.15 = fadd half %2, %add.14
  %add.16 = fadd half %2, %add.15
  %add.17 = fadd half %2, %add.16
  %add.18 = fadd half %2, %add.17
  %add.19 = fadd half %2, %add.18
  %add.20 = fadd half %2, %add.19
  %add.21 = fadd half %2, %add.20
  %add.22 = fadd half %2, %add.21
  %add.23 = fadd half %2, %add.22
  %add.24 = fadd half %2, %add.23
  %add.25 = fadd half %2, %add.24
  %add.26 = fadd half %2, %add.25
  %add.27 = fadd half %2, %add.26
  %add.28 = fadd half %2, %add.27
  %add.29 = fadd half %2, %add.28
  %add.30 = fadd half %2, %add.29
  %add.31 = fadd half %2, %add.30
  %add.32 = fadd half %2, %add.31
  %add.33 = fadd half %2, %add.32
  %add.34 = fadd half %2, %add.33
  %add.35 = fadd half %2, %add.34
  %add.36 = fadd half %2, %add.35
  %add.37 = fadd half %2, %add.36
  %add.38 = fadd half %2, %add.37
  %add.39 = fadd half %2, %add.38
  %add.40 = fadd half %2, %add.39
  %add.41 = fadd half %2, %add.40
  %add.42 = fadd half %2, %add.41
  %add.43 = fadd half %2, %add.42
  %add.44 = fadd half %2, %add.43
  %add.45 = fadd half %2, %add.44
  %add.46 = fadd half %2, %add.45
  %add.47 = fadd half %2, %add.46
  %add.48 = fadd half %2, %add.47
  %add.49 = fadd half %2, %add.48
  %add.50 = fadd half %2, %add.49
  %add.51 = fadd half %2, %add.50
  %add.52 = fadd half %2, %add.51
  %add.53 = fadd half %2, %add.52
  %add.54 = fadd half %2, %add.53
  %add.55 = fadd half %2, %add.54
  %add.56 = fadd half %2, %add.55
  %add.57 = fadd half %2, %add.56
  %add.58 = fadd half %2, %add.57
  %add.59 = fadd half %2, %add.58
  %add.60 = fadd half %2, %add.59
  %add.61 = fadd half %2, %add.60
  %add.62 = fadd half %2, %add.61
  %add.63 = fadd half %2, %add.62
  %inc.63 = add nsw i32 %i.016, 64
  %exitcond.63 = icmp eq i32 %inc.63, 134217728
  br i1 %exitcond.63, label %4, label %5
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone
declare i64 @hc_get_workitem_id(i32) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: norecurse
define i32 @main() local_unnamed_addr #6 {
  %ad = alloca half*, align 8
  %bd = alloca half*, align 8
  %lp = alloca %struct.grid_launch_parm, align 8
  %agg.tmp = alloca %struct.dim3, align 4
  %agg.tmp8 = alloca %struct.dim3, align 4
  %agg.tmp10 = alloca %struct.grid_launch_parm, align 8
  %1 = bitcast half** %ad to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %1) #2
  %2 = bitcast half** %bd to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %2) #2
  %call = tail call i8* @_Znam(i64 128) #10
  %3 = bitcast i8* %call to half*
  %call1 = tail call i8* @_Znam(i64 128) #10
  %4 = bitcast i8* %call1 to half*
  br label %14

; <label>:5:                                      ; preds = %14
  %6 = bitcast half** %ad to i8**
  %call.i = call i32 @hipMalloc(i8** nonnull %6, i64 128) #11
  %7 = bitcast half** %bd to i8**
  %call.i20 = call i32 @hipMalloc(i8** nonnull %7, i64 128) #11
  %8 = load i8*, i8** %6, align 8, !tbaa !5
  %call6 = call i32 @hipMemcpy(i8* %8, i8* nonnull %call, i64 128, i32 1) #11
  %9 = load i8*, i8** %7, align 8, !tbaa !5
  %call7 = call i32 @hipMemcpy(i8* %9, i8* nonnull %call1, i64 128, i32 1) #11
  %10 = bitcast %struct.grid_launch_parm* %lp to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %10) #2
  %x.i.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 0, i32 0
  store i32 1, i32* %x.i.i, align 8, !tbaa !7
  %y.i.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 0, i32 1
  store i32 1, i32* %y.i.i, align 4, !tbaa !10
  %z.i.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 0, i32 2
  store i32 1, i32* %z.i.i, align 8, !tbaa !11
  %x.i2.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 1, i32 0
  store i32 1, i32* %x.i2.i, align 4, !tbaa !7
  %y.i3.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 1, i32 1
  store i32 1, i32* %y.i3.i, align 4, !tbaa !10
  %z.i4.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 1, i32 2
  store i32 1, i32* %z.i4.i, align 4, !tbaa !11
  %dynamic_group_mem_bytes = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 2
  store i32 0, i32* %dynamic_group_mem_bytes, align 8, !tbaa !12
  %x.i = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp, i32 0, i32 0
  store i32 2560, i32* %x.i, align 4, !tbaa !15
  %y.i = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp, i32 0, i32 1
  store i32 1, i32* %y.i, align 4, !tbaa !17
  %z.i = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp, i32 0, i32 2
  store i32 1, i32* %z.i, align 4, !tbaa !18
  %x.i21 = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp8, i32 0, i32 0
  store i32 64, i32* %x.i21, align 4, !tbaa !15
  %y.i22 = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp8, i32 0, i32 1
  store i32 1, i32* %y.i22, align 4, !tbaa !17
  %z.i23 = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp8, i32 0, i32 2
  store i32 1, i32* %z.i23, align 4, !tbaa !18
  %call9 = call %struct.ihipStream_t* @_Z19ihipPreLaunchKernelP12ihipStream_t4dim3S1_P16grid_launch_parmPKc(%struct.ihipStream_t* null, %struct.dim3* byval nonnull align 4 %agg.tmp, %struct.dim3* byval nonnull align 4 %agg.tmp8, %struct.grid_launch_parm* nonnull %lp, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #11
  %11 = bitcast %struct.grid_launch_parm* %agg.tmp10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %11, i8* nonnull %10, i64 56, i32 8, i1 false), !tbaa.struct !19
  %12 = load half*, half** %ad, align 8, !tbaa !5
  %13 = load half*, half** %bd, align 8, !tbaa !5
  call void @__hcLaunchKernel__Z6DoHAdd16grid_launch_parmPDhS0_(%struct.grid_launch_parm* byval nonnull align 8 %agg.tmp10, half* %12, half* %13) #11
  call void @_Z20ihipPostLaunchKernelPKcP12ihipStream_tR16grid_launch_parm(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.ihipStream_t* %call9, %struct.grid_launch_parm* nonnull dereferenceable(56) %lp) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %10) #2
  call void @llvm.lifetime.end(i64 4, i8* nonnull %2) #2
  call void @llvm.lifetime.end(i64 4, i8* nonnull %1) #2
  ret i32 0

; <label>:14:                                     ; preds = %14, %0
  %i.024 = phi i32 [ 0, %0 ], [ %inc.15, %14 ]
  %arrayidx = getelementptr inbounds half, half* %3, i32 %i.024
  store half 0xH72AB, half* %arrayidx, align 2, !tbaa !1
  %arrayidx3 = getelementptr inbounds half, half* %4, i32 %i.024
  store half 0xH0000, half* %arrayidx3, align 2, !tbaa !1
  %inc = or i32 %i.024, 1
  %arrayidx.1 = getelementptr inbounds half, half* %3, i32 %inc
  store half 0xH72AB, half* %arrayidx.1, align 2, !tbaa !1
  %arrayidx3.1 = getelementptr inbounds half, half* %4, i32 %inc
  store half 0xH0000, half* %arrayidx3.1, align 2, !tbaa !1
  %inc.1 = or i32 %i.024, 2
  %arrayidx.2 = getelementptr inbounds half, half* %3, i32 %inc.1
  store half 0xH72AB, half* %arrayidx.2, align 2, !tbaa !1
  %arrayidx3.2 = getelementptr inbounds half, half* %4, i32 %inc.1
  store half 0xH0000, half* %arrayidx3.2, align 2, !tbaa !1
  %inc.2 = or i32 %i.024, 3
  %arrayidx.3 = getelementptr inbounds half, half* %3, i32 %inc.2
  store half 0xH72AB, half* %arrayidx.3, align 2, !tbaa !1
  %arrayidx3.3 = getelementptr inbounds half, half* %4, i32 %inc.2
  store half 0xH0000, half* %arrayidx3.3, align 2, !tbaa !1
  %inc.3 = or i32 %i.024, 4
  %arrayidx.4 = getelementptr inbounds half, half* %3, i32 %inc.3
  store half 0xH72AB, half* %arrayidx.4, align 2, !tbaa !1
  %arrayidx3.4 = getelementptr inbounds half, half* %4, i32 %inc.3
  store half 0xH0000, half* %arrayidx3.4, align 2, !tbaa !1
  %inc.4 = or i32 %i.024, 5
  %arrayidx.5 = getelementptr inbounds half, half* %3, i32 %inc.4
  store half 0xH72AB, half* %arrayidx.5, align 2, !tbaa !1
  %arrayidx3.5 = getelementptr inbounds half, half* %4, i32 %inc.4
  store half 0xH0000, half* %arrayidx3.5, align 2, !tbaa !1
  %inc.5 = or i32 %i.024, 6
  %arrayidx.6 = getelementptr inbounds half, half* %3, i32 %inc.5
  store half 0xH72AB, half* %arrayidx.6, align 2, !tbaa !1
  %arrayidx3.6 = getelementptr inbounds half, half* %4, i32 %inc.5
  store half 0xH0000, half* %arrayidx3.6, align 2, !tbaa !1
  %inc.6 = or i32 %i.024, 7
  %arrayidx.7 = getelementptr inbounds half, half* %3, i32 %inc.6
  store half 0xH72AB, half* %arrayidx.7, align 2, !tbaa !1
  %arrayidx3.7 = getelementptr inbounds half, half* %4, i32 %inc.6
  store half 0xH0000, half* %arrayidx3.7, align 2, !tbaa !1
  %inc.7 = or i32 %i.024, 8
  %arrayidx.8 = getelementptr inbounds half, half* %3, i32 %inc.7
  store half 0xH72AB, half* %arrayidx.8, align 2, !tbaa !1
  %arrayidx3.8 = getelementptr inbounds half, half* %4, i32 %inc.7
  store half 0xH0000, half* %arrayidx3.8, align 2, !tbaa !1
  %inc.8 = or i32 %i.024, 9
  %arrayidx.9 = getelementptr inbounds half, half* %3, i32 %inc.8
  store half 0xH72AB, half* %arrayidx.9, align 2, !tbaa !1
  %arrayidx3.9 = getelementptr inbounds half, half* %4, i32 %inc.8
  store half 0xH0000, half* %arrayidx3.9, align 2, !tbaa !1
  %inc.9 = or i32 %i.024, 10
  %arrayidx.10 = getelementptr inbounds half, half* %3, i32 %inc.9
  store half 0xH72AB, half* %arrayidx.10, align 2, !tbaa !1
  %arrayidx3.10 = getelementptr inbounds half, half* %4, i32 %inc.9
  store half 0xH0000, half* %arrayidx3.10, align 2, !tbaa !1
  %inc.10 = or i32 %i.024, 11
  %arrayidx.11 = getelementptr inbounds half, half* %3, i32 %inc.10
  store half 0xH72AB, half* %arrayidx.11, align 2, !tbaa !1
  %arrayidx3.11 = getelementptr inbounds half, half* %4, i32 %inc.10
  store half 0xH0000, half* %arrayidx3.11, align 2, !tbaa !1
  %inc.11 = or i32 %i.024, 12
  %arrayidx.12 = getelementptr inbounds half, half* %3, i32 %inc.11
  store half 0xH72AB, half* %arrayidx.12, align 2, !tbaa !1
  %arrayidx3.12 = getelementptr inbounds half, half* %4, i32 %inc.11
  store half 0xH0000, half* %arrayidx3.12, align 2, !tbaa !1
  %inc.12 = or i32 %i.024, 13
  %arrayidx.13 = getelementptr inbounds half, half* %3, i32 %inc.12
  store half 0xH72AB, half* %arrayidx.13, align 2, !tbaa !1
  %arrayidx3.13 = getelementptr inbounds half, half* %4, i32 %inc.12
  store half 0xH0000, half* %arrayidx3.13, align 2, !tbaa !1
  %inc.13 = or i32 %i.024, 14
  %arrayidx.14 = getelementptr inbounds half, half* %3, i32 %inc.13
  store half 0xH72AB, half* %arrayidx.14, align 2, !tbaa !1
  %arrayidx3.14 = getelementptr inbounds half, half* %4, i32 %inc.13
  store half 0xH0000, half* %arrayidx3.14, align 2, !tbaa !1
  %inc.14 = or i32 %i.024, 15
  %arrayidx.15 = getelementptr inbounds half, half* %3, i32 %inc.14
  store half 0xH72AB, half* %arrayidx.15, align 2, !tbaa !1
  %arrayidx3.15 = getelementptr inbounds half, half* %4, i32 %inc.14
  store half 0xH0000, half* %arrayidx3.15, align 2, !tbaa !1
  %inc.15 = add nsw i32 %i.024, 16
  %exitcond.15 = icmp eq i32 %inc.15, 64
  br i1 %exitcond.15, label %5, label %14
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) local_unnamed_addr #7

declare i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare %struct.ihipStream_t* @_Z19ihipPreLaunchKernelP12ihipStream_t4dim3S1_P16grid_launch_parmPKc(%struct.ihipStream_t*, %struct.dim3* byval align 4, %struct.dim3* byval align 4, %struct.grid_launch_parm*, i8*) local_unnamed_addr #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare void @_Z20ihipPostLaunchKernelPKcP12ihipStream_tR16grid_launch_parm(i8*, %struct.ihipStream_t*, %struct.grid_launch_parm* dereferenceable(56)) local_unnamed_addr #0

declare i32 @hipMalloc(i8**, i64) local_unnamed_addr #0

define internal void @_GLOBAL__sub_I_hadd1.1.cpp() #8 {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit) #11
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

declare void @__hcLaunchKernel__Z6DoHAdd16grid_launch_parmPDhS0_(%struct.grid_launch_parm*, half*, half*)

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "hc_grid_launch" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin nounwind readnone }
attributes #10 = { builtin nobuiltin }
attributes #11 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"HCC clang version 4.0.0  (based on HCC 1.0.16501-04a69df-ef406d4-eef66ba )"}
!1 = !{!2, !2, i64 0}
!2 = !{!"__fp16", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTS7gl_dim3", !9, i64 0, !9, i64 4, !9, i64 8}
!9 = !{!"int", !3, i64 0}
!10 = !{!8, !9, i64 4}
!11 = !{!8, !9, i64 8}
!12 = !{!13, !9, i64 24}
!13 = !{!"_ZTS16grid_launch_parm", !8, i64 0, !8, i64 12, !9, i64 24, !14, i64 28, !9, i64 32, !6, i64 40, !6, i64 48}
!14 = !{!"_ZTS14gl_barrier_bit", !3, i64 0}
!15 = !{!16, !9, i64 0}
!16 = !{!"_ZTS4dim3", !9, i64 0, !9, i64 4, !9, i64 8}
!17 = !{!16, !9, i64 4}
!18 = !{!16, !9, i64 8}
!19 = !{i64 0, i64 4, !20, i64 4, i64 4, !20, i64 8, i64 4, !20, i64 12, i64 4, !20, i64 16, i64 4, !20, i64 20, i64 4, !20, i64 24, i64 4, !20, i64 28, i64 4, !21, i64 32, i64 4, !20, i64 40, i64 8, !5, i64 48, i64 8, !5}
!20 = !{!9, !9, i64 0}
!21 = !{!14, !14, i64 0}

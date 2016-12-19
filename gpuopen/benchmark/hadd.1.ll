; ModuleID = '<stdin>'
source_filename = "hadd.1.cpp"
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
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [7 x i8] c"DoHAdd\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"s for \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" HAdd\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Throughput: \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" Tops/s\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_hadd.1.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define i64 @_Z10dtime_usecy(i64 %start) local_unnamed_addr #3 {
  %tv = alloca %struct.timeval, align 8
  %1 = bitcast %struct.timeval* %tv to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %1) #2
  %call = call i32 @gettimeofday(%struct.timeval* nonnull %tv, %struct.timezone* null) #11
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  %2 = load i64, i64* %tv_sec, align 8, !tbaa !1
  %mul = mul i64 %2, 1000000
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  %3 = load i64, i64* %tv_usec, align 8, !tbaa !6
  %add = sub i64 %3, %start
  %sub = add i64 %add, %mul
  call void @llvm.lifetime.end(i64 16, i8* nonnull %1) #2
  ret i64 %sub
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: alwaysinline nounwind
define void @_Z6DoHAdd16grid_launch_parmPDhS0_(%struct.grid_launch_parm* byval nocapture readnone align 8 %lp, half* nocapture readonly %a, half* nocapture %b) local_unnamed_addr #5 {
  %call = tail call i64 @hc_get_workitem_id(i32 0) #12
  %1 = trunc i64 %call to i32
  %arrayidx = getelementptr inbounds half, half* %a, i32 %1
  %2 = load half, half* %arrayidx, align 2, !tbaa !7
  %arrayidx2 = getelementptr inbounds half, half* %b, i32 %1
  %3 = load half, half* %arrayidx2, align 2, !tbaa !7
  br label %5

; <label>:4:                                      ; preds = %5
  store half %conv5.63, half* %arrayidx2, align 2, !tbaa !7
  ret void

; <label>:5:                                      ; preds = %5, %0
  %i.020 = phi i32 [ 0, %0 ], [ %inc.63, %5 ]
  %b0.019 = phi half [ %3, %0 ], [ %conv5.63, %5 ]
  %conv5 = fadd half %2, %b0.019
  %conv5.1 = fadd half %2, %conv5
  %conv5.2 = fadd half %2, %conv5.1
  %conv5.3 = fadd half %2, %conv5.2
  %conv5.4 = fadd half %2, %conv5.3
  %conv5.5 = fadd half %2, %conv5.4
  %conv5.6 = fadd half %2, %conv5.5
  %conv5.7 = fadd half %2, %conv5.6
  %conv5.8 = fadd half %2, %conv5.7
  %conv5.9 = fadd half %2, %conv5.8
  %conv5.10 = fadd half %2, %conv5.9
  %conv5.11 = fadd half %2, %conv5.10
  %conv5.12 = fadd half %2, %conv5.11
  %conv5.13 = fadd half %2, %conv5.12
  %conv5.14 = fadd half %2, %conv5.13
  %conv5.15 = fadd half %2, %conv5.14
  %conv5.16 = fadd half %2, %conv5.15
  %conv5.17 = fadd half %2, %conv5.16
  %conv5.18 = fadd half %2, %conv5.17
  %conv5.19 = fadd half %2, %conv5.18
  %conv5.20 = fadd half %2, %conv5.19
  %conv5.21 = fadd half %2, %conv5.20
  %conv5.22 = fadd half %2, %conv5.21
  %conv5.23 = fadd half %2, %conv5.22
  %conv5.24 = fadd half %2, %conv5.23
  %conv5.25 = fadd half %2, %conv5.24
  %conv5.26 = fadd half %2, %conv5.25
  %conv5.27 = fadd half %2, %conv5.26
  %conv5.28 = fadd half %2, %conv5.27
  %conv5.29 = fadd half %2, %conv5.28
  %conv5.30 = fadd half %2, %conv5.29
  %conv5.31 = fadd half %2, %conv5.30
  %conv5.32 = fadd half %2, %conv5.31
  %conv5.33 = fadd half %2, %conv5.32
  %conv5.34 = fadd half %2, %conv5.33
  %conv5.35 = fadd half %2, %conv5.34
  %conv5.36 = fadd half %2, %conv5.35
  %conv5.37 = fadd half %2, %conv5.36
  %conv5.38 = fadd half %2, %conv5.37
  %conv5.39 = fadd half %2, %conv5.38
  %conv5.40 = fadd half %2, %conv5.39
  %conv5.41 = fadd half %2, %conv5.40
  %conv5.42 = fadd half %2, %conv5.41
  %conv5.43 = fadd half %2, %conv5.42
  %conv5.44 = fadd half %2, %conv5.43
  %conv5.45 = fadd half %2, %conv5.44
  %conv5.46 = fadd half %2, %conv5.45
  %conv5.47 = fadd half %2, %conv5.46
  %conv5.48 = fadd half %2, %conv5.47
  %conv5.49 = fadd half %2, %conv5.48
  %conv5.50 = fadd half %2, %conv5.49
  %conv5.51 = fadd half %2, %conv5.50
  %conv5.52 = fadd half %2, %conv5.51
  %conv5.53 = fadd half %2, %conv5.52
  %conv5.54 = fadd half %2, %conv5.53
  %conv5.55 = fadd half %2, %conv5.54
  %conv5.56 = fadd half %2, %conv5.55
  %conv5.57 = fadd half %2, %conv5.56
  %conv5.58 = fadd half %2, %conv5.57
  %conv5.59 = fadd half %2, %conv5.58
  %conv5.60 = fadd half %2, %conv5.59
  %conv5.61 = fadd half %2, %conv5.60
  %conv5.62 = fadd half %2, %conv5.61
  %conv5.63 = fadd half %2, %conv5.62
  %inc.63 = add nsw i32 %i.020, 64
  %exitcond.63 = icmp eq i32 %inc.63, 134217728
  br i1 %exitcond.63, label %4, label %5
}

; Function Attrs: nounwind readnone
declare i64 @hc_get_workitem_id(i32) local_unnamed_addr #6

; Function Attrs: norecurse
define i32 @main() local_unnamed_addr #7 {
  %tv.i58 = alloca %struct.timeval, align 8
  %tv.i = alloca %struct.timeval, align 8
  %ad = alloca half*, align 8
  %bd = alloca half*, align 8
  %lp = alloca %struct.grid_launch_parm, align 8
  %agg.tmp = alloca %struct.dim3, align 4
  %agg.tmp9 = alloca %struct.dim3, align 4
  %agg.tmp11 = alloca %struct.grid_launch_parm, align 8
  %1 = bitcast half** %ad to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %1) #2
  %2 = bitcast half** %bd to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %2) #2
  %call = tail call i8* @_Znam(i64 128) #13
  %3 = bitcast i8* %call to half*
  %call1 = tail call i8* @_Znam(i64 128) #13
  %4 = bitcast i8* %call1 to half*
  br label %46

; <label>:5:                                      ; preds = %46
  %6 = bitcast half** %ad to i8**
  %call.i = call i32 @hipMalloc(i8** nonnull %6, i64 128) #14
  %7 = bitcast half** %bd to i8**
  %call.i47 = call i32 @hipMalloc(i8** nonnull %7, i64 128) #14
  %8 = load i8*, i8** %6, align 8, !tbaa !9
  %call6 = call i32 @hipMemcpy(i8* %8, i8* nonnull %call, i64 128, i32 1) #14
  %9 = load i8*, i8** %7, align 8, !tbaa !9
  %call7 = call i32 @hipMemcpy(i8* %9, i8* nonnull %call1, i64 128, i32 1) #14
  %10 = bitcast %struct.timeval* %tv.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %10) #2
  %call.i48 = call i32 @gettimeofday(%struct.timeval* nonnull %tv.i, %struct.timezone* null) #11
  %tv_sec.i = getelementptr inbounds %struct.timeval, %struct.timeval* %tv.i, i32 0, i32 0
  %11 = load i64, i64* %tv_sec.i, align 8, !tbaa !1
  %tv_usec.i = getelementptr inbounds %struct.timeval, %struct.timeval* %tv.i, i32 0, i32 1
  %12 = load i64, i64* %tv_usec.i, align 8, !tbaa !6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %10) #2
  %13 = bitcast %struct.grid_launch_parm* %lp to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %13) #2
  %x.i.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 0, i32 0
  store i32 1, i32* %x.i.i, align 8, !tbaa !11
  %y.i.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 0, i32 1
  store i32 1, i32* %y.i.i, align 4, !tbaa !14
  %z.i.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 0, i32 2
  store i32 1, i32* %z.i.i, align 8, !tbaa !15
  %x.i2.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 1, i32 0
  store i32 1, i32* %x.i2.i, align 4, !tbaa !11
  %y.i3.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 1, i32 1
  store i32 1, i32* %y.i3.i, align 4, !tbaa !14
  %z.i4.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 1, i32 2
  store i32 1, i32* %z.i4.i, align 4, !tbaa !15
  %dynamic_group_mem_bytes = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 2
  store i32 0, i32* %dynamic_group_mem_bytes, align 8, !tbaa !16
  %x.i = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp, i32 0, i32 0
  store i32 2560, i32* %x.i, align 4, !tbaa !19
  %y.i = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp, i32 0, i32 1
  store i32 1, i32* %y.i, align 4, !tbaa !21
  %z.i = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp, i32 0, i32 2
  store i32 1, i32* %z.i, align 4, !tbaa !22
  %x.i52 = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp9, i32 0, i32 0
  store i32 64, i32* %x.i52, align 4, !tbaa !19
  %y.i53 = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp9, i32 0, i32 1
  store i32 1, i32* %y.i53, align 4, !tbaa !21
  %z.i54 = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp9, i32 0, i32 2
  store i32 1, i32* %z.i54, align 4, !tbaa !22
  %call10 = call %struct.ihipStream_t* @_Z19ihipPreLaunchKernelP12ihipStream_t4dim3S1_P16grid_launch_parmPKc(%struct.ihipStream_t* null, %struct.dim3* byval nonnull align 4 %agg.tmp, %struct.dim3* byval nonnull align 4 %agg.tmp9, %struct.grid_launch_parm* nonnull %lp, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #14
  %14 = bitcast %struct.grid_launch_parm* %agg.tmp11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %14, i8* nonnull %13, i64 56, i32 8, i1 false), !tbaa.struct !23
  %15 = load half*, half** %ad, align 8, !tbaa !9
  %16 = load half*, half** %bd, align 8, !tbaa !9
  call void @__hcLaunchKernel__Z6DoHAdd16grid_launch_parmPDhS0_(%struct.grid_launch_parm* byval nonnull align 8 %agg.tmp11, half* %15, half* %16) #14
  call void @_Z20ihipPostLaunchKernelPKcP12ihipStream_tR16grid_launch_parm(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.ihipStream_t* %call10, %struct.grid_launch_parm* nonnull dereferenceable(56) %lp) #14
  call void @llvm.lifetime.end(i64 56, i8* nonnull %13) #2
  %call12 = call i32 @hipDeviceSynchronize() #14
  %17 = bitcast %struct.timeval* %tv.i58 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %17) #2
  %call.i59 = call i32 @gettimeofday(%struct.timeval* nonnull %tv.i58, %struct.timezone* null) #11
  %tv_sec.i60 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv.i58, i32 0, i32 0
  %18 = load i64, i64* %tv_sec.i60, align 8, !tbaa !1
  %tv_usec.i62 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv.i58, i32 0, i32 1
  %19 = load i64, i64* %tv_usec.i62, align 8, !tbaa !6
  %tmp = sub i64 %18, %11
  %tmp96 = mul i64 %tmp, 1000000
  %add.i = sub i64 %19, %12
  %sub.i63 = add i64 %add.i, %tmp96
  call void @llvm.lifetime.end(i64 16, i8* nonnull %17) #2
  %conv = uitofp i64 %sub.i63 to float
  %div = fdiv float %conv, 1.000000e+06
  %conv.i = fpext float %div to double
  %call.i64 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull @_ZSt4cout, double %conv.i) #14
  %call.i.i = call i64 @strlen(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)) #11
  %call1.i65 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call.i64, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i64 %call.i.i) #14
  %call.i66 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIyEERSoT_(%"class.std::basic_ostream"* nonnull %call.i64, i64 21990232) #14
  %call.i.i67 = call i64 @strlen(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #11
  %call1.i68 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call.i66, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 %call.i.i67) #14
  %20 = bitcast %"class.std::basic_ostream"* %call.i66 to i8**
  %vtable.i70 = load i8*, i8** %20, align 8, !tbaa !26
  %vbase.offset.ptr.i71 = getelementptr i8, i8* %vtable.i70, i32 -24
  %21 = bitcast i8* %vbase.offset.ptr.i71 to i64*
  %vbase.offset.i72 = load i64, i64* %21, align 8
  %22 = bitcast %"class.std::basic_ostream"* %call.i66 to i8*
  %23 = trunc i64 %vbase.offset.i72 to i32
  %add.ptr.i73 = getelementptr inbounds i8, i8* %22, i32 %23
  %_M_ctype.i84 = getelementptr inbounds i8, i8* %add.ptr.i73, i32 240
  %24 = bitcast i8* %_M_ctype.i84 to %"class.std::ctype"**
  %25 = load %"class.std::ctype"*, %"class.std::ctype"** %24, align 8, !tbaa !28
  %tobool.i94 = icmp eq %"class.std::ctype"* %25, null
  br i1 %tobool.i94, label %26, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit95

; <label>:26:                                     ; preds = %5
  call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit95:  ; preds = %5
  %_M_widen_ok.i86 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %25, i32 0, i32 12
  %27 = load i8, i8* %_M_widen_ok.i86, align 8, !tbaa !31
  %tobool.i87 = icmp eq i8 %27, 0
  br i1 %tobool.i87, label %30, label %28

; <label>:28:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit95
  %arrayidx.i88 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %25, i32 0, i32 13, i32 10
  %29 = load i8, i8* %arrayidx.i88, align 1, !tbaa !33
  br label %_ZNKSt5ctypeIcE5widenEc.exit93

; <label>:30:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit95
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %25) #14
  %31 = bitcast %"class.std::ctype"* %25 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i89 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %31, align 8, !tbaa !26
  %vfn.i90 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i89, i32 6
  %32 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i90, align 8
  %call.i91 = call signext i8 %32(%"class.std::ctype"* nonnull %25, i8 signext 10) #14
  br label %_ZNKSt5ctypeIcE5widenEc.exit93

_ZNKSt5ctypeIcE5widenEc.exit93:                   ; preds = %30, %28
  %retval.0.i92 = phi i8 [ %29, %28 ], [ %call.i91, %30 ]
  %call1.i75 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %call.i66, i8 signext %retval.0.i92) #14
  %call.i76 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i75) #14
  %mul22 = fmul float %div, 1.000000e+06
  %div23 = fdiv float 0x4174F8B580000000, %mul22
  %call.i.i77 = call i64 @strlen(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #11
  %call1.i78 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i64 %call.i.i77) #14
  %conv.i79 = fpext float %div23 to double
  %call.i80 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull @_ZSt4cout, double %conv.i79) #14
  %call.i.i81 = call i64 @strlen(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)) #11
  %call1.i82 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call.i80, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64 %call.i.i81) #14
  %33 = bitcast %"class.std::basic_ostream"* %call.i80 to i8**
  %vtable.i = load i8*, i8** %33, align 8, !tbaa !26
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i32 -24
  %34 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %34, align 8
  %35 = bitcast %"class.std::basic_ostream"* %call.i80 to i8*
  %36 = trunc i64 %vbase.offset.i to i32
  %add.ptr.i = getelementptr inbounds i8, i8* %35, i32 %36
  %_M_ctype.i = getelementptr inbounds i8, i8* %add.ptr.i, i32 240
  %37 = bitcast i8* %_M_ctype.i to %"class.std::ctype"**
  %38 = load %"class.std::ctype"*, %"class.std::ctype"** %37, align 8, !tbaa !28
  %tobool.i83 = icmp eq %"class.std::ctype"* %38, null
  br i1 %tobool.i83, label %39, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

; <label>:39:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit93
  call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %_ZNKSt5ctypeIcE5widenEc.exit93
  %_M_widen_ok.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %38, i32 0, i32 12
  %40 = load i8, i8* %_M_widen_ok.i, align 8, !tbaa !31
  %tobool.i = icmp eq i8 %40, 0
  br i1 %tobool.i, label %43, label %41

; <label>:41:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
  %arrayidx.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %38, i32 0, i32 13, i32 10
  %42 = load i8, i8* %arrayidx.i, align 1, !tbaa !33
  br label %_ZNKSt5ctypeIcE5widenEc.exit

; <label>:43:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %38) #14
  %44 = bitcast %"class.std::ctype"* %38 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i56 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %44, align 8, !tbaa !26
  %vfn.i = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i56, i32 6
  %45 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i, align 8
  %call.i57 = call signext i8 %45(%"class.std::ctype"* nonnull %38, i8 signext 10) #14
  br label %_ZNKSt5ctypeIcE5widenEc.exit

_ZNKSt5ctypeIcE5widenEc.exit:                     ; preds = %43, %41
  %retval.0.i = phi i8 [ %42, %41 ], [ %call.i57, %43 ]
  %call1.i = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %call.i80, i8 signext %retval.0.i) #14
  %call.i51 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i) #14
  call void @llvm.lifetime.end(i64 4, i8* nonnull %2) #2
  call void @llvm.lifetime.end(i64 4, i8* nonnull %1) #2
  ret i32 0

; <label>:46:                                     ; preds = %46, %0
  %i.097 = phi i32 [ 0, %0 ], [ %inc.15, %46 ]
  %arrayidx = getelementptr inbounds half, half* %3, i32 %i.097
  store half 0xH72AB, half* %arrayidx, align 2, !tbaa !7
  %arrayidx3 = getelementptr inbounds half, half* %4, i32 %i.097
  store half 0xH0000, half* %arrayidx3, align 2, !tbaa !7
  %inc = or i32 %i.097, 1
  %arrayidx.1 = getelementptr inbounds half, half* %3, i32 %inc
  store half 0xH72AB, half* %arrayidx.1, align 2, !tbaa !7
  %arrayidx3.1 = getelementptr inbounds half, half* %4, i32 %inc
  store half 0xH0000, half* %arrayidx3.1, align 2, !tbaa !7
  %inc.1 = or i32 %i.097, 2
  %arrayidx.2 = getelementptr inbounds half, half* %3, i32 %inc.1
  store half 0xH72AB, half* %arrayidx.2, align 2, !tbaa !7
  %arrayidx3.2 = getelementptr inbounds half, half* %4, i32 %inc.1
  store half 0xH0000, half* %arrayidx3.2, align 2, !tbaa !7
  %inc.2 = or i32 %i.097, 3
  %arrayidx.3 = getelementptr inbounds half, half* %3, i32 %inc.2
  store half 0xH72AB, half* %arrayidx.3, align 2, !tbaa !7
  %arrayidx3.3 = getelementptr inbounds half, half* %4, i32 %inc.2
  store half 0xH0000, half* %arrayidx3.3, align 2, !tbaa !7
  %inc.3 = or i32 %i.097, 4
  %arrayidx.4 = getelementptr inbounds half, half* %3, i32 %inc.3
  store half 0xH72AB, half* %arrayidx.4, align 2, !tbaa !7
  %arrayidx3.4 = getelementptr inbounds half, half* %4, i32 %inc.3
  store half 0xH0000, half* %arrayidx3.4, align 2, !tbaa !7
  %inc.4 = or i32 %i.097, 5
  %arrayidx.5 = getelementptr inbounds half, half* %3, i32 %inc.4
  store half 0xH72AB, half* %arrayidx.5, align 2, !tbaa !7
  %arrayidx3.5 = getelementptr inbounds half, half* %4, i32 %inc.4
  store half 0xH0000, half* %arrayidx3.5, align 2, !tbaa !7
  %inc.5 = or i32 %i.097, 6
  %arrayidx.6 = getelementptr inbounds half, half* %3, i32 %inc.5
  store half 0xH72AB, half* %arrayidx.6, align 2, !tbaa !7
  %arrayidx3.6 = getelementptr inbounds half, half* %4, i32 %inc.5
  store half 0xH0000, half* %arrayidx3.6, align 2, !tbaa !7
  %inc.6 = or i32 %i.097, 7
  %arrayidx.7 = getelementptr inbounds half, half* %3, i32 %inc.6
  store half 0xH72AB, half* %arrayidx.7, align 2, !tbaa !7
  %arrayidx3.7 = getelementptr inbounds half, half* %4, i32 %inc.6
  store half 0xH0000, half* %arrayidx3.7, align 2, !tbaa !7
  %inc.7 = or i32 %i.097, 8
  %arrayidx.8 = getelementptr inbounds half, half* %3, i32 %inc.7
  store half 0xH72AB, half* %arrayidx.8, align 2, !tbaa !7
  %arrayidx3.8 = getelementptr inbounds half, half* %4, i32 %inc.7
  store half 0xH0000, half* %arrayidx3.8, align 2, !tbaa !7
  %inc.8 = or i32 %i.097, 9
  %arrayidx.9 = getelementptr inbounds half, half* %3, i32 %inc.8
  store half 0xH72AB, half* %arrayidx.9, align 2, !tbaa !7
  %arrayidx3.9 = getelementptr inbounds half, half* %4, i32 %inc.8
  store half 0xH0000, half* %arrayidx3.9, align 2, !tbaa !7
  %inc.9 = or i32 %i.097, 10
  %arrayidx.10 = getelementptr inbounds half, half* %3, i32 %inc.9
  store half 0xH72AB, half* %arrayidx.10, align 2, !tbaa !7
  %arrayidx3.10 = getelementptr inbounds half, half* %4, i32 %inc.9
  store half 0xH0000, half* %arrayidx3.10, align 2, !tbaa !7
  %inc.10 = or i32 %i.097, 11
  %arrayidx.11 = getelementptr inbounds half, half* %3, i32 %inc.10
  store half 0xH72AB, half* %arrayidx.11, align 2, !tbaa !7
  %arrayidx3.11 = getelementptr inbounds half, half* %4, i32 %inc.10
  store half 0xH0000, half* %arrayidx3.11, align 2, !tbaa !7
  %inc.11 = or i32 %i.097, 12
  %arrayidx.12 = getelementptr inbounds half, half* %3, i32 %inc.11
  store half 0xH72AB, half* %arrayidx.12, align 2, !tbaa !7
  %arrayidx3.12 = getelementptr inbounds half, half* %4, i32 %inc.11
  store half 0xH0000, half* %arrayidx3.12, align 2, !tbaa !7
  %inc.12 = or i32 %i.097, 13
  %arrayidx.13 = getelementptr inbounds half, half* %3, i32 %inc.12
  store half 0xH72AB, half* %arrayidx.13, align 2, !tbaa !7
  %arrayidx3.13 = getelementptr inbounds half, half* %4, i32 %inc.12
  store half 0xH0000, half* %arrayidx3.13, align 2, !tbaa !7
  %inc.13 = or i32 %i.097, 14
  %arrayidx.14 = getelementptr inbounds half, half* %3, i32 %inc.13
  store half 0xH72AB, half* %arrayidx.14, align 2, !tbaa !7
  %arrayidx3.14 = getelementptr inbounds half, half* %4, i32 %inc.13
  store half 0xH0000, half* %arrayidx3.14, align 2, !tbaa !7
  %inc.14 = or i32 %i.097, 15
  %arrayidx.15 = getelementptr inbounds half, half* %3, i32 %inc.14
  store half 0xH72AB, half* %arrayidx.15, align 2, !tbaa !7
  %arrayidx3.15 = getelementptr inbounds half, half* %4, i32 %inc.14
  store half 0xH0000, half* %arrayidx3.15, align 2, !tbaa !7
  %inc.15 = add nsw i32 %i.097, 16
  %exitcond.15 = icmp eq i32 %inc.15, 64
  br i1 %exitcond.15, label %5, label %46
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) local_unnamed_addr #8

declare i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare %struct.ihipStream_t* @_Z19ihipPreLaunchKernelP12ihipStream_t4dim3S1_P16grid_launch_parmPKc(%struct.ihipStream_t*, %struct.dim3* byval align 4, %struct.dim3* byval align 4, %struct.grid_launch_parm*, i8*) local_unnamed_addr #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare void @_Z20ihipPostLaunchKernelPKcP12ihipStream_tR16grid_launch_parm(i8*, %struct.ihipStream_t*, %struct.grid_launch_parm* dereferenceable(56)) local_unnamed_addr #0

declare i32 @hipDeviceSynchronize() local_unnamed_addr #0

declare i32 @hipMalloc(i8**, i64) local_unnamed_addr #0

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"*, double) local_unnamed_addr #0

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272), i8*, i64) local_unnamed_addr #0

; Function Attrs: nounwind
declare i64 @strlen(i8*) local_unnamed_addr #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIyEERSoT_(%"class.std::basic_ostream"*, i64) local_unnamed_addr #0

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"*, i8 signext) local_unnamed_addr #0

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) local_unnamed_addr #0

define internal void @_GLOBAL__sub_I_hadd.1.cpp() #10 {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit) #14
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

declare void @__hcLaunchKernel__Z6DoHAdd16grid_launch_parmPDhS0_(%struct.grid_launch_parm*, half*, half*)

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
!8 = !{!"__fp16", !4, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTS7gl_dim3", !13, i64 0, !13, i64 4, !13, i64 8}
!13 = !{!"int", !4, i64 0}
!14 = !{!12, !13, i64 4}
!15 = !{!12, !13, i64 8}
!16 = !{!17, !13, i64 24}
!17 = !{!"_ZTS16grid_launch_parm", !12, i64 0, !12, i64 12, !13, i64 24, !18, i64 28, !13, i64 32, !10, i64 40, !10, i64 48}
!18 = !{!"_ZTS14gl_barrier_bit", !4, i64 0}
!19 = !{!20, !13, i64 0}
!20 = !{!"_ZTS4dim3", !13, i64 0, !13, i64 4, !13, i64 8}
!21 = !{!20, !13, i64 4}
!22 = !{!20, !13, i64 8}
!23 = !{i64 0, i64 4, !24, i64 4, i64 4, !24, i64 8, i64 4, !24, i64 12, i64 4, !24, i64 16, i64 4, !24, i64 20, i64 4, !24, i64 24, i64 4, !24, i64 28, i64 4, !25, i64 32, i64 4, !24, i64 40, i64 8, !9, i64 48, i64 8, !9}
!24 = !{!13, !13, i64 0}
!25 = !{!18, !18, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !5, i64 0}
!28 = !{!29, !10, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !10, i64 216, !4, i64 224, !30, i64 225, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256}
!30 = !{!"bool", !4, i64 0}
!31 = !{!32, !4, i64 56}
!32 = !{!"_ZTSSt5ctypeIcE", !10, i64 16, !30, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !4, i64 56, !4, i64 57, !4, i64 313, !4, i64 569}
!33 = !{!4, !4, i64 0}

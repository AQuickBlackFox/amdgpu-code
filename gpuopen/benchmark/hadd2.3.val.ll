; ModuleID = '<stdin>'
source_filename = "hadd2.3.val.cpp"
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
@.str = private unnamed_addr constant [10 x i8] c"DoHAdd2PK\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"s for \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" HAdd2PK\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Throughput: \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" Tops/s\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_hadd2.3.val.cpp, i8* null }]

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
  %call = call i32 @gettimeofday(%struct.timeval* nonnull %tv, %struct.timezone* null) #12
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

; Function Attrs: alwaysinline norecurse nounwind readnone
define i32 @_Z15__rocm_hadd_lowjj(i32 returned %a, i32 %b) local_unnamed_addr #5 {
  ret i32 %a
}

; Function Attrs: alwaysinline norecurse nounwind readnone
define i32 @_Z16__rocm_hadd_highjjj(i32 %a, i32 %b, i32 returned %c) local_unnamed_addr #5 {
  ret i32 %c
}

; Function Attrs: alwaysinline nounwind
define void @_Z9DoHAdd2PK16grid_launch_parmPjS0_(%struct.grid_launch_parm* byval nocapture readnone align 8 %lp, i32* nocapture readonly %a, i32* nocapture %b) local_unnamed_addr #6 {
  %call = tail call i64 @hc_get_workitem_id(i32 0) #13
  %1 = trunc i64 %call to i32
  %arrayidx = getelementptr inbounds i32, i32* %a, i32 %1
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %arrayidx2 = getelementptr inbounds i32, i32* %b, i32 %1
  store i32 %2, i32* %arrayidx2, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @hc_get_workitem_id(i32) local_unnamed_addr #7

; Function Attrs: norecurse
define i32 @main() local_unnamed_addr #8 {
  %tv.i66 = alloca %struct.timeval, align 8
  %tv.i = alloca %struct.timeval, align 8
  %ad = alloca i32*, align 8
  %bd = alloca i32*, align 8
  %lp = alloca %struct.grid_launch_parm, align 8
  %agg.tmp = alloca %struct.dim3, align 4
  %agg.tmp9 = alloca %struct.dim3, align 4
  %agg.tmp11 = alloca %struct.grid_launch_parm, align 8
  %1 = bitcast i32** %ad to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %1) #2
  %2 = bitcast i32** %bd to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %2) #2
  %call = tail call i8* @_Znam(i64 256) #14
  %3 = bitcast i8* %call to i32*
  %call1 = tail call i8* @_Znam(i64 256) #14
  %4 = bitcast i8* %call1 to i32*
  br label %65

; <label>:5:                                      ; preds = %65
  %6 = bitcast i32** %ad to i8**
  %call.i = call i32 @hipMalloc(i8** nonnull %6, i64 256) #15
  %7 = bitcast i32** %bd to i8**
  %call.i55 = call i32 @hipMalloc(i8** nonnull %7, i64 256) #15
  %8 = load i8*, i8** %6, align 8, !tbaa !9
  %call6 = call i32 @hipMemcpy(i8* %8, i8* nonnull %call, i64 256, i32 1) #15
  %9 = load i8*, i8** %7, align 8, !tbaa !9
  %call7 = call i32 @hipMemcpy(i8* %9, i8* nonnull %call1, i64 256, i32 1) #15
  %10 = bitcast %struct.timeval* %tv.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %10) #2
  %call.i56 = call i32 @gettimeofday(%struct.timeval* nonnull %tv.i, %struct.timezone* null) #12
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
  store i32 1, i32* %y.i.i, align 4, !tbaa !13
  %z.i.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 0, i32 2
  store i32 1, i32* %z.i.i, align 8, !tbaa !14
  %x.i2.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 1, i32 0
  store i32 1, i32* %x.i2.i, align 4, !tbaa !11
  %y.i3.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 1, i32 1
  store i32 1, i32* %y.i3.i, align 4, !tbaa !13
  %z.i4.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 1, i32 2
  store i32 1, i32* %z.i4.i, align 4, !tbaa !14
  %dynamic_group_mem_bytes = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 2
  store i32 0, i32* %dynamic_group_mem_bytes, align 8, !tbaa !15
  %x.i = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp, i32 0, i32 0
  store i32 1, i32* %x.i, align 4, !tbaa !18
  %y.i = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp, i32 0, i32 1
  store i32 1, i32* %y.i, align 4, !tbaa !20
  %z.i = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp, i32 0, i32 2
  store i32 1, i32* %z.i, align 4, !tbaa !21
  %x.i60 = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp9, i32 0, i32 0
  store i32 64, i32* %x.i60, align 4, !tbaa !18
  %y.i61 = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp9, i32 0, i32 1
  store i32 1, i32* %y.i61, align 4, !tbaa !20
  %z.i62 = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp9, i32 0, i32 2
  store i32 1, i32* %z.i62, align 4, !tbaa !21
  %call10 = call %struct.ihipStream_t* @_Z19ihipPreLaunchKernelP12ihipStream_t4dim3S1_P16grid_launch_parmPKc(%struct.ihipStream_t* null, %struct.dim3* byval nonnull align 4 %agg.tmp, %struct.dim3* byval nonnull align 4 %agg.tmp9, %struct.grid_launch_parm* nonnull %lp, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)) #15
  %14 = bitcast %struct.grid_launch_parm* %agg.tmp11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %14, i8* nonnull %13, i64 56, i32 8, i1 false), !tbaa.struct !22
  %15 = load i32*, i32** %ad, align 8, !tbaa !9
  %16 = load i32*, i32** %bd, align 8, !tbaa !9
  call void @__hcLaunchKernel__Z9DoHAdd2PK16grid_launch_parmPjS0_(%struct.grid_launch_parm* byval nonnull align 8 %agg.tmp11, i32* %15, i32* %16) #15
  call void @_Z20ihipPostLaunchKernelPKcP12ihipStream_tR16grid_launch_parm(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct.ihipStream_t* %call10, %struct.grid_launch_parm* nonnull dereferenceable(56) %lp) #15
  call void @llvm.lifetime.end(i64 56, i8* nonnull %13) #2
  %call12 = call i32 @hipDeviceSynchronize() #15
  %17 = bitcast %struct.timeval* %tv.i66 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %17) #2
  %call.i67 = call i32 @gettimeofday(%struct.timeval* nonnull %tv.i66, %struct.timezone* null) #12
  %tv_sec.i68 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv.i66, i32 0, i32 0
  %18 = load i64, i64* %tv_sec.i68, align 8, !tbaa !1
  %tv_usec.i70 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv.i66, i32 0, i32 1
  %19 = load i64, i64* %tv_usec.i70, align 8, !tbaa !6
  %tmp = sub i64 %18, %11
  %tmp135 = mul i64 %tmp, 1000000
  %add.i = sub i64 %19, %12
  %sub.i71 = add i64 %add.i, %tmp135
  call void @llvm.lifetime.end(i64 16, i8* nonnull %17) #2
  %conv = uitofp i64 %sub.i71 to float
  %div = fdiv float %conv, 1.000000e+06
  %conv.i = fpext float %div to double
  %call.i72 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull @_ZSt4cout, double %conv.i) #15
  %call.i.i = call i64 @strlen(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)) #12
  %call1.i73 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call.i72, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i64 %call.i.i) #15
  %call.i74 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIyEERSoT_(%"class.std::basic_ostream"* nonnull %call.i72, i64 0) #15
  %call.i.i75 = call i64 @strlen(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #12
  %call1.i76 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call.i74, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i64 %call.i.i75) #15
  %20 = bitcast %"class.std::basic_ostream"* %call.i74 to i8**
  %vtable.i78 = load i8*, i8** %20, align 8, !tbaa !24
  %vbase.offset.ptr.i79 = getelementptr i8, i8* %vtable.i78, i32 -24
  %21 = bitcast i8* %vbase.offset.ptr.i79 to i64*
  %vbase.offset.i80 = load i64, i64* %21, align 8
  %22 = bitcast %"class.std::basic_ostream"* %call.i74 to i8*
  %23 = trunc i64 %vbase.offset.i80 to i32
  %add.ptr.i81 = getelementptr inbounds i8, i8* %22, i32 %23
  %_M_ctype.i111 = getelementptr inbounds i8, i8* %add.ptr.i81, i32 240
  %24 = bitcast i8* %_M_ctype.i111 to %"class.std::ctype"**
  %25 = load %"class.std::ctype"*, %"class.std::ctype"** %24, align 8, !tbaa !26
  %tobool.i131 = icmp eq %"class.std::ctype"* %25, null
  br i1 %tobool.i131, label %26, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit132

; <label>:26:                                     ; preds = %5
  call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit132: ; preds = %5
  %_M_widen_ok.i113 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %25, i32 0, i32 12
  %27 = load i8, i8* %_M_widen_ok.i113, align 8, !tbaa !29
  %tobool.i114 = icmp eq i8 %27, 0
  br i1 %tobool.i114, label %30, label %28

; <label>:28:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit132
  %arrayidx.i115 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %25, i32 0, i32 13, i32 10
  %29 = load i8, i8* %arrayidx.i115, align 1, !tbaa !31
  br label %_ZNKSt5ctypeIcE5widenEc.exit120

; <label>:30:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit132
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %25) #15
  %31 = bitcast %"class.std::ctype"* %25 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i116 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %31, align 8, !tbaa !24
  %vfn.i117 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i116, i32 6
  %32 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i117, align 8
  %call.i118 = call signext i8 %32(%"class.std::ctype"* nonnull %25, i8 signext 10) #15
  br label %_ZNKSt5ctypeIcE5widenEc.exit120

_ZNKSt5ctypeIcE5widenEc.exit120:                  ; preds = %30, %28
  %retval.0.i119 = phi i8 [ %29, %28 ], [ %call.i118, %30 ]
  %call1.i83 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %call.i74, i8 signext %retval.0.i119) #15
  %call.i84 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i83) #15
  %mul23 = fmul float %div, 1.000000e+06
  %div24 = fdiv float 0.000000e+00, %mul23
  %call.i.i85 = call i64 @strlen(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #12
  %call1.i86 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i64 %call.i.i85) #15
  %conv.i87 = fpext float %div24 to double
  %call.i88 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull @_ZSt4cout, double %conv.i87) #15
  %call.i.i89 = call i64 @strlen(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)) #12
  %call1.i90 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call.i88, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64 %call.i.i89) #15
  %33 = bitcast %"class.std::basic_ostream"* %call.i88 to i8**
  %vtable.i92 = load i8*, i8** %33, align 8, !tbaa !24
  %vbase.offset.ptr.i93 = getelementptr i8, i8* %vtable.i92, i32 -24
  %34 = bitcast i8* %vbase.offset.ptr.i93 to i64*
  %vbase.offset.i94 = load i64, i64* %34, align 8
  %35 = bitcast %"class.std::basic_ostream"* %call.i88 to i8*
  %36 = trunc i64 %vbase.offset.i94 to i32
  %add.ptr.i95 = getelementptr inbounds i8, i8* %35, i32 %36
  %_M_ctype.i121 = getelementptr inbounds i8, i8* %add.ptr.i95, i32 240
  %37 = bitcast i8* %_M_ctype.i121 to %"class.std::ctype"**
  %38 = load %"class.std::ctype"*, %"class.std::ctype"** %37, align 8, !tbaa !26
  %tobool.i133 = icmp eq %"class.std::ctype"* %38, null
  br i1 %tobool.i133, label %39, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit134

; <label>:39:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit120
  call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit134: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit120
  %_M_widen_ok.i123 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %38, i32 0, i32 12
  %40 = load i8, i8* %_M_widen_ok.i123, align 8, !tbaa !29
  %tobool.i124 = icmp eq i8 %40, 0
  br i1 %tobool.i124, label %43, label %41

; <label>:41:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit134
  %arrayidx.i125 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %38, i32 0, i32 13, i32 10
  %42 = load i8, i8* %arrayidx.i125, align 1, !tbaa !31
  br label %_ZNKSt5ctypeIcE5widenEc.exit130

; <label>:43:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit134
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %38) #15
  %44 = bitcast %"class.std::ctype"* %38 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i126 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %44, align 8, !tbaa !24
  %vfn.i127 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i126, i32 6
  %45 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i127, align 8
  %call.i128 = call signext i8 %45(%"class.std::ctype"* nonnull %38, i8 signext 10) #15
  br label %_ZNKSt5ctypeIcE5widenEc.exit130

_ZNKSt5ctypeIcE5widenEc.exit130:                  ; preds = %43, %41
  %retval.0.i129 = phi i8 [ %42, %41 ], [ %call.i128, %43 ]
  %call1.i97 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %call.i88, i8 signext %retval.0.i129) #15
  %call.i98 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i97) #15
  %46 = load i8*, i8** %7, align 8, !tbaa !9
  %call29 = call i32 @hipMemcpy(i8* nonnull %call1, i8* %46, i64 256, i32 2) #15
  %vtable.i99 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !24
  %vbase.offset.ptr.i100 = getelementptr i8, i8* %vtable.i99, i32 -24
  %47 = bitcast i8* %vbase.offset.ptr.i100 to i64*
  %vbase.offset.i101 = load i64, i64* %47, align 8
  %48 = trunc i64 %vbase.offset.i101 to i32
  %add.ptr.i102 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i32 %48
  %_M_flags.i = getelementptr inbounds i8, i8* %add.ptr.i102, i32 24
  %49 = bitcast i8* %_M_flags.i to i32*
  %50 = load i32, i32* %49, align 4, !tbaa !32
  %and.i = and i32 %50, -75
  %or.i = or i32 %and.i, 8
  store i32 %or.i, i32* %49, align 4, !tbaa !32
  %51 = load i32, i32* %4, align 4, !tbaa !7
  %conv.i108 = zext i32 %51 to i64
  %call.i109 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull @_ZSt4cout, i64 %conv.i108) #15
  %52 = bitcast %"class.std::basic_ostream"* %call.i109 to i8**
  %vtable.i = load i8*, i8** %52, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i32 -24
  %53 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %53, align 8
  %54 = bitcast %"class.std::basic_ostream"* %call.i109 to i8*
  %55 = trunc i64 %vbase.offset.i to i32
  %add.ptr.i = getelementptr inbounds i8, i8* %54, i32 %55
  %_M_ctype.i = getelementptr inbounds i8, i8* %add.ptr.i, i32 240
  %56 = bitcast i8* %_M_ctype.i to %"class.std::ctype"**
  %57 = load %"class.std::ctype"*, %"class.std::ctype"** %56, align 8, !tbaa !26
  %tobool.i110 = icmp eq %"class.std::ctype"* %57, null
  br i1 %tobool.i110, label %58, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

; <label>:58:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit130
  call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %_ZNKSt5ctypeIcE5widenEc.exit130
  %_M_widen_ok.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %57, i32 0, i32 12
  %59 = load i8, i8* %_M_widen_ok.i, align 8, !tbaa !29
  %tobool.i = icmp eq i8 %59, 0
  br i1 %tobool.i, label %62, label %60

; <label>:60:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
  %arrayidx.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %57, i32 0, i32 13, i32 10
  %61 = load i8, i8* %arrayidx.i, align 1, !tbaa !31
  br label %_ZNKSt5ctypeIcE5widenEc.exit

; <label>:62:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %57) #15
  %63 = bitcast %"class.std::ctype"* %57 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i64 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %63, align 8, !tbaa !24
  %vfn.i = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i64, i32 6
  %64 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i, align 8
  %call.i65 = call signext i8 %64(%"class.std::ctype"* nonnull %57, i8 signext 10) #15
  br label %_ZNKSt5ctypeIcE5widenEc.exit

_ZNKSt5ctypeIcE5widenEc.exit:                     ; preds = %62, %60
  %retval.0.i = phi i8 [ %61, %60 ], [ %call.i65, %62 ]
  %call1.i = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %call.i109, i8 signext %retval.0.i) #15
  %call.i59 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i) #15
  call void @llvm.lifetime.end(i64 4, i8* nonnull %2) #2
  call void @llvm.lifetime.end(i64 4, i8* nonnull %1) #2
  ret i32 0

; <label>:65:                                     ; preds = %65, %0
  %i.0136 = phi i32 [ 0, %0 ], [ %inc.15, %65 ]
  %arrayidx = getelementptr inbounds i32, i32* %3, i32 %i.0136
  store i32 939538432, i32* %arrayidx, align 4, !tbaa !7
  %arrayidx3 = getelementptr inbounds i32, i32* %4, i32 %i.0136
  store i32 939538432, i32* %arrayidx3, align 4, !tbaa !7
  %inc = or i32 %i.0136, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %3, i32 %inc
  store i32 939538432, i32* %arrayidx.1, align 4, !tbaa !7
  %arrayidx3.1 = getelementptr inbounds i32, i32* %4, i32 %inc
  store i32 939538432, i32* %arrayidx3.1, align 4, !tbaa !7
  %inc.1 = or i32 %i.0136, 2
  %arrayidx.2 = getelementptr inbounds i32, i32* %3, i32 %inc.1
  store i32 939538432, i32* %arrayidx.2, align 4, !tbaa !7
  %arrayidx3.2 = getelementptr inbounds i32, i32* %4, i32 %inc.1
  store i32 939538432, i32* %arrayidx3.2, align 4, !tbaa !7
  %inc.2 = or i32 %i.0136, 3
  %arrayidx.3 = getelementptr inbounds i32, i32* %3, i32 %inc.2
  store i32 939538432, i32* %arrayidx.3, align 4, !tbaa !7
  %arrayidx3.3 = getelementptr inbounds i32, i32* %4, i32 %inc.2
  store i32 939538432, i32* %arrayidx3.3, align 4, !tbaa !7
  %inc.3 = or i32 %i.0136, 4
  %arrayidx.4 = getelementptr inbounds i32, i32* %3, i32 %inc.3
  store i32 939538432, i32* %arrayidx.4, align 4, !tbaa !7
  %arrayidx3.4 = getelementptr inbounds i32, i32* %4, i32 %inc.3
  store i32 939538432, i32* %arrayidx3.4, align 4, !tbaa !7
  %inc.4 = or i32 %i.0136, 5
  %arrayidx.5 = getelementptr inbounds i32, i32* %3, i32 %inc.4
  store i32 939538432, i32* %arrayidx.5, align 4, !tbaa !7
  %arrayidx3.5 = getelementptr inbounds i32, i32* %4, i32 %inc.4
  store i32 939538432, i32* %arrayidx3.5, align 4, !tbaa !7
  %inc.5 = or i32 %i.0136, 6
  %arrayidx.6 = getelementptr inbounds i32, i32* %3, i32 %inc.5
  store i32 939538432, i32* %arrayidx.6, align 4, !tbaa !7
  %arrayidx3.6 = getelementptr inbounds i32, i32* %4, i32 %inc.5
  store i32 939538432, i32* %arrayidx3.6, align 4, !tbaa !7
  %inc.6 = or i32 %i.0136, 7
  %arrayidx.7 = getelementptr inbounds i32, i32* %3, i32 %inc.6
  store i32 939538432, i32* %arrayidx.7, align 4, !tbaa !7
  %arrayidx3.7 = getelementptr inbounds i32, i32* %4, i32 %inc.6
  store i32 939538432, i32* %arrayidx3.7, align 4, !tbaa !7
  %inc.7 = or i32 %i.0136, 8
  %arrayidx.8 = getelementptr inbounds i32, i32* %3, i32 %inc.7
  store i32 939538432, i32* %arrayidx.8, align 4, !tbaa !7
  %arrayidx3.8 = getelementptr inbounds i32, i32* %4, i32 %inc.7
  store i32 939538432, i32* %arrayidx3.8, align 4, !tbaa !7
  %inc.8 = or i32 %i.0136, 9
  %arrayidx.9 = getelementptr inbounds i32, i32* %3, i32 %inc.8
  store i32 939538432, i32* %arrayidx.9, align 4, !tbaa !7
  %arrayidx3.9 = getelementptr inbounds i32, i32* %4, i32 %inc.8
  store i32 939538432, i32* %arrayidx3.9, align 4, !tbaa !7
  %inc.9 = or i32 %i.0136, 10
  %arrayidx.10 = getelementptr inbounds i32, i32* %3, i32 %inc.9
  store i32 939538432, i32* %arrayidx.10, align 4, !tbaa !7
  %arrayidx3.10 = getelementptr inbounds i32, i32* %4, i32 %inc.9
  store i32 939538432, i32* %arrayidx3.10, align 4, !tbaa !7
  %inc.10 = or i32 %i.0136, 11
  %arrayidx.11 = getelementptr inbounds i32, i32* %3, i32 %inc.10
  store i32 939538432, i32* %arrayidx.11, align 4, !tbaa !7
  %arrayidx3.11 = getelementptr inbounds i32, i32* %4, i32 %inc.10
  store i32 939538432, i32* %arrayidx3.11, align 4, !tbaa !7
  %inc.11 = or i32 %i.0136, 12
  %arrayidx.12 = getelementptr inbounds i32, i32* %3, i32 %inc.11
  store i32 939538432, i32* %arrayidx.12, align 4, !tbaa !7
  %arrayidx3.12 = getelementptr inbounds i32, i32* %4, i32 %inc.11
  store i32 939538432, i32* %arrayidx3.12, align 4, !tbaa !7
  %inc.12 = or i32 %i.0136, 13
  %arrayidx.13 = getelementptr inbounds i32, i32* %3, i32 %inc.12
  store i32 939538432, i32* %arrayidx.13, align 4, !tbaa !7
  %arrayidx3.13 = getelementptr inbounds i32, i32* %4, i32 %inc.12
  store i32 939538432, i32* %arrayidx3.13, align 4, !tbaa !7
  %inc.13 = or i32 %i.0136, 14
  %arrayidx.14 = getelementptr inbounds i32, i32* %3, i32 %inc.13
  store i32 939538432, i32* %arrayidx.14, align 4, !tbaa !7
  %arrayidx3.14 = getelementptr inbounds i32, i32* %4, i32 %inc.13
  store i32 939538432, i32* %arrayidx3.14, align 4, !tbaa !7
  %inc.14 = or i32 %i.0136, 15
  %arrayidx.15 = getelementptr inbounds i32, i32* %3, i32 %inc.14
  store i32 939538432, i32* %arrayidx.15, align 4, !tbaa !7
  %arrayidx3.15 = getelementptr inbounds i32, i32* %4, i32 %inc.14
  store i32 939538432, i32* %arrayidx3.15, align 4, !tbaa !7
  %inc.15 = add nsw i32 %i.0136, 16
  %exitcond.15 = icmp eq i32 %inc.15, 64
  br i1 %exitcond.15, label %5, label %65
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) local_unnamed_addr #9

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
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) local_unnamed_addr #0

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"*, i64) local_unnamed_addr #0

define internal void @_GLOBAL__sub_I_hadd2.3.val.cpp() #11 {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit) #15
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

declare void @__hcLaunchKernel__Z9DoHAdd2PK16grid_launch_parmPjS0_(%struct.grid_launch_parm*, i32*, i32*)

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { alwaysinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

; ModuleID = '<stdin>'
source_filename = "hfma2.1.bak.cpp"
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
%struct.__half2 = type { %union.anon }
%union.anon = type { i32 }
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
@.str.2 = private unnamed_addr constant [9 x i8] c" HFMA2PK\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Throughput: \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" Tops/s\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_hfma2.1.bak.cpp, i8* null }]

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

; Function Attrs: alwaysinline norecurse nounwind
define void @_Z15__rocm_hfma_low7__half2S_S_(%struct.__half2* noalias nocapture sret %agg.result, %struct.__half2* byval nocapture readonly align 4 %a, %struct.__half2* byval nocapture readonly align 4 %b, %struct.__half2* byval nocapture readonly align 4 %c) local_unnamed_addr #5 {
  %arrayidx = bitcast %struct.__half2* %a to half*
  %1 = load half, half* %arrayidx, align 4, !tbaa !7
  %arrayidx2 = bitcast %struct.__half2* %b to half*
  %2 = load half, half* %arrayidx2, align 4, !tbaa !7
  %mul = fmul half %1, %2
  %arrayidx4 = bitcast %struct.__half2* %c to half*
  %3 = load half, half* %arrayidx4, align 4, !tbaa !7
  %add = fadd half %mul, %3
  %arrayidx6 = bitcast %struct.__half2* %agg.result to half*
  store half %add, half* %arrayidx6, align 4, !tbaa !7
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind
define void @_Z16__rocm_hfma_high7__half2S_S_(%struct.__half2* noalias nocapture sret %agg.result, %struct.__half2* byval nocapture readonly align 4 %a, %struct.__half2* byval nocapture readonly align 4 %b, %struct.__half2* byval nocapture readonly align 4 %c) local_unnamed_addr #5 {
  %x = getelementptr inbounds %struct.__half2, %struct.__half2* %a, i32 0, i32 0, i32 0
  %1 = load i32, i32* %x, align 4, !tbaa !9
  %shr = lshr i32 %1, 16
  %a0.sroa.0.0.extract.trunc = trunc i32 %shr to i16
  %2 = bitcast i16 %a0.sroa.0.0.extract.trunc to half
  %x2 = getelementptr inbounds %struct.__half2, %struct.__half2* %b, i32 0, i32 0, i32 0
  %3 = load i32, i32* %x2, align 4, !tbaa !9
  %shr3 = lshr i32 %3, 16
  %b0.sroa.0.0.extract.trunc = trunc i32 %shr3 to i16
  %4 = bitcast i16 %b0.sroa.0.0.extract.trunc to half
  %x5 = getelementptr inbounds %struct.__half2, %struct.__half2* %c, i32 0, i32 0, i32 0
  %5 = load i32, i32* %x5, align 4, !tbaa !9
  %shr6 = lshr i32 %5, 16
  %c0.sroa.0.0.extract.trunc = trunc i32 %shr6 to i16
  %6 = bitcast i16 %c0.sroa.0.0.extract.trunc to half
  %mul = fmul half %2, %4
  %add = fadd half %mul, %6
  %arrayidx13 = bitcast %struct.__half2* %agg.result to half*
  store half %add, half* %arrayidx13, align 4, !tbaa !7
  %x14 = getelementptr inbounds %struct.__half2, %struct.__half2* %agg.result, i32 0, i32 0, i32 0
  %7 = load i32, i32* %x14, align 4, !tbaa !9
  %shl = shl i32 %7, 16
  store i32 %shl, i32* %x14, align 4, !tbaa !9
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @_Z9DoHAdd2PK16grid_launch_parmP7__half2S1_S1_(%struct.grid_launch_parm* byval nocapture readnone align 8 %lp, %struct.__half2* nocapture readonly %a, %struct.__half2* nocapture readonly %b, %struct.__half2* nocapture %c) local_unnamed_addr #6 {
  %call = tail call i64 @hc_get_workitem_id(i32 0) #13
  %1 = trunc i64 %call to i32
  %a0.sroa.0.0..sroa_idx = getelementptr inbounds %struct.__half2, %struct.__half2* %a, i32 %1, i32 0, i32 0
  %a0.sroa.0.0.copyload = load i32, i32* %a0.sroa.0.0..sroa_idx, align 4
  %b0.sroa.0.0..sroa_idx = getelementptr inbounds %struct.__half2, %struct.__half2* %b, i32 %1, i32 0, i32 0
  %b0.sroa.0.0.copyload = load i32, i32* %b0.sroa.0.0..sroa_idx, align 4
  %c0.sroa.0.0..sroa_idx = getelementptr inbounds %struct.__half2, %struct.__half2* %c, i32 %1, i32 0, i32 0
  %c0.sroa.0.0.copyload = load i32, i32* %c0.sroa.0.0..sroa_idx, align 4
  %agg.tmp.sroa.0.sroa.0.0.extract.trunc = trunc i32 %a0.sroa.0.0.copyload to i16
  %agg.tmp.sroa.0.sroa.2.0.extract.shift = lshr i32 %a0.sroa.0.0.copyload, 16
  %agg.tmp6.sroa.0.sroa.0.0.extract.trunc = trunc i32 %c0.sroa.0.0.copyload to i16
  %agg.tmp6.sroa.0.sroa.2.0.extract.shift = lshr i32 %c0.sroa.0.0.copyload, 16
  %2 = bitcast i16 %agg.tmp.sroa.0.sroa.0.0.extract.trunc to half
  %3 = bitcast i16 %agg.tmp6.sroa.0.sroa.0.0.extract.trunc to half
  %a0.sroa.0.0.extract.trunc.i = trunc i32 %agg.tmp.sroa.0.sroa.2.0.extract.shift to i16
  %4 = bitcast i16 %a0.sroa.0.0.extract.trunc.i to half
  %c0.sroa.0.0.extract.trunc.i = trunc i32 %agg.tmp6.sroa.0.sroa.2.0.extract.shift to i16
  %5 = bitcast i16 %c0.sroa.0.0.extract.trunc.i to half
  br label %7

; <label>:6:                                      ; preds = %7
  store i32 %or.7, i32* %c0.sroa.0.0..sroa_idx, align 4
  ret void

; <label>:7:                                      ; preds = %7, %0
  %i.088 = phi i32 [ 0, %0 ], [ %inc.7, %7 ]
  %b0.sroa.0.087 = phi i32 [ %b0.sroa.0.0.copyload, %0 ], [ %or.7, %7 ]
  %agg.tmp5.sroa.0.sroa.0.0.extract.trunc = trunc i32 %b0.sroa.0.087 to i16
  %agg.tmp5.sroa.0.sroa.2.0.extract.shift = lshr i32 %b0.sroa.0.087, 16
  %8 = bitcast i16 %agg.tmp5.sroa.0.sroa.0.0.extract.trunc to half
  %mul.i = fmul half %2, %8
  %add.i = fadd half %3, %mul.i
  %b0.sroa.0.0.extract.trunc.i = trunc i32 %agg.tmp5.sroa.0.sroa.2.0.extract.shift to i16
  %9 = bitcast i16 %b0.sroa.0.0.extract.trunc.i to half
  %mul.i47 = fmul half %4, %9
  %add.i48 = fadd half %5, %mul.i47
  %mul.i.1 = fmul half %2, %add.i
  %add.i.1 = fadd half %3, %mul.i.1
  %mul.i47.1 = fmul half %4, %add.i48
  %add.i48.1 = fadd half %5, %mul.i47.1
  %mul.i.2 = fmul half %2, %add.i.1
  %add.i.2 = fadd half %3, %mul.i.2
  %mul.i47.2 = fmul half %4, %add.i48.1
  %add.i48.2 = fadd half %5, %mul.i47.2
  %mul.i.3 = fmul half %2, %add.i.2
  %add.i.3 = fadd half %3, %mul.i.3
  %mul.i47.3 = fmul half %4, %add.i48.2
  %add.i48.3 = fadd half %5, %mul.i47.3
  %mul.i.4 = fmul half %2, %add.i.3
  %add.i.4 = fadd half %3, %mul.i.4
  %mul.i47.4 = fmul half %4, %add.i48.3
  %add.i48.4 = fadd half %5, %mul.i47.4
  %mul.i.5 = fmul half %2, %add.i.4
  %add.i.5 = fadd half %3, %mul.i.5
  %mul.i47.5 = fmul half %4, %add.i48.4
  %add.i48.5 = fadd half %5, %mul.i47.5
  %mul.i.6 = fmul half %2, %add.i.5
  %add.i.6 = fadd half %3, %mul.i.6
  %mul.i47.6 = fmul half %4, %add.i48.5
  %add.i48.6 = fadd half %5, %mul.i47.6
  %mul.i.7 = fmul half %2, %add.i.6
  %add.i.7 = fadd half %3, %mul.i.7
  %10 = bitcast half %add.i.7 to i16
  %ref.tmp.sroa.0.0.insert.ext.7 = zext i16 %10 to i32
  %mul.i47.7 = fmul half %4, %add.i48.6
  %add.i48.7 = fadd half %5, %mul.i47.7
  %11 = bitcast half %add.i48.7 to i16
  %ref.tmp7.sroa.6.0.insert.ext.7 = zext i16 %11 to i32
  %ref.tmp7.sroa.6.0.insert.shift.7 = shl nuw i32 %ref.tmp7.sroa.6.0.insert.ext.7, 16
  %or.7 = or i32 %ref.tmp7.sroa.6.0.insert.shift.7, %ref.tmp.sroa.0.0.insert.ext.7
  %inc.7 = add nsw i32 %i.088, 8
  %exitcond.7 = icmp eq i32 %inc.7, 134217728
  br i1 %exitcond.7, label %6, label %7
}

; Function Attrs: nounwind readnone
declare i64 @hc_get_workitem_id(i32) local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: norecurse
define i32 @main() local_unnamed_addr #8 {
  %tv.i78 = alloca %struct.timeval, align 8
  %tv.i = alloca %struct.timeval, align 8
  %ad = alloca %struct.__half2*, align 8
  %bd = alloca %struct.__half2*, align 8
  %cd = alloca %struct.__half2*, align 8
  %lp = alloca %struct.grid_launch_parm, align 8
  %agg.tmp = alloca %struct.dim3, align 4
  %agg.tmp16 = alloca %struct.dim3, align 4
  %agg.tmp18 = alloca %struct.grid_launch_parm, align 8
  %1 = bitcast %struct.__half2** %ad to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %1) #2
  %2 = bitcast %struct.__half2** %bd to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %2) #2
  %3 = bitcast %struct.__half2** %cd to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %3) #2
  %call = tail call i8* @_Znam(i64 256) #14
  %4 = bitcast i8* %call to %struct.__half2*
  %call1 = tail call i8* @_Znam(i64 256) #14
  %5 = bitcast i8* %call1 to %struct.__half2*
  %call2 = tail call i8* @_Znam(i64 256) #14
  %6 = bitcast i8* %call2 to %struct.__half2*
  br label %70

; <label>:7:                                      ; preds = %70
  %8 = bitcast %struct.__half2** %ad to i8**
  %call.i = call i32 @hipMalloc(i8** nonnull %8, i64 256) #15
  %9 = bitcast %struct.__half2** %bd to i8**
  %call.i66 = call i32 @hipMalloc(i8** nonnull %9, i64 256) #15
  %10 = bitcast %struct.__half2** %cd to i8**
  %call.i67 = call i32 @hipMalloc(i8** nonnull %10, i64 256) #15
  %11 = load i8*, i8** %8, align 8, !tbaa !11
  %call12 = call i32 @hipMemcpy(i8* %11, i8* nonnull %call, i64 256, i32 1) #15
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %call13 = call i32 @hipMemcpy(i8* %12, i8* nonnull %call1, i64 256, i32 1) #15
  %13 = load i8*, i8** %10, align 8, !tbaa !11
  %call14 = call i32 @hipMemcpy(i8* %13, i8* nonnull %call2, i64 256, i32 1) #15
  %14 = bitcast %struct.timeval* %tv.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %14) #2
  %call.i68 = call i32 @gettimeofday(%struct.timeval* nonnull %tv.i, %struct.timezone* null) #12
  %tv_sec.i = getelementptr inbounds %struct.timeval, %struct.timeval* %tv.i, i32 0, i32 0
  %15 = load i64, i64* %tv_sec.i, align 8, !tbaa !1
  %tv_usec.i = getelementptr inbounds %struct.timeval, %struct.timeval* %tv.i, i32 0, i32 1
  %16 = load i64, i64* %tv_usec.i, align 8, !tbaa !6
  call void @llvm.lifetime.end(i64 16, i8* nonnull %14) #2
  %17 = bitcast %struct.grid_launch_parm* %lp to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %17) #2
  %x.i.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 0, i32 0
  store i32 1, i32* %x.i.i, align 8, !tbaa !13
  %y.i.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 0, i32 1
  store i32 1, i32* %y.i.i, align 4, !tbaa !15
  %z.i.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 0, i32 2
  store i32 1, i32* %z.i.i, align 8, !tbaa !16
  %x.i2.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 1, i32 0
  store i32 1, i32* %x.i2.i, align 4, !tbaa !13
  %y.i3.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 1, i32 1
  store i32 1, i32* %y.i3.i, align 4, !tbaa !15
  %z.i4.i = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 1, i32 2
  store i32 1, i32* %z.i4.i, align 4, !tbaa !16
  %dynamic_group_mem_bytes = getelementptr inbounds %struct.grid_launch_parm, %struct.grid_launch_parm* %lp, i32 0, i32 2
  store i32 0, i32* %dynamic_group_mem_bytes, align 8, !tbaa !17
  %x.i = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp, i32 0, i32 0
  store i32 2560, i32* %x.i, align 4, !tbaa !20
  %y.i = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp, i32 0, i32 1
  store i32 1, i32* %y.i, align 4, !tbaa !22
  %z.i = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp, i32 0, i32 2
  store i32 1, i32* %z.i, align 4, !tbaa !23
  %x.i72 = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp16, i32 0, i32 0
  store i32 64, i32* %x.i72, align 4, !tbaa !20
  %y.i73 = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp16, i32 0, i32 1
  store i32 1, i32* %y.i73, align 4, !tbaa !22
  %z.i74 = getelementptr inbounds %struct.dim3, %struct.dim3* %agg.tmp16, i32 0, i32 2
  store i32 1, i32* %z.i74, align 4, !tbaa !23
  %call17 = call %struct.ihipStream_t* @_Z19ihipPreLaunchKernelP12ihipStream_t4dim3S1_P16grid_launch_parmPKc(%struct.ihipStream_t* null, %struct.dim3* byval nonnull align 4 %agg.tmp, %struct.dim3* byval nonnull align 4 %agg.tmp16, %struct.grid_launch_parm* nonnull %lp, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)) #15
  %18 = bitcast %struct.grid_launch_parm* %agg.tmp18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %18, i8* nonnull %17, i64 56, i32 8, i1 false), !tbaa.struct !24
  %19 = load %struct.__half2*, %struct.__half2** %ad, align 8, !tbaa !11
  %20 = load %struct.__half2*, %struct.__half2** %bd, align 8, !tbaa !11
  %21 = load %struct.__half2*, %struct.__half2** %cd, align 8, !tbaa !11
  call void @__hcLaunchKernel__Z9DoHAdd2PK16grid_launch_parmP7__half2S1_S1_(%struct.grid_launch_parm* byval nonnull align 8 %agg.tmp18, %struct.__half2* %19, %struct.__half2* %20, %struct.__half2* %21) #15
  call void @_Z20ihipPostLaunchKernelPKcP12ihipStream_tR16grid_launch_parm(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct.ihipStream_t* %call17, %struct.grid_launch_parm* nonnull dereferenceable(56) %lp) #15
  call void @llvm.lifetime.end(i64 56, i8* nonnull %17) #2
  %call19 = call i32 @hipDeviceSynchronize() #15
  %22 = bitcast %struct.timeval* %tv.i78 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %22) #2
  %call.i79 = call i32 @gettimeofday(%struct.timeval* nonnull %tv.i78, %struct.timezone* null) #12
  %tv_sec.i80 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv.i78, i32 0, i32 0
  %23 = load i64, i64* %tv_sec.i80, align 8, !tbaa !1
  %tv_usec.i82 = getelementptr inbounds %struct.timeval, %struct.timeval* %tv.i78, i32 0, i32 1
  %24 = load i64, i64* %tv_usec.i82, align 8, !tbaa !6
  %tmp = sub i64 %23, %15
  %tmp147 = mul i64 %tmp, 1000000
  %add.i = sub i64 %24, %16
  %sub.i83 = add i64 %add.i, %tmp147
  call void @llvm.lifetime.end(i64 16, i8* nonnull %22) #2
  %conv = uitofp i64 %sub.i83 to float
  %div = fdiv float %conv, 1.000000e+06
  %conv.i = fpext float %div to double
  %call.i84 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull @_ZSt4cout, double %conv.i) #15
  %call.i.i = call i64 @strlen(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)) #12
  %call1.i85 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call.i84, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i64 %call.i.i) #15
  %call.i86 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIyEERSoT_(%"class.std::basic_ostream"* nonnull %call.i84, i64 21990232) #15
  %call.i.i87 = call i64 @strlen(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #12
  %call1.i88 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call.i86, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i64 %call.i.i87) #15
  %25 = bitcast %"class.std::basic_ostream"* %call.i86 to i8**
  %vtable.i90 = load i8*, i8** %25, align 8, !tbaa !26
  %vbase.offset.ptr.i91 = getelementptr i8, i8* %vtable.i90, i32 -24
  %26 = bitcast i8* %vbase.offset.ptr.i91 to i64*
  %vbase.offset.i92 = load i64, i64* %26, align 8
  %27 = bitcast %"class.std::basic_ostream"* %call.i86 to i8*
  %28 = trunc i64 %vbase.offset.i92 to i32
  %add.ptr.i93 = getelementptr inbounds i8, i8* %27, i32 %28
  %_M_ctype.i123 = getelementptr inbounds i8, i8* %add.ptr.i93, i32 240
  %29 = bitcast i8* %_M_ctype.i123 to %"class.std::ctype"**
  %30 = load %"class.std::ctype"*, %"class.std::ctype"** %29, align 8, !tbaa !28
  %tobool.i143 = icmp eq %"class.std::ctype"* %30, null
  br i1 %tobool.i143, label %31, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit144

; <label>:31:                                     ; preds = %7
  call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit144: ; preds = %7
  %_M_widen_ok.i125 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %30, i32 0, i32 12
  %32 = load i8, i8* %_M_widen_ok.i125, align 8, !tbaa !31
  %tobool.i126 = icmp eq i8 %32, 0
  br i1 %tobool.i126, label %35, label %33

; <label>:33:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit144
  %arrayidx.i127 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %30, i32 0, i32 13, i32 10
  %34 = load i8, i8* %arrayidx.i127, align 1, !tbaa !33
  br label %_ZNKSt5ctypeIcE5widenEc.exit132

; <label>:35:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit144
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %30) #15
  %36 = bitcast %"class.std::ctype"* %30 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i128 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %36, align 8, !tbaa !26
  %vfn.i129 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i128, i32 6
  %37 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i129, align 8
  %call.i130 = call signext i8 %37(%"class.std::ctype"* nonnull %30, i8 signext 10) #15
  br label %_ZNKSt5ctypeIcE5widenEc.exit132

_ZNKSt5ctypeIcE5widenEc.exit132:                  ; preds = %35, %33
  %retval.0.i131 = phi i8 [ %34, %33 ], [ %call.i130, %35 ]
  %call1.i95 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %call.i86, i8 signext %retval.0.i131) #15
  %call.i96 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i95) #15
  %mul30 = fmul float %div, 1.000000e+06
  %div31 = fdiv float 0x4194F8B580000000, %mul30
  %call.i.i97 = call i64 @strlen(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)) #12
  %call1.i98 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) @_ZSt4cout, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i64 %call.i.i97) #15
  %conv.i99 = fpext float %div31 to double
  %call.i100 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull @_ZSt4cout, double %conv.i99) #15
  %call.i.i101 = call i64 @strlen(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)) #12
  %call1.i102 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull dereferenceable(272) %call.i100, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64 %call.i.i101) #15
  %38 = bitcast %"class.std::basic_ostream"* %call.i100 to i8**
  %vtable.i104 = load i8*, i8** %38, align 8, !tbaa !26
  %vbase.offset.ptr.i105 = getelementptr i8, i8* %vtable.i104, i32 -24
  %39 = bitcast i8* %vbase.offset.ptr.i105 to i64*
  %vbase.offset.i106 = load i64, i64* %39, align 8
  %40 = bitcast %"class.std::basic_ostream"* %call.i100 to i8*
  %41 = trunc i64 %vbase.offset.i106 to i32
  %add.ptr.i107 = getelementptr inbounds i8, i8* %40, i32 %41
  %_M_ctype.i133 = getelementptr inbounds i8, i8* %add.ptr.i107, i32 240
  %42 = bitcast i8* %_M_ctype.i133 to %"class.std::ctype"**
  %43 = load %"class.std::ctype"*, %"class.std::ctype"** %42, align 8, !tbaa !28
  %tobool.i145 = icmp eq %"class.std::ctype"* %43, null
  br i1 %tobool.i145, label %44, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit146

; <label>:44:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit132
  call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit146: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit132
  %_M_widen_ok.i135 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %43, i32 0, i32 12
  %45 = load i8, i8* %_M_widen_ok.i135, align 8, !tbaa !31
  %tobool.i136 = icmp eq i8 %45, 0
  br i1 %tobool.i136, label %48, label %46

; <label>:46:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit146
  %arrayidx.i137 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %43, i32 0, i32 13, i32 10
  %47 = load i8, i8* %arrayidx.i137, align 1, !tbaa !33
  br label %_ZNKSt5ctypeIcE5widenEc.exit142

; <label>:48:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit146
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %43) #15
  %49 = bitcast %"class.std::ctype"* %43 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i138 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %49, align 8, !tbaa !26
  %vfn.i139 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i138, i32 6
  %50 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i139, align 8
  %call.i140 = call signext i8 %50(%"class.std::ctype"* nonnull %43, i8 signext 10) #15
  br label %_ZNKSt5ctypeIcE5widenEc.exit142

_ZNKSt5ctypeIcE5widenEc.exit142:                  ; preds = %48, %46
  %retval.0.i141 = phi i8 [ %47, %46 ], [ %call.i140, %48 ]
  %call1.i109 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %call.i100, i8 signext %retval.0.i141) #15
  %call.i110 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i109) #15
  %51 = load i8*, i8** %9, align 8, !tbaa !11
  %call36 = call i32 @hipMemcpy(i8* nonnull %call1, i8* %51, i64 256, i32 2) #15
  %vtable.i111 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %vbase.offset.ptr.i112 = getelementptr i8, i8* %vtable.i111, i32 -24
  %52 = bitcast i8* %vbase.offset.ptr.i112 to i64*
  %vbase.offset.i113 = load i64, i64* %52, align 8
  %53 = trunc i64 %vbase.offset.i113 to i32
  %add.ptr.i114 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i32 %53
  %_M_flags.i = getelementptr inbounds i8, i8* %add.ptr.i114, i32 24
  %54 = bitcast i8* %_M_flags.i to i32*
  %55 = load i32, i32* %54, align 4, !tbaa !34
  %and.i = and i32 %55, -75
  %or.i = or i32 %and.i, 8
  store i32 %or.i, i32* %54, align 4, !tbaa !34
  %x39 = bitcast i8* %call1 to i32*
  %56 = load i32, i32* %x39, align 4, !tbaa !9
  %conv.i120 = zext i32 %56 to i64
  %call.i121 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull @_ZSt4cout, i64 %conv.i120) #15
  %57 = bitcast %"class.std::basic_ostream"* %call.i121 to i8**
  %vtable.i = load i8*, i8** %57, align 8, !tbaa !26
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i32 -24
  %58 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %58, align 8
  %59 = bitcast %"class.std::basic_ostream"* %call.i121 to i8*
  %60 = trunc i64 %vbase.offset.i to i32
  %add.ptr.i = getelementptr inbounds i8, i8* %59, i32 %60
  %_M_ctype.i = getelementptr inbounds i8, i8* %add.ptr.i, i32 240
  %61 = bitcast i8* %_M_ctype.i to %"class.std::ctype"**
  %62 = load %"class.std::ctype"*, %"class.std::ctype"** %61, align 8, !tbaa !28
  %tobool.i122 = icmp eq %"class.std::ctype"* %62, null
  br i1 %tobool.i122, label %63, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

; <label>:63:                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit142
  call void @_ZSt16__throw_bad_castv() #16
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %_ZNKSt5ctypeIcE5widenEc.exit142
  %_M_widen_ok.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %62, i32 0, i32 12
  %64 = load i8, i8* %_M_widen_ok.i, align 8, !tbaa !31
  %tobool.i = icmp eq i8 %64, 0
  br i1 %tobool.i, label %67, label %65

; <label>:65:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
  %arrayidx.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %62, i32 0, i32 13, i32 10
  %66 = load i8, i8* %arrayidx.i, align 1, !tbaa !33
  br label %_ZNKSt5ctypeIcE5widenEc.exit

; <label>:67:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %62) #15
  %68 = bitcast %"class.std::ctype"* %62 to i8 (%"class.std::ctype"*, i8)***
  %vtable.i76 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %68, align 8, !tbaa !26
  %vfn.i = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i76, i32 6
  %69 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i, align 8
  %call.i77 = call signext i8 %69(%"class.std::ctype"* nonnull %62, i8 signext 10) #15
  br label %_ZNKSt5ctypeIcE5widenEc.exit

_ZNKSt5ctypeIcE5widenEc.exit:                     ; preds = %67, %65
  %retval.0.i = phi i8 [ %66, %65 ], [ %call.i77, %67 ]
  %call1.i = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %call.i121, i8 signext %retval.0.i) #15
  %call.i71 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %call1.i) #15
  call void @llvm.lifetime.end(i64 4, i8* nonnull %3) #2
  call void @llvm.lifetime.end(i64 4, i8* nonnull %2) #2
  call void @llvm.lifetime.end(i64 4, i8* nonnull %1) #2
  ret i32 0

; <label>:70:                                     ; preds = %70, %0
  %i.0148 = phi i32 [ 0, %0 ], [ %inc.15, %70 ]
  %x = getelementptr inbounds %struct.__half2, %struct.__half2* %4, i32 %i.0148, i32 0, i32 0
  store i32 939538432, i32* %x, align 4, !tbaa !9
  %x5 = getelementptr inbounds %struct.__half2, %struct.__half2* %5, i32 %i.0148, i32 0, i32 0
  store i32 939538432, i32* %x5, align 4, !tbaa !9
  %x8 = getelementptr inbounds %struct.__half2, %struct.__half2* %6, i32 %i.0148, i32 0, i32 0
  store i32 939538432, i32* %x8, align 4, !tbaa !9
  %inc = or i32 %i.0148, 1
  %x.1 = getelementptr inbounds %struct.__half2, %struct.__half2* %4, i32 %inc, i32 0, i32 0
  store i32 939538432, i32* %x.1, align 4, !tbaa !9
  %x5.1 = getelementptr inbounds %struct.__half2, %struct.__half2* %5, i32 %inc, i32 0, i32 0
  store i32 939538432, i32* %x5.1, align 4, !tbaa !9
  %x8.1 = getelementptr inbounds %struct.__half2, %struct.__half2* %6, i32 %inc, i32 0, i32 0
  store i32 939538432, i32* %x8.1, align 4, !tbaa !9
  %inc.1 = or i32 %i.0148, 2
  %x.2 = getelementptr inbounds %struct.__half2, %struct.__half2* %4, i32 %inc.1, i32 0, i32 0
  store i32 939538432, i32* %x.2, align 4, !tbaa !9
  %x5.2 = getelementptr inbounds %struct.__half2, %struct.__half2* %5, i32 %inc.1, i32 0, i32 0
  store i32 939538432, i32* %x5.2, align 4, !tbaa !9
  %x8.2 = getelementptr inbounds %struct.__half2, %struct.__half2* %6, i32 %inc.1, i32 0, i32 0
  store i32 939538432, i32* %x8.2, align 4, !tbaa !9
  %inc.2 = or i32 %i.0148, 3
  %x.3 = getelementptr inbounds %struct.__half2, %struct.__half2* %4, i32 %inc.2, i32 0, i32 0
  store i32 939538432, i32* %x.3, align 4, !tbaa !9
  %x5.3 = getelementptr inbounds %struct.__half2, %struct.__half2* %5, i32 %inc.2, i32 0, i32 0
  store i32 939538432, i32* %x5.3, align 4, !tbaa !9
  %x8.3 = getelementptr inbounds %struct.__half2, %struct.__half2* %6, i32 %inc.2, i32 0, i32 0
  store i32 939538432, i32* %x8.3, align 4, !tbaa !9
  %inc.3 = or i32 %i.0148, 4
  %x.4 = getelementptr inbounds %struct.__half2, %struct.__half2* %4, i32 %inc.3, i32 0, i32 0
  store i32 939538432, i32* %x.4, align 4, !tbaa !9
  %x5.4 = getelementptr inbounds %struct.__half2, %struct.__half2* %5, i32 %inc.3, i32 0, i32 0
  store i32 939538432, i32* %x5.4, align 4, !tbaa !9
  %x8.4 = getelementptr inbounds %struct.__half2, %struct.__half2* %6, i32 %inc.3, i32 0, i32 0
  store i32 939538432, i32* %x8.4, align 4, !tbaa !9
  %inc.4 = or i32 %i.0148, 5
  %x.5 = getelementptr inbounds %struct.__half2, %struct.__half2* %4, i32 %inc.4, i32 0, i32 0
  store i32 939538432, i32* %x.5, align 4, !tbaa !9
  %x5.5 = getelementptr inbounds %struct.__half2, %struct.__half2* %5, i32 %inc.4, i32 0, i32 0
  store i32 939538432, i32* %x5.5, align 4, !tbaa !9
  %x8.5 = getelementptr inbounds %struct.__half2, %struct.__half2* %6, i32 %inc.4, i32 0, i32 0
  store i32 939538432, i32* %x8.5, align 4, !tbaa !9
  %inc.5 = or i32 %i.0148, 6
  %x.6 = getelementptr inbounds %struct.__half2, %struct.__half2* %4, i32 %inc.5, i32 0, i32 0
  store i32 939538432, i32* %x.6, align 4, !tbaa !9
  %x5.6 = getelementptr inbounds %struct.__half2, %struct.__half2* %5, i32 %inc.5, i32 0, i32 0
  store i32 939538432, i32* %x5.6, align 4, !tbaa !9
  %x8.6 = getelementptr inbounds %struct.__half2, %struct.__half2* %6, i32 %inc.5, i32 0, i32 0
  store i32 939538432, i32* %x8.6, align 4, !tbaa !9
  %inc.6 = or i32 %i.0148, 7
  %x.7 = getelementptr inbounds %struct.__half2, %struct.__half2* %4, i32 %inc.6, i32 0, i32 0
  store i32 939538432, i32* %x.7, align 4, !tbaa !9
  %x5.7 = getelementptr inbounds %struct.__half2, %struct.__half2* %5, i32 %inc.6, i32 0, i32 0
  store i32 939538432, i32* %x5.7, align 4, !tbaa !9
  %x8.7 = getelementptr inbounds %struct.__half2, %struct.__half2* %6, i32 %inc.6, i32 0, i32 0
  store i32 939538432, i32* %x8.7, align 4, !tbaa !9
  %inc.7 = or i32 %i.0148, 8
  %x.8 = getelementptr inbounds %struct.__half2, %struct.__half2* %4, i32 %inc.7, i32 0, i32 0
  store i32 939538432, i32* %x.8, align 4, !tbaa !9
  %x5.8 = getelementptr inbounds %struct.__half2, %struct.__half2* %5, i32 %inc.7, i32 0, i32 0
  store i32 939538432, i32* %x5.8, align 4, !tbaa !9
  %x8.8 = getelementptr inbounds %struct.__half2, %struct.__half2* %6, i32 %inc.7, i32 0, i32 0
  store i32 939538432, i32* %x8.8, align 4, !tbaa !9
  %inc.8 = or i32 %i.0148, 9
  %x.9 = getelementptr inbounds %struct.__half2, %struct.__half2* %4, i32 %inc.8, i32 0, i32 0
  store i32 939538432, i32* %x.9, align 4, !tbaa !9
  %x5.9 = getelementptr inbounds %struct.__half2, %struct.__half2* %5, i32 %inc.8, i32 0, i32 0
  store i32 939538432, i32* %x5.9, align 4, !tbaa !9
  %x8.9 = getelementptr inbounds %struct.__half2, %struct.__half2* %6, i32 %inc.8, i32 0, i32 0
  store i32 939538432, i32* %x8.9, align 4, !tbaa !9
  %inc.9 = or i32 %i.0148, 10
  %x.10 = getelementptr inbounds %struct.__half2, %struct.__half2* %4, i32 %inc.9, i32 0, i32 0
  store i32 939538432, i32* %x.10, align 4, !tbaa !9
  %x5.10 = getelementptr inbounds %struct.__half2, %struct.__half2* %5, i32 %inc.9, i32 0, i32 0
  store i32 939538432, i32* %x5.10, align 4, !tbaa !9
  %x8.10 = getelementptr inbounds %struct.__half2, %struct.__half2* %6, i32 %inc.9, i32 0, i32 0
  store i32 939538432, i32* %x8.10, align 4, !tbaa !9
  %inc.10 = or i32 %i.0148, 11
  %x.11 = getelementptr inbounds %struct.__half2, %struct.__half2* %4, i32 %inc.10, i32 0, i32 0
  store i32 939538432, i32* %x.11, align 4, !tbaa !9
  %x5.11 = getelementptr inbounds %struct.__half2, %struct.__half2* %5, i32 %inc.10, i32 0, i32 0
  store i32 939538432, i32* %x5.11, align 4, !tbaa !9
  %x8.11 = getelementptr inbounds %struct.__half2, %struct.__half2* %6, i32 %inc.10, i32 0, i32 0
  store i32 939538432, i32* %x8.11, align 4, !tbaa !9
  %inc.11 = or i32 %i.0148, 12
  %x.12 = getelementptr inbounds %struct.__half2, %struct.__half2* %4, i32 %inc.11, i32 0, i32 0
  store i32 939538432, i32* %x.12, align 4, !tbaa !9
  %x5.12 = getelementptr inbounds %struct.__half2, %struct.__half2* %5, i32 %inc.11, i32 0, i32 0
  store i32 939538432, i32* %x5.12, align 4, !tbaa !9
  %x8.12 = getelementptr inbounds %struct.__half2, %struct.__half2* %6, i32 %inc.11, i32 0, i32 0
  store i32 939538432, i32* %x8.12, align 4, !tbaa !9
  %inc.12 = or i32 %i.0148, 13
  %x.13 = getelementptr inbounds %struct.__half2, %struct.__half2* %4, i32 %inc.12, i32 0, i32 0
  store i32 939538432, i32* %x.13, align 4, !tbaa !9
  %x5.13 = getelementptr inbounds %struct.__half2, %struct.__half2* %5, i32 %inc.12, i32 0, i32 0
  store i32 939538432, i32* %x5.13, align 4, !tbaa !9
  %x8.13 = getelementptr inbounds %struct.__half2, %struct.__half2* %6, i32 %inc.12, i32 0, i32 0
  store i32 939538432, i32* %x8.13, align 4, !tbaa !9
  %inc.13 = or i32 %i.0148, 14
  %x.14 = getelementptr inbounds %struct.__half2, %struct.__half2* %4, i32 %inc.13, i32 0, i32 0
  store i32 939538432, i32* %x.14, align 4, !tbaa !9
  %x5.14 = getelementptr inbounds %struct.__half2, %struct.__half2* %5, i32 %inc.13, i32 0, i32 0
  store i32 939538432, i32* %x5.14, align 4, !tbaa !9
  %x8.14 = getelementptr inbounds %struct.__half2, %struct.__half2* %6, i32 %inc.13, i32 0, i32 0
  store i32 939538432, i32* %x8.14, align 4, !tbaa !9
  %inc.14 = or i32 %i.0148, 15
  %x.15 = getelementptr inbounds %struct.__half2, %struct.__half2* %4, i32 %inc.14, i32 0, i32 0
  store i32 939538432, i32* %x.15, align 4, !tbaa !9
  %x5.15 = getelementptr inbounds %struct.__half2, %struct.__half2* %5, i32 %inc.14, i32 0, i32 0
  store i32 939538432, i32* %x5.15, align 4, !tbaa !9
  %x8.15 = getelementptr inbounds %struct.__half2, %struct.__half2* %6, i32 %inc.14, i32 0, i32 0
  store i32 939538432, i32* %x8.15, align 4, !tbaa !9
  %inc.15 = add nsw i32 %i.0148, 16
  %exitcond.15 = icmp eq i32 %inc.15, 64
  br i1 %exitcond.15, label %7, label %70
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) local_unnamed_addr #9

declare i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare %struct.ihipStream_t* @_Z19ihipPreLaunchKernelP12ihipStream_t4dim3S1_P16grid_launch_parmPKc(%struct.ihipStream_t*, %struct.dim3* byval align 4, %struct.dim3* byval align 4, %struct.grid_launch_parm*, i8*) local_unnamed_addr #0

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

define internal void @_GLOBAL__sub_I_hfma2.1.bak.cpp() #11 {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit) #15
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

declare void @__hcLaunchKernel__Z9DoHAdd2PK16grid_launch_parmP7__half2S1_S1_(%struct.grid_launch_parm*, %struct.__half2*, %struct.__half2*, %struct.__half2*)

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

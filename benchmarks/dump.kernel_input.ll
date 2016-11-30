; ModuleID = '/tmp/half2-83ea2e.s'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type { i32 (...)**, i32 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type { %"class.std::locale::facet.base", %struct.__locale_struct*, i8, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.grid_launch_parm = type { %struct.gl_dim3, %struct.gl_dim3, i32, i32, i32, %"class.hc::accelerator_view"*, %"class.hc::completion_future"* }
%struct.gl_dim3 = type { i32, i32, i32 }
%"class.hc::accelerator_view" = type opaque
%"class.hc::completion_future" = type opaque
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { i64 }
%struct.ihipStream_t = type opaque
%"class.std::allocator" = type { i8 }
%"class.std::basic_string" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep_base" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep_base" = type { i64, i64, i32 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [10 x i8] c"FuncHADD2\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"DoHADD2\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"s for \00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c" Mdp4a\00", align 1
@.str5 = private unnamed_addr constant [13 x i8] c"throughput: \00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c" Tops/s\00", align 1
@_ZNSs4_Rep20_S_empty_rep_storageE = external global [0 x i64]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_half2.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @_Z10dtime_usecy(i64 %start) #3 {
  %tv = alloca %struct.timeval, align 8
  %1 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #9
  %2 = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 0
  %3 = load i64* %2, align 8, !tbaa !1
  %4 = mul i64 %3, 1000000
  %5 = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 1
  %6 = load i64* %5, align 8, !tbaa !6
  %7 = sub i64 %6, %start
  %8 = add i64 %7, %4
  ret i64 %8
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: noinline uwtable
define void @_Z7DoHADD216grid_launch_parmPiS0_S0_(%struct.grid_launch_parm* byval nocapture readnone align 8 %lp, i32* nocapture readonly %in1d, i32* nocapture readonly %in2d, i32* nocapture %outd) #4 {
  %1 = tail call i64 @hc_get_workitem_id(i32 0) #10
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds i32* %in1d, i64 %2
  %4 = load i32* %3, align 4, !tbaa !7
  %5 = getelementptr inbounds i32* %in2d, i64 %2
  %6 = load i32* %5, align 4, !tbaa !7
  %7 = ashr i32 %4, 16
  %8 = ashr i32 %6, 16
  br label %9

; <label>:9                                       ; preds = %9, %0
  %i.01 = phi i32 [ 0, %0 ], [ %12, %9 ]
  %10 = tail call i32 @__rocm_hadd(i32 %4, i32 %6) #11
  %11 = tail call i32 @__rocm_hadd(i32 %7, i32 %8) #11
  %12 = add nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %12, 134217728
  br i1 %exitcond, label %13, label %9

; <label>:13                                      ; preds = %9
  %.lcssa7 = phi i32 [ %11, %9 ]
  %.lcssa = phi i32 [ %10, %9 ]
  %14 = shl i32 %.lcssa7, 16
  %15 = and i32 %.lcssa, 65535
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds i32* %outd, i64 %2
  store i32 %16, i32* %17, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @hc_get_workitem_id(i32) #5

declare i32 @__rocm_hadd(i32, i32) #0

; Function Attrs: noinline uwtable
define void @_Z9FuncHADD216grid_launch_parmPiS0_S0_(%struct.grid_launch_parm* byval nocapture readnone align 8 %lp, i32* nocapture readonly %in1d, i32* nocapture readonly %in2d, i32* nocapture %outd) #4 {
  %1 = tail call i64 @hc_get_workitem_id(i32 0) #10
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds i32* %in1d, i64 %2
  %4 = load i32* %3, align 4, !tbaa !7
  %5 = getelementptr inbounds i32* %in2d, i64 %2
  %6 = load i32* %5, align 4, !tbaa !7
  %7 = tail call i32 @__rocm_hadd(i32 %4, i32 %6) #11
  %8 = ashr i32 %4, 16
  %9 = ashr i32 %6, 16
  %10 = tail call i32 @__rocm_hadd(i32 %8, i32 %9) #11
  %11 = shl i32 %10, 16
  %12 = and i32 %7, 65535
  %13 = or i32 %11, %12
  %14 = getelementptr inbounds i32* %outd, i64 %2
  store i32 %13, i32* %14, align 4, !tbaa !7
  ret void
}

; Function Attrs: uwtable
define i32 @main() #6 {
  %tv.i3 = alloca %struct.timeval, align 8
  %tv.i = alloca %struct.timeval, align 8
  %in1d = alloca i32*, align 8
  %in2d = alloca i32*, align 8
  %outd = alloca i32*, align 8
  %lp = alloca %struct.grid_launch_parm, align 8
  %1 = alloca %struct.grid_launch_parm, align 8
  %2 = alloca %"class.std::bitset", align 8
  %3 = alloca %"class.std::bitset", align 8
  %lp1 = alloca %struct.grid_launch_parm, align 8
  %4 = alloca %struct.grid_launch_parm, align 8
  %5 = tail call noalias i8* @_Znam(i64 1024) #12
  %6 = bitcast i8* %5 to i32*
  %7 = tail call noalias i8* @_Znam(i64 1024) #12
  %8 = bitcast i8* %7 to i32*
  %9 = tail call noalias i8* @_Znam(i64 1024) #12
  %10 = bitcast i8* %9 to i32*
  br label %11

; <label>:11                                      ; preds = %11, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next.1, %11 ]
  %12 = getelementptr inbounds i32* %6, i64 %indvars.iv
  store i32 894776661, i32* %12, align 4, !tbaa !7
  %13 = getelementptr inbounds i32* %8, i64 %indvars.iv
  store i32 894776661, i32* %13, align 4, !tbaa !7
  %14 = getelementptr inbounds i32* %10, i64 %indvars.iv
  store i32 0, i32* %14, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %15 = getelementptr inbounds i32* %6, i64 %indvars.iv.next
  store i32 894776661, i32* %15, align 4, !tbaa !7
  %16 = getelementptr inbounds i32* %8, i64 %indvars.iv.next
  store i32 894776661, i32* %16, align 4, !tbaa !7
  %17 = getelementptr inbounds i32* %10, i64 %indvars.iv.next
  store i32 0, i32* %17, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.1, label %18, label %11

; <label>:18                                      ; preds = %11
  %19 = bitcast i32** %in1d to i8**
  %20 = call i32 @hipMalloc(i8** %19, i64 1024) #11
  %21 = bitcast i32** %in2d to i8**
  %22 = call i32 @hipMalloc(i8** %21, i64 1024) #11
  %23 = bitcast i32** %outd to i8**
  %24 = call i32 @hipMalloc(i8** %23, i64 1024) #11
  %25 = load i32** %in1d, align 8, !tbaa !9
  %26 = bitcast i32* %25 to i8*
  %27 = call i32 @hipMemcpy(i8* %26, i8* %5, i64 1024, i32 1) #11
  %28 = load i32** %in2d, align 8, !tbaa !9
  %29 = bitcast i32* %28 to i8*
  %30 = call i32 @hipMemcpy(i8* %29, i8* %7, i64 1024, i32 1) #11
  %31 = bitcast %struct.grid_launch_parm* %lp to i8*
  call void @llvm.lifetime.start(i64 56, i8* %31) #2
  %32 = getelementptr inbounds %struct.grid_launch_parm* %lp, i64 0, i32 0, i32 0
  store i32 1, i32* %32, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct.grid_launch_parm* %lp, i64 0, i32 0, i32 1
  store i32 1, i32* %33, align 4, !tbaa !13
  %34 = getelementptr inbounds %struct.grid_launch_parm* %lp, i64 0, i32 0, i32 2
  store i32 1, i32* %34, align 8, !tbaa !14
  %35 = getelementptr inbounds %struct.grid_launch_parm* %lp, i64 0, i32 1, i32 0
  store i32 1, i32* %35, align 4, !tbaa !11
  %36 = getelementptr inbounds %struct.grid_launch_parm* %lp, i64 0, i32 1, i32 1
  store i32 1, i32* %36, align 4, !tbaa !13
  %37 = getelementptr inbounds %struct.grid_launch_parm* %lp, i64 0, i32 1, i32 2
  store i32 1, i32* %37, align 4, !tbaa !14
  %38 = getelementptr inbounds %struct.grid_launch_parm* %lp, i64 0, i32 2
  store i32 0, i32* %38, align 8, !tbaa !15
  %39 = call %struct.ihipStream_t* @_Z19ihipPreLaunchKernelP12ihipStream_tmmP16grid_launch_parmPKc(%struct.ihipStream_t* null, i64 1, i64 256, %struct.grid_launch_parm* %lp, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0)) #11
  %40 = bitcast %struct.grid_launch_parm* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %31, i64 56, i32 8, i1 false), !tbaa.struct !18
  %41 = load i32** %in1d, align 8, !tbaa !9
  %42 = load i32** %in2d, align 8, !tbaa !9
  %43 = load i32** %outd, align 8, !tbaa !9
  call void @_Z9FuncHADD216grid_launch_parmPiS0_S0_(%struct.grid_launch_parm* byval align 8 %1, i32* %41, i32* %42, i32* %43) #11
  call void @_Z20ihipPostLaunchKernelP12ihipStream_tR16grid_launch_parm(%struct.ihipStream_t* %39, %struct.grid_launch_parm* dereferenceable(56) %lp) #11
  call void @llvm.lifetime.end(i64 56, i8* %31) #2
  %44 = call i32 @hipDeviceSynchronize() #11
  %45 = load i32** %outd, align 8, !tbaa !9
  %46 = bitcast i32* %45 to i8*
  %47 = call i32 @hipMemcpy(i8* %9, i8* %46, i64 1024, i32 2) #11
  %48 = getelementptr inbounds i8* %5, i64 40
  %49 = bitcast i8* %48 to i32*
  %50 = load i32* %49, align 4, !tbaa !7
  %51 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %50) #11
  %52 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #9
  %53 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272) %51, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), i64 %52) #11
  %54 = getelementptr inbounds i8* %9, i64 40
  %55 = bitcast i8* %54 to i32*
  %56 = load i32* %55, align 4, !tbaa !7
  %57 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %51, i32 %56) #11
  %58 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #9
  %59 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272) %57, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), i64 %58) #11
  %60 = getelementptr inbounds i8* %9, i64 44
  %61 = bitcast i8* %60 to i32*
  %62 = load i32* %61, align 4, !tbaa !7
  %63 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %57, i32 %62) #11
  %64 = bitcast %"class.std::basic_ostream"* %63 to i8**
  %65 = load i8** %64, align 8, !tbaa !20
  %66 = getelementptr i8* %65, i64 -24
  %67 = bitcast i8* %66 to i64*
  %68 = load i64* %67, align 8
  %69 = bitcast %"class.std::basic_ostream"* %63 to i8*
  %.sum = add i64 %68, 240
  %70 = getelementptr inbounds i8* %69, i64 %.sum
  %71 = bitcast i8* %70 to %"class.std::ctype"**
  %72 = load %"class.std::ctype"** %71, align 8, !tbaa !22
  %73 = icmp eq %"class.std::ctype"* %72, null
  br i1 %73, label %74, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit10

; <label>:74                                      ; preds = %18
  call void @_ZSt16__throw_bad_castv() #13
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit10:  ; preds = %18
  %75 = getelementptr inbounds %"class.std::ctype"* %72, i64 0, i32 6
  %76 = load i8* %75, align 1, !tbaa !25
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %81, label %78

; <label>:78                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit10
  %79 = getelementptr inbounds %"class.std::ctype"* %72, i64 0, i32 7, i64 10
  %80 = load i8* %79, align 1, !tbaa !27
  br label %_ZNKSt5ctypeIcE5widenEc.exit5

; <label>:81                                      ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit10
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %72) #11
  %82 = bitcast %"class.std::ctype"* %72 to i8 (%"class.std::ctype"*, i8)***
  %83 = load i8 (%"class.std::ctype"*, i8)*** %82, align 8, !tbaa !20
  %84 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)** %83, i64 6
  %85 = load i8 (%"class.std::ctype"*, i8)** %84, align 8
  %86 = call signext i8 %85(%"class.std::ctype"* %72, i8 signext 10) #11
  br label %_ZNKSt5ctypeIcE5widenEc.exit5

_ZNKSt5ctypeIcE5widenEc.exit5:                    ; preds = %81, %78
  %.0.i4 = phi i8 [ %80, %78 ], [ %86, %81 ]
  %87 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* %63, i8 signext %.0.i4) #11
  %88 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* %87) #11
  %89 = load i32* %49, align 4, !tbaa !7
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %"class.std::bitset"* %2, i64 0, i32 0, i32 0
  store i64 %90, i64* %91, align 8, !tbaa !28
  %92 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, %"class.std::bitset"* dereferenceable(8) %2) #11
  %93 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #9
  %94 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272) %92, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), i64 %93) #11
  %95 = load i32* %55, align 4, !tbaa !7
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %"class.std::bitset"* %3, i64 0, i32 0, i32 0
  store i64 %96, i64* %97, align 8, !tbaa !28
  %98 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE(%"class.std::basic_ostream"* dereferenceable(272) %92, %"class.std::bitset"* dereferenceable(8) %3) #11
  %99 = bitcast %"class.std::basic_ostream"* %98 to i8**
  %100 = load i8** %99, align 8, !tbaa !20
  %101 = getelementptr i8* %100, i64 -24
  %102 = bitcast i8* %101 to i64*
  %103 = load i64* %102, align 8
  %104 = bitcast %"class.std::basic_ostream"* %98 to i8*
  %.sum13 = add i64 %103, 240
  %105 = getelementptr inbounds i8* %104, i64 %.sum13
  %106 = bitcast i8* %105 to %"class.std::ctype"**
  %107 = load %"class.std::ctype"** %106, align 8, !tbaa !22
  %108 = icmp eq %"class.std::ctype"* %107, null
  br i1 %108, label %109, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit11

; <label>:109                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit5
  call void @_ZSt16__throw_bad_castv() #13
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit11:  ; preds = %_ZNKSt5ctypeIcE5widenEc.exit5
  %110 = getelementptr inbounds %"class.std::ctype"* %107, i64 0, i32 6
  %111 = load i8* %110, align 1, !tbaa !25
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %116, label %113

; <label>:113                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit11
  %114 = getelementptr inbounds %"class.std::ctype"* %107, i64 0, i32 7, i64 10
  %115 = load i8* %114, align 1, !tbaa !27
  br label %_ZNKSt5ctypeIcE5widenEc.exit7

; <label>:116                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit11
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %107) #11
  %117 = bitcast %"class.std::ctype"* %107 to i8 (%"class.std::ctype"*, i8)***
  %118 = load i8 (%"class.std::ctype"*, i8)*** %117, align 8, !tbaa !20
  %119 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)** %118, i64 6
  %120 = load i8 (%"class.std::ctype"*, i8)** %119, align 8
  %121 = call signext i8 %120(%"class.std::ctype"* %107, i8 signext 10) #11
  br label %_ZNKSt5ctypeIcE5widenEc.exit7

_ZNKSt5ctypeIcE5widenEc.exit7:                    ; preds = %116, %113
  %.0.i6 = phi i8 [ %115, %113 ], [ %121, %116 ]
  %122 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* %98, i8 signext %.0.i6) #11
  %123 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* %122) #11
  %124 = bitcast %struct.timeval* %tv.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %124)
  %125 = call i32 @gettimeofday(%struct.timeval* %tv.i, %struct.timezone* null) #9
  %126 = getelementptr inbounds %struct.timeval* %tv.i, i64 0, i32 0
  %127 = load i64* %126, align 8, !tbaa !1
  %128 = getelementptr inbounds %struct.timeval* %tv.i, i64 0, i32 1
  %129 = load i64* %128, align 8, !tbaa !6
  call void @llvm.lifetime.end(i64 16, i8* %124)
  %130 = bitcast %struct.grid_launch_parm* %lp1 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %130) #2
  %131 = getelementptr inbounds %struct.grid_launch_parm* %lp1, i64 0, i32 0, i32 0
  store i32 1, i32* %131, align 8, !tbaa !11
  %132 = getelementptr inbounds %struct.grid_launch_parm* %lp1, i64 0, i32 0, i32 1
  store i32 1, i32* %132, align 4, !tbaa !13
  %133 = getelementptr inbounds %struct.grid_launch_parm* %lp1, i64 0, i32 0, i32 2
  store i32 1, i32* %133, align 8, !tbaa !14
  %134 = getelementptr inbounds %struct.grid_launch_parm* %lp1, i64 0, i32 1, i32 0
  store i32 1, i32* %134, align 4, !tbaa !11
  %135 = getelementptr inbounds %struct.grid_launch_parm* %lp1, i64 0, i32 1, i32 1
  store i32 1, i32* %135, align 4, !tbaa !13
  %136 = getelementptr inbounds %struct.grid_launch_parm* %lp1, i64 0, i32 1, i32 2
  store i32 1, i32* %136, align 4, !tbaa !14
  %137 = getelementptr inbounds %struct.grid_launch_parm* %lp1, i64 0, i32 2
  store i32 0, i32* %137, align 8, !tbaa !15
  %138 = call %struct.ihipStream_t* @_Z19ihipPreLaunchKernelP12ihipStream_tmmP16grid_launch_parmPKc(%struct.ihipStream_t* null, i64 2560, i64 256, %struct.grid_launch_parm* %lp1, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0)) #11
  %139 = bitcast %struct.grid_launch_parm* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %139, i8* %130, i64 56, i32 8, i1 false), !tbaa.struct !18
  %140 = load i32** %in1d, align 8, !tbaa !9
  %141 = load i32** %in2d, align 8, !tbaa !9
  %142 = load i32** %outd, align 8, !tbaa !9
  call void @_Z7DoHADD216grid_launch_parmPiS0_S0_(%struct.grid_launch_parm* byval align 8 %4, i32* %140, i32* %141, i32* %142) #11
  call void @_Z20ihipPostLaunchKernelP12ihipStream_tR16grid_launch_parm(%struct.ihipStream_t* %138, %struct.grid_launch_parm* dereferenceable(56) %lp1) #11
  call void @llvm.lifetime.end(i64 56, i8* %130) #2
  %143 = call i32 @hipDeviceSynchronize() #11
  %144 = bitcast %struct.timeval* %tv.i3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %144)
  %145 = call i32 @gettimeofday(%struct.timeval* %tv.i3, %struct.timezone* null) #9
  %146 = getelementptr inbounds %struct.timeval* %tv.i3, i64 0, i32 0
  %147 = load i64* %146, align 8, !tbaa !1
  %148 = mul i64 %147, 1000000
  %149 = getelementptr inbounds %struct.timeval* %tv.i3, i64 0, i32 1
  %150 = load i64* %149, align 8, !tbaa !6
  %151 = mul i64 %127, -1000000
  %.neg17 = sub i64 %151, %129
  %152 = add i64 %.neg17, %150
  %153 = add i64 %152, %148
  call void @llvm.lifetime.end(i64 16, i8* %144)
  %154 = uitofp i64 %153 to float
  %155 = fdiv float %154, 1.000000e+06
  %156 = fpext float %155 to double
  %157 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* @_ZSt4cout, double %156) #11
  %158 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #9
  %159 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272) %157, i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i64 %158) #11
  %160 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIyEERSoT_(%"class.std::basic_ostream"* %157, i64 87960930) #11
  %161 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0)) #9
  %162 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272) %160, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i64 %161) #11
  %163 = bitcast %"class.std::basic_ostream"* %160 to i8**
  %164 = load i8** %163, align 8, !tbaa !20
  %165 = getelementptr i8* %164, i64 -24
  %166 = bitcast i8* %165 to i64*
  %167 = load i64* %166, align 8
  %168 = bitcast %"class.std::basic_ostream"* %160 to i8*
  %.sum14 = add i64 %167, 240
  %169 = getelementptr inbounds i8* %168, i64 %.sum14
  %170 = bitcast i8* %169 to %"class.std::ctype"**
  %171 = load %"class.std::ctype"** %170, align 8, !tbaa !22
  %172 = icmp eq %"class.std::ctype"* %171, null
  br i1 %172, label %173, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit12

; <label>:173                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit7
  call void @_ZSt16__throw_bad_castv() #13
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit12:  ; preds = %_ZNKSt5ctypeIcE5widenEc.exit7
  %174 = getelementptr inbounds %"class.std::ctype"* %171, i64 0, i32 6
  %175 = load i8* %174, align 1, !tbaa !25
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %180, label %177

; <label>:177                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit12
  %178 = getelementptr inbounds %"class.std::ctype"* %171, i64 0, i32 7, i64 10
  %179 = load i8* %178, align 1, !tbaa !27
  br label %_ZNKSt5ctypeIcE5widenEc.exit9

; <label>:180                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit12
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %171) #11
  %181 = bitcast %"class.std::ctype"* %171 to i8 (%"class.std::ctype"*, i8)***
  %182 = load i8 (%"class.std::ctype"*, i8)*** %181, align 8, !tbaa !20
  %183 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)** %182, i64 6
  %184 = load i8 (%"class.std::ctype"*, i8)** %183, align 8
  %185 = call signext i8 %184(%"class.std::ctype"* %171, i8 signext 10) #11
  br label %_ZNKSt5ctypeIcE5widenEc.exit9

_ZNKSt5ctypeIcE5widenEc.exit9:                    ; preds = %180, %177
  %.0.i8 = phi i8 [ %179, %177 ], [ %185, %180 ]
  %186 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* %160, i8 signext %.0.i8) #11
  %187 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* %186) #11
  %188 = fmul float %155, 1.000000e+06
  %189 = fdiv float 0x41A4F8B580000000, %188
  %190 = call i64 @strlen(i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0)) #9
  %191 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0), i64 %190) #11
  %192 = fpext float %189 to double
  %193 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* @_ZSt4cout, double %192) #11
  %194 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0)) #9
  %195 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272) %193, i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i64 %194) #11
  %196 = bitcast %"class.std::basic_ostream"* %193 to i8**
  %197 = load i8** %196, align 8, !tbaa !20
  %198 = getelementptr i8* %197, i64 -24
  %199 = bitcast i8* %198 to i64*
  %200 = load i64* %199, align 8
  %201 = bitcast %"class.std::basic_ostream"* %193 to i8*
  %.sum15 = add i64 %200, 240
  %202 = getelementptr inbounds i8* %201, i64 %.sum15
  %203 = bitcast i8* %202 to %"class.std::ctype"**
  %204 = load %"class.std::ctype"** %203, align 8, !tbaa !22
  %205 = icmp eq %"class.std::ctype"* %204, null
  br i1 %205, label %206, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

; <label>:206                                     ; preds = %_ZNKSt5ctypeIcE5widenEc.exit9
  call void @_ZSt16__throw_bad_castv() #13
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %_ZNKSt5ctypeIcE5widenEc.exit9
  %207 = getelementptr inbounds %"class.std::ctype"* %204, i64 0, i32 6
  %208 = load i8* %207, align 1, !tbaa !25
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %213, label %210

; <label>:210                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
  %211 = getelementptr inbounds %"class.std::ctype"* %204, i64 0, i32 7, i64 10
  %212 = load i8* %211, align 1, !tbaa !27
  br label %_ZNKSt5ctypeIcE5widenEc.exit

; <label>:213                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %204) #11
  %214 = bitcast %"class.std::ctype"* %204 to i8 (%"class.std::ctype"*, i8)***
  %215 = load i8 (%"class.std::ctype"*, i8)*** %214, align 8, !tbaa !20
  %216 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)** %215, i64 6
  %217 = load i8 (%"class.std::ctype"*, i8)** %216, align 8
  %218 = call signext i8 %217(%"class.std::ctype"* %204, i8 signext 10) #11
  br label %_ZNKSt5ctypeIcE5widenEc.exit

_ZNKSt5ctypeIcE5widenEc.exit:                     ; preds = %213, %210
  %.0.i = phi i8 [ %212, %210 ], [ %218, %213 ]
  %219 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* %193, i8 signext %.0.i) #11
  %220 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* %219) #11
  ret i32 0
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #7

declare i32 @hipMalloc(i8**, i64) #0

declare i32 @hipMemcpy(i8*, i8*, i64, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct.ihipStream_t* @_Z19ihipPreLaunchKernelP12ihipStream_tmmP16grid_launch_parmPKc(%struct.ihipStream_t*, i64, i64, %struct.grid_launch_parm*, i8*) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @_Z20ihipPostLaunchKernelP12ihipStream_tR16grid_launch_parm(%struct.ihipStream_t*, %struct.grid_launch_parm* dereferenceable(56)) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @hipDeviceSynchronize() #0

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #0

; Function Attrs: uwtable
define linkonce_odr dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE(%"class.std::basic_ostream"* dereferenceable(272) %__os, %"class.std::bitset"* nocapture readonly dereferenceable(8) %__x) #6 {
  %1 = alloca i32, align 4
  %2 = alloca %"class.std::allocator", align 1
  %__tmp = alloca %"class.std::basic_string", align 8
  %3 = alloca %"class.std::locale", align 8
  %4 = getelementptr inbounds %"class.std::basic_string"* %__tmp, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %4, align 8, !tbaa !30
  %5 = bitcast %"class.std::basic_ostream"* %__os to i8**
  %6 = load i8** %5, align 8, !tbaa !20
  %7 = getelementptr i8* %6, i64 -24
  %8 = bitcast i8* %7 to i64*
  %9 = load i64* %8, align 8
  %10 = bitcast %"class.std::basic_ostream"* %__os to i8*
  %.sum = add i64 %9, 208
  %11 = getelementptr inbounds i8* %10, i64 %.sum
  %12 = bitcast i8* %11 to %"class.std::locale"*
  call void @_ZNSt6localeC1ERKS_(%"class.std::locale"* %3, %"class.std::locale"* dereferenceable(8) %12) #9
  %13 = call dereferenceable(576) %"class.std::ctype"* @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(%"class.std::locale"* dereferenceable(8) %3) #11
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* %3) #9
  %14 = getelementptr inbounds %"class.std::ctype"* %13, i64 0, i32 6
  %15 = load i8* %14, align 1, !tbaa !25
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %_ZNKSt5ctypeIcE5widenEc.exit, label %_ZNKSt5ctypeIcE5widenEc.exit.thread

_ZNKSt5ctypeIcE5widenEc.exit.thread:              ; preds = %0
  %17 = getelementptr inbounds %"class.std::ctype"* %13, i64 0, i32 7, i64 48
  %18 = load i8* %17, align 1, !tbaa !27
  br label %25

_ZNKSt5ctypeIcE5widenEc.exit:                     ; preds = %0
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %13) #11
  %19 = bitcast %"class.std::ctype"* %13 to i8 (%"class.std::ctype"*, i8)***
  %20 = load i8 (%"class.std::ctype"*, i8)*** %19, align 8, !tbaa !20
  %21 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)** %20, i64 6
  %22 = load i8 (%"class.std::ctype"*, i8)** %21, align 8
  %23 = call signext i8 %22(%"class.std::ctype"* %13, i8 signext 48) #11
  %.pre = load i8* %14, align 1, !tbaa !25
  %24 = icmp eq i8 %.pre, 0
  br i1 %24, label %28, label %25

; <label>:25                                      ; preds = %_ZNKSt5ctypeIcE5widenEc.exit, %_ZNKSt5ctypeIcE5widenEc.exit.thread
  %.0.i4 = phi i8 [ %18, %_ZNKSt5ctypeIcE5widenEc.exit.thread ], [ %23, %_ZNKSt5ctypeIcE5widenEc.exit ]
  %26 = getelementptr inbounds %"class.std::ctype"* %13, i64 0, i32 7, i64 49
  %27 = load i8* %26, align 1, !tbaa !27
  br label %_ZNKSt5ctypeIcE5widenEc.exit2

; <label>:28                                      ; preds = %_ZNKSt5ctypeIcE5widenEc.exit
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %13) #11
  %29 = bitcast %"class.std::ctype"* %13 to i8 (%"class.std::ctype"*, i8)***
  %30 = load i8 (%"class.std::ctype"*, i8)*** %29, align 8, !tbaa !20
  %31 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)** %30, i64 6
  %32 = load i8 (%"class.std::ctype"*, i8)** %31, align 8
  %33 = call signext i8 %32(%"class.std::ctype"* %13, i8 signext 49) #11
  br label %_ZNKSt5ctypeIcE5widenEc.exit2

_ZNKSt5ctypeIcE5widenEc.exit2:                    ; preds = %28, %25
  %.0.i3 = phi i8 [ %.0.i4, %25 ], [ %23, %28 ]
  %.0.i1 = phi i8 [ %27, %25 ], [ %33, %28 ]
  %34 = load i8** %4, align 8, !tbaa !32
  %35 = getelementptr inbounds i8* %34, i64 -24
  %36 = bitcast i8* %35 to i64*
  %37 = load i64* %36, align 8, !tbaa !34
  %38 = call dereferenceable(8) %"class.std::basic_string"* @_ZNSs14_M_replace_auxEmmmc(%"class.std::basic_string"* %__tmp, i64 0, i64 %37, i64 32, i8 signext %.0.i3) #11
  %39 = getelementptr inbounds %"class.std::bitset"* %__x, i64 0, i32 0, i32 0
  br label %40

; <label>:40                                      ; preds = %.backedge.i, %_ZNKSt5ctypeIcE5widenEc.exit2
  %__i.01.i = phi i64 [ 32, %_ZNKSt5ctypeIcE5widenEc.exit2 ], [ %41, %.backedge.i ]
  %41 = add i64 %__i.01.i, -1
  %42 = load i64* %39, align 8, !tbaa !28
  %43 = shl i64 1, %41
  %44 = and i64 %43, %42
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %.backedge.i, label %46

; <label>:46                                      ; preds = %40
  %47 = sub i64 32, %__i.01.i
  %48 = load i8** %4, align 8, !tbaa !32
  %49 = getelementptr inbounds i8* %48, i64 -8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32* %50, align 4, !tbaa !36
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %_ZNSsixEm.exit.i, label %53

; <label>:53                                      ; preds = %46
  call void @_ZNSs12_M_leak_hardEv(%"class.std::basic_string"* %__tmp) #11
  %.pre.i.i = load i8** %4, align 8, !tbaa !32
  br label %_ZNSsixEm.exit.i

_ZNSsixEm.exit.i:                                 ; preds = %53, %46
  %54 = phi i8* [ %48, %46 ], [ %.pre.i.i, %53 ]
  %55 = getelementptr inbounds i8* %54, i64 %47
  store i8 %.0.i1, i8* %55, align 1, !tbaa !27
  br label %.backedge.i

.backedge.i:                                      ; preds = %_ZNSsixEm.exit.i, %40
  %56 = icmp eq i64 %41, 0
  br i1 %56, label %_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRSbIT_T0_T1_ES5_S5_.exit, label %40

_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRSbIT_T0_T1_ES5_S5_.exit: ; preds = %.backedge.i
  %57 = load i8** %4, align 8, !tbaa !32
  %58 = getelementptr inbounds i8* %57, i64 -24
  %59 = bitcast i8* %58 to i64*
  %60 = load i64* %59, align 8, !tbaa !34
  %61 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272) %__os, i8* %57, i64 %60) #11
  %62 = getelementptr inbounds %"class.std::allocator"* %2, i64 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %62) #2
  %63 = load i8** %4, align 8, !tbaa !32
  %64 = getelementptr inbounds i8* %63, i64 -24
  %65 = bitcast i8* %64 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  %66 = icmp eq i8* %64, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %66, label %_ZNSsD1Ev.exit, label %67, !prof !37

; <label>:67                                      ; preds = %_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRSbIT_T0_T1_ES5_S5_.exit
  %68 = getelementptr inbounds i8* %63, i64 -8
  %69 = bitcast i8* %68 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %70, label %74

; <label>:70                                      ; preds = %67
  %71 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71)
  %72 = atomicrmw volatile add i32* %69, i32 -1 acq_rel
  store i32 %72, i32* %1, align 4
  %73 = load volatile i32* %1, align 4
  call void @llvm.lifetime.end(i64 4, i8* %71)
  br label %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i

; <label>:74                                      ; preds = %67
  %75 = load i32* %69, align 4, !tbaa !7
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %69, align 4, !tbaa !7
  br label %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %74, %70
  %.0.i.i.i.i = phi i32 [ %73, %70 ], [ %75, %74 ]
  %77 = icmp slt i32 %.0.i.i.i.i, 1
  br i1 %77, label %78, label %_ZNSsD1Ev.exit

; <label>:78                                      ; preds = %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %65, %"class.std::allocator"* dereferenceable(1) %2) #9
  br label %_ZNSsD1Ev.exit

_ZNSsD1Ev.exit:                                   ; preds = %78, %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i, %_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRSbIT_T0_T1_ES5_S5_.exit
  call void @llvm.lifetime.end(i64 1, i8* %62) #2
  ret %"class.std::basic_ostream"* %61
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIyEERSoT_(%"class.std::basic_ostream"*, i64) #0

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"*, double) #0

declare dereferenceable(576) %"class.std::ctype"* @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(%"class.std::locale"* dereferenceable(8)) #0

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(%"class.std::locale"*) #1

; Function Attrs: nounwind
declare void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*, %"class.std::allocator"* dereferenceable(1)) #1

; Function Attrs: nounwind
declare extern_weak i32 @__pthread_key_create(i32*, void (i8*)*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* dereferenceable(272), i8*, i64) #0

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) #0

declare void @_ZNSs12_M_leak_hardEv(%"class.std::basic_string"*) #0

declare dereferenceable(8) %"class.std::basic_string"* @_ZNSs14_M_replace_auxEmmmc(%"class.std::basic_string"*, i64, i64, i64, i8 signext) #0

; Function Attrs: nounwind
declare void @_ZNSt6localeC1ERKS_(%"class.std::locale"*, %"class.std::locale"* dereferenceable(8)) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"*, i8 signext) #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #8

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) #0

; Function Attrs: nounwind
declare i64 @strlen(i8*) #1

define internal void @_GLOBAL__sub_I_half2.cpp() section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit) #11
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* @__dso_handle) #2
  ret void
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline uwtable "hc_grid_launch" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { nobuiltin nounwind readnone }
attributes #11 = { nobuiltin }
attributes #12 = { builtin nobuiltin }
attributes #13 = { nobuiltin noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"HCC clang version 3.5.0  (based on HCC 0.10.16481-e2b4718-6fa8481 LLVM 3.5.0svn)"}
!1 = metadata !{metadata !2, metadata !3, i64 0}
!2 = metadata !{metadata !"_ZTS7timeval", metadata !3, i64 0, metadata !3, i64 8}
!3 = metadata !{metadata !"long", metadata !4, i64 0}
!4 = metadata !{metadata !"omnipotent char", metadata !5, i64 0}
!5 = metadata !{metadata !"Simple C/C++ TBAA"}
!6 = metadata !{metadata !2, metadata !3, i64 8}
!7 = metadata !{metadata !8, metadata !8, i64 0}
!8 = metadata !{metadata !"int", metadata !4, i64 0}
!9 = metadata !{metadata !10, metadata !10, i64 0}
!10 = metadata !{metadata !"any pointer", metadata !4, i64 0}
!11 = metadata !{metadata !12, metadata !8, i64 0}
!12 = metadata !{metadata !"_ZTS7gl_dim3", metadata !8, i64 0, metadata !8, i64 4, metadata !8, i64 8}
!13 = metadata !{metadata !12, metadata !8, i64 4}
!14 = metadata !{metadata !12, metadata !8, i64 8}
!15 = metadata !{metadata !16, metadata !8, i64 24}
!16 = metadata !{metadata !"_ZTS16grid_launch_parm", metadata !12, i64 0, metadata !12, i64 12, metadata !8, i64 24, metadata !17, i64 28, metadata !8, i64 32, metadata !10, i64 40, metadata !10, i64 48}
!17 = metadata !{metadata !"_ZTS14gl_barrier_bit", metadata !4, i64 0}
!18 = metadata !{i64 0, i64 4, metadata !7, i64 4, i64 4, metadata !7, i64 8, i64 4, metadata !7, i64 12, i64 4, metadata !7, i64 16, i64 4, metadata !7, i64 20, i64 4, metadata !7, i64 24, i64 4, metadata !7, i64 28, i64 4, metadata !19, i64 32, i64 4, metadata !7, i64 40, i64 8, metadata !9, i64 48, i64 8, metadata !9}
!19 = metadata !{metadata !17, metadata !17, i64 0}
!20 = metadata !{metadata !21, metadata !21, i64 0}
!21 = metadata !{metadata !"vtable pointer", metadata !5, i64 0}
!22 = metadata !{metadata !23, metadata !10, i64 240}
!23 = metadata !{metadata !"_ZTSSt9basic_iosIcSt11char_traitsIcEE", metadata !10, i64 216, metadata !4, i64 224, metadata !24, i64 225, metadata !10, i64 232, metadata !10, i64 240, metadata !10, i64 248, metadata !10, i64 256}
!24 = metadata !{metadata !"bool", metadata !4, i64 0}
!25 = metadata !{metadata !26, metadata !4, i64 56}
!26 = metadata !{metadata !"_ZTSSt5ctypeIcE", metadata !10, i64 16, metadata !24, i64 24, metadata !10, i64 32, metadata !10, i64 40, metadata !10, i64 48, metadata !4, i64 56, metadata !4, i64 57, metadata !4, i64 313, metadata !4, i64 569}
!27 = metadata !{metadata !4, metadata !4, i64 0}
!28 = metadata !{metadata !29, metadata !3, i64 0}
!29 = metadata !{metadata !"_ZTSSt12_Base_bitsetILm1EE", metadata !3, i64 0}
!30 = metadata !{metadata !31, metadata !10, i64 0}
!31 = metadata !{metadata !"_ZTSNSs12_Alloc_hiderE", metadata !10, i64 0}
!32 = metadata !{metadata !33, metadata !10, i64 0}
!33 = metadata !{metadata !"_ZTSSs", metadata !31, i64 0}
!34 = metadata !{metadata !35, metadata !3, i64 0}
!35 = metadata !{metadata !"_ZTSNSs9_Rep_baseE", metadata !3, i64 0, metadata !3, i64 8, metadata !8, i64 16}
!36 = metadata !{metadata !35, metadata !8, i64 16}
!37 = metadata !{metadata !"branch_weights", i32 64, i32 4}

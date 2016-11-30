; ModuleID = '/tmp/half2-8f80b2.s'
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
%struct.ihipStream_t = type opaque
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { i64 }
%"class.std::basic_string" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }

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
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_half2.cpp, i8* null }]

define internal void @__cxx_global_var_init() section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i64 @_Z10dtime_usecy(i64 %start) #3 {
  %1 = alloca i64, align 8
  %tv = alloca %struct.timeval, align 8
  store i64 %start, i64* %1, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #2
  %3 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0
  %4 = load i64* %3, align 8
  %5 = mul i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 1
  %7 = load i64* %6, align 8
  %8 = add i64 %5, %7
  %9 = load i64* %1, align 8
  %10 = sub i64 %8, %9
  ret i64 %10
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: noinline uwtable
define void @_Z7DoHADD216grid_launch_parmPiS0_S0_(%struct.grid_launch_parm* byval align 8 %lp, i32* %in1d, i32* %in2d, i32* %outd) #4 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %tx = alloca i32, align 4
  %in1 = alloca i32, align 4
  %in2 = alloca i32, align 4
  %out = alloca i32, align 4
  %i = alloca i32, align 4
  %one = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %two = alloca i32, align 4
  store i32* %in1d, i32** %1, align 8
  store i32* %in2d, i32** %2, align 8
  store i32* %outd, i32** %3, align 8
  %4 = call i64 @hc_get_workitem_id(i32 0) #9
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %tx, align 4
  %6 = load i32* %tx, align 4
  %7 = sext i32 %6 to i64
  %8 = load i32** %1, align 8
  %9 = getelementptr inbounds i32* %8, i64 %7
  %10 = load i32* %9, align 4
  store i32 %10, i32* %in1, align 4
  %11 = load i32* %tx, align 4
  %12 = sext i32 %11 to i64
  %13 = load i32** %2, align 8
  %14 = getelementptr inbounds i32* %13, i64 %12
  %15 = load i32* %14, align 4
  store i32 %15, i32* %in2, align 4
  store i32 0, i32* %out, align 4
  store i32 0, i32* %i, align 4
  br label %16

; <label>:16                                      ; preds = %36, %0
  %17 = load i32* %i, align 4
  %18 = icmp slt i32 %17, 134217728
  br i1 %18, label %19, label %39

; <label>:19                                      ; preds = %16
  %20 = load i32* %in1, align 4
  %21 = load i32* %in2, align 4
  %22 = call i32 @__rocm_hadd(i32 %20, i32 %21)
  store i32 %22, i32* %one, align 4
  %23 = load i32* %in1, align 4
  %24 = ashr i32 %23, 16
  store i32 %24, i32* %tmp1, align 4
  %25 = load i32* %in2, align 4
  %26 = ashr i32 %25, 16
  store i32 %26, i32* %tmp2, align 4
  %27 = load i32* %tmp1, align 4
  %28 = load i32* %tmp2, align 4
  %29 = call i32 @__rocm_hadd(i32 %27, i32 %28)
  store i32 %29, i32* %two, align 4
  %30 = load i32* %two, align 4
  %31 = and i32 %30, 65535
  %32 = shl i32 %31, 16
  %33 = load i32* %one, align 4
  %34 = and i32 %33, 65535
  %35 = or i32 %32, %34
  store i32 %35, i32* %out, align 4
  br label %36

; <label>:36                                      ; preds = %19
  %37 = load i32* %i, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %i, align 4
  br label %16

; <label>:39                                      ; preds = %16
  %40 = load i32* %out, align 4
  %41 = load i32* %tx, align 4
  %42 = sext i32 %41 to i64
  %43 = load i32** %3, align 8
  %44 = getelementptr inbounds i32* %43, i64 %42
  store i32 %40, i32* %44, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @hc_get_workitem_id(i32) #5

declare i32 @__rocm_hadd(i32, i32) #0

; Function Attrs: noinline uwtable
define void @_Z9FuncHADD216grid_launch_parmPiS0_S0_(%struct.grid_launch_parm* byval align 8 %lp, i32* %in1d, i32* %in2d, i32* %outd) #4 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %tx = alloca i32, align 4
  %in1 = alloca i32, align 4
  %in2 = alloca i32, align 4
  %out = alloca i32, align 4
  %one = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %two = alloca i32, align 4
  store i32* %in1d, i32** %1, align 8
  store i32* %in2d, i32** %2, align 8
  store i32* %outd, i32** %3, align 8
  %4 = call i64 @hc_get_workitem_id(i32 0) #9
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %tx, align 4
  %6 = load i32* %tx, align 4
  %7 = sext i32 %6 to i64
  %8 = load i32** %1, align 8
  %9 = getelementptr inbounds i32* %8, i64 %7
  %10 = load i32* %9, align 4
  store i32 %10, i32* %in1, align 4
  %11 = load i32* %tx, align 4
  %12 = sext i32 %11 to i64
  %13 = load i32** %2, align 8
  %14 = getelementptr inbounds i32* %13, i64 %12
  %15 = load i32* %14, align 4
  store i32 %15, i32* %in2, align 4
  store i32 0, i32* %out, align 4
  %16 = load i32* %in1, align 4
  %17 = load i32* %in2, align 4
  %18 = call i32 @__rocm_hadd(i32 %16, i32 %17)
  store i32 %18, i32* %one, align 4
  %19 = load i32* %in1, align 4
  %20 = ashr i32 %19, 16
  store i32 %20, i32* %tmp1, align 4
  %21 = load i32* %in2, align 4
  %22 = ashr i32 %21, 16
  store i32 %22, i32* %tmp2, align 4
  %23 = load i32* %tmp1, align 4
  %24 = load i32* %tmp2, align 4
  %25 = call i32 @__rocm_hadd(i32 %23, i32 %24)
  store i32 %25, i32* %two, align 4
  %26 = load i32* %two, align 4
  %27 = and i32 %26, 65535
  %28 = shl i32 %27, 16
  %29 = load i32* %one, align 4
  %30 = and i32 %29, 65535
  %31 = or i32 %28, %30
  store i32 %31, i32* %out, align 4
  %32 = load i32* %out, align 4
  %33 = load i32* %tx, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32** %3, align 8
  %36 = getelementptr inbounds i32* %35, i64 %34
  store i32 %32, i32* %36, align 4
  ret void
}

; Function Attrs: uwtable
define i32 @main() #6 {
  %1 = alloca i32, align 4
  %in1d = alloca i32*, align 8
  %in2d = alloca i32*, align 8
  %outd = alloca i32*, align 8
  %in1 = alloca i32*, align 8
  %in2 = alloca i32*, align 8
  %out = alloca i32*, align 8
  %i = alloca i32, align 4
  %lp = alloca %struct.grid_launch_parm, align 8
  %trueStream = alloca %struct.ihipStream_t*, align 8
  %2 = alloca %struct.grid_launch_parm, align 8
  %3 = alloca %"class.std::bitset", align 8
  %4 = alloca %"class.std::bitset", align 8
  %dt = alloca i64, align 8
  %lp1 = alloca %struct.grid_launch_parm, align 8
  %trueStream2 = alloca %struct.ihipStream_t*, align 8
  %5 = alloca %struct.grid_launch_parm, align 8
  %ops = alloca i64, align 8
  %et = alloca float, align 4
  %Mops = alloca i64, align 8
  %tp = alloca float, align 4
  store i32 0, i32* %1
  %6 = call noalias i8* @_Znam(i64 1024) #10
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %in1, align 8
  %8 = call noalias i8* @_Znam(i64 1024) #10
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %in2, align 8
  %10 = call noalias i8* @_Znam(i64 1024) #10
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %out, align 8
  store i32 0, i32* %i, align 4
  br label %12

; <label>:12                                      ; preds = %28, %0
  %13 = load i32* %i, align 4
  %14 = icmp ult i32 %13, 256
  br i1 %14, label %15, label %31

; <label>:15                                      ; preds = %12
  %16 = load i32* %i, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32** %in1, align 8
  %19 = getelementptr inbounds i32* %18, i64 %17
  store i32 894776661, i32* %19, align 4
  %20 = load i32* %i, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32** %in2, align 8
  %23 = getelementptr inbounds i32* %22, i64 %21
  store i32 894776661, i32* %23, align 4
  %24 = load i32* %i, align 4
  %25 = zext i32 %24 to i64
  %26 = load i32** %out, align 8
  %27 = getelementptr inbounds i32* %26, i64 %25
  store i32 0, i32* %27, align 4
  br label %28

; <label>:28                                      ; preds = %15
  %29 = load i32* %i, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %12

; <label>:31                                      ; preds = %12
  %32 = bitcast i32** %in1d to i8**
  %33 = call i32 @hipMalloc(i8** %32, i64 1024)
  %34 = bitcast i32** %in2d to i8**
  %35 = call i32 @hipMalloc(i8** %34, i64 1024)
  %36 = bitcast i32** %outd to i8**
  %37 = call i32 @hipMalloc(i8** %36, i64 1024)
  %38 = load i32** %in1d, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load i32** %in1, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = call i32 @hipMemcpy(i8* %39, i8* %41, i64 1024, i32 1)
  %43 = load i32** %in2d, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = load i32** %in2, align 8
  %46 = bitcast i32* %45 to i8*
  %47 = call i32 @hipMemcpy(i8* %44, i8* %46, i64 1024, i32 1)
  br label %48

; <label>:48                                      ; preds = %31
  call void @_ZN16grid_launch_parmC2Ev(%struct.grid_launch_parm* %lp)
  %49 = getelementptr inbounds %struct.grid_launch_parm* %lp, i32 0, i32 2
  store i32 0, i32* %49, align 4
  %50 = call %struct.ihipStream_t* @_Z19ihipPreLaunchKernelP12ihipStream_tmmP16grid_launch_parmPKc(%struct.ihipStream_t* null, i64 1, i64 256, %struct.grid_launch_parm* %lp, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0))
  store %struct.ihipStream_t* %50, %struct.ihipStream_t** %trueStream, align 8
  %51 = bitcast %struct.grid_launch_parm* %2 to i8*
  %52 = bitcast %struct.grid_launch_parm* %lp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 56, i32 8, i1 false)
  %53 = load i32** %in1d, align 8
  %54 = load i32** %in2d, align 8
  %55 = load i32** %outd, align 8
  call void @_Z9FuncHADD216grid_launch_parmPiS0_S0_(%struct.grid_launch_parm* byval align 8 %2, i32* %53, i32* %54, i32* %55)
  %56 = load %struct.ihipStream_t** %trueStream, align 8
  call void @_Z20ihipPostLaunchKernelP12ihipStream_tR16grid_launch_parm(%struct.ihipStream_t* %56, %struct.grid_launch_parm* dereferenceable(56) %lp)
  br label %57

; <label>:57                                      ; preds = %48
  %58 = call i32 @hipDeviceSynchronize()
  %59 = load i32** %out, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = load i32** %outd, align 8
  %62 = bitcast i32* %61 to i8*
  %63 = call i32 @hipMemcpy(i8* %60, i8* %62, i64 1024, i32 2)
  %64 = load i32** %in1, align 8
  %65 = getelementptr inbounds i32* %64, i64 10
  %66 = load i32* %65, align 4
  %67 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %66)
  %68 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %67, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  %69 = load i32** %out, align 8
  %70 = getelementptr inbounds i32* %69, i64 10
  %71 = load i32* %70, align 4
  %72 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %68, i32 %71)
  %73 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %72, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  %74 = load i32** %out, align 8
  %75 = getelementptr inbounds i32* %74, i64 11
  %76 = load i32* %75, align 4
  %77 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %73, i32 %76)
  %78 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %77, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %79 = load i32** %in1, align 8
  %80 = getelementptr inbounds i32* %79, i64 10
  %81 = load i32* %80, align 4
  %82 = sext i32 %81 to i64
  call void @_ZNSt6bitsetILm32EEC2Ey(%"class.std::bitset"* %3, i64 %82) #2
  %83 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, %"class.std::bitset"* dereferenceable(8) %3)
  %84 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %83, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  %85 = load i32** %out, align 8
  %86 = getelementptr inbounds i32* %85, i64 10
  %87 = load i32* %86, align 4
  %88 = sext i32 %87 to i64
  call void @_ZNSt6bitsetILm32EEC2Ey(%"class.std::bitset"* %4, i64 %88) #2
  %89 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE(%"class.std::basic_ostream"* dereferenceable(272) %84, %"class.std::bitset"* dereferenceable(8) %4)
  %90 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %89, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %91 = call i64 @_Z10dtime_usecy(i64 0)
  store i64 %91, i64* %dt, align 8
  br label %92

; <label>:92                                      ; preds = %57
  call void @_ZN16grid_launch_parmC2Ev(%struct.grid_launch_parm* %lp1)
  %93 = getelementptr inbounds %struct.grid_launch_parm* %lp1, i32 0, i32 2
  store i32 0, i32* %93, align 4
  %94 = call %struct.ihipStream_t* @_Z19ihipPreLaunchKernelP12ihipStream_tmmP16grid_launch_parmPKc(%struct.ihipStream_t* null, i64 2560, i64 256, %struct.grid_launch_parm* %lp1, i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0))
  store %struct.ihipStream_t* %94, %struct.ihipStream_t** %trueStream2, align 8
  %95 = bitcast %struct.grid_launch_parm* %5 to i8*
  %96 = bitcast %struct.grid_launch_parm* %lp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 56, i32 8, i1 false)
  %97 = load i32** %in1d, align 8
  %98 = load i32** %in2d, align 8
  %99 = load i32** %outd, align 8
  call void @_Z7DoHADD216grid_launch_parmPiS0_S0_(%struct.grid_launch_parm* byval align 8 %5, i32* %97, i32* %98, i32* %99)
  %100 = load %struct.ihipStream_t** %trueStream2, align 8
  call void @_Z20ihipPostLaunchKernelP12ihipStream_tR16grid_launch_parm(%struct.ihipStream_t* %100, %struct.grid_launch_parm* dereferenceable(56) %lp1)
  br label %101

; <label>:101                                     ; preds = %92
  %102 = call i32 @hipDeviceSynchronize()
  %103 = load i64* %dt, align 8
  %104 = call i64 @_Z10dtime_usecy(i64 %103)
  store i64 %104, i64* %dt, align 8
  store i64 134217728, i64* %ops, align 8
  %105 = load i64* %ops, align 8
  %106 = mul i64 %105, 2560
  store i64 %106, i64* %ops, align 8
  %107 = load i64* %ops, align 8
  %108 = mul i64 %107, 256
  store i64 %108, i64* %ops, align 8
  %109 = load i64* %dt, align 8
  %110 = uitofp i64 %109 to float
  %111 = fdiv float %110, 1.000000e+06
  store float %111, float* %et, align 4
  %112 = load i64* %ops, align 8
  %113 = udiv i64 %112, 1000000
  store i64 %113, i64* %Mops, align 8
  %114 = load float* %et, align 4
  %115 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* @_ZSt4cout, float %114)
  %116 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %115, i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0))
  %117 = load i64* %Mops, align 8
  %118 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEy(%"class.std::basic_ostream"* %116, i64 %117)
  %119 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %118, i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0))
  %120 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %119, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %121 = load i64* %Mops, align 8
  %122 = mul i64 %121, 2
  %123 = uitofp i64 %122 to float
  %124 = load float* %et, align 4
  %125 = fmul float %124, 1.000000e+06
  %126 = fdiv float %123, %125
  store float %126, float* %tp, align 4
  %127 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([13 x i8]* @.str5, i32 0, i32 0))
  %128 = load float* %tp, align 4
  %129 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %127, float %128)
  %130 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %129, i8* getelementptr inbounds ([8 x i8]* @.str6, i32 0, i32 0))
  %131 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %130, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %132 = load i32* %1
  ret i32 %132
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #7

declare i32 @hipMalloc(i8**, i64) #0

declare i32 @hipMemcpy(i8*, i8*, i64, i32) #0

; Function Attrs: uwtable
define linkonce_odr void @_ZN16grid_launch_parmC2Ev(%struct.grid_launch_parm* %this) unnamed_addr #6 align 2 {
  %1 = alloca %struct.grid_launch_parm*, align 8
  store %struct.grid_launch_parm* %this, %struct.grid_launch_parm** %1, align 8
  %2 = load %struct.grid_launch_parm** %1
  %3 = getelementptr inbounds %struct.grid_launch_parm* %2, i32 0, i32 0
  call void @_ZN7gl_dim3C2Ejjj(%struct.gl_dim3* %3, i32 1, i32 1, i32 1)
  %4 = getelementptr inbounds %struct.grid_launch_parm* %2, i32 0, i32 1
  call void @_ZN7gl_dim3C2Ejjj(%struct.gl_dim3* %4, i32 1, i32 1, i32 1)
  ret void
}

declare %struct.ihipStream_t* @_Z19ihipPreLaunchKernelP12ihipStream_tmmP16grid_launch_parmPKc(%struct.ihipStream_t*, i64, i64, %struct.grid_launch_parm*, i8*) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @_Z20ihipPostLaunchKernelP12ihipStream_tR16grid_launch_parm(%struct.ihipStream_t*, %struct.grid_launch_parm* dereferenceable(56)) #0

declare i32 @hipDeviceSynchronize() #0

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #0

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #0

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #0

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #0

; Function Attrs: uwtable
define linkonce_odr dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE(%"class.std::basic_ostream"* dereferenceable(272) %__os, %"class.std::bitset"* dereferenceable(8) %__x) #6 {
  %1 = alloca %"class.std::basic_ostream"*, align 8
  %2 = alloca %"class.std::bitset"*, align 8
  %__tmp = alloca %"class.std::basic_string", align 8
  %__ct = alloca %"class.std::ctype"*, align 8
  %3 = alloca %"class.std::locale", align 8
  %4 = alloca i8*
  %5 = alloca i32
  %6 = alloca i32
  store %"class.std::basic_ostream"* %__os, %"class.std::basic_ostream"** %1, align 8
  store %"class.std::bitset"* %__x, %"class.std::bitset"** %2, align 8
  call void @_ZNSsC1Ev(%"class.std::basic_string"* %__tmp)
  %7 = load %"class.std::basic_ostream"** %1, align 8
  %8 = bitcast %"class.std::basic_ostream"* %7 to i8**
  %9 = load i8** %8
  %10 = getelementptr i8* %9, i64 -24
  %11 = bitcast i8* %10 to i64*
  %12 = load i64* %11
  %13 = bitcast %"class.std::basic_ostream"* %7 to i8*
  %14 = getelementptr inbounds i8* %13, i64 %12
  %15 = bitcast i8* %14 to %"class.std::ios_base"*
  invoke void @_ZNKSt8ios_base6getlocEv(%"class.std::locale"* sret %3, %"class.std::ios_base"* %15)
          to label %16 unwind label %30

; <label>:16                                      ; preds = %0
  %17 = invoke dereferenceable(576) %"class.std::ctype"* @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(%"class.std::locale"* dereferenceable(8) %3)
          to label %18 unwind label %34

; <label>:18                                      ; preds = %16
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* %3) #2
  store %"class.std::ctype"* %17, %"class.std::ctype"** %__ct, align 8
  %19 = load %"class.std::bitset"** %2, align 8
  %20 = load %"class.std::ctype"** %__ct, align 8
  %21 = invoke signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %20, i8 signext 48)
          to label %22 unwind label %30

; <label>:22                                      ; preds = %18
  %23 = load %"class.std::ctype"** %__ct, align 8
  %24 = invoke signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %23, i8 signext 49)
          to label %25 unwind label %30

; <label>:25                                      ; preds = %22
  invoke void @_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRSbIT_T0_T1_ES5_S5_(%"class.std::bitset"* %19, %"class.std::basic_string"* dereferenceable(8) %__tmp, i8 signext %21, i8 signext %24)
          to label %26 unwind label %30

; <label>:26                                      ; preds = %25
  %27 = load %"class.std::basic_ostream"** %1, align 8
  %28 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E(%"class.std::basic_ostream"* dereferenceable(272) %27, %"class.std::basic_string"* dereferenceable(8) %__tmp)
          to label %29 unwind label %30

; <label>:29                                      ; preds = %26
  store i32 1, i32* %6
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %__tmp) #2
  ret %"class.std::basic_ostream"* %28

; <label>:30                                      ; preds = %26, %25, %22, %18, %0
  %31 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  store i8* %32, i8** %4
  %33 = extractvalue { i8*, i32 } %31, 1
  store i32 %33, i32* %5
  br label %38

; <label>:34                                      ; preds = %16
  %35 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %4
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %5
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* %3) #2
  br label %38

; <label>:38                                      ; preds = %34, %30
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %__tmp) #2
  br label %39

; <label>:39                                      ; preds = %38
  %40 = load i8** %4
  %41 = load i32* %5
  %42 = insertvalue { i8*, i32 } undef, i8* %40, 0
  %43 = insertvalue { i8*, i32 } %42, i32 %41, 1
  resume { i8*, i32 } %43
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6bitsetILm32EEC2Ey(%"class.std::bitset"* %this, i64 %__val) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::bitset"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::bitset"* %this, %"class.std::bitset"** %1, align 8
  store i64 %__val, i64* %2, align 8
  %3 = load %"class.std::bitset"** %1
  %4 = bitcast %"class.std::bitset"* %3 to %"struct.std::_Base_bitset"*
  %5 = load i64* %2, align 8
  %6 = invoke i64 @_ZNSt13_Sanitize_valILm32ELb1EE18_S_do_sanitize_valEy(i64 %5)
          to label %7 unwind label %8

; <label>:7                                       ; preds = %0
  call void @_ZNSt12_Base_bitsetILm1EEC2Ey(%"struct.std::_Base_bitset"* %4, i64 %6) #2
  ret void

; <label>:8                                       ; preds = %0
  %9 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %10 = extractvalue { i8*, i32 } %9, 0
  call void @__clang_call_terminate(i8* %10) #11
  unreachable
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"*, float) #0

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEy(%"class.std::basic_ostream"*, i64) #0

declare void @_ZNSsC1Ev(%"class.std::basic_string"*) #0

declare dereferenceable(576) %"class.std::ctype"* @_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale(%"class.std::locale"* dereferenceable(8)) #0

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNKSt8ios_base6getlocEv(%"class.std::locale"* noalias sret %agg.result, %"class.std::ios_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::ios_base"*, align 8
  store %"class.std::ios_base"* %this, %"class.std::ios_base"** %1, align 8
  %2 = load %"class.std::ios_base"** %1
  %3 = getelementptr inbounds %"class.std::ios_base"* %2, i32 0, i32 11
  call void @_ZNSt6localeC1ERKS_(%"class.std::locale"* %agg.result, %"class.std::locale"* dereferenceable(8) %3) #2
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(%"class.std::locale"*) #1

; Function Attrs: uwtable
define linkonce_odr void @_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRSbIT_T0_T1_ES5_S5_(%"class.std::bitset"* %this, %"class.std::basic_string"* dereferenceable(8) %__s, i8 signext %__zero, i8 signext %__one) #6 align 2 {
  %1 = alloca %"class.std::bitset"*, align 8
  %2 = alloca %"class.std::basic_string"*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %__i = alloca i64, align 8
  store %"class.std::bitset"* %this, %"class.std::bitset"** %1, align 8
  store %"class.std::basic_string"* %__s, %"class.std::basic_string"** %2, align 8
  store i8 %__zero, i8* %3, align 1
  store i8 %__one, i8* %4, align 1
  %5 = load %"class.std::bitset"** %1
  %6 = load %"class.std::basic_string"** %2, align 8
  %7 = load i8* %3, align 1
  %8 = call dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEmc(%"class.std::basic_string"* %6, i64 32, i8 signext %7)
  store i64 32, i64* %__i, align 8
  br label %9

; <label>:9                                       ; preds = %22, %0
  %10 = load i64* %__i, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %25

; <label>:12                                      ; preds = %9
  %13 = load i64* %__i, align 8
  %14 = sub i64 %13, 1
  %15 = call zeroext i1 @_ZNKSt6bitsetILm32EE15_Unchecked_testEm(%"class.std::bitset"* %5, i64 %14) #2
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %12
  %17 = load %"class.std::basic_string"** %2, align 8
  %18 = load i64* %__i, align 8
  %19 = sub i64 32, %18
  %20 = call dereferenceable(1) i8* @_ZNSsixEm(%"class.std::basic_string"* %17, i64 %19)
  call void @_ZNSt11char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %20, i8* dereferenceable(1) %4) #2
  br label %21

; <label>:21                                      ; preds = %16, %12
  br label %22

; <label>:22                                      ; preds = %21
  %23 = load i64* %__i, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %__i, align 8
  br label %9

; <label>:25                                      ; preds = %9
  ret void
}

; Function Attrs: uwtable
define linkonce_odr signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* %this, i8 signext %__c) #6 align 2 {
  %1 = alloca i8, align 1
  %2 = alloca %"class.std::ctype"*, align 8
  %3 = alloca i8, align 1
  store %"class.std::ctype"* %this, %"class.std::ctype"** %2, align 8
  store i8 %__c, i8* %3, align 1
  %4 = load %"class.std::ctype"** %2
  %5 = getelementptr inbounds %"class.std::ctype"* %4, i32 0, i32 6
  %6 = load i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %0
  %9 = load i8* %3, align 1
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds %"class.std::ctype"* %4, i32 0, i32 7
  %12 = getelementptr inbounds [256 x i8]* %11, i32 0, i64 %10
  %13 = load i8* %12, align 1
  store i8 %13, i8* %1
  br label %21

; <label>:14                                      ; preds = %0
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* %4)
  %15 = bitcast %"class.std::ctype"* %4 to i8 (%"class.std::ctype"*, i8)***
  %16 = load i8 (%"class.std::ctype"*, i8)*** %15
  %17 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)** %16, i64 6
  %18 = load i8 (%"class.std::ctype"*, i8)** %17
  %19 = load i8* %3, align 1
  %20 = call signext i8 %18(%"class.std::ctype"* %4, i8 signext %19)
  store i8 %20, i8* %1
  br label %21

; <label>:21                                      ; preds = %14, %8
  %22 = load i8* %1
  ret i8 %22
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E(%"class.std::basic_ostream"* dereferenceable(272), %"class.std::basic_string"* dereferenceable(8)) #0

; Function Attrs: nounwind
declare void @_ZNSsD1Ev(%"class.std::basic_string"*) #1

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) #0

declare dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEmc(%"class.std::basic_string"*, i64, i8 signext) #0

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt6bitsetILm32EE15_Unchecked_testEm(%"class.std::bitset"* %this, i64 %__pos) #3 align 2 {
  %1 = alloca %"class.std::bitset"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::bitset"* %this, %"class.std::bitset"** %1, align 8
  store i64 %__pos, i64* %2, align 8
  %3 = load %"class.std::bitset"** %1
  %4 = bitcast %"class.std::bitset"* %3 to %"struct.std::_Base_bitset"*
  %5 = load i64* %2, align 8
  %6 = call i64 @_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm(%"struct.std::_Base_bitset"* %4, i64 %5) #2
  %7 = load i64* %2, align 8
  %8 = call i64 @_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm(i64 %7) #2
  %9 = and i64 %6, %8
  %10 = icmp ne i64 %9, 0
  ret i1 %10
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %__c1, i8* dereferenceable(1) %__c2) #3 align 2 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* %__c1, i8** %1, align 8
  store i8* %__c2, i8** %2, align 8
  %3 = load i8** %2, align 8
  %4 = load i8* %3, align 1
  %5 = load i8** %1, align 8
  store i8 %4, i8* %5, align 1
  ret void
}

declare dereferenceable(1) i8* @_ZNSsixEm(%"class.std::basic_string"*, i64) #0

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm(%"struct.std::_Base_bitset"* %this, i64) #3 align 2 {
  %2 = alloca %"struct.std::_Base_bitset"*, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Base_bitset"* %this, %"struct.std::_Base_bitset"** %2, align 8
  store i64 %0, i64* %3, align 8
  %4 = load %"struct.std::_Base_bitset"** %2
  %5 = getelementptr inbounds %"struct.std::_Base_bitset"* %4, i32 0, i32 0
  %6 = load i64* %5, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm(i64 %__pos) #3 align 2 {
  %1 = alloca i64, align 8
  store i64 %__pos, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = call i64 @_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm(i64 %2) #2
  %4 = shl i64 1, %3
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm(i64 %__pos) #3 align 2 {
  %1 = alloca i64, align 8
  store i64 %__pos, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = urem i64 %2, 64
  ret i64 %3
}

; Function Attrs: nounwind
declare void @_ZNSt6localeC1ERKS_(%"class.std::locale"*, %"class.std::locale"* dereferenceable(8)) #1

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt13_Sanitize_valILm32ELb1EE18_S_do_sanitize_valEy(i64 %__val) #3 align 2 {
  %1 = alloca i64, align 8
  store i64 %__val, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = and i64 %2, 4294967295
  ret i64 %3
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #8 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #11
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Base_bitsetILm1EEC2Ey(%"struct.std::_Base_bitset"* %this, i64 %__val) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Base_bitset"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Base_bitset"* %this, %"struct.std::_Base_bitset"** %1, align 8
  store i64 %__val, i64* %2, align 8
  %3 = load %"struct.std::_Base_bitset"** %1
  %4 = getelementptr inbounds %"struct.std::_Base_bitset"* %3, i32 0, i32 0
  %5 = load i64* %2, align 8
  store i64 %5, i64* %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN7gl_dim3C2Ejjj(%struct.gl_dim3* %this, i32 %_x, i32 %_y, i32 %_z) unnamed_addr #3 align 2 {
  %1 = alloca %struct.gl_dim3*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gl_dim3* %this, %struct.gl_dim3** %1, align 8
  store i32 %_x, i32* %2, align 4
  store i32 %_y, i32* %3, align 4
  store i32 %_z, i32* %4, align 4
  %5 = load %struct.gl_dim3** %1
  %6 = getelementptr inbounds %struct.gl_dim3* %5, i32 0, i32 0
  %7 = load i32* %2, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.gl_dim3* %5, i32 0, i32 1
  %9 = load i32* %3, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.gl_dim3* %5, i32 0, i32 2
  %11 = load i32* %4, align 4
  store i32 %11, i32* %10, align 4
  ret void
}

define internal void @_GLOBAL__sub_I_half2.cpp() section ".text.startup" {
  call void @__cxx_global_var_init()
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
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { builtin }
attributes #11 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"HCC clang version 3.5.0  (based on HCC 0.10.16481-e2b4718-6fa8481 LLVM 3.5.0svn)"}

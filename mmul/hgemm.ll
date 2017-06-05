; ModuleID = '/tmp/mat-2d9150.s'
source_filename = "mat.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:64:64-p3:32:32-p4:64:64-p5:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64"
target triple = "amdgcn--amdhsa-hcc"

%"class.Kalmar::index" = type { %"struct.Kalmar::index_impl" }
%"struct.Kalmar::index_impl" = type { %"class.Kalmar::__index_leaf" }
%"class.Kalmar::__index_leaf" = type { i32, i32 }
%"class.Kalmar::index.0" = type { %"struct.Kalmar::index_impl.1" }
%"struct.Kalmar::index_impl.1" = type { %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf.2" }
%"class.Kalmar::__index_leaf.2" = type { i32, i32 }
%"class.Kalmar::index.3" = type { %"struct.Kalmar::index_impl.4" }
%"struct.Kalmar::index_impl.4" = type { %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf.2", %"class.Kalmar::__index_leaf.5" }
%"class.Kalmar::__index_leaf.5" = type { i32, i32 }
%"class.hc::completion_future" = type { %"class.std::shared_future", %"class.std::thread"*, %"class.std::shared_ptr.11" }
%"class.std::shared_future" = type { %"class.std::__basic_future" }
%"class.std::__basic_future" = type { %"class.std::shared_ptr.7" }
%"class.std::shared_ptr.7" = type { %"class.std::__shared_ptr.8" }
%"class.std::__shared_ptr.8" = type { %"class.std::__future_base::_State_baseV2"*, %"class.std::__shared_count" }
%"class.std::__future_base::_State_baseV2" = type <{ i32 (...)**, %"class.std::unique_ptr", %"class.std::__atomic_futex_unsigned", %"struct.std::atomic_flag", [3 x i8], %"struct.std::once_flag", [4 x i8] }>
%"class.std::unique_ptr" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.10" }
%"struct.std::_Head_base.10" = type { %"struct.std::__future_base::_Result_base"* }
%"struct.std::__future_base::_Result_base" = type { i32 (...)**, %"class.std::__exception_ptr::exception_ptr" }
%"class.std::__exception_ptr::exception_ptr" = type { i8* }
%"class.std::__atomic_futex_unsigned" = type { %"struct.std::atomic" }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i32 }
%"struct.std::atomic_flag" = type { %struct.__atomic_flag_base }
%struct.__atomic_flag_base = type { i8 }
%"struct.std::once_flag" = type { i32 }
%"class.std::__shared_count" = type { %"class.std::_Sp_counted_base"* }
%"class.std::_Sp_counted_base" = type { i32 (...)**, %"class.std::_Mutex_base", i32, i32 }
%"class.std::_Mutex_base" = type { %"class.__gnu_cxx::__mutex" }
%"class.__gnu_cxx::__mutex" = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %"struct.(anonymous union)::__pthread_mutex_s" }
%"struct.(anonymous union)::__pthread_mutex_s" = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::thread" = type { %"class.std::thread::id" }
%"class.std::thread::id" = type { i64 }
%"class.std::shared_ptr.11" = type { %"class.std::__shared_ptr.12" }
%"class.std::__shared_ptr.12" = type { %"class.Kalmar::KalmarAsyncOp"*, %"class.std::__shared_count" }
%"class.Kalmar::KalmarAsyncOp" = type { i32 (...)**, i32, i64 }
%"class.hc::accelerator_view" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { %"class.Kalmar::KalmarQueue"*, %"class.std::__shared_count" }
%"class.Kalmar::KalmarQueue" = type { i32 (...)**, %"class.Kalmar::KalmarDevice"*, i32, i32 }
%"class.Kalmar::KalmarDevice" = type <{ i32 (...)**, i32, [4 x i8], %"class.std::map", %"class.std::mutex", i8, [7 x i8] }>
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::thread::id, std::pair<const std::thread::id, std::shared_ptr<Kalmar::KalmarQueue> >, std::_Select1st<std::pair<const std::thread::id, std::shared_ptr<Kalmar::KalmarQueue> > >, std::less<std::thread::id>, std::allocator<std::pair<const std::thread::id, std::shared_ptr<Kalmar::KalmarQueue> > > >::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::thread::id, std::pair<const std::thread::id, std::shared_ptr<Kalmar::KalmarQueue> >, std::_Select1st<std::pair<const std::thread::id, std::shared_ptr<Kalmar::KalmarQueue> > >, std::less<std::thread::id>, std::allocator<std::pair<const std::thread::id, std::shared_ptr<Kalmar::KalmarQueue> > > >::_Rb_tree_impl" = type { %"struct.std::less", %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"class.std::mutex" = type { %"class.std::__mutex_base" }
%"class.std::__mutex_base" = type { %union.pthread_mutex_t }
%"class.hc::tiled_extent" = type { %"class.hc::extent", i32, [3 x i32] }
%"class.hc::extent" = type { %"struct.Kalmar::index_impl.4" }
%class.anon = type { %class.anon.6, half*, half*, half* }
%class.anon.6 = type { i8 }

@_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW = linkonce_odr local_unnamed_addr addrspace(3) global [32 x [16 x <2 x half>]] undef, align 4
@_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX = linkonce_odr local_unnamed_addr addrspace(3) global [32 x [16 x <2 x half>]] undef, align 4
@llvm.used = appending global [358 x i8*] [i8* bitcast (void (%"class.hc::completion_future"*, %"class.hc::accelerator_view"*, %"class.hc::tiled_extent"*, %class.anon*)* @"_ZN2hc17parallel_for_eachIZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPDhS5_S5_EEEvNS1_12_GLOBAL__N_119New_grid_launch_tagE4dim3S8_iRKNS_16accelerator_viewET_DpOT0_EUlRKNS_11tiled_indexILi3EEEE_EENS_17completion_futureESB_RKNS_12tiled_extentILi3EEERKSC_" to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar12precise_math10fpclassifyEDh to i8*), i8* bitcast (i32 (double)* @_ZN6Kalmar12precise_math10fpclassifyEd to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math10fpclassifyEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math10nearbyintfEf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math10nextafterfEff to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math10remainderfEff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math3cosEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math3cosEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math3cosEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math3erfEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math3erfEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math3erfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math3expEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math3expEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math3expEf to i8*), i8* bitcast (half (half, half, half)* @_ZN6Kalmar12precise_math3fmaEDhDhDh to i8*), i8* bitcast (double (double, double, double)* @_ZN6Kalmar12precise_math3fmaEddd to i8*), i8* bitcast (float (float, float, float)* @_ZN6Kalmar12precise_math3fmaEfff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math3logEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math3logEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math3logEf to i8*), i8* bitcast (double (i32)* @_ZN6Kalmar12precise_math3nanEi to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math3powEDhDh to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math3powEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math3powEff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math3sinEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math3sinEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math3sinEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math3tanEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math3tanEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math3tanEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4acosEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4acosEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4acosEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4asinEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4asinEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4asinEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4atanEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4atanEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4atanEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4cbrtEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4cbrtEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4cbrtEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4ceilEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4ceilEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4ceilEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4cosfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4coshEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4coshEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4coshEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4erfcEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4erfcEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4erfcEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4erffEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4exp2EDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4exp2Ed to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4exp2Ef to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4expfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4fabsEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4fabsEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4fabsEf to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math4fdimEDhDh to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math4fdimEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math4fdimEff to i8*), i8* bitcast (float (float, float, float)* @_ZN6Kalmar12precise_math4fmafEfff to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math4fmaxEDhDh to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math4fmaxEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math4fmaxEff to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math4fminEDhDh to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math4fminEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math4fminEff to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math4fmodEDhDh to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math4fmodEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math4fmodEff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4log2EDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4log2Ed to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4log2Ef to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4logbEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4logbEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4logbEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4logfEf to i8*), i8* bitcast (half (half, half*)* @_ZN6Kalmar12precise_math4modfEDhPDh to i8*), i8* bitcast (double (double, double*)* @_ZN6Kalmar12precise_math4modfEdPd to i8*), i8* bitcast (float (float, float*)* @_ZN6Kalmar12precise_math4modfEfPf to i8*), i8* bitcast (float (i32)* @_ZN6Kalmar12precise_math4nanfEi to i8*), i8* bitcast (half (i32)* @_ZN6Kalmar12precise_math4nanhEi to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math4powfEff to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4sinfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4sinhEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4sinhEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4sinhEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4sqrtEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4sqrtEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4sqrtEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4tanfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math4tanhEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math4tanhEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math4tanhEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5acosfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5acoshEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5acoshEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5acoshEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5asinfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5asinhEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5asinhEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5asinhEf to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math5atan2EDhDh to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math5atan2Edd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math5atan2Eff to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5atanfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5atanhEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5atanhEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5atanhEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5cbrtfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5ceilfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5coshfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5cospiEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5cospiEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5cospiEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5erfcfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5exp10EDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5exp10Ed to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5exp10Ef to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5exp2fEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5expm1EDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5expm1Ed to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5expm1Ef to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5fabsfEf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math5fdimfEff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5floorEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5floorEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5floorEf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math5fmaxfEff to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math5fminfEff to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math5fmodfEff to i8*), i8* bitcast (half (half, i32*)* @_ZN6Kalmar12precise_math5frexpEDhPi to i8*), i8* bitcast (double (double, i32*)* @_ZN6Kalmar12precise_math5frexpEdPi to i8*), i8* bitcast (float (float, i32*)* @_ZN6Kalmar12precise_math5frexpEfPi to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math5hypotEDhDh to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math5hypotEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math5hypotEff to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar12precise_math5ilogbEDh to i8*), i8* bitcast (i32 (double)* @_ZN6Kalmar12precise_math5ilogbEd to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math5ilogbEf to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar12precise_math5isinfEDh to i8*), i8* bitcast (i32 (double)* @_ZN6Kalmar12precise_math5isinfEd to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math5isinfEf to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar12precise_math5isnanEDh to i8*), i8* bitcast (i32 (double)* @_ZN6Kalmar12precise_math5isnanEd to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math5isnanEf to i8*), i8* bitcast (half (half, i16)* @_ZN6Kalmar12precise_math5ldexpEDhs to i8*), i8* bitcast (double (double, i32)* @_ZN6Kalmar12precise_math5ldexpEdi to i8*), i8* bitcast (float (float, i32)* @_ZN6Kalmar12precise_math5ldexpEfi to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5log10EDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5log10Ed to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5log10Ef to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5log1pEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5log1pEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5log1pEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5log2fEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5logbfEf to i8*), i8* bitcast (float (float, float*)* @_ZN6Kalmar12precise_math5modffEfPf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5rcbrtEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5rcbrtEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5rcbrtEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5roundEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5roundEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5roundEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5rsqrtEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5rsqrtEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5rsqrtEf to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math5scalbEDhDh to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math5scalbEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math5scalbEff to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5sinhfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5sinpiEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5sinpiEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5sinpiEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5sqrtfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5tanhfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5tanpiEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5tanpiEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5tanpiEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math5truncEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math5truncEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math5truncEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6acoshfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6asinhfEf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math6atan2fEff to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6atanhfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6cospifEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math6erfinvEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math6erfinvEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6erfinvEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6exp10fEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6expm1fEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6floorfEf to i8*), i8* bitcast (float (float, i32*)* @_ZN6Kalmar12precise_math6frexpfEfPi to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math6hypotfEff to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math6ilogbfEf to i8*), i8* bitcast (float (float, i32)* @_ZN6Kalmar12precise_math6ldexpfEfi to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math6lgammaEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math6lgammaEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6lgammaEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6log10fEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6log1pfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6rcbrtfEf to i8*), i8* bitcast (half (half, half, i32*)* @_ZN6Kalmar12precise_math6remquoEDhDhPi to i8*), i8* bitcast (double (double, double, i32*)* @_ZN6Kalmar12precise_math6remquoEddPi to i8*), i8* bitcast (float (float, float, i32*)* @_ZN6Kalmar12precise_math6remquoEffPi to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6roundfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6rsqrtfEf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math6scalbfEff to i8*), i8* bitcast (half (half, i32)* @_ZN6Kalmar12precise_math6scalbnEDhi to i8*), i8* bitcast (double (double, i32)* @_ZN6Kalmar12precise_math6scalbnEdi to i8*), i8* bitcast (float (float, i32)* @_ZN6Kalmar12precise_math6scalbnEfi to i8*), i8* bitcast (void (half, half*, half*)* @_ZN6Kalmar12precise_math6sincosEDhPDhS1_ to i8*), i8* bitcast (void (double, double*, double*)* @_ZN6Kalmar12precise_math6sincosEdPdS1_ to i8*), i8* bitcast (void (float, float*, float*)* @_ZN6Kalmar12precise_math6sincosEfPfS1_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6sinpifEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6tanpifEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math6tgammaEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math6tgammaEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6tgammaEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math6truncfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math7erfcinvEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math7erfcinvEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math7erfcinvEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math7erfinvfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math7lgammafEf to i8*), i8* bitcast (float (float, float, i32*)* @_ZN6Kalmar12precise_math7remquofEffPi to i8*), i8* bitcast (float (float, i32)* @_ZN6Kalmar12precise_math7scalbnfEfi to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar12precise_math7signbitEDh to i8*), i8* bitcast (i32 (double)* @_ZN6Kalmar12precise_math7signbitEd to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math7signbitEf to i8*), i8* bitcast (void (float, float*, float*)* @_ZN6Kalmar12precise_math7sincosfEfPfS1_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math7tgammafEf to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math8copysignEDhDh to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math8copysignEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math8copysignEff to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math8erfcinvfEf to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar12precise_math8isfiniteEDh to i8*), i8* bitcast (i32 (double)* @_ZN6Kalmar12precise_math8isfiniteEd to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math8isfiniteEf to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar12precise_math8isnormalEDh to i8*), i8* bitcast (i32 (double)* @_ZN6Kalmar12precise_math8isnormalEd to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math8isnormalEf to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar12precise_math8signbitfEf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math9copysignfEff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar12precise_math9nearbyintEDh to i8*), i8* bitcast (double (double)* @_ZN6Kalmar12precise_math9nearbyintEd to i8*), i8* bitcast (float (float)* @_ZN6Kalmar12precise_math9nearbyintEf to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math9nextafterEDhDh to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math9nextafterEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math9nextafterEff to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar12precise_math9remainderEDhDh to i8*), i8* bitcast (double (double, double)* @_ZN6Kalmar12precise_math9remainderEdd to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar12precise_math9remainderEff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math3cosEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math3cosEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math3expEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math3expEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math3logEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math3logEf to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar9fast_math3powEDhDh to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math3powEff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math3sinEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math3sinEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math3tanEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math3tanEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4acosEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4acosEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4asinEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4asinEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4atanEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4atanEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4ceilEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4ceilEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4cosfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4coshEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4coshEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4exp2EDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4exp2Ef to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4expfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4fabsEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4fabsEf to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar9fast_math4fmaxEDhDh to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math4fmaxEff to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar9fast_math4fminEDhDh to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math4fminEff to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar9fast_math4fmodEDhDh to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math4fmodEff to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4log2EDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4log2Ef to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4logfEf to i8*), i8* bitcast (half (half, half*)* @_ZN6Kalmar9fast_math4modfEDhPDh to i8*), i8* bitcast (float (float, float*)* @_ZN6Kalmar9fast_math4modfEfPf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math4powfEff to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4sinfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4sinhEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4sinhEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4sqrtEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4sqrtEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4tanfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math4tanhEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math4tanhEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5acosfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5asinfEf to i8*), i8* bitcast (half (half, half)* @_ZN6Kalmar9fast_math5atan2EDhDh to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math5atan2Eff to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5atanfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5ceilfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5coshfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5exp2fEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5fabsfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math5floorEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5floorEf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math5fmaxfEff to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math5fminfEff to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math5fmodfEff to i8*), i8* bitcast (half (half, i32*)* @_ZN6Kalmar9fast_math5frexpEDhPi to i8*), i8* bitcast (float (float, i32*)* @_ZN6Kalmar9fast_math5frexpEfPi to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar9fast_math5isinfEDh to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar9fast_math5isinfEf to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar9fast_math5isnanEDh to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar9fast_math5isnanEf to i8*), i8* bitcast (half (half, i16)* @_ZN6Kalmar9fast_math5ldexpEDht to i8*), i8* bitcast (float (float, i32)* @_ZN6Kalmar9fast_math5ldexpEfi to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math5log10EDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5log10Ef to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5log2fEf to i8*), i8* bitcast (float (float, float*)* @_ZN6Kalmar9fast_math5modffEfPf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math5roundEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5roundEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math5rsqrtEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5rsqrtEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5sinhfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5sqrtfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5tanhfEf to i8*), i8* bitcast (half (half)* @_ZN6Kalmar9fast_math5truncEDh to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math5truncEf to i8*), i8* bitcast (float (float, float)* @_ZN6Kalmar9fast_math6atan2fEff to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math6floorfEf to i8*), i8* bitcast (float (float, i32*)* @_ZN6Kalmar9fast_math6frexpfEfPi to i8*), i8* bitcast (float (float, i32)* @_ZN6Kalmar9fast_math6ldexpfEfi to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math6log10fEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math6roundfEf to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math6rsqrtfEf to i8*), i8* bitcast (void (half, half*, half*)* @_ZN6Kalmar9fast_math6sincosEDhPDhS1_ to i8*), i8* bitcast (void (float, float*, float*)* @_ZN6Kalmar9fast_math6sincosEfPfS1_ to i8*), i8* bitcast (float (float)* @_ZN6Kalmar9fast_math6truncfEf to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar9fast_math7signbitEDh to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar9fast_math7signbitEf to i8*), i8* bitcast (void (float, float*, float*)* @_ZN6Kalmar9fast_math7sincosfEfPfS1_ to i8*), i8* bitcast (i32 (half)* @_ZN6Kalmar9fast_math8isfiniteEDh to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar9fast_math8isfiniteEf to i8*), i8* bitcast (i32 (float)* @_ZN6Kalmar9fast_math8signbitfEf to i8*)], section "llvm.metadata"

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi1EEC2Ev(%"class.Kalmar::index"* %this) unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 0, i32* %__idx.i.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi1EEC1Ev(%"class.Kalmar::index"* %this) unnamed_addr #0 align 2 {
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 0, i32* %__idx.i.i.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi1EEC2ERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %other) unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %other, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi1EEC1ERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %other) unnamed_addr #0 align 2 {
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %other, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i.i, align 4, !tbaa !7
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi1EEC2Ei(%"class.Kalmar::index"* %this, i32 %i0) unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %i0, i32* %__idx.i.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi1EEC1Ei(%"class.Kalmar::index"* %this, i32 %i0) unnamed_addr #0 align 2 {
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %i0, i32* %__idx.i.i.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi1EEC2EPKi(%"class.Kalmar::index"* %this, i32* %components) unnamed_addr #0 align 2 {
  %1 = load i32, i32* %components, align 4, !tbaa !7
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi1EEC1EPKi(%"class.Kalmar::index"* %this, i32* %components) unnamed_addr #0 align 2 {
  %1 = load i32, i32* %components, align 4, !tbaa !7
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi1EEC2EPi(%"class.Kalmar::index"* %this, i32* %components) unnamed_addr #0 align 2 {
  %1 = load i32, i32* %components, align 4, !tbaa !7
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi1EEC1EPi(%"class.Kalmar::index"* %this, i32* %components) unnamed_addr #0 align 2 {
  %1 = load i32, i32* %components, align 4, !tbaa !7
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEaSERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %other) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %other, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i4.i, align 4, !tbaa !2
  ret %"class.Kalmar::index"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr i32 @_ZNK6Kalmar5indexILi1EEixEj(%"class.Kalmar::index"* %this, i32 %c) local_unnamed_addr #0 align 2 {
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0
  %idx.ext.i = zext i32 %c to i64
  %__idx.i.i = getelementptr inbounds %"struct.Kalmar::index_impl", %"struct.Kalmar::index_impl"* %base_, i64 %idx.ext.i, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  ret i32 %1
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(4) i32* @_ZN6Kalmar5indexILi1EEixEj(%"class.Kalmar::index"* %this, i32 %c) local_unnamed_addr #0 align 2 {
  %base_ = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0
  %idx.ext.i = zext i32 %c to i64
  %__idx.i.i = getelementptr inbounds %"struct.Kalmar::index_impl", %"struct.Kalmar::index_impl"* %base_, i64 %idx.ext.i, i32 0, i32 0
  ret i32* %__idx.i.i
}

; Function Attrs: alwaysinline norecurse
define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi1EEeqERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %other) local_unnamed_addr #0 align 2 {
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !7
  %__idx.i.i.i3.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %other, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i.i.i3.i, align 4, !tbaa !7
  %cmp.i = icmp eq i32 %1, %2
  ret i1 %cmp.i
}

; Function Attrs: alwaysinline norecurse
define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi1EEneERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %other) local_unnamed_addr #0 align 2 {
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i.i.i.i, align 4, !tbaa !7
  %__idx.i.i.i3.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %other, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i.i.i3.i.i, align 4, !tbaa !7
  %lnot = icmp ne i32 %1, %2
  ret i1 %lnot
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEpLERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %rhs) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %rhs, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i4.i, align 4, !tbaa !2
  %add.i.i = add nsw i32 %2, %1
  store i32 %add.i.i, i32* %__idx.i4.i, align 4, !tbaa !2
  ret %"class.Kalmar::index"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEmIERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %rhs) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %rhs, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i4.i, align 4, !tbaa !2
  %sub.i.i = sub nsw i32 %2, %1
  store i32 %sub.i.i, i32* %__idx.i4.i, align 4, !tbaa !2
  ret %"class.Kalmar::index"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEmLERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %__r) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %__r, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i4.i, align 4, !tbaa !2
  %mul.i.i = mul nsw i32 %2, %1
  store i32 %mul.i.i, i32* %__idx.i4.i, align 4, !tbaa !2
  ret %"class.Kalmar::index"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEdVERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %__r) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %__r, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i4.i, align 4, !tbaa !2
  %div.i.i = sdiv i32 %2, %1
  store i32 %div.i.i, i32* %__idx.i4.i, align 4, !tbaa !2
  ret %"class.Kalmar::index"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EErMERKS1_(%"class.Kalmar::index"* %this, %"class.Kalmar::index"* dereferenceable(8) %__r) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %__r, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i4.i, align 4, !tbaa !2
  %rem.i.i = srem i32 %2, %1
  store i32 %rem.i.i, i32* %__idx.i4.i, align 4, !tbaa !2
  ret %"class.Kalmar::index"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEpLEi(%"class.Kalmar::index"* %this, i32 %value) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %add.i.i = add nsw i32 %1, %value
  store i32 %add.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  ret %"class.Kalmar::index"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEmIEi(%"class.Kalmar::index"* %this, i32 %value) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %sub.i.i = sub nsw i32 %1, %value
  store i32 %sub.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  ret %"class.Kalmar::index"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEmLEi(%"class.Kalmar::index"* %this, i32 %value) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %mul.i.i = mul nsw i32 %1, %value
  store i32 %mul.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  ret %"class.Kalmar::index"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEdVEi(%"class.Kalmar::index"* %this, i32 %value) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %div.i.i = sdiv i32 %1, %value
  store i32 %div.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  ret %"class.Kalmar::index"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EErMEi(%"class.Kalmar::index"* %this, i32 %value) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %rem.i.i = srem i32 %1, %value
  store i32 %rem.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  ret %"class.Kalmar::index"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEppEv(%"class.Kalmar::index"* %this) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %add.i.i = add nsw i32 %1, 1
  store i32 %add.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  ret %"class.Kalmar::index"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi1EEppEi(%"class.Kalmar::index"* noalias sret %agg.result, %"class.Kalmar::index"* %this, i32) local_unnamed_addr #0 align 2 {
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !7
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %agg.result, i64 0, i32 0, i32 0, i32 0
  store i32 %2, i32* %__idx.i.i.i.i.i, align 4, !tbaa !2
  %add.i.i = add nsw i32 %2, 1
  store i32 %add.i.i, i32* %__idx.i.i.i.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(8) %"class.Kalmar::index"* @_ZN6Kalmar5indexILi1EEmmEv(%"class.Kalmar::index"* %this) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %sub.i.i = add nsw i32 %1, -1
  store i32 %sub.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  ret %"class.Kalmar::index"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi1EEmmEi(%"class.Kalmar::index"* noalias sret %agg.result, %"class.Kalmar::index"* %this, i32) local_unnamed_addr #0 align 2 {
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !7
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %agg.result, i64 0, i32 0, i32 0, i32 0
  store i32 %2, i32* %__idx.i.i.i.i.i, align 4, !tbaa !2
  %sub.i.i = add nsw i32 %2, -1
  store i32 %sub.i.i, i32* %__idx.i.i.i.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: alwaysinline
define weak_odr void @_ZN6Kalmar5indexILi1EE21__cxxamp_opencl_indexEv(%"class.Kalmar::index"* %this) local_unnamed_addr #1 align 2 {
  %call.i = tail call i64 @amp_get_global_id(i32 0) #7
  %conv.i = trunc i64 %call.i to i32
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index", %"class.Kalmar::index"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %conv.i, i32* %__idx.i.i.i.i, align 4, !tbaa !7
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi2EEC2Ev(%"class.Kalmar::index.0"* %this) unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 0, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i2.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 0, i32* %__idx.i2.i, align 4, !tbaa !8
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi2EEC1Ev(%"class.Kalmar::index.0"* %this) unnamed_addr #0 align 2 {
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 0, i32* %__idx.i.i.i, align 4, !tbaa !2
  %__idx.i2.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 0, i32* %__idx.i2.i.i, align 4, !tbaa !8
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi2EEC2ERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %other) unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i4.i, align 4, !tbaa !7
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i, align 4, !tbaa !2
  %__idx.i4.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i4.i.i, align 4, !tbaa !8
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi2EEC1ERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %other) unnamed_addr #0 align 2 {
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i.i, align 4, !tbaa !7
  %__idx.i4.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i4.i.i, align 4, !tbaa !7
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i.i, align 4, !tbaa !2
  %__idx.i4.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i4.i.i.i, align 4, !tbaa !8
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi2EEC2Ei(%"class.Kalmar::index.0"* %this, i32 %i0) unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %i0, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i3.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %i0, i32* %__idx.i3.i, align 4, !tbaa !8
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi2EEC1Ei(%"class.Kalmar::index.0"* %this, i32 %i0) unnamed_addr #0 align 2 {
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %i0, i32* %__idx.i.i.i, align 4, !tbaa !2
  %__idx.i3.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %i0, i32* %__idx.i3.i.i, align 4, !tbaa !8
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi2EEC2EPKi(%"class.Kalmar::index.0"* %this, i32* %components) unnamed_addr #0 align 2 {
  %1 = load i32, i32* %components, align 4, !tbaa !7
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i, align 4, !tbaa !2
  %arrayidx2.i = getelementptr inbounds i32, i32* %components, i64 1
  %2 = load i32, i32* %arrayidx2.i, align 4, !tbaa !7
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i4.i, align 4, !tbaa !8
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi2EEC1EPKi(%"class.Kalmar::index.0"* %this, i32* %components) unnamed_addr #0 align 2 {
  %1 = load i32, i32* %components, align 4, !tbaa !7
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i, align 4, !tbaa !2
  %arrayidx2.i.i = getelementptr inbounds i32, i32* %components, i64 1
  %2 = load i32, i32* %arrayidx2.i.i, align 4, !tbaa !7
  %__idx.i4.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i4.i.i, align 4, !tbaa !8
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi2EEC2EPi(%"class.Kalmar::index.0"* %this, i32* %components) unnamed_addr #0 align 2 {
  %1 = load i32, i32* %components, align 4, !tbaa !7
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i, align 4, !tbaa !2
  %arrayidx2.i = getelementptr inbounds i32, i32* %components, i64 1
  %2 = load i32, i32* %arrayidx2.i, align 4, !tbaa !7
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i4.i, align 4, !tbaa !8
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi2EEC1EPi(%"class.Kalmar::index.0"* %this, i32* %components) unnamed_addr #0 align 2 {
  %1 = load i32, i32* %components, align 4, !tbaa !7
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i, align 4, !tbaa !2
  %arrayidx2.i.i = getelementptr inbounds i32, i32* %components, i64 1
  %2 = load i32, i32* %arrayidx2.i.i, align 4, !tbaa !7
  %__idx.i4.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i4.i.i, align 4, !tbaa !8
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEaSERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %other) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i13.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i13.i, align 4, !tbaa !2
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i12.i, align 4, !tbaa !7
  %__idx.i11.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i11.i, align 4, !tbaa !8
  ret %"class.Kalmar::index.0"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr i32 @_ZNK6Kalmar5indexILi2EEixEj(%"class.Kalmar::index.0"* %this, i32 %c) local_unnamed_addr #0 align 2 {
  %1 = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0
  %idx.ext.i = zext i32 %c to i64
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %1, i64 %idx.ext.i, i32 0
  %2 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  ret i32 %2
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(4) i32* @_ZN6Kalmar5indexILi2EEixEj(%"class.Kalmar::index.0"* %this, i32 %c) local_unnamed_addr #0 align 2 {
  %1 = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0
  %idx.ext.i = zext i32 %c to i64
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %1, i64 %idx.ext.i, i32 0
  ret i32* %__idx.i.i
}

; Function Attrs: alwaysinline norecurse
define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi2EEeqERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %other) local_unnamed_addr #0 align 2 {
  %1 = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %1, i64 1, i32 0
  %2 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !7
  %3 = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 0
  %__idx.i.i.i5.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %3, i64 1, i32 0
  %4 = load i32, i32* %__idx.i.i.i5.i, align 4, !tbaa !7
  %cmp.i = icmp eq i32 %2, %4
  br i1 %cmp.i, label %5, label %_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_.exit

; <label>:5:                                      ; preds = %0
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %6 = load i32, i32* %__idx.i.i.i.i.i, align 4, !tbaa !7
  %__idx.i.i.i2.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 0, i32 0
  %7 = load i32, i32* %__idx.i.i.i2.i.i, align 4, !tbaa !7
  %cmp.i.i = icmp eq i32 %6, %7
  br label %_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_.exit

_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_.exit: ; preds = %5, %0
  %8 = phi i1 [ false, %0 ], [ %cmp.i.i, %5 ]
  ret i1 %8
}

; Function Attrs: alwaysinline norecurse
define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi2EEneERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %other) local_unnamed_addr #0 align 2 {
  %1 = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %1, i64 1, i32 0
  %2 = load i32, i32* %__idx.i.i.i.i.i, align 4, !tbaa !7
  %3 = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 0
  %__idx.i.i.i5.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %3, i64 1, i32 0
  %4 = load i32, i32* %__idx.i.i.i5.i.i, align 4, !tbaa !7
  %cmp.i.i = icmp eq i32 %2, %4
  br i1 %cmp.i.i, label %5, label %_ZNK6Kalmar5indexILi2EEeqERKS1_.exit

; <label>:5:                                      ; preds = %0
  %__idx.i.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %6 = load i32, i32* %__idx.i.i.i.i.i.i, align 4, !tbaa !7
  %__idx.i.i.i2.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %other, i64 0, i32 0, i32 0, i32 0
  %7 = load i32, i32* %__idx.i.i.i2.i.i.i, align 4, !tbaa !7
  %phitmp = icmp ne i32 %6, %7
  br label %_ZNK6Kalmar5indexILi2EEeqERKS1_.exit

_ZNK6Kalmar5indexILi2EEeqERKS1_.exit:             ; preds = %5, %0
  %8 = phi i1 [ true, %0 ], [ %phitmp, %5 ]
  ret i1 %8
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEpLERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %rhs) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %rhs, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i13.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i13.i, align 4, !tbaa !2
  %add.i14.i = add nsw i32 %2, %1
  store i32 %add.i14.i, i32* %__idx.i13.i, align 4, !tbaa !2
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %rhs, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i12.i, align 4, !tbaa !7
  %__idx.i11.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %4 = load i32, i32* %__idx.i11.i, align 4, !tbaa !8
  %add.i.i = add nsw i32 %4, %3
  store i32 %add.i.i, i32* %__idx.i11.i, align 4, !tbaa !8
  ret %"class.Kalmar::index.0"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEmIERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %rhs) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %rhs, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i13.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i13.i, align 4, !tbaa !2
  %sub.i14.i = sub nsw i32 %2, %1
  store i32 %sub.i14.i, i32* %__idx.i13.i, align 4, !tbaa !2
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %rhs, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i12.i, align 4, !tbaa !7
  %__idx.i11.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %4 = load i32, i32* %__idx.i11.i, align 4, !tbaa !8
  %sub.i.i = sub nsw i32 %4, %3
  store i32 %sub.i.i, i32* %__idx.i11.i, align 4, !tbaa !8
  ret %"class.Kalmar::index.0"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEmLERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %__r) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %__r, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i13.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i13.i, align 4, !tbaa !2
  %mul.i14.i = mul nsw i32 %2, %1
  store i32 %mul.i14.i, i32* %__idx.i13.i, align 4, !tbaa !2
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %__r, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i12.i, align 4, !tbaa !7
  %__idx.i11.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %4 = load i32, i32* %__idx.i11.i, align 4, !tbaa !8
  %mul.i.i = mul nsw i32 %4, %3
  store i32 %mul.i.i, i32* %__idx.i11.i, align 4, !tbaa !8
  ret %"class.Kalmar::index.0"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEdVERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %__r) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %__r, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i13.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i13.i, align 4, !tbaa !2
  %div.i14.i = sdiv i32 %2, %1
  store i32 %div.i14.i, i32* %__idx.i13.i, align 4, !tbaa !2
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %__r, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i12.i, align 4, !tbaa !7
  %__idx.i11.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %4 = load i32, i32* %__idx.i11.i, align 4, !tbaa !8
  %div.i.i = sdiv i32 %4, %3
  store i32 %div.i.i, i32* %__idx.i11.i, align 4, !tbaa !8
  ret %"class.Kalmar::index.0"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EErMERKS1_(%"class.Kalmar::index.0"* %this, %"class.Kalmar::index.0"* dereferenceable(16) %__r) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %__r, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i13.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i13.i, align 4, !tbaa !2
  %rem.i14.i = srem i32 %2, %1
  store i32 %rem.i14.i, i32* %__idx.i13.i, align 4, !tbaa !2
  %__idx.i12.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %__r, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i12.i, align 4, !tbaa !7
  %__idx.i11.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %4 = load i32, i32* %__idx.i11.i, align 4, !tbaa !8
  %rem.i.i = srem i32 %4, %3
  store i32 %rem.i.i, i32* %__idx.i11.i, align 4, !tbaa !8
  ret %"class.Kalmar::index.0"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEpLEi(%"class.Kalmar::index.0"* %this, i32 %value) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %add.i.i = add nsw i32 %1, %value
  store i32 %add.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i8.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i8.i, align 4, !tbaa !8
  %add.i9.i = add nsw i32 %2, %value
  store i32 %add.i9.i, i32* %__idx.i8.i, align 4, !tbaa !8
  ret %"class.Kalmar::index.0"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEmIEi(%"class.Kalmar::index.0"* %this, i32 %value) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %sub.i.i = sub nsw i32 %1, %value
  store i32 %sub.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i8.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i8.i, align 4, !tbaa !8
  %sub.i9.i = sub nsw i32 %2, %value
  store i32 %sub.i9.i, i32* %__idx.i8.i, align 4, !tbaa !8
  ret %"class.Kalmar::index.0"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEmLEi(%"class.Kalmar::index.0"* %this, i32 %value) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %mul.i.i = mul nsw i32 %1, %value
  store i32 %mul.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i8.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i8.i, align 4, !tbaa !8
  %mul.i9.i = mul nsw i32 %2, %value
  store i32 %mul.i9.i, i32* %__idx.i8.i, align 4, !tbaa !8
  ret %"class.Kalmar::index.0"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEdVEi(%"class.Kalmar::index.0"* %this, i32 %value) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %div.i.i = sdiv i32 %1, %value
  store i32 %div.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i8.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i8.i, align 4, !tbaa !8
  %div.i9.i = sdiv i32 %2, %value
  store i32 %div.i9.i, i32* %__idx.i8.i, align 4, !tbaa !8
  ret %"class.Kalmar::index.0"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EErMEi(%"class.Kalmar::index.0"* %this, i32 %value) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %rem.i.i = srem i32 %1, %value
  store i32 %rem.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i8.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i8.i, align 4, !tbaa !8
  %rem.i9.i = srem i32 %2, %value
  store i32 %rem.i9.i, i32* %__idx.i8.i, align 4, !tbaa !8
  ret %"class.Kalmar::index.0"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEppEv(%"class.Kalmar::index.0"* %this) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %add.i.i = add nsw i32 %1, 1
  store i32 %add.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i8.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i8.i, align 4, !tbaa !8
  %add.i9.i = add nsw i32 %2, 1
  store i32 %add.i9.i, i32* %__idx.i8.i, align 4, !tbaa !8
  ret %"class.Kalmar::index.0"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi2EEppEi(%"class.Kalmar::index.0"* noalias sret %agg.result, %"class.Kalmar::index.0"* %this, i32) local_unnamed_addr #0 align 2 {
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !7
  %__idx.i4.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i4.i.i.i, align 4, !tbaa !7
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %agg.result, i64 0, i32 0, i32 0, i32 0
  store i32 %2, i32* %__idx.i.i.i.i.i, align 4, !tbaa !2
  %__idx.i4.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %agg.result, i64 0, i32 0, i32 1, i32 0
  store i32 %3, i32* %__idx.i4.i.i.i.i, align 4, !tbaa !8
  %add.i.i = add nsw i32 %2, 1
  store i32 %add.i.i, i32* %__idx.i.i.i.i, align 4, !tbaa !2
  %add.i9.i = add nsw i32 %3, 1
  store i32 %add.i9.i, i32* %__idx.i4.i.i.i, align 4, !tbaa !8
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(16) %"class.Kalmar::index.0"* @_ZN6Kalmar5indexILi2EEmmEv(%"class.Kalmar::index.0"* %this) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %sub.i.i = add nsw i32 %1, -1
  store i32 %sub.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i8.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i8.i, align 4, !tbaa !8
  %sub.i9.i = add nsw i32 %2, -1
  store i32 %sub.i9.i, i32* %__idx.i8.i, align 4, !tbaa !8
  ret %"class.Kalmar::index.0"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi2EEmmEi(%"class.Kalmar::index.0"* noalias sret %agg.result, %"class.Kalmar::index.0"* %this, i32) local_unnamed_addr #0 align 2 {
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !7
  %__idx.i4.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i4.i.i.i, align 4, !tbaa !7
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %agg.result, i64 0, i32 0, i32 0, i32 0
  store i32 %2, i32* %__idx.i.i.i.i.i, align 4, !tbaa !2
  %__idx.i4.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %agg.result, i64 0, i32 0, i32 1, i32 0
  store i32 %3, i32* %__idx.i4.i.i.i.i, align 4, !tbaa !8
  %sub.i.i = add nsw i32 %2, -1
  store i32 %sub.i.i, i32* %__idx.i.i.i.i, align 4, !tbaa !2
  %sub.i9.i = add nsw i32 %3, -1
  store i32 %sub.i9.i, i32* %__idx.i4.i.i.i, align 4, !tbaa !8
  ret void
}

; Function Attrs: alwaysinline
define weak_odr void @_ZN6Kalmar5indexILi2EE21__cxxamp_opencl_indexEv(%"class.Kalmar::index.0"* %this) local_unnamed_addr #1 align 2 {
  %call.i = tail call i64 @amp_get_global_id(i32 0) #7
  %conv.i = trunc i64 %call.i to i32
  %1 = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %1, i64 1, i32 0
  store i32 %conv.i, i32* %__idx.i.i.i.i, align 4, !tbaa !7
  %call.i.i = tail call i64 @amp_get_global_id(i32 1) #7
  %conv.i.i = trunc i64 %call.i.i to i32
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.0", %"class.Kalmar::index.0"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %conv.i.i, i32* %__idx.i.i.i.i.i, align 4, !tbaa !7
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi3EEC2Ev(%"class.Kalmar::index.3"* %this) unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 0, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i3.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 0, i32* %__idx.i3.i, align 4, !tbaa !8
  %__idx.i2.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 0, i32* %__idx.i2.i, align 4, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi3EEC1Ev(%"class.Kalmar::index.3"* %this) unnamed_addr #0 align 2 {
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 0, i32* %__idx.i.i.i, align 4, !tbaa !2
  %__idx.i3.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 0, i32* %__idx.i3.i.i, align 4, !tbaa !8
  %__idx.i2.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 0, i32* %__idx.i2.i.i, align 4, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi3EEC2ERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %other) unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i8.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i8.i, align 4, !tbaa !7
  %__idx.i7.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 2, i32 0
  %3 = load i32, i32* %__idx.i7.i, align 4, !tbaa !7
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i, align 4, !tbaa !2
  %__idx.i7.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i7.i.i, align 4, !tbaa !8
  %__idx.i6.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %3, i32* %__idx.i6.i.i, align 4, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi3EEC1ERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %other) unnamed_addr #0 align 2 {
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i.i, align 4, !tbaa !7
  %__idx.i8.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i8.i.i, align 4, !tbaa !7
  %__idx.i7.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 2, i32 0
  %3 = load i32, i32* %__idx.i7.i.i, align 4, !tbaa !7
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i.i, align 4, !tbaa !2
  %__idx.i7.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i7.i.i.i, align 4, !tbaa !8
  %__idx.i6.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %3, i32* %__idx.i6.i.i.i, align 4, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi3EEC2Ei(%"class.Kalmar::index.3"* %this, i32 %i0) unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %i0, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i5.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %i0, i32* %__idx.i5.i, align 4, !tbaa !8
  %__idx.i4.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %i0, i32* %__idx.i4.i, align 4, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi3EEC1Ei(%"class.Kalmar::index.3"* %this, i32 %i0) unnamed_addr #0 align 2 {
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %i0, i32* %__idx.i.i.i, align 4, !tbaa !2
  %__idx.i5.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %i0, i32* %__idx.i5.i.i, align 4, !tbaa !8
  %__idx.i4.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %i0, i32* %__idx.i4.i.i, align 4, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi3EEC2EPKi(%"class.Kalmar::index.3"* %this, i32* %components) unnamed_addr #0 align 2 {
  %1 = load i32, i32* %components, align 4, !tbaa !7
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i, align 4, !tbaa !2
  %arrayidx2.i = getelementptr inbounds i32, i32* %components, i64 1
  %2 = load i32, i32* %arrayidx2.i, align 4, !tbaa !7
  %__idx.i7.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i7.i, align 4, !tbaa !8
  %arrayidx3.i = getelementptr inbounds i32, i32* %components, i64 2
  %3 = load i32, i32* %arrayidx3.i, align 4, !tbaa !7
  %__idx.i6.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %3, i32* %__idx.i6.i, align 4, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi3EEC1EPKi(%"class.Kalmar::index.3"* %this, i32* %components) unnamed_addr #0 align 2 {
  %1 = load i32, i32* %components, align 4, !tbaa !7
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i, align 4, !tbaa !2
  %arrayidx2.i.i = getelementptr inbounds i32, i32* %components, i64 1
  %2 = load i32, i32* %arrayidx2.i.i, align 4, !tbaa !7
  %__idx.i7.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i7.i.i, align 4, !tbaa !8
  %arrayidx3.i.i = getelementptr inbounds i32, i32* %components, i64 2
  %3 = load i32, i32* %arrayidx3.i.i, align 4, !tbaa !7
  %__idx.i6.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %3, i32* %__idx.i6.i.i, align 4, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi3EEC2EPi(%"class.Kalmar::index.3"* %this, i32* %components) unnamed_addr #0 align 2 {
  %1 = load i32, i32* %components, align 4, !tbaa !7
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i, align 4, !tbaa !2
  %arrayidx2.i = getelementptr inbounds i32, i32* %components, i64 1
  %2 = load i32, i32* %arrayidx2.i, align 4, !tbaa !7
  %__idx.i7.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i7.i, align 4, !tbaa !8
  %arrayidx3.i = getelementptr inbounds i32, i32* %components, i64 2
  %3 = load i32, i32* %arrayidx3.i, align 4, !tbaa !7
  %__idx.i6.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %3, i32* %__idx.i6.i, align 4, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi3EEC1EPi(%"class.Kalmar::index.3"* %this, i32* %components) unnamed_addr #0 align 2 {
  %1 = load i32, i32* %components, align 4, !tbaa !7
  %__idx.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i.i.i, align 4, !tbaa !2
  %arrayidx2.i.i = getelementptr inbounds i32, i32* %components, i64 1
  %2 = load i32, i32* %arrayidx2.i.i, align 4, !tbaa !7
  %__idx.i7.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i7.i.i, align 4, !tbaa !8
  %arrayidx3.i.i = getelementptr inbounds i32, i32* %components, i64 2
  %3 = load i32, i32* %arrayidx3.i.i, align 4, !tbaa !7
  %__idx.i6.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %3, i32* %__idx.i6.i.i, align 4, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEaSERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %other) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i23.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %1, i32* %__idx.i23.i, align 4, !tbaa !2
  %__idx.i22.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i22.i, align 4, !tbaa !7
  %__idx.i21.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  store i32 %2, i32* %__idx.i21.i, align 4, !tbaa !8
  %__idx.i20.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 2, i32 0
  %3 = load i32, i32* %__idx.i20.i, align 4, !tbaa !7
  %__idx.i19.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  store i32 %3, i32* %__idx.i19.i, align 4, !tbaa !10
  ret %"class.Kalmar::index.3"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr i32 @_ZNK6Kalmar5indexILi3EEixEj(%"class.Kalmar::index.3"* %this, i32 %c) local_unnamed_addr #0 align 2 {
  %1 = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0
  %idx.ext.i = zext i32 %c to i64
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %1, i64 %idx.ext.i, i32 0
  %2 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  ret i32 %2
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(4) i32* @_ZN6Kalmar5indexILi3EEixEj(%"class.Kalmar::index.3"* %this, i32 %c) local_unnamed_addr #0 align 2 {
  %1 = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0
  %idx.ext.i = zext i32 %c to i64
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %1, i64 %idx.ext.i, i32 0
  ret i32* %__idx.i.i
}

; Function Attrs: alwaysinline norecurse
define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi3EEeqERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %other) local_unnamed_addr #0 align 2 {
  %1 = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %1, i64 2, i32 0
  %2 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !7
  %3 = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 0
  %__idx.i.i.i5.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %3, i64 2, i32 0
  %4 = load i32, i32* %__idx.i.i.i5.i, align 4, !tbaa !7
  %cmp.i = icmp eq i32 %2, %4
  br i1 %cmp.i, label %5, label %_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_.exit

; <label>:5:                                      ; preds = %0
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %1, i64 1, i32 0
  %6 = load i32, i32* %__idx.i.i.i.i.i, align 4, !tbaa !7
  %__idx.i.i.i5.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %3, i64 1, i32 0
  %7 = load i32, i32* %__idx.i.i.i5.i.i, align 4, !tbaa !7
  %cmp.i.i = icmp eq i32 %6, %7
  br i1 %cmp.i.i, label %8, label %_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_.exit

; <label>:8:                                      ; preds = %5
  %__idx.i.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %9 = load i32, i32* %__idx.i.i.i.i.i.i, align 4, !tbaa !7
  %__idx.i.i.i2.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 0, i32 0
  %10 = load i32, i32* %__idx.i.i.i2.i.i.i, align 4, !tbaa !7
  %cmp.i.i.i = icmp eq i32 %9, %10
  br label %_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_.exit

_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_.exit: ; preds = %8, %5, %0
  %11 = phi i1 [ false, %0 ], [ false, %5 ], [ %cmp.i.i.i, %8 ]
  ret i1 %11
}

; Function Attrs: alwaysinline norecurse
define weak_odr zeroext i1 @_ZNK6Kalmar5indexILi3EEneERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %other) local_unnamed_addr #0 align 2 {
  %1 = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %1, i64 2, i32 0
  %2 = load i32, i32* %__idx.i.i.i.i.i, align 4, !tbaa !7
  %3 = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 0
  %__idx.i.i.i5.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %3, i64 2, i32 0
  %4 = load i32, i32* %__idx.i.i.i5.i.i, align 4, !tbaa !7
  %cmp.i.i = icmp eq i32 %2, %4
  br i1 %cmp.i.i, label %5, label %_ZNK6Kalmar5indexILi3EEeqERKS1_.exit

; <label>:5:                                      ; preds = %0
  %__idx.i.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %1, i64 1, i32 0
  %6 = load i32, i32* %__idx.i.i.i.i.i.i, align 4, !tbaa !7
  %__idx.i.i.i5.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %3, i64 1, i32 0
  %7 = load i32, i32* %__idx.i.i.i5.i.i.i, align 4, !tbaa !7
  %cmp.i.i.i = icmp eq i32 %6, %7
  br i1 %cmp.i.i.i, label %8, label %_ZNK6Kalmar5indexILi3EEeqERKS1_.exit

; <label>:8:                                      ; preds = %5
  %__idx.i.i.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %9 = load i32, i32* %__idx.i.i.i.i.i.i.i, align 4, !tbaa !7
  %__idx.i.i.i2.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %other, i64 0, i32 0, i32 0, i32 0
  %10 = load i32, i32* %__idx.i.i.i2.i.i.i.i, align 4, !tbaa !7
  %phitmp = icmp ne i32 %9, %10
  br label %_ZNK6Kalmar5indexILi3EEeqERKS1_.exit

_ZNK6Kalmar5indexILi3EEeqERKS1_.exit:             ; preds = %8, %5, %0
  %11 = phi i1 [ true, %0 ], [ true, %5 ], [ %phitmp, %8 ]
  ret i1 %11
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEpLERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %rhs) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %rhs, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i24.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i24.i, align 4, !tbaa !2
  %add.i25.i = add nsw i32 %2, %1
  store i32 %add.i25.i, i32* %__idx.i24.i, align 4, !tbaa !2
  %__idx.i23.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %rhs, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i23.i, align 4, !tbaa !7
  %__idx.i21.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %4 = load i32, i32* %__idx.i21.i, align 4, !tbaa !8
  %add.i22.i = add nsw i32 %4, %3
  store i32 %add.i22.i, i32* %__idx.i21.i, align 4, !tbaa !8
  %__idx.i20.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %rhs, i64 0, i32 0, i32 2, i32 0
  %5 = load i32, i32* %__idx.i20.i, align 4, !tbaa !7
  %__idx.i19.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %6 = load i32, i32* %__idx.i19.i, align 4, !tbaa !10
  %add.i.i = add nsw i32 %6, %5
  store i32 %add.i.i, i32* %__idx.i19.i, align 4, !tbaa !10
  ret %"class.Kalmar::index.3"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEmIERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %rhs) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %rhs, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i24.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i24.i, align 4, !tbaa !2
  %sub.i25.i = sub nsw i32 %2, %1
  store i32 %sub.i25.i, i32* %__idx.i24.i, align 4, !tbaa !2
  %__idx.i23.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %rhs, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i23.i, align 4, !tbaa !7
  %__idx.i21.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %4 = load i32, i32* %__idx.i21.i, align 4, !tbaa !8
  %sub.i22.i = sub nsw i32 %4, %3
  store i32 %sub.i22.i, i32* %__idx.i21.i, align 4, !tbaa !8
  %__idx.i20.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %rhs, i64 0, i32 0, i32 2, i32 0
  %5 = load i32, i32* %__idx.i20.i, align 4, !tbaa !7
  %__idx.i19.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %6 = load i32, i32* %__idx.i19.i, align 4, !tbaa !10
  %sub.i.i = sub nsw i32 %6, %5
  store i32 %sub.i.i, i32* %__idx.i19.i, align 4, !tbaa !10
  ret %"class.Kalmar::index.3"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEmLERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %__r) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i24.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i24.i, align 4, !tbaa !2
  %mul.i25.i = mul nsw i32 %2, %1
  store i32 %mul.i25.i, i32* %__idx.i24.i, align 4, !tbaa !2
  %__idx.i23.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i23.i, align 4, !tbaa !7
  %__idx.i21.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %4 = load i32, i32* %__idx.i21.i, align 4, !tbaa !8
  %mul.i22.i = mul nsw i32 %4, %3
  store i32 %mul.i22.i, i32* %__idx.i21.i, align 4, !tbaa !8
  %__idx.i20.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 2, i32 0
  %5 = load i32, i32* %__idx.i20.i, align 4, !tbaa !7
  %__idx.i19.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %6 = load i32, i32* %__idx.i19.i, align 4, !tbaa !10
  %mul.i.i = mul nsw i32 %6, %5
  store i32 %mul.i.i, i32* %__idx.i19.i, align 4, !tbaa !10
  ret %"class.Kalmar::index.3"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEdVERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %__r) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i24.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i24.i, align 4, !tbaa !2
  %div.i25.i = sdiv i32 %2, %1
  store i32 %div.i25.i, i32* %__idx.i24.i, align 4, !tbaa !2
  %__idx.i23.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i23.i, align 4, !tbaa !7
  %__idx.i21.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %4 = load i32, i32* %__idx.i21.i, align 4, !tbaa !8
  %div.i22.i = sdiv i32 %4, %3
  store i32 %div.i22.i, i32* %__idx.i21.i, align 4, !tbaa !8
  %__idx.i20.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 2, i32 0
  %5 = load i32, i32* %__idx.i20.i, align 4, !tbaa !7
  %__idx.i19.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %6 = load i32, i32* %__idx.i19.i, align 4, !tbaa !10
  %div.i.i = sdiv i32 %6, %5
  store i32 %div.i.i, i32* %__idx.i19.i, align 4, !tbaa !10
  ret %"class.Kalmar::index.3"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EErMERKS1_(%"class.Kalmar::index.3"* %this, %"class.Kalmar::index.3"* dereferenceable(24) %__r) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !7
  %__idx.i24.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i24.i, align 4, !tbaa !2
  %rem.i25.i = srem i32 %2, %1
  store i32 %rem.i25.i, i32* %__idx.i24.i, align 4, !tbaa !2
  %__idx.i23.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i23.i, align 4, !tbaa !7
  %__idx.i21.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %4 = load i32, i32* %__idx.i21.i, align 4, !tbaa !8
  %rem.i22.i = srem i32 %4, %3
  store i32 %rem.i22.i, i32* %__idx.i21.i, align 4, !tbaa !8
  %__idx.i20.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %__r, i64 0, i32 0, i32 2, i32 0
  %5 = load i32, i32* %__idx.i20.i, align 4, !tbaa !7
  %__idx.i19.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %6 = load i32, i32* %__idx.i19.i, align 4, !tbaa !10
  %rem.i.i = srem i32 %6, %5
  store i32 %rem.i.i, i32* %__idx.i19.i, align 4, !tbaa !10
  ret %"class.Kalmar::index.3"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEpLEi(%"class.Kalmar::index.3"* %this, i32 %value) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %add.i.i = add nsw i32 %1, %value
  store i32 %add.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i16.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i16.i, align 4, !tbaa !8
  %add.i17.i = add nsw i32 %2, %value
  store i32 %add.i17.i, i32* %__idx.i16.i, align 4, !tbaa !8
  %__idx.i14.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %3 = load i32, i32* %__idx.i14.i, align 4, !tbaa !10
  %add.i15.i = add nsw i32 %3, %value
  store i32 %add.i15.i, i32* %__idx.i14.i, align 4, !tbaa !10
  ret %"class.Kalmar::index.3"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEmIEi(%"class.Kalmar::index.3"* %this, i32 %value) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %sub.i.i = sub nsw i32 %1, %value
  store i32 %sub.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i16.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i16.i, align 4, !tbaa !8
  %sub.i17.i = sub nsw i32 %2, %value
  store i32 %sub.i17.i, i32* %__idx.i16.i, align 4, !tbaa !8
  %__idx.i14.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %3 = load i32, i32* %__idx.i14.i, align 4, !tbaa !10
  %sub.i15.i = sub nsw i32 %3, %value
  store i32 %sub.i15.i, i32* %__idx.i14.i, align 4, !tbaa !10
  ret %"class.Kalmar::index.3"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEmLEi(%"class.Kalmar::index.3"* %this, i32 %value) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %mul.i.i = mul nsw i32 %1, %value
  store i32 %mul.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i16.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i16.i, align 4, !tbaa !8
  %mul.i17.i = mul nsw i32 %2, %value
  store i32 %mul.i17.i, i32* %__idx.i16.i, align 4, !tbaa !8
  %__idx.i14.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %3 = load i32, i32* %__idx.i14.i, align 4, !tbaa !10
  %mul.i15.i = mul nsw i32 %3, %value
  store i32 %mul.i15.i, i32* %__idx.i14.i, align 4, !tbaa !10
  ret %"class.Kalmar::index.3"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEdVEi(%"class.Kalmar::index.3"* %this, i32 %value) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %div.i.i = sdiv i32 %1, %value
  store i32 %div.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i16.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i16.i, align 4, !tbaa !8
  %div.i17.i = sdiv i32 %2, %value
  store i32 %div.i17.i, i32* %__idx.i16.i, align 4, !tbaa !8
  %__idx.i14.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %3 = load i32, i32* %__idx.i14.i, align 4, !tbaa !10
  %div.i15.i = sdiv i32 %3, %value
  store i32 %div.i15.i, i32* %__idx.i14.i, align 4, !tbaa !10
  ret %"class.Kalmar::index.3"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EErMEi(%"class.Kalmar::index.3"* %this, i32 %value) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %rem.i.i = srem i32 %1, %value
  store i32 %rem.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i16.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i16.i, align 4, !tbaa !8
  %rem.i17.i = srem i32 %2, %value
  store i32 %rem.i17.i, i32* %__idx.i16.i, align 4, !tbaa !8
  %__idx.i14.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %3 = load i32, i32* %__idx.i14.i, align 4, !tbaa !10
  %rem.i15.i = srem i32 %3, %value
  store i32 %rem.i15.i, i32* %__idx.i14.i, align 4, !tbaa !10
  ret %"class.Kalmar::index.3"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEppEv(%"class.Kalmar::index.3"* %this) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %add.i.i = add nsw i32 %1, 1
  store i32 %add.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i16.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i16.i, align 4, !tbaa !8
  %add.i17.i = add nsw i32 %2, 1
  store i32 %add.i17.i, i32* %__idx.i16.i, align 4, !tbaa !8
  %__idx.i14.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %3 = load i32, i32* %__idx.i14.i, align 4, !tbaa !10
  %add.i15.i = add nsw i32 %3, 1
  store i32 %add.i15.i, i32* %__idx.i14.i, align 4, !tbaa !10
  ret %"class.Kalmar::index.3"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi3EEppEi(%"class.Kalmar::index.3"* noalias sret %agg.result, %"class.Kalmar::index.3"* %this, i32) local_unnamed_addr #0 align 2 {
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !7
  %__idx.i8.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i8.i.i.i, align 4, !tbaa !7
  %__idx.i7.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %4 = load i32, i32* %__idx.i7.i.i.i, align 4, !tbaa !7
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %agg.result, i64 0, i32 0, i32 0, i32 0
  store i32 %2, i32* %__idx.i.i.i.i.i, align 4, !tbaa !2
  %__idx.i7.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %agg.result, i64 0, i32 0, i32 1, i32 0
  store i32 %3, i32* %__idx.i7.i.i.i.i, align 4, !tbaa !8
  %__idx.i6.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %agg.result, i64 0, i32 0, i32 2, i32 0
  store i32 %4, i32* %__idx.i6.i.i.i.i, align 4, !tbaa !10
  %add.i.i = add nsw i32 %2, 1
  store i32 %add.i.i, i32* %__idx.i.i.i.i, align 4, !tbaa !2
  %add.i17.i = add nsw i32 %3, 1
  store i32 %add.i17.i, i32* %__idx.i8.i.i.i, align 4, !tbaa !8
  %add.i15.i = add nsw i32 %4, 1
  store i32 %add.i15.i, i32* %__idx.i7.i.i.i, align 4, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline norecurse
define weak_odr dereferenceable(24) %"class.Kalmar::index.3"* @_ZN6Kalmar5indexILi3EEmmEv(%"class.Kalmar::index.3"* %this) local_unnamed_addr #0 align 2 {
  %__idx.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %__idx.i.i, align 4, !tbaa !2
  %sub.i.i = add nsw i32 %1, -1
  store i32 %sub.i.i, i32* %__idx.i.i, align 4, !tbaa !2
  %__idx.i16.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %2 = load i32, i32* %__idx.i16.i, align 4, !tbaa !8
  %sub.i17.i = add nsw i32 %2, -1
  store i32 %sub.i17.i, i32* %__idx.i16.i, align 4, !tbaa !8
  %__idx.i14.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %3 = load i32, i32* %__idx.i14.i, align 4, !tbaa !10
  %sub.i15.i = add nsw i32 %3, -1
  store i32 %sub.i15.i, i32* %__idx.i14.i, align 4, !tbaa !10
  ret %"class.Kalmar::index.3"* %this
}

; Function Attrs: alwaysinline norecurse
define weak_odr void @_ZN6Kalmar5indexILi3EEmmEi(%"class.Kalmar::index.3"* noalias sret %agg.result, %"class.Kalmar::index.3"* %this, i32) local_unnamed_addr #0 align 2 {
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %__idx.i.i.i.i, align 4, !tbaa !7
  %__idx.i8.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %__idx.i8.i.i.i, align 4, !tbaa !7
  %__idx.i7.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 2, i32 0
  %4 = load i32, i32* %__idx.i7.i.i.i, align 4, !tbaa !7
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %agg.result, i64 0, i32 0, i32 0, i32 0
  store i32 %2, i32* %__idx.i.i.i.i.i, align 4, !tbaa !2
  %__idx.i7.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %agg.result, i64 0, i32 0, i32 1, i32 0
  store i32 %3, i32* %__idx.i7.i.i.i.i, align 4, !tbaa !8
  %__idx.i6.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %agg.result, i64 0, i32 0, i32 2, i32 0
  store i32 %4, i32* %__idx.i6.i.i.i.i, align 4, !tbaa !10
  %sub.i.i = add nsw i32 %2, -1
  store i32 %sub.i.i, i32* %__idx.i.i.i.i, align 4, !tbaa !2
  %sub.i17.i = add nsw i32 %3, -1
  store i32 %sub.i17.i, i32* %__idx.i8.i.i.i, align 4, !tbaa !8
  %sub.i15.i = add nsw i32 %4, -1
  store i32 %sub.i15.i, i32* %__idx.i7.i.i.i, align 4, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline
define weak_odr void @_ZN6Kalmar5indexILi3EE21__cxxamp_opencl_indexEv(%"class.Kalmar::index.3"* %this) local_unnamed_addr #1 align 2 {
  %call.i = tail call i64 @amp_get_global_id(i32 0) #7
  %conv.i = trunc i64 %call.i to i32
  %1 = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0
  %__idx.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %1, i64 2, i32 0
  store i32 %conv.i, i32* %__idx.i.i.i.i, align 4, !tbaa !7
  %call.i.i = tail call i64 @amp_get_global_id(i32 1) #7
  %conv.i.i = trunc i64 %call.i.i to i32
  %__idx.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::__index_leaf", %"class.Kalmar::__index_leaf"* %1, i64 1, i32 0
  store i32 %conv.i.i, i32* %__idx.i.i.i.i.i, align 4, !tbaa !7
  %call.i.i.i = tail call i64 @amp_get_global_id(i32 2) #7
  %conv.i.i.i = trunc i64 %call.i.i.i to i32
  %__idx.i.i.i.i.i.i = getelementptr inbounds %"class.Kalmar::index.3", %"class.Kalmar::index.3"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 %conv.i.i.i, i32* %__idx.i.i.i.i.i.i, align 4, !tbaa !7
  ret void
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5acosfEf(float %x) #1 {
  %call = tail call float @__hc_acos(float %x) #8
  ret float %call
}

declare float @__hc_acos(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math4acosEDh(half %x) #1 {
  %call = tail call half @__hc_acos_half(half %x) #8
  ret half %call
}

declare half @__hc_acos_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4acosEf(float %x) #1 {
  %call.i = tail call float @__hc_acos(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5asinfEf(float %x) #1 {
  %call = tail call float @__hc_asin(float %x) #8
  ret float %call
}

declare float @__hc_asin(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math4asinEDh(half %x) #1 {
  %call = tail call half @__hc_asin_half(half %x) #8
  ret half %call
}

declare half @__hc_asin_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4asinEf(float %x) #1 {
  %call.i = tail call float @__hc_asin(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5atanfEf(float %x) #1 {
  %call = tail call float @__hc_atan(float %x) #8
  ret float %call
}

declare float @__hc_atan(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math4atanEDh(half %x) #1 {
  %call = tail call half @__hc_atan_half(half %x) #8
  ret half %call
}

declare half @__hc_atan_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4atanEf(float %x) #1 {
  %call.i = tail call float @__hc_atan(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math6atan2fEff(float %y, float %x) #1 {
  %call = tail call float @__hc_atan2(float %y, float %x) #8
  ret float %call
}

declare float @__hc_atan2(float, float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math5atan2EDhDh(half %y, half %x) #1 {
  %call = tail call half @__hc_atan2_half(half %y, half %x) #8
  ret half %call
}

declare half @__hc_atan2_half(half, half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5atan2Eff(float %y, float %x) #1 {
  %call.i = tail call float @__hc_atan2(float %y, float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5ceilfEf(float %x) #1 {
  %call = tail call float @__hc_ceil(float %x) #8
  ret float %call
}

declare float @__hc_ceil(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math4ceilEDh(half %x) #1 {
  %call = tail call half @__hc_ceil_half(half %x) #8
  ret half %call
}

declare half @__hc_ceil_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4ceilEf(float %x) #1 {
  %call.i = tail call float @__hc_ceil(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4cosfEf(float %x) #1 {
  %call = tail call float @__hc_cos_native(float %x) #8
  ret float %call
}

declare float @__hc_cos_native(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math3cosEDh(half %x) #1 {
  %call = tail call half @__hc_cos_native_half(half %x) #8
  ret half %call
}

declare half @__hc_cos_native_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math3cosEf(float %x) #1 {
  %call.i = tail call float @__hc_cos_native(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5coshfEf(float %x) #1 {
  %call = tail call float @__hc_cosh(float %x) #8
  ret float %call
}

declare float @__hc_cosh(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math4coshEDh(half %x) #1 {
  %call = tail call half @__hc_cosh_half(half %x) #8
  ret half %call
}

declare half @__hc_cosh_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4coshEf(float %x) #1 {
  %call.i = tail call float @__hc_cosh(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4expfEf(float %x) #1 {
  %conv = fpext float %x to double
  %mul = fmul double %conv, 0x3FF71547652B82FE
  %conv1 = fptrunc double %mul to float
  %call = tail call float @__hc_exp2_native(float %conv1) #8
  ret float %call
}

declare float @__hc_exp2_native(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math3expEDh(half %x) #1 {
  %conv = fpext half %x to double
  %mul = fmul double %conv, 0x3FF71547652B82FE
  %conv1 = fptrunc double %mul to half
  %call = tail call half @__hc_exp2_native_half(half %conv1) #8
  ret half %call
}

declare half @__hc_exp2_native_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math3expEf(float %x) #1 {
  %conv.i = fpext float %x to double
  %mul.i = fmul double %conv.i, 0x3FF71547652B82FE
  %conv1.i = fptrunc double %mul.i to float
  %call.i = tail call float @__hc_exp2_native(float %conv1.i) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5exp2fEf(float %x) #1 {
  %call = tail call float @__hc_exp2_native(float %x) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math4exp2EDh(half %x) #1 {
  %call = tail call half @__hc_exp2_native_half(half %x) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4exp2Ef(float %x) #1 {
  %call.i = tail call float @__hc_exp2_native(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5fabsfEf(float %x) #1 {
  %call = tail call float @__hc_fabs(float %x) #8
  ret float %call
}

declare float @__hc_fabs(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math4fabsEDh(half %x) #1 {
  %call = tail call half @__hc_fabs_half(half %x) #8
  ret half %call
}

declare half @__hc_fabs_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4fabsEf(float %x) #1 {
  %call.i = tail call float @__hc_fabs(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math6floorfEf(float %x) #1 {
  %call = tail call float @__hc_floor(float %x) #8
  ret float %call
}

declare float @__hc_floor(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math5floorEDh(half %x) #1 {
  %call = tail call half @__hc_floor_half(half %x) #8
  ret half %call
}

declare half @__hc_floor_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5floorEf(float %x) #1 {
  %call.i = tail call float @__hc_floor(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5fmaxfEff(float %x, float %y) #1 {
  %call = tail call float @__hc_fmax(float %x, float %y) #8
  ret float %call
}

declare float @__hc_fmax(float, float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math4fmaxEDhDh(half %x, half %y) #1 {
  %call = tail call half @__hc_fmax_half(half %x, half %y) #8
  ret half %call
}

declare half @__hc_fmax_half(half, half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4fmaxEff(float %x, float %y) #1 {
  %call.i = tail call float @__hc_fmax(float %x, float %y) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5fminfEff(float %x, float %y) #1 {
  %call = tail call float @__hc_fmin(float %x, float %y) #8
  ret float %call
}

declare float @__hc_fmin(float, float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math4fminEDhDh(half %x, half %y) #1 {
  %call = tail call half @__hc_fmin_half(half %x, half %y) #8
  ret half %call
}

declare half @__hc_fmin_half(half, half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4fminEff(float %x, float %y) #1 {
  %call.i = tail call float @__hc_fmin(float %x, float %y) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5fmodfEff(float %x, float %y) #1 {
  %call = tail call float @__hc_fmod(float %x, float %y) #8
  ret float %call
}

declare float @__hc_fmod(float, float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math4fmodEDhDh(half %x, half %y) #1 {
  %call = tail call half @__hc_fmod_half(half %x, half %y) #8
  ret half %call
}

declare half @__hc_fmod_half(half, half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4fmodEff(float %x, float %y) #1 {
  %call.i = tail call float @__hc_fmod(float %x, float %y) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math6frexpfEfPi(float %x, i32* %exp) #1 {
  %call = tail call float @__hc_frexp(float %x, i32* %exp) #8
  ret float %call
}

declare float @__hc_frexp(float, i32*) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math5frexpEDhPi(half %x, i32* %exp) #1 {
  %call = tail call half @__hc_frexp_half(half %x, i32* %exp) #8
  ret half %call
}

declare half @__hc_frexp_half(half, i32*) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5frexpEfPi(float %x, i32* %exp) #1 {
  %call.i = tail call float @__hc_frexp(float %x, i32* %exp) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar9fast_math8isfiniteEDh(half %x) #1 {
  %call = tail call i32 @__hc_isfinite_half(half %x) #8
  ret i32 %call
}

declare i32 @__hc_isfinite_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar9fast_math8isfiniteEf(float %x) #1 {
  %call = tail call i32 @__hc_isfinite(float %x) #8
  ret i32 %call
}

declare i32 @__hc_isfinite(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar9fast_math5isinfEDh(half %x) #1 {
  %call = tail call i32 @__hc_isinf_half(half %x) #8
  ret i32 %call
}

declare i32 @__hc_isinf_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar9fast_math5isinfEf(float %x) #1 {
  %call = tail call i32 @__hc_isinf(float %x) #8
  ret i32 %call
}

declare i32 @__hc_isinf(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar9fast_math5isnanEDh(half %x) #1 {
  %call = tail call i32 @__hc_isnan_half(half %x) #8
  ret i32 %call
}

declare i32 @__hc_isnan_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar9fast_math5isnanEf(float %x) #1 {
  %call = tail call i32 @__hc_isnan(float %x) #8
  ret i32 %call
}

declare i32 @__hc_isnan(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math6ldexpfEfi(float %x, i32 %exp) #1 {
  %call = tail call float @__hc_ldexp(float %x, i32 %exp) #8
  ret float %call
}

declare float @__hc_ldexp(float, i32) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math5ldexpEDht(half %x, i16 zeroext %exp) #1 {
  %call = tail call half @__hc_ldexp_half(half %x, i16 signext %exp) #8
  ret half %call
}

declare half @__hc_ldexp_half(half, i16 signext) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5ldexpEfi(float %x, i32 %exp) #1 {
  %call.i = tail call float @__hc_ldexp(float %x, i32 %exp) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4logfEf(float %x) #1 {
  %call = tail call float @__hc_log2_native(float %x) #8
  %mul = fmul float %call, 0x3FE62E4300000000
  ret float %mul
}

declare float @__hc_log2_native(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math3logEDh(half %x) #1 {
  %call = tail call half @__hc_log2_native_half(half %x) #8
  %mul = fmul half %call, 0xH398C
  ret half %mul
}

declare half @__hc_log2_native_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math3logEf(float %x) #1 {
  %call.i = tail call float @__hc_log2_native(float %x) #8
  %mul.i = fmul float %call.i, 0x3FE62E4300000000
  ret float %mul.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math6log10fEf(float %x) #1 {
  %call = tail call float @__hc_log2_native(float %x) #8
  %mul = fmul float %call, 0x3FD3441360000000
  ret float %mul
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math5log10EDh(half %x) #1 {
  %call = tail call half @__hc_log2_native_half(half %x) #8
  %mul = fmul half %call, 0xH34D1
  ret half %mul
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5log10Ef(float %x) #1 {
  %call.i = tail call float @__hc_log2_native(float %x) #8
  %mul.i = fmul float %call.i, 0x3FD3441360000000
  ret float %mul.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5log2fEf(float %x) #1 {
  %call = tail call float @__hc_log2_native(float %x) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math4log2EDh(half %x) #1 {
  %call = tail call half @__hc_log2_native_half(half %x) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4log2Ef(float %x) #1 {
  %call.i = tail call float @__hc_log2_native(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5modffEfPf(float %x, float* %iptr) #1 {
  %call = tail call float @__hc_modf(float %x, float* %iptr) #8
  ret float %call
}

declare float @__hc_modf(float, float*) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math4modfEDhPDh(half %x, half* %iptr) #1 {
  %call = tail call half @__hc_modf_half(half %x, half* %iptr) #8
  ret half %call
}

declare half @__hc_modf_half(half, half*) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4modfEfPf(float %x, float* %iptr) #1 {
  %call.i = tail call float @__hc_modf(float %x, float* %iptr) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4powfEff(float %x, float %y) #1 {
  %call = tail call float @__hc_pow(float %x, float %y) #8
  ret float %call
}

declare float @__hc_pow(float, float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math3powEDhDh(half %x, half %y) #1 {
  %call = tail call half @__hc_pow_half(half %x, half %y) #8
  ret half %call
}

declare half @__hc_pow_half(half, half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math3powEff(float %x, float %y) #1 {
  %call.i = tail call float @__hc_pow(float %x, float %y) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math6roundfEf(float %x) #1 {
  %call = tail call float @__hc_round(float %x) #8
  ret float %call
}

declare float @__hc_round(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math5roundEDh(half %x) #1 {
  %call = tail call half @__hc_round_half(half %x) #8
  ret half %call
}

declare half @__hc_round_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5roundEf(float %x) #1 {
  %call.i = tail call float @__hc_round(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math6rsqrtfEf(float %x) #1 {
  %call = tail call float @__hc_rsqrt_native(float %x) #8
  ret float %call
}

declare float @__hc_rsqrt_native(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math5rsqrtEDh(half %x) #1 {
  %call = tail call half @__hc_rsqrt_native_half(half %x) #8
  ret half %call
}

declare half @__hc_rsqrt_native_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5rsqrtEf(float %x) #1 {
  %call.i = tail call float @__hc_rsqrt_native(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar9fast_math8signbitfEf(float %x) #1 {
  %call = tail call i32 @__hc_signbit(float %x) #8
  ret i32 %call
}

declare i32 @__hc_signbit(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar9fast_math7signbitEDh(half %x) #1 {
  %call = tail call i32 @__hc_signbit_half(half %x) #8
  ret i32 %call
}

declare i32 @__hc_signbit_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar9fast_math7signbitEf(float %x) #1 {
  %call.i = tail call i32 @__hc_signbit(float %x) #8
  ret i32 %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4sinfEf(float %x) #1 {
  %call = tail call float @__hc_sin_native(float %x) #8
  ret float %call
}

declare float @__hc_sin_native(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math3sinEDh(half %x) #1 {
  %call = tail call half @__hc_sin_native_half(half %x) #8
  ret half %call
}

declare half @__hc_sin_native_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math3sinEf(float %x) #1 {
  %call.i = tail call float @__hc_sin_native(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr void @_ZN6Kalmar9fast_math7sincosfEfPfS1_(float %x, float* %s, float* %c) #1 {
  %call = tail call float @__hc_sincos(float %x, float* %c) #8
  store float %call, float* %s, align 4, !tbaa !12
  ret void
}

declare float @__hc_sincos(float, float*) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr void @_ZN6Kalmar9fast_math6sincosEDhPDhS1_(half %x, half* %s, half* %c) #1 {
  %call = tail call half @__hc_sincos_half(half %x, half* %c) #8
  store half %call, half* %s, align 2, !tbaa !14
  ret void
}

declare half @__hc_sincos_half(half, half*) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr void @_ZN6Kalmar9fast_math6sincosEfPfS1_(float %x, float* %s, float* %c) #1 {
  %call.i = tail call float @__hc_sincos(float %x, float* %c) #8
  store float %call.i, float* %s, align 4, !tbaa !12
  ret void
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5sinhfEf(float %x) #1 {
  %call = tail call float @__hc_sinh(float %x) #8
  ret float %call
}

declare float @__hc_sinh(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math4sinhEDh(half %x) #1 {
  %call = tail call half @__hc_sinh_half(half %x) #8
  ret half %call
}

declare half @__hc_sinh_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4sinhEf(float %x) #1 {
  %call.i = tail call float @__hc_sinh(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5sqrtfEf(float %x) #1 {
  %call = tail call float @__hc_sqrt_native(float %x) #8
  ret float %call
}

declare float @__hc_sqrt_native(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math4sqrtEDh(half %x) #1 {
  %call = tail call half @__hc_sqrt_native_half(half %x) #8
  ret half %call
}

declare half @__hc_sqrt_native_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4sqrtEf(float %x) #1 {
  %call.i = tail call float @__hc_sqrt_native(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4tanfEf(float %x) #1 {
  %call = tail call float @__hc_tan(float %x) #8
  ret float %call
}

declare float @__hc_tan(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math3tanEDh(half %x) #1 {
  %call = tail call half @__hc_sin_native_half(half %x) #8
  %call1 = tail call half @__hc_cos_native_half(half %x) #8
  %call2 = tail call half @__hc_rcp_native_half(half %call1) #8
  %mul = fmul half %call, %call2
  ret half %mul
}

declare half @__hc_rcp_native_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math3tanEf(float %x) #1 {
  %call.i = tail call float @__hc_tan(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5tanhfEf(float %x) #1 {
  %call = tail call float @__hc_tanh(float %x) #8
  ret float %call
}

declare float @__hc_tanh(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math4tanhEDh(half %x) #1 {
  %call = tail call half @__hc_tanh_half(half %x) #8
  ret half %call
}

declare half @__hc_tanh_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math4tanhEf(float %x) #1 {
  %call.i = tail call float @__hc_tanh(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math6truncfEf(float %x) #1 {
  %call = tail call float @__hc_trunc(float %x) #8
  ret float %call
}

declare float @__hc_trunc(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar9fast_math5truncEDh(half %x) #1 {
  %call = tail call half @__hc_trunc_half(half %x) #8
  ret half %call
}

declare half @__hc_trunc_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar9fast_math5truncEf(float %x) #1 {
  %call.i = tail call float @__hc_trunc(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5acosfEf(float %x) #1 {
  %call = tail call float @__hc_acos(float %x) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4acosEDh(half %x) #1 {
  %call = tail call half @__hc_acos_half(half %x) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4acosEf(float %x) #1 {
  %call.i = tail call float @__hc_acos(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4acosEd(double %x) #1 {
  %call = tail call double @__hc_acos_double(double %x) #8
  ret double %call
}

declare double @__hc_acos_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6acoshfEf(float %x) #1 {
  %call = tail call float @__hc_acosh(float %x) #8
  ret float %call
}

declare float @__hc_acosh(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5acoshEDh(half %x) #1 {
  %call = tail call half @__hc_acosh_half(half %x) #8
  ret half %call
}

declare half @__hc_acosh_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5acoshEf(float %x) #1 {
  %call.i = tail call float @__hc_acosh(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5acoshEd(double %x) #1 {
  %call = tail call double @__hc_acosh_double(double %x) #8
  ret double %call
}

declare double @__hc_acosh_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5asinfEf(float %x) #1 {
  %call = tail call float @__hc_asin(float %x) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4asinEDh(half %x) #1 {
  %call = tail call half @__hc_asin_half(half %x) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4asinEf(float %x) #1 {
  %call.i = tail call float @__hc_asin(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4asinEd(double %x) #1 {
  %call = tail call double @__hc_asin_double(double %x) #8
  ret double %call
}

declare double @__hc_asin_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6asinhfEf(float %x) #1 {
  %call = tail call float @__hc_asinh(float %x) #8
  ret float %call
}

declare float @__hc_asinh(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5asinhEDh(half %x) #1 {
  %call = tail call half @__hc_asinh_half(half %x) #8
  ret half %call
}

declare half @__hc_asinh_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5asinhEf(float %x) #1 {
  %call.i = tail call float @__hc_asinh(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5asinhEd(double %x) #1 {
  %call = tail call double @__hc_asinh_double(double %x) #8
  ret double %call
}

declare double @__hc_asinh_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5atanfEf(float %x) #1 {
  %call = tail call float @__hc_atan(float %x) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4atanEDh(half %x) #1 {
  %call = tail call half @__hc_atan_half(half %x) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4atanEf(float %x) #1 {
  %call.i = tail call float @__hc_atan(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4atanEd(double %x) #1 {
  %call = tail call double @__hc_atan_double(double %x) #8
  ret double %call
}

declare double @__hc_atan_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6atanhfEf(float %x) #1 {
  %call = tail call float @__hc_atanh(float %x) #8
  ret float %call
}

declare float @__hc_atanh(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5atanhEDh(half %x) #1 {
  %call = tail call half @__hc_atanh_half(half %x) #8
  ret half %call
}

declare half @__hc_atanh_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5atanhEf(float %x) #1 {
  %call.i = tail call float @__hc_atanh(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5atanhEd(double %x) #1 {
  %call = tail call double @__hc_atanh_double(double %x) #8
  ret double %call
}

declare double @__hc_atanh_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6atan2fEff(float %y, float %x) #1 {
  %call = tail call float @__hc_atan2(float %y, float %x) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5atan2EDhDh(half %x, half %y) #1 {
  %call = tail call half @__hc_atan2_half(half %x, half %y) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5atan2Eff(float %y, float %x) #1 {
  %call.i = tail call float @__hc_atan2(float %y, float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5atan2Edd(double %y, double %x) #1 {
  %call = tail call double @__hc_atan2_double(double %y, double %x) #8
  ret double %call
}

declare double @__hc_atan2_double(double, double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5cbrtfEf(float %x) #1 {
  %call = tail call float @__hc_cbrt(float %x) #8
  ret float %call
}

declare float @__hc_cbrt(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4cbrtEDh(half %x) #1 {
  %call = tail call half @__hc_cbrt_half(half %x) #8
  ret half %call
}

declare half @__hc_cbrt_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4cbrtEf(float %x) #1 {
  %call.i = tail call float @__hc_cbrt(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4cbrtEd(double %x) #1 {
  %call = tail call double @__hc_cbrt_double(double %x) #8
  ret double %call
}

declare double @__hc_cbrt_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5ceilfEf(float %x) #1 {
  %call = tail call float @__hc_ceil(float %x) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4ceilEDh(half %x) #1 {
  %call = tail call half @__hc_ceil_half(half %x) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4ceilEf(float %x) #1 {
  %call.i = tail call float @__hc_ceil(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4ceilEd(double %x) #1 {
  %call = tail call double @__hc_ceil_double(double %x) #8
  ret double %call
}

declare double @__hc_ceil_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math9copysignfEff(float %x, float %y) #1 {
  %call = tail call float @__hc_copysign(float %x, float %y) #8
  ret float %call
}

declare float @__hc_copysign(float, float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math8copysignEDhDh(half %x, half %y) #1 {
  %call = tail call half @__hc_copysign_half(half %x, half %y) #8
  ret half %call
}

declare half @__hc_copysign_half(half, half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math8copysignEff(float %x, float %y) #1 {
  %call.i = tail call float @__hc_copysign(float %x, float %y) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math8copysignEdd(double %x, double %y) #1 {
  %call = tail call double @__hc_copysign_double(double %x, double %y) #8
  ret double %call
}

declare double @__hc_copysign_double(double, double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4cosfEf(float %x) #1 {
  %call = tail call float @__hc_cos(float %x) #8
  ret float %call
}

declare float @__hc_cos(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math3cosEDh(half %x) #1 {
  %call = tail call half @__hc_cos_half(half %x) #8
  ret half %call
}

declare half @__hc_cos_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math3cosEf(float %x) #1 {
  %call.i = tail call float @__hc_cos(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math3cosEd(double %x) #1 {
  %call = tail call double @__hc_cos_double(double %x) #8
  ret double %call
}

declare double @__hc_cos_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5coshfEf(float %x) #1 {
  %call = tail call float @__hc_cosh(float %x) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4coshEDh(half %x) #1 {
  %call = tail call half @__hc_cosh_half(half %x) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4coshEf(float %x) #1 {
  %call.i = tail call float @__hc_cosh(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4coshEd(double %x) #1 {
  %call = tail call double @__hc_cosh_double(double %x) #8
  ret double %call
}

declare double @__hc_cosh_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6cospifEf(float %x) #1 {
  %call = tail call float @__hc_cospi(float %x) #8
  ret float %call
}

declare float @__hc_cospi(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5cospiEDh(half %x) #1 {
  %call = tail call half @__hc_cospi_half(half %x) #8
  ret half %call
}

declare half @__hc_cospi_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5cospiEf(float %x) #1 {
  %call.i = tail call float @__hc_cospi(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5cospiEd(double %x) #1 {
  %call = tail call double @__hc_cospi_double(double %x) #8
  ret double %call
}

declare double @__hc_cospi_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4erffEf(float %x) #1 {
  %call = tail call float @__hc_erf(float %x) #8
  ret float %call
}

declare float @__hc_erf(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math3erfEDh(half %x) #1 {
  %call = tail call half @__hc_erf_half(half %x) #8
  ret half %call
}

declare half @__hc_erf_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math3erfEf(float %x) #1 {
  %call.i = tail call float @__hc_erf(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math3erfEd(double %x) #1 {
  %call = tail call double @__hc_erf_double(double %x) #8
  ret double %call
}

declare double @__hc_erf_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5erfcfEf(float %x) #1 {
  %call = tail call float @__hc_erfc(float %x) #8
  ret float %call
}

declare float @__hc_erfc(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4erfcEDh(half %x) #1 {
  %call = tail call half @__hc_erfc_half(half %x) #8
  ret half %call
}

declare half @__hc_erfc_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4erfcEf(float %x) #1 {
  %call.i = tail call float @__hc_erfc(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4erfcEd(double %x) #1 {
  %call = tail call double @__hc_erfc_double(double %x) #8
  ret double %call
}

declare double @__hc_erfc_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math8erfcinvfEf(float %x) #1 {
  %call = tail call float @__hc_erfcinv(float %x) #8
  ret float %call
}

declare float @__hc_erfcinv(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math7erfcinvEDh(half %x) #1 {
  %call = tail call half @__hc_erfcinv_half(half %x) #8
  ret half %call
}

declare half @__hc_erfcinv_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math7erfcinvEf(float %x) #1 {
  %call.i = tail call float @__hc_erfcinv(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math7erfcinvEd(double %x) #1 {
  %call = tail call double @__hc_erfcinv_double(double %x) #8
  ret double %call
}

declare double @__hc_erfcinv_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math7erfinvfEf(float %x) #1 {
  %call = tail call float @__hc_erfinv(float %x) #8
  ret float %call
}

declare float @__hc_erfinv(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math6erfinvEDh(half %x) #1 {
  %call = tail call half @__hc_erfinv_half(half %x) #8
  ret half %call
}

declare half @__hc_erfinv_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6erfinvEf(float %x) #1 {
  %call.i = tail call float @__hc_erfinv(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math6erfinvEd(double %x) #1 {
  %call = tail call double @__hc_erfinv_double(double %x) #8
  ret double %call
}

declare double @__hc_erfinv_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4expfEf(float %x) #1 {
  %call = tail call float @__hc_exp(float %x) #8
  ret float %call
}

declare float @__hc_exp(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math3expEDh(half %x) #1 {
  %call = tail call half @__hc_exp_half(half %x) #8
  ret half %call
}

declare half @__hc_exp_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math3expEf(float %x) #1 {
  %call.i = tail call float @__hc_exp(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math3expEd(double %x) #1 {
  %call = tail call double @__hc_exp_double(double %x) #8
  ret double %call
}

declare double @__hc_exp_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5exp2fEf(float %x) #1 {
  %call = tail call float @__hc_exp2(float %x) #8
  ret float %call
}

declare float @__hc_exp2(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4exp2EDh(half %x) #1 {
  %call = tail call half @__hc_exp2_half(half %x) #8
  ret half %call
}

declare half @__hc_exp2_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4exp2Ef(float %x) #1 {
  %call.i = tail call float @__hc_exp2(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4exp2Ed(double %x) #1 {
  %call = tail call double @__hc_exp2_double(double %x) #8
  ret double %call
}

declare double @__hc_exp2_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6exp10fEf(float %x) #1 {
  %call = tail call float @__hc_exp10(float %x) #8
  ret float %call
}

declare float @__hc_exp10(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5exp10EDh(half %x) #1 {
  %call = tail call half @__hc_exp10_half(half %x) #8
  ret half %call
}

declare half @__hc_exp10_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5exp10Ef(float %x) #1 {
  %call.i = tail call float @__hc_exp10(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5exp10Ed(double %x) #1 {
  %call = tail call double @__hc_exp10_double(double %x) #8
  ret double %call
}

declare double @__hc_exp10_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6expm1fEf(float %x) #1 {
  %call = tail call float @__hc_expm1(float %x) #8
  ret float %call
}

declare float @__hc_expm1(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5expm1EDh(half %x) #1 {
  %call = tail call half @__hc_expm1_half(half %x) #8
  ret half %call
}

declare half @__hc_expm1_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5expm1Ef(float %x) #1 {
  %call.i = tail call float @__hc_expm1(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5expm1Ed(double %x) #1 {
  %call = tail call double @__hc_expm1_double(double %x) #8
  ret double %call
}

declare double @__hc_expm1_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5fabsfEf(float %x) #1 {
  %call = tail call float @__hc_fabs(float %x) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4fabsEDh(half %x) #1 {
  %call = tail call half @__hc_fabs_half(half %x) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4fabsEf(float %x) #1 {
  %call.i = tail call float @__hc_fabs(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4fabsEd(double %x) #1 {
  %call = tail call double @__hc_fabs_double(double %x) #8
  ret double %call
}

declare double @__hc_fabs_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5fdimfEff(float %x, float %y) #1 {
  %call = tail call float @__hc_fdim(float %x, float %y) #8
  ret float %call
}

declare float @__hc_fdim(float, float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4fdimEDhDh(half %x, half %y) #1 {
  %call = tail call half @__hc_fdim_half(half %x, half %y) #8
  ret half %call
}

declare half @__hc_fdim_half(half, half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4fdimEff(float %x, float %y) #1 {
  %call.i = tail call float @__hc_fdim(float %x, float %y) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4fdimEdd(double %x, double %y) #1 {
  %call = tail call double @__hc_fdim_double(double %x, double %y) #8
  ret double %call
}

declare double @__hc_fdim_double(double, double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6floorfEf(float %x) #1 {
  %call = tail call float @__hc_floor(float %x) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5floorEDh(half %x) #1 {
  %call = tail call half @__hc_floor_half(half %x) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5floorEf(float %x) #1 {
  %call.i = tail call float @__hc_floor(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5floorEd(double %x) #1 {
  %call = tail call double @__hc_floor_double(double %x) #8
  ret double %call
}

declare double @__hc_floor_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4fmafEfff(float %x, float %y, float %z) #1 {
  %call = tail call float @__hc_fma(float %x, float %y, float %z) #8
  ret float %call
}

declare float @__hc_fma(float, float, float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math3fmaEDhDhDh(half %x, half %y, half %z) #1 {
  %call = tail call half @__hc_fma_half(half %x, half %y, half %z) #8
  ret half %call
}

declare half @__hc_fma_half(half, half, half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math3fmaEfff(float %x, float %y, float %z) #1 {
  %call.i = tail call float @__hc_fma(float %x, float %y, float %z) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math3fmaEddd(double %x, double %y, double %z) #1 {
  %call = tail call double @__hc_fma_double(double %x, double %y, double %z) #8
  ret double %call
}

declare double @__hc_fma_double(double, double, double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5fmaxfEff(float %x, float %y) #1 {
  %call = tail call float @__hc_fmax(float %x, float %y) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4fmaxEDhDh(half %x, half %y) #1 {
  %call = tail call half @__hc_fmax_half(half %x, half %y) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4fmaxEff(float %x, float %y) #1 {
  %call.i = tail call float @__hc_fmax(float %x, float %y) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4fmaxEdd(double %x, double %y) #1 {
  %call = tail call double @__hc_fmax_double(double %x, double %y) #8
  ret double %call
}

declare double @__hc_fmax_double(double, double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5fminfEff(float %x, float %y) #1 {
  %call = tail call float @__hc_fmin(float %x, float %y) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4fminEDhDh(half %x, half %y) #1 {
  %call = tail call half @__hc_fmin_half(half %x, half %y) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4fminEff(float %x, float %y) #1 {
  %call.i = tail call float @__hc_fmin(float %x, float %y) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4fminEdd(double %x, double %y) #1 {
  %call = tail call double @__hc_fmin_double(double %x, double %y) #8
  ret double %call
}

declare double @__hc_fmin_double(double, double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5fmodfEff(float %x, float %y) #1 {
  %call = tail call float @__hc_fmod(float %x, float %y) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4fmodEDhDh(half %x, half %y) #1 {
  %call = tail call half @__hc_fmod_half(half %x, half %y) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4fmodEff(float %x, float %y) #1 {
  %call.i = tail call float @__hc_fmod(float %x, float %y) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4fmodEdd(double %x, double %y) #1 {
  %call = tail call double @__hc_fmod_double(double %x, double %y) #8
  ret double %call
}

declare double @__hc_fmod_double(double, double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math10fpclassifyEDh(half %x) #1 {
  %call = tail call i32 @__hc_fpclassify_half(half %x) #8
  ret i32 %call
}

declare i32 @__hc_fpclassify_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math10fpclassifyEf(float %x) #1 {
  %call = tail call i32 @__hc_fpclassify(float %x) #8
  ret i32 %call
}

declare i32 @__hc_fpclassify(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math10fpclassifyEd(double %x) #1 {
  %call = tail call i32 @__hc_fpclassify_double(double %x) #8
  ret i32 %call
}

declare i32 @__hc_fpclassify_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6frexpfEfPi(float %x, i32* %exp) #1 {
  %call = tail call float @__hc_frexp(float %x, i32* %exp) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5frexpEDhPi(half %x, i32* %exp) #1 {
  %call = tail call half @__hc_frexp_half(half %x, i32* %exp) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5frexpEfPi(float %x, i32* %exp) #1 {
  %call.i = tail call float @__hc_frexp(float %x, i32* %exp) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5frexpEdPi(double %x, i32* %exp) #1 {
  %call = tail call double @__hc_frexp_double(double %x, i32* %exp) #8
  ret double %call
}

declare double @__hc_frexp_double(double, i32*) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6hypotfEff(float %x, float %y) #1 {
  %call = tail call float @__hc_hypot(float %x, float %y) #8
  ret float %call
}

declare float @__hc_hypot(float, float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5hypotEDhDh(half %x, half %y) #1 {
  %call = tail call half @__hc_hypot_half(half %x, half %y) #8
  ret half %call
}

declare half @__hc_hypot_half(half, half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5hypotEff(float %x, float %y) #1 {
  %call.i = tail call float @__hc_hypot(float %x, float %y) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5hypotEdd(double %x, double %y) #1 {
  %call = tail call double @__hc_hypot_double(double %x, double %y) #8
  ret double %call
}

declare double @__hc_hypot_double(double, double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math6ilogbfEf(float %x) #1 {
  %call = tail call i32 @__hc_ilogb(float %x) #8
  ret i32 %call
}

declare i32 @__hc_ilogb(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math5ilogbEDh(half %x) #1 {
  %call = tail call i32 @__hc_ilogb_half(half %x) #8
  ret i32 %call
}

declare i32 @__hc_ilogb_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math5ilogbEf(float %x) #1 {
  %call.i = tail call i32 @__hc_ilogb(float %x) #8
  ret i32 %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math5ilogbEd(double %x) #1 {
  %call = tail call i32 @__hc_ilogb_double(double %x) #8
  ret i32 %call
}

declare i32 @__hc_ilogb_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math8isfiniteEDh(half %x) #1 {
  %call = tail call i32 @__hc_isfinite_half(half %x) #8
  ret i32 %call
}

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math8isfiniteEf(float %x) #1 {
  %call = tail call i32 @__hc_isfinite(float %x) #8
  ret i32 %call
}

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math8isfiniteEd(double %x) #1 {
  %call = tail call i32 @__hc_isfinite_double(double %x) #8
  ret i32 %call
}

declare i32 @__hc_isfinite_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math5isinfEDh(half %x) #1 {
  %call = tail call i32 @__hc_isinf_half(half %x) #8
  ret i32 %call
}

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math5isinfEf(float %x) #1 {
  %call = tail call i32 @__hc_isinf(float %x) #8
  ret i32 %call
}

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math5isinfEd(double %x) #1 {
  %call = tail call i32 @__hc_isinf_double(double %x) #8
  ret i32 %call
}

declare i32 @__hc_isinf_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math5isnanEDh(half %x) #1 {
  %call = tail call i32 @__hc_isnan_half(half %x) #8
  ret i32 %call
}

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math5isnanEf(float %x) #1 {
  %call = tail call i32 @__hc_isnan(float %x) #8
  ret i32 %call
}

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math5isnanEd(double %x) #1 {
  %call = tail call i32 @__hc_isnan_double(double %x) #8
  ret i32 %call
}

declare i32 @__hc_isnan_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math8isnormalEDh(half %x) #1 {
  %call = tail call i32 @__hc_isnormal_half(half %x) #8
  ret i32 %call
}

declare i32 @__hc_isnormal_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math8isnormalEf(float %x) #1 {
  %call = tail call i32 @__hc_isnormal(float %x) #8
  ret i32 %call
}

declare i32 @__hc_isnormal(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math8isnormalEd(double %x) #1 {
  %call = tail call i32 @__hc_isnormal_double(double %x) #8
  ret i32 %call
}

declare i32 @__hc_isnormal_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6ldexpfEfi(float %x, i32 %exp) #1 {
  %call = tail call float @__hc_ldexp(float %x, i32 %exp) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5ldexpEDhs(half %x, i16 signext %e) #1 {
  %call = tail call half @__hc_ldexp_half(half %x, i16 signext %e) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5ldexpEfi(float %x, i32 %exp) #1 {
  %call.i = tail call float @__hc_ldexp(float %x, i32 %exp) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5ldexpEdi(double %x, i32 %exp) #1 {
  %call = tail call double @__hc_ldexp_double(double %x, i32 %exp) #8
  ret double %call
}

declare double @__hc_ldexp_double(double, i32) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math7lgammafEf(float %x) #1 {
  %call = tail call float @__hc_lgamma(float %x) #8
  ret float %call
}

declare float @__hc_lgamma(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math6lgammaEDh(half %x) #1 {
  %call = tail call half @__hc_lgamma_half(half %x) #8
  ret half %call
}

declare half @__hc_lgamma_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6lgammaEf(float %x) #1 {
  %call.i = tail call float @__hc_lgamma(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math6lgammaEd(double %x) #1 {
  %call = tail call double @__hc_lgamma_double(double %x) #8
  ret double %call
}

declare double @__hc_lgamma_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4logfEf(float %x) #1 {
  %call = tail call float @__hc_log(float %x) #8
  ret float %call
}

declare float @__hc_log(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math3logEDh(half %x) #1 {
  %call = tail call half @__hc_log_half(half %x) #8
  ret half %call
}

declare half @__hc_log_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math3logEf(float %x) #1 {
  %call.i = tail call float @__hc_log(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math3logEd(double %x) #1 {
  %call = tail call double @__hc_log_double(double %x) #8
  ret double %call
}

declare double @__hc_log_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6log10fEf(float %x) #1 {
  %call = tail call float @__hc_log10(float %x) #8
  ret float %call
}

declare float @__hc_log10(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5log10EDh(half %x) #1 {
  %call = tail call half @__hc_log10_half(half %x) #8
  ret half %call
}

declare half @__hc_log10_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5log10Ef(float %x) #1 {
  %call.i = tail call float @__hc_log10(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5log10Ed(double %x) #1 {
  %call = tail call double @__hc_log10_double(double %x) #8
  ret double %call
}

declare double @__hc_log10_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5log2fEf(float %x) #1 {
  %call = tail call float @__hc_log2(float %x) #8
  ret float %call
}

declare float @__hc_log2(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4log2EDh(half %x) #1 {
  %call = tail call half @__hc_log2_half(half %x) #8
  ret half %call
}

declare half @__hc_log2_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4log2Ef(float %x) #1 {
  %call.i = tail call float @__hc_log2(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4log2Ed(double %x) #1 {
  %call = tail call double @__hc_log2_double(double %x) #8
  ret double %call
}

declare double @__hc_log2_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6log1pfEf(float %x) #1 {
  %call = tail call float @__hc_log1p(float %x) #8
  ret float %call
}

declare float @__hc_log1p(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5log1pEDh(half %x) #1 {
  %call = tail call half @__hc_log1p_half(half %x) #8
  ret half %call
}

declare half @__hc_log1p_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5log1pEf(float %x) #1 {
  %call.i = tail call float @__hc_log1p(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5log1pEd(double %x) #1 {
  %conv = fptrunc double %x to float
  %call = tail call float @__hc_log1p(float %conv) #8
  %conv1 = fpext float %call to double
  ret double %conv1
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5logbfEf(float %x) #1 {
  %call = tail call float @__hc_logb(float %x) #8
  ret float %call
}

declare float @__hc_logb(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4logbEDh(half %x) #1 {
  %call = tail call half @__hc_logb_half(half %x) #8
  ret half %call
}

declare half @__hc_logb_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4logbEf(float %x) #1 {
  %call.i = tail call float @__hc_logb(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4logbEd(double %x) #1 {
  %call = tail call double @__hc_logb_double(double %x) #8
  ret double %call
}

declare double @__hc_logb_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5modffEfPf(float %x, float* %iptr) #1 {
  %call = tail call float @__hc_modf(float %x, float* %iptr) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4modfEDhPDh(half %x, half* %p) #1 {
  %call = tail call half @__hc_modf_half(half %x, half* %p) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4modfEfPf(float %x, float* %p) #1 {
  %call.i = tail call float @__hc_modf(float %x, float* %p) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4modfEdPd(double %x, double* %p) #1 {
  %call = tail call double @__hc_modf_double(double %x, double* %p) #8
  ret double %call
}

declare double @__hc_modf_double(double, double*) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4nanhEi(i32 %x) #1 {
  %call = tail call half @__hc_nan_half(i32 %x) #8
  ret half %call
}

declare half @__hc_nan_half(i32) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4nanfEi(i32 %tagp) #1 {
  %call = tail call float @__hc_nan(i32 %tagp) #8
  ret float %call
}

declare float @__hc_nan(i32) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math3nanEi(i32 %tagp) #1 {
  %conv = sext i32 %tagp to i64
  %call = tail call double @__hc_nan_double(i64 %conv) #8
  ret double %call
}

declare double @__hc_nan_double(i64) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math10nearbyintfEf(float %x) #1 {
  %call = tail call float @__hc_nearbyint(float %x) #8
  ret float %call
}

declare float @__hc_nearbyint(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math9nearbyintEDh(half %x) #1 {
  %call = tail call half @__hc_nearbyint_half(half %x) #8
  ret half %call
}

declare half @__hc_nearbyint_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math9nearbyintEf(float %x) #1 {
  %call.i = tail call float @__hc_nearbyint(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math9nearbyintEd(double %x) #1 {
  %call = tail call double @__hc_nearbyint_double(double %x) #8
  ret double %call
}

declare double @__hc_nearbyint_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math10nextafterfEff(float %x, float %y) #1 {
  %call = tail call float @__hc_nextafter(float %x, float %y) #8
  ret float %call
}

declare float @__hc_nextafter(float, float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math9nextafterEDhDh(half %x, half %y) #1 {
  %call = tail call half @__hc_nextafter_half(half %x, half %y) #8
  ret half %call
}

declare half @__hc_nextafter_half(half, half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math9nextafterEff(float %x, float %y) #1 {
  %call.i = tail call float @__hc_nextafter(float %x, float %y) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math9nextafterEdd(double %x, double %y) #1 {
  %call = tail call double @__hc_nextafter_double(double %x, double %y) #8
  ret double %call
}

declare double @__hc_nextafter_double(double, double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4powfEff(float %x, float %y) #1 {
  %call = tail call float @__hc_pow(float %x, float %y) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math3powEDhDh(half %x, half %y) #1 {
  %call = tail call half @__hc_pow_half(half %x, half %y) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math3powEff(float %x, float %y) #1 {
  %call.i = tail call float @__hc_pow(float %x, float %y) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math3powEdd(double %x, double %y) #1 {
  %call = tail call double @__hc_pow_double(double %x, double %y) #8
  ret double %call
}

declare double @__hc_pow_double(double, double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6rcbrtfEf(float %x) #1 {
  %call = tail call float @__hc_rcbrt(float %x) #8
  ret float %call
}

declare float @__hc_rcbrt(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5rcbrtEDh(half %x) #1 {
  %call = tail call half @__hc_rcbrt_half(half %x) #8
  ret half %call
}

declare half @__hc_rcbrt_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5rcbrtEf(float %x) #1 {
  %call.i = tail call float @__hc_rcbrt(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5rcbrtEd(double %x) #1 {
  %call = tail call double @__hc_rcbrt_double(double %x) #8
  ret double %call
}

declare double @__hc_rcbrt_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math10remainderfEff(float %x, float %y) #1 {
  %call = tail call float @__hc_remainder(float %x, float %y) #8
  ret float %call
}

declare float @__hc_remainder(float, float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math9remainderEDhDh(half %x, half %y) #1 {
  %call = tail call half @__hc_remainder_half(half %x, half %y) #8
  ret half %call
}

declare half @__hc_remainder_half(half, half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math9remainderEff(float %x, float %y) #1 {
  %call.i = tail call float @__hc_remainder(float %x, float %y) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math9remainderEdd(double %x, double %y) #1 {
  %call = tail call double @__hc_remainder_double(double %x, double %y) #8
  ret double %call
}

declare double @__hc_remainder_double(double, double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math7remquofEffPi(float %x, float %y, i32* %quo) #1 {
  %call = tail call float @__hc_remquo(float %x, float %y, i32* %quo) #8
  ret float %call
}

declare float @__hc_remquo(float, float, i32*) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math6remquoEDhDhPi(half %x, half %y, i32* %q) #1 {
  %call = tail call half @__hc_remquo_half(half %x, half %y, i32* %q) #8
  ret half %call
}

declare half @__hc_remquo_half(half, half, i32*) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6remquoEffPi(float %x, float %y, i32* %quo) #1 {
  %call.i = tail call float @__hc_remquo(float %x, float %y, i32* %quo) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math6remquoEddPi(double %x, double %y, i32* %quo) #1 {
  %call = tail call double @__hc_remquo_double(double %x, double %y, i32* %quo) #8
  ret double %call
}

declare double @__hc_remquo_double(double, double, i32*) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6roundfEf(float %x) #1 {
  %call = tail call float @__hc_round(float %x) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5roundEDh(half %x) #1 {
  %call = tail call half @__hc_round_half(half %x) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5roundEf(float %x) #1 {
  %call.i = tail call float @__hc_round(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5roundEd(double %x) #1 {
  %call = tail call double @__hc_round_double(double %x) #8
  ret double %call
}

declare double @__hc_round_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6rsqrtfEf(float %x) #1 {
  %call = tail call float @__hc_rsqrt(float %x) #8
  ret float %call
}

declare float @__hc_rsqrt(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5rsqrtEDh(half %x) #1 {
  %call = tail call half @__hc_rsqrt_half(half %x) #8
  ret half %call
}

declare half @__hc_rsqrt_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5rsqrtEf(float %x) #1 {
  %call.i = tail call float @__hc_rsqrt(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5rsqrtEd(double %x) #1 {
  %call = tail call double @__hc_rsqrt_double(double %x) #8
  ret double %call
}

declare double @__hc_rsqrt_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6sinpifEf(float %x) #1 {
  %call = tail call float @__hc_sinpi(float %x) #8
  ret float %call
}

declare float @__hc_sinpi(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5sinpiEDh(half %x) #1 {
  %call = tail call half @__hc_sinpi_half(half %x) #8
  ret half %call
}

declare half @__hc_sinpi_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5sinpiEf(float %x) #1 {
  %call.i = tail call float @__hc_sinpi(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5sinpiEd(double %x) #1 {
  %call = tail call double @__hc_sinpi_double(double %x) #8
  ret double %call
}

declare double @__hc_sinpi_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6scalbfEff(float %x, float %exp) #1 {
  %call = tail call float @__hc_scalb(float %x, float %exp) #8
  ret float %call
}

declare float @__hc_scalb(float, float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5scalbEDhDh(half %x, half %y) #1 {
  %call = tail call half @__hc_scalb_half(half %x, half %y) #8
  ret half %call
}

declare half @__hc_scalb_half(half, half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5scalbEff(float %x, float %exp) #1 {
  %call.i = tail call float @__hc_scalb(float %x, float %exp) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5scalbEdd(double %x, double %exp) #1 {
  %call = tail call double @__hc_scalb_double(double %x, double %exp) #8
  ret double %call
}

declare double @__hc_scalb_double(double, double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math7scalbnfEfi(float %x, i32 %exp) #1 {
  %call = tail call float @__hc_scalbn(float %x, i32 %exp) #8
  ret float %call
}

declare float @__hc_scalbn(float, i32) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math6scalbnEDhi(half %x, i32 %e) #1 {
  %call = tail call half @__hc_scalbn_half(half %x, i32 %e) #8
  ret half %call
}

declare half @__hc_scalbn_half(half, i32) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6scalbnEfi(float %x, i32 %exp) #1 {
  %call.i = tail call float @__hc_scalbn(float %x, i32 %exp) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math6scalbnEdi(double %x, i32 %exp) #1 {
  %call = tail call double @__hc_scalbn_double(double %x, i32 %exp) #8
  ret double %call
}

declare double @__hc_scalbn_double(double, i32) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math8signbitfEf(float %x) #1 {
  %call = tail call i32 @__hc_signbit(float %x) #8
  ret i32 %call
}

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math7signbitEDh(half %x) #1 {
  %call = tail call i32 @__hc_signbit_half(half %x) #8
  ret i32 %call
}

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math7signbitEf(float %x) #1 {
  %call.i = tail call i32 @__hc_signbit(float %x) #8
  ret i32 %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr i32 @_ZN6Kalmar12precise_math7signbitEd(double %x) #1 {
  %call = tail call i32 @__hc_signbit_double(double %x) #8
  ret i32 %call
}

declare i32 @__hc_signbit_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4sinfEf(float %x) #1 {
  %call = tail call float @__hc_sin(float %x) #8
  ret float %call
}

declare float @__hc_sin(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math3sinEDh(half %x) #1 {
  %call = tail call half @__hc_sin_half(half %x) #8
  ret half %call
}

declare half @__hc_sin_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math3sinEf(float %x) #1 {
  %call.i = tail call float @__hc_sin(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math3sinEd(double %x) #1 {
  %call = tail call double @__hc_sin_double(double %x) #8
  ret double %call
}

declare double @__hc_sin_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr void @_ZN6Kalmar12precise_math7sincosfEfPfS1_(float %x, float* %s, float* %c) #1 {
  %call = tail call float @__hc_sincos(float %x, float* %c) #8
  store float %call, float* %s, align 4, !tbaa !12
  ret void
}

; Function Attrs: alwaysinline
define linkonce_odr void @_ZN6Kalmar12precise_math6sincosEDhPDhS1_(half %x, half* %s, half* %c) #1 {
  %call = tail call half @__hc_sincos_half(half %x, half* %c) #8
  store half %call, half* %s, align 2, !tbaa !14
  ret void
}

; Function Attrs: alwaysinline
define linkonce_odr void @_ZN6Kalmar12precise_math6sincosEfPfS1_(float %x, float* %s, float* %c) #1 {
  %call.i = tail call float @__hc_sincos(float %x, float* %c) #8
  store float %call.i, float* %s, align 4, !tbaa !12
  ret void
}

; Function Attrs: alwaysinline
define linkonce_odr void @_ZN6Kalmar12precise_math6sincosEdPdS1_(double %x, double* %s, double* %c) #1 {
  %call = tail call double @__hc_sincos_double(double %x, double* %c) #8
  store double %call, double* %s, align 8, !tbaa !16
  ret void
}

declare double @__hc_sincos_double(double, double*) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5sinhfEf(float %x) #1 {
  %call = tail call float @__hc_sinh(float %x) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4sinhEDh(half %x) #1 {
  %call = tail call half @__hc_sinh_half(half %x) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4sinhEf(float %x) #1 {
  %call.i = tail call float @__hc_sinh(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4sinhEd(double %x) #1 {
  %call = tail call double @__hc_sinh_double(double %x) #8
  ret double %call
}

declare double @__hc_sinh_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5sqrtfEf(float %x) #1 {
  %call = tail call float @__hc_sqrt(float %x) #8
  ret float %call
}

declare float @__hc_sqrt(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4sqrtEDh(half %x) #1 {
  %call = tail call half @__hc_sqrt_half(half %x) #8
  ret half %call
}

declare half @__hc_sqrt_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4sqrtEf(float %x) #1 {
  %call.i = tail call float @__hc_sqrt(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4sqrtEd(double %x) #1 {
  %call = tail call double @__hc_sqrt_double(double %x) #8
  ret double %call
}

declare double @__hc_sqrt_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math7tgammafEf(float %x) #1 {
  %call = tail call float @__hc_tgamma(float %x) #8
  ret float %call
}

declare float @__hc_tgamma(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math6tgammaEDh(half %x) #1 {
  %call = tail call half @__hc_tgamma_half(half %x) #8
  ret half %call
}

declare half @__hc_tgamma_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6tgammaEf(float %x) #1 {
  %call.i = tail call float @__hc_tgamma(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math6tgammaEd(double %x) #1 {
  %call = tail call double @__hc_tgamma_double(double %x) #8
  ret double %call
}

declare double @__hc_tgamma_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4tanfEf(float %x) #1 {
  %call = tail call float @__hc_tan(float %x) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math3tanEDh(half %x) #1 {
  %call = tail call half @__hc_tan_half(half %x) #8
  ret half %call
}

declare half @__hc_tan_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math3tanEf(float %x) #1 {
  %call.i = tail call float @__hc_tan(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math3tanEd(double %x) #1 {
  %call = tail call double @__hc_tan_double(double %x) #8
  ret double %call
}

declare double @__hc_tan_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5tanhfEf(float %x) #1 {
  %call = tail call float @__hc_tanh(float %x) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math4tanhEDh(half %x) #1 {
  %call = tail call half @__hc_tanh_half(half %x) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math4tanhEf(float %x) #1 {
  %call.i = tail call float @__hc_tanh(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math4tanhEd(double %x) #1 {
  %conv = fptrunc double %x to float
  %call = tail call float @__hc_tanh(float %conv) #8
  %conv1 = fpext float %call to double
  ret double %conv1
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6tanpifEf(float %x) #1 {
  %call = tail call float @__hc_tanpi(float %x) #8
  ret float %call
}

declare float @__hc_tanpi(float) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5tanpiEDh(half %x) #1 {
  %call = tail call half @__hc_tanpi_half(half %x) #8
  ret half %call
}

declare half @__hc_tanpi_half(half) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5tanpiEf(float %x) #1 {
  %call.i = tail call float @__hc_tanpi(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5tanpiEd(double %x) #1 {
  %call = tail call double @__hc_tanpi_double(double %x) #8
  ret double %call
}

declare double @__hc_tanpi_double(double) local_unnamed_addr #2

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math6truncfEf(float %x) #1 {
  %call = tail call float @__hc_trunc(float %x) #8
  ret float %call
}

; Function Attrs: alwaysinline
define linkonce_odr half @_ZN6Kalmar12precise_math5truncEDh(half %x) #1 {
  %call = tail call half @__hc_trunc_half(half %x) #8
  ret half %call
}

; Function Attrs: alwaysinline
define linkonce_odr float @_ZN6Kalmar12precise_math5truncEf(float %x) #1 {
  %call.i = tail call float @__hc_trunc(float %x) #8
  ret float %call.i
}

; Function Attrs: alwaysinline
define linkonce_odr double @_ZN6Kalmar12precise_math5truncEd(double %x) #1 {
  %call = tail call double @__hc_trunc_double(double %x) #8
  ret double %call
}

declare double @__hc_trunc_double(double) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @amp_get_global_id(i32) local_unnamed_addr #3

; Function Attrs: noinline readnone
define internal void @"_ZN2hc17parallel_for_eachIZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPDhS5_S5_EEEvNS1_12_GLOBAL__N_119New_grid_launch_tagE4dim3S8_iRKNS_16accelerator_viewET_DpOT0_EUlRKNS_11tiled_indexILi3EEEE_EENS_17completion_futureESB_RKNS_12tiled_extentILi3EEERKSC_"(%"class.hc::completion_future"* noalias nocapture readnone sret %agg.result, %"class.hc::accelerator_view"* nocapture readnone dereferenceable(16) %av, %"class.hc::tiled_extent"* nocapture readnone dereferenceable(40) %compute_domain, %class.anon* nocapture readnone dereferenceable(32) %f) #4 {
  ret void
}

define weak_odr amdgpu_kernel void @"_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPDhS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_"(half*, half*, half*) local_unnamed_addr #5 align 2 {
  %4 = bitcast half* %0 to <2 x half>*
  %5 = bitcast half* %1 to <2 x half>*
  %6 = bitcast half* %2 to <2 x half>*
  %call.i.i.i = tail call i64 @hc_get_workitem_id(i32 0) #7
  %conv.i.i.i = trunc i64 %call.i.i.i to i32
  %call1.i.i.i = tail call i64 @hc_get_workitem_id(i32 1) #7
  %conv2.i.i.i = trunc i64 %call1.i.i.i to i32
  %call3.i.i.i = tail call i64 @hc_get_group_id(i32 0) #7
  %conv4.i.i.i = trunc i64 %call3.i.i.i to i32
  %call5.i.i.i = tail call i64 @hc_get_group_id(i32 1) #7
  %conv6.i.i.i = trunc i64 %call5.i.i.i to i32
  %mul.i.i.i = shl nsw i32 %conv2.i.i.i, 1
  %mul7.i.i.i = shl nsw i32 %conv6.i.i.i, 5
  %add.i.i.i = add nsw i32 %mul7.i.i.i, %mul.i.i.i
  %add9.i.i.i = or i32 %mul.i.i.i, 1
  %add11.i.i.i = add nsw i32 %mul7.i.i.i, %add9.i.i.i
  %mul12.i.i.i = shl nsw i32 %conv4.i.i.i, 4
  %add13.i.i.i = add nsw i32 %mul12.i.i.i, %conv.i.i.i
  %mul17.i.i.i = shl i32 %add.i.i.i, 9
  %arrayidx24157.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 %conv.i.i.i
  %7 = bitcast <2 x half> addrspace(3)* %arrayidx24157.i.i.i to i32 addrspace(3)*
  %8 = addrspacecast i32 addrspace(3)* %7 to i32*
  %mul25.i.i.i = shl i32 %add11.i.i.i, 9
  %arrayidx34159.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 %conv.i.i.i
  %9 = bitcast <2 x half> addrspace(3)* %arrayidx34159.i.i.i to i32 addrspace(3)*
  %10 = addrspacecast i32 addrspace(3)* %9 to i32*
  %arrayidx44161.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 %mul.i.i.i, i32 %conv.i.i.i
  %11 = bitcast <2 x half> addrspace(3)* %arrayidx44161.i.i.i to i32 addrspace(3)*
  %12 = addrspacecast i32 addrspace(3)* %11 to i32*
  %arrayidx54163.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 %add9.i.i.i, i32 %conv.i.i.i
  %13 = bitcast <2 x half> addrspace(3)* %arrayidx54163.i.i.i to i32 addrspace(3)*
  %14 = addrspacecast i32 addrspace(3)* %13 to i32*
  %mul91.i.i.i = shl i32 %add.i.i.i, 4
  %add92.i.i.i = add nsw i32 %mul91.i.i.i, %add13.i.i.i
  %idxprom93.i.i.i = sext i32 %add92.i.i.i to i64
  %arrayidx94.i.i.i = getelementptr inbounds <2 x half>, <2 x half>* %4, i64 %idxprom93.i.i.i
  %mul95.i.i.i = shl i32 %add11.i.i.i, 4
  %add96.i.i.i = add nsw i32 %mul95.i.i.i, %add13.i.i.i
  %idxprom97.i.i.i = sext i32 %add96.i.i.i to i64
  %arrayidx98.i.i.i = getelementptr inbounds <2 x half>, <2 x half>* %4, i64 %idxprom97.i.i.i
  %arrayidx59164.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 0
  %arrayidx59.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.i.i.i to <2 x half>*
  %arrayidx63165.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 0
  %arrayidx63.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.i.i.i to <2 x half>*
  %arrayidx68167.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 0, i32 %conv.i.i.i
  %arrayidx68.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.i.i.i to <2 x half>*
  %arrayidx74169.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 1, i32 %conv.i.i.i
  %arrayidx74.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.i.i.i to <2 x half>*
  %arrayidx59164.1.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 1
  %arrayidx59.1.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.1.i.i.i to <2 x half>*
  %arrayidx63165.1.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 1
  %arrayidx63.1.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.1.i.i.i to <2 x half>*
  %arrayidx68167.1.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 2, i32 %conv.i.i.i
  %arrayidx68.1.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.1.i.i.i to <2 x half>*
  %arrayidx74169.1.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 3, i32 %conv.i.i.i
  %arrayidx74.1.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.1.i.i.i to <2 x half>*
  %arrayidx59164.2.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 2
  %arrayidx59.2.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.2.i.i.i to <2 x half>*
  %arrayidx63165.2.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 2
  %arrayidx63.2.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.2.i.i.i to <2 x half>*
  %arrayidx68167.2.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 4, i32 %conv.i.i.i
  %arrayidx68.2.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.2.i.i.i to <2 x half>*
  %arrayidx74169.2.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 5, i32 %conv.i.i.i
  %arrayidx74.2.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.2.i.i.i to <2 x half>*
  %arrayidx59164.3.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 3
  %arrayidx59.3.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.3.i.i.i to <2 x half>*
  %arrayidx63165.3.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 3
  %arrayidx63.3.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.3.i.i.i to <2 x half>*
  %arrayidx68167.3.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 6, i32 %conv.i.i.i
  %arrayidx68.3.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.3.i.i.i to <2 x half>*
  %arrayidx74169.3.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 7, i32 %conv.i.i.i
  %arrayidx74.3.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.3.i.i.i to <2 x half>*
  %arrayidx59164.4.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 4
  %arrayidx59.4.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.4.i.i.i to <2 x half>*
  %arrayidx63165.4.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 4
  %arrayidx63.4.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.4.i.i.i to <2 x half>*
  %arrayidx68167.4.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 8, i32 %conv.i.i.i
  %arrayidx68.4.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.4.i.i.i to <2 x half>*
  %arrayidx74169.4.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 9, i32 %conv.i.i.i
  %arrayidx74.4.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.4.i.i.i to <2 x half>*
  %arrayidx59164.5.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 5
  %arrayidx59.5.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.5.i.i.i to <2 x half>*
  %arrayidx63165.5.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 5
  %arrayidx63.5.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.5.i.i.i to <2 x half>*
  %arrayidx68167.5.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 10, i32 %conv.i.i.i
  %arrayidx68.5.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.5.i.i.i to <2 x half>*
  %arrayidx74169.5.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 11, i32 %conv.i.i.i
  %arrayidx74.5.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.5.i.i.i to <2 x half>*
  %arrayidx59164.6.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 6
  %arrayidx59.6.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.6.i.i.i to <2 x half>*
  %arrayidx63165.6.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 6
  %arrayidx63.6.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.6.i.i.i to <2 x half>*
  %arrayidx68167.6.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 12, i32 %conv.i.i.i
  %arrayidx68.6.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.6.i.i.i to <2 x half>*
  %arrayidx74169.6.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 13, i32 %conv.i.i.i
  %arrayidx74.6.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.6.i.i.i to <2 x half>*
  %arrayidx59164.7.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 7
  %arrayidx59.7.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.7.i.i.i to <2 x half>*
  %arrayidx63165.7.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 7
  %arrayidx63.7.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.7.i.i.i to <2 x half>*
  %arrayidx68167.7.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 14, i32 %conv.i.i.i
  %arrayidx68.7.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.7.i.i.i to <2 x half>*
  %arrayidx74169.7.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 15, i32 %conv.i.i.i
  %arrayidx74.7.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.7.i.i.i to <2 x half>*
  %arrayidx59164.8.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 8
  %arrayidx59.8.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.8.i.i.i to <2 x half>*
  %arrayidx63165.8.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 8
  %arrayidx63.8.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.8.i.i.i to <2 x half>*
  %arrayidx68167.8.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 16, i32 %conv.i.i.i
  %arrayidx68.8.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.8.i.i.i to <2 x half>*
  %arrayidx74169.8.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 17, i32 %conv.i.i.i
  %arrayidx74.8.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.8.i.i.i to <2 x half>*
  %arrayidx59164.9.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 9
  %arrayidx59.9.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.9.i.i.i to <2 x half>*
  %arrayidx63165.9.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 9
  %arrayidx63.9.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.9.i.i.i to <2 x half>*
  %arrayidx68167.9.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 18, i32 %conv.i.i.i
  %arrayidx68.9.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.9.i.i.i to <2 x half>*
  %arrayidx74169.9.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 19, i32 %conv.i.i.i
  %arrayidx74.9.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.9.i.i.i to <2 x half>*
  %arrayidx59164.10.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 10
  %arrayidx59.10.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.10.i.i.i to <2 x half>*
  %arrayidx63165.10.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 10
  %arrayidx63.10.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.10.i.i.i to <2 x half>*
  %arrayidx68167.10.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 20, i32 %conv.i.i.i
  %arrayidx68.10.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.10.i.i.i to <2 x half>*
  %arrayidx74169.10.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 21, i32 %conv.i.i.i
  %arrayidx74.10.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.10.i.i.i to <2 x half>*
  %arrayidx59164.11.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 11
  %arrayidx59.11.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.11.i.i.i to <2 x half>*
  %arrayidx63165.11.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 11
  %arrayidx63.11.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.11.i.i.i to <2 x half>*
  %arrayidx68167.11.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 22, i32 %conv.i.i.i
  %arrayidx68.11.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.11.i.i.i to <2 x half>*
  %arrayidx74169.11.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 23, i32 %conv.i.i.i
  %arrayidx74.11.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.11.i.i.i to <2 x half>*
  %arrayidx59164.12.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 12
  %arrayidx59.12.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.12.i.i.i to <2 x half>*
  %arrayidx63165.12.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 12
  %arrayidx63.12.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.12.i.i.i to <2 x half>*
  %arrayidx68167.12.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 24, i32 %conv.i.i.i
  %arrayidx68.12.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.12.i.i.i to <2 x half>*
  %arrayidx74169.12.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 25, i32 %conv.i.i.i
  %arrayidx74.12.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.12.i.i.i to <2 x half>*
  %arrayidx59164.13.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 13
  %arrayidx59.13.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.13.i.i.i to <2 x half>*
  %arrayidx63165.13.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 13
  %arrayidx63.13.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.13.i.i.i to <2 x half>*
  %arrayidx68167.13.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 26, i32 %conv.i.i.i
  %arrayidx68.13.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.13.i.i.i to <2 x half>*
  %arrayidx74169.13.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 27, i32 %conv.i.i.i
  %arrayidx74.13.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.13.i.i.i to <2 x half>*
  %arrayidx59164.14.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 14
  %arrayidx59.14.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.14.i.i.i to <2 x half>*
  %arrayidx63165.14.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 14
  %arrayidx63.14.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.14.i.i.i to <2 x half>*
  %arrayidx68167.14.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 28, i32 %conv.i.i.i
  %arrayidx68.14.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.14.i.i.i to <2 x half>*
  %arrayidx74169.14.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 29, i32 %conv.i.i.i
  %arrayidx74.14.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.14.i.i.i to <2 x half>*
  %arrayidx59164.15.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul.i.i.i, i32 15
  %arrayidx59.15.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.15.i.i.i to <2 x half>*
  %arrayidx63165.15.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9.i.i.i, i32 15
  %arrayidx63.15.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.15.i.i.i to <2 x half>*
  %arrayidx68167.15.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 30, i32 %conv.i.i.i
  %arrayidx68.15.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.15.i.i.i to <2 x half>*
  %arrayidx74169.15.i.i.i = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 31, i32 %conv.i.i.i
  %arrayidx74.15.i.i.i = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.15.i.i.i to <2 x half>*
  br label %15

; <label>:15:                                     ; preds = %15, %3
  %c0.0176.i.i.i = phi <2 x half> [ zeroinitializer, %3 ], [ %219, %15 ]
  %c1.0175.i.i.i = phi <2 x half> [ zeroinitializer, %3 ], [ %223, %15 ]
  %j.0174.i.i.i = phi i32 [ 0, %3 ], [ %inc99.i.i.i, %15 ]
  %mul18.i.i.i = shl nsw i32 %j.0174.i.i.i, 4
  %add19.i.i.i = add nsw i32 %mul18.i.i.i, %conv.i.i.i
  %add20.i.i.i = add nsw i32 %add19.i.i.i, %mul17.i.i.i
  %idxprom.i.i.i = sext i32 %add20.i.i.i to i64
  %arrayidx.i.i.i = getelementptr inbounds <2 x half>, <2 x half>* %5, i64 %idxprom.i.i.i
  %16 = bitcast <2 x half>* %arrayidx.i.i.i to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !18
  store i32 %17, i32* %8, align 4, !tbaa !18
  %add28.i.i.i = add nsw i32 %add19.i.i.i, %mul25.i.i.i
  %idxprom29.i.i.i = sext i32 %add28.i.i.i to i64
  %arrayidx30.i.i.i = getelementptr inbounds <2 x half>, <2 x half>* %5, i64 %idxprom29.i.i.i
  %18 = bitcast <2 x half>* %arrayidx30.i.i.i to i32*
  %19 = load i32, i32* %18, align 4, !tbaa !18
  store i32 %19, i32* %10, align 4, !tbaa !18
  %add36.i.i.i = add nsw i32 %mul18.i.i.i, %mul.i.i.i
  %mul37.i.i.i = shl i32 %add36.i.i.i, 9
  %add38.i.i.i = add nsw i32 %mul37.i.i.i, %add13.i.i.i
  %idxprom39.i.i.i = sext i32 %add38.i.i.i to i64
  %arrayidx40.i.i.i = getelementptr inbounds <2 x half>, <2 x half>* %6, i64 %idxprom39.i.i.i
  %20 = bitcast <2 x half>* %arrayidx40.i.i.i to i32*
  %21 = load i32, i32* %20, align 4, !tbaa !18
  store i32 %21, i32* %12, align 4, !tbaa !18
  %add46.i.i.i = add nsw i32 %mul18.i.i.i, %add9.i.i.i
  %mul47.i.i.i = shl i32 %add46.i.i.i, 9
  %add48.i.i.i = add nsw i32 %mul47.i.i.i, %add13.i.i.i
  %idxprom49.i.i.i = sext i32 %add48.i.i.i to i64
  %arrayidx50.i.i.i = getelementptr inbounds <2 x half>, <2 x half>* %6, i64 %idxprom49.i.i.i
  %22 = bitcast <2 x half>* %arrayidx50.i.i.i to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !18
  store i32 %23, i32* %14, align 4, !tbaa !18
  tail call void @hc_barrier(i32 1) #9
  %24 = load <2 x half>, <2 x half>* %arrayidx59.i.i.i, align 4, !tbaa !18
  %25 = load <2 x half>, <2 x half>* %arrayidx63.i.i.i, align 4, !tbaa !18
  %26 = load <2 x half>, <2 x half>* %arrayidx68.i.i.i, align 4, !tbaa !18
  %27 = load <2 x half>, <2 x half>* %arrayidx74.i.i.i, align 4, !tbaa !18
  %28 = extractelement <2 x half> %c0.0176.i.i.i, i64 0
  %29 = extractelement <2 x half> %24, i64 0
  %30 = extractelement <2 x half> %26, i64 0
  %mul75.i.i.i = fmul half %29, %30
  %add76.i.i.i = fadd half %28, %mul75.i.i.i
  %31 = extractelement <2 x half> %24, i64 1
  %32 = extractelement <2 x half> %27, i64 0
  %mul77.i.i.i = fmul half %31, %32
  %add78.i.i.i = fadd half %add76.i.i.i, %mul77.i.i.i
  %33 = extractelement <2 x half> %c0.0176.i.i.i, i64 1
  %34 = extractelement <2 x half> %26, i64 1
  %mul79.i.i.i = fmul half %29, %34
  %add80.i.i.i = fadd half %33, %mul79.i.i.i
  %35 = extractelement <2 x half> %27, i64 1
  %mul81.i.i.i = fmul half %31, %35
  %add82.i.i.i = fadd half %add80.i.i.i, %mul81.i.i.i
  %36 = extractelement <2 x half> %c1.0175.i.i.i, i64 0
  %37 = extractelement <2 x half> %25, i64 0
  %mul83.i.i.i = fmul half %37, %30
  %add84.i.i.i = fadd half %36, %mul83.i.i.i
  %38 = extractelement <2 x half> %25, i64 1
  %mul85.i.i.i = fmul half %38, %32
  %add86.i.i.i = fadd half %add84.i.i.i, %mul85.i.i.i
  %39 = extractelement <2 x half> %c1.0175.i.i.i, i64 1
  %mul87.i.i.i = fmul half %37, %34
  %add88.i.i.i = fadd half %39, %mul87.i.i.i
  %mul89.i.i.i = fmul half %38, %35
  %add90.i.i.i = fadd half %add88.i.i.i, %mul89.i.i.i
  %40 = load <2 x half>, <2 x half>* %arrayidx59.1.i.i.i, align 4, !tbaa !18
  %41 = load <2 x half>, <2 x half>* %arrayidx63.1.i.i.i, align 4, !tbaa !18
  %42 = load <2 x half>, <2 x half>* %arrayidx68.1.i.i.i, align 4, !tbaa !18
  %43 = load <2 x half>, <2 x half>* %arrayidx74.1.i.i.i, align 4, !tbaa !18
  %44 = extractelement <2 x half> %40, i64 0
  %45 = extractelement <2 x half> %42, i64 0
  %mul75.1.i.i.i = fmul half %44, %45
  %add76.1.i.i.i = fadd half %add78.i.i.i, %mul75.1.i.i.i
  %46 = extractelement <2 x half> %40, i64 1
  %47 = extractelement <2 x half> %43, i64 0
  %mul77.1.i.i.i = fmul half %46, %47
  %add78.1.i.i.i = fadd half %add76.1.i.i.i, %mul77.1.i.i.i
  %48 = extractelement <2 x half> %42, i64 1
  %mul79.1.i.i.i = fmul half %44, %48
  %add80.1.i.i.i = fadd half %add82.i.i.i, %mul79.1.i.i.i
  %49 = extractelement <2 x half> %43, i64 1
  %mul81.1.i.i.i = fmul half %46, %49
  %add82.1.i.i.i = fadd half %add80.1.i.i.i, %mul81.1.i.i.i
  %50 = extractelement <2 x half> %41, i64 0
  %mul83.1.i.i.i = fmul half %50, %45
  %add84.1.i.i.i = fadd half %add86.i.i.i, %mul83.1.i.i.i
  %51 = extractelement <2 x half> %41, i64 1
  %mul85.1.i.i.i = fmul half %51, %47
  %add86.1.i.i.i = fadd half %add84.1.i.i.i, %mul85.1.i.i.i
  %mul87.1.i.i.i = fmul half %50, %48
  %add88.1.i.i.i = fadd half %add90.i.i.i, %mul87.1.i.i.i
  %mul89.1.i.i.i = fmul half %51, %49
  %add90.1.i.i.i = fadd half %add88.1.i.i.i, %mul89.1.i.i.i
  %52 = load <2 x half>, <2 x half>* %arrayidx59.2.i.i.i, align 4, !tbaa !18
  %53 = load <2 x half>, <2 x half>* %arrayidx63.2.i.i.i, align 4, !tbaa !18
  %54 = load <2 x half>, <2 x half>* %arrayidx68.2.i.i.i, align 4, !tbaa !18
  %55 = load <2 x half>, <2 x half>* %arrayidx74.2.i.i.i, align 4, !tbaa !18
  %56 = extractelement <2 x half> %52, i64 0
  %57 = extractelement <2 x half> %54, i64 0
  %mul75.2.i.i.i = fmul half %56, %57
  %add76.2.i.i.i = fadd half %add78.1.i.i.i, %mul75.2.i.i.i
  %58 = extractelement <2 x half> %52, i64 1
  %59 = extractelement <2 x half> %55, i64 0
  %mul77.2.i.i.i = fmul half %58, %59
  %add78.2.i.i.i = fadd half %add76.2.i.i.i, %mul77.2.i.i.i
  %60 = extractelement <2 x half> %54, i64 1
  %mul79.2.i.i.i = fmul half %56, %60
  %add80.2.i.i.i = fadd half %add82.1.i.i.i, %mul79.2.i.i.i
  %61 = extractelement <2 x half> %55, i64 1
  %mul81.2.i.i.i = fmul half %58, %61
  %add82.2.i.i.i = fadd half %add80.2.i.i.i, %mul81.2.i.i.i
  %62 = extractelement <2 x half> %53, i64 0
  %mul83.2.i.i.i = fmul half %62, %57
  %add84.2.i.i.i = fadd half %add86.1.i.i.i, %mul83.2.i.i.i
  %63 = extractelement <2 x half> %53, i64 1
  %mul85.2.i.i.i = fmul half %63, %59
  %add86.2.i.i.i = fadd half %add84.2.i.i.i, %mul85.2.i.i.i
  %mul87.2.i.i.i = fmul half %62, %60
  %add88.2.i.i.i = fadd half %add90.1.i.i.i, %mul87.2.i.i.i
  %mul89.2.i.i.i = fmul half %63, %61
  %add90.2.i.i.i = fadd half %add88.2.i.i.i, %mul89.2.i.i.i
  %64 = load <2 x half>, <2 x half>* %arrayidx59.3.i.i.i, align 4, !tbaa !18
  %65 = load <2 x half>, <2 x half>* %arrayidx63.3.i.i.i, align 4, !tbaa !18
  %66 = load <2 x half>, <2 x half>* %arrayidx68.3.i.i.i, align 4, !tbaa !18
  %67 = load <2 x half>, <2 x half>* %arrayidx74.3.i.i.i, align 4, !tbaa !18
  %68 = extractelement <2 x half> %64, i64 0
  %69 = extractelement <2 x half> %66, i64 0
  %mul75.3.i.i.i = fmul half %68, %69
  %add76.3.i.i.i = fadd half %add78.2.i.i.i, %mul75.3.i.i.i
  %70 = extractelement <2 x half> %64, i64 1
  %71 = extractelement <2 x half> %67, i64 0
  %mul77.3.i.i.i = fmul half %70, %71
  %add78.3.i.i.i = fadd half %add76.3.i.i.i, %mul77.3.i.i.i
  %72 = extractelement <2 x half> %66, i64 1
  %mul79.3.i.i.i = fmul half %68, %72
  %add80.3.i.i.i = fadd half %add82.2.i.i.i, %mul79.3.i.i.i
  %73 = extractelement <2 x half> %67, i64 1
  %mul81.3.i.i.i = fmul half %70, %73
  %add82.3.i.i.i = fadd half %add80.3.i.i.i, %mul81.3.i.i.i
  %74 = extractelement <2 x half> %65, i64 0
  %mul83.3.i.i.i = fmul half %74, %69
  %add84.3.i.i.i = fadd half %add86.2.i.i.i, %mul83.3.i.i.i
  %75 = extractelement <2 x half> %65, i64 1
  %mul85.3.i.i.i = fmul half %75, %71
  %add86.3.i.i.i = fadd half %add84.3.i.i.i, %mul85.3.i.i.i
  %mul87.3.i.i.i = fmul half %74, %72
  %add88.3.i.i.i = fadd half %add90.2.i.i.i, %mul87.3.i.i.i
  %mul89.3.i.i.i = fmul half %75, %73
  %add90.3.i.i.i = fadd half %add88.3.i.i.i, %mul89.3.i.i.i
  %76 = load <2 x half>, <2 x half>* %arrayidx59.4.i.i.i, align 4, !tbaa !18
  %77 = load <2 x half>, <2 x half>* %arrayidx63.4.i.i.i, align 4, !tbaa !18
  %78 = load <2 x half>, <2 x half>* %arrayidx68.4.i.i.i, align 4, !tbaa !18
  %79 = load <2 x half>, <2 x half>* %arrayidx74.4.i.i.i, align 4, !tbaa !18
  %80 = extractelement <2 x half> %76, i64 0
  %81 = extractelement <2 x half> %78, i64 0
  %mul75.4.i.i.i = fmul half %80, %81
  %add76.4.i.i.i = fadd half %add78.3.i.i.i, %mul75.4.i.i.i
  %82 = extractelement <2 x half> %76, i64 1
  %83 = extractelement <2 x half> %79, i64 0
  %mul77.4.i.i.i = fmul half %82, %83
  %add78.4.i.i.i = fadd half %add76.4.i.i.i, %mul77.4.i.i.i
  %84 = extractelement <2 x half> %78, i64 1
  %mul79.4.i.i.i = fmul half %80, %84
  %add80.4.i.i.i = fadd half %add82.3.i.i.i, %mul79.4.i.i.i
  %85 = extractelement <2 x half> %79, i64 1
  %mul81.4.i.i.i = fmul half %82, %85
  %add82.4.i.i.i = fadd half %add80.4.i.i.i, %mul81.4.i.i.i
  %86 = extractelement <2 x half> %77, i64 0
  %mul83.4.i.i.i = fmul half %86, %81
  %add84.4.i.i.i = fadd half %add86.3.i.i.i, %mul83.4.i.i.i
  %87 = extractelement <2 x half> %77, i64 1
  %mul85.4.i.i.i = fmul half %87, %83
  %add86.4.i.i.i = fadd half %add84.4.i.i.i, %mul85.4.i.i.i
  %mul87.4.i.i.i = fmul half %86, %84
  %add88.4.i.i.i = fadd half %add90.3.i.i.i, %mul87.4.i.i.i
  %mul89.4.i.i.i = fmul half %87, %85
  %add90.4.i.i.i = fadd half %add88.4.i.i.i, %mul89.4.i.i.i
  %88 = load <2 x half>, <2 x half>* %arrayidx59.5.i.i.i, align 4, !tbaa !18
  %89 = load <2 x half>, <2 x half>* %arrayidx63.5.i.i.i, align 4, !tbaa !18
  %90 = load <2 x half>, <2 x half>* %arrayidx68.5.i.i.i, align 4, !tbaa !18
  %91 = load <2 x half>, <2 x half>* %arrayidx74.5.i.i.i, align 4, !tbaa !18
  %92 = extractelement <2 x half> %88, i64 0
  %93 = extractelement <2 x half> %90, i64 0
  %mul75.5.i.i.i = fmul half %92, %93
  %add76.5.i.i.i = fadd half %add78.4.i.i.i, %mul75.5.i.i.i
  %94 = extractelement <2 x half> %88, i64 1
  %95 = extractelement <2 x half> %91, i64 0
  %mul77.5.i.i.i = fmul half %94, %95
  %add78.5.i.i.i = fadd half %add76.5.i.i.i, %mul77.5.i.i.i
  %96 = extractelement <2 x half> %90, i64 1
  %mul79.5.i.i.i = fmul half %92, %96
  %add80.5.i.i.i = fadd half %add82.4.i.i.i, %mul79.5.i.i.i
  %97 = extractelement <2 x half> %91, i64 1
  %mul81.5.i.i.i = fmul half %94, %97
  %add82.5.i.i.i = fadd half %add80.5.i.i.i, %mul81.5.i.i.i
  %98 = extractelement <2 x half> %89, i64 0
  %mul83.5.i.i.i = fmul half %98, %93
  %add84.5.i.i.i = fadd half %add86.4.i.i.i, %mul83.5.i.i.i
  %99 = extractelement <2 x half> %89, i64 1
  %mul85.5.i.i.i = fmul half %99, %95
  %add86.5.i.i.i = fadd half %add84.5.i.i.i, %mul85.5.i.i.i
  %mul87.5.i.i.i = fmul half %98, %96
  %add88.5.i.i.i = fadd half %add90.4.i.i.i, %mul87.5.i.i.i
  %mul89.5.i.i.i = fmul half %99, %97
  %add90.5.i.i.i = fadd half %add88.5.i.i.i, %mul89.5.i.i.i
  %100 = load <2 x half>, <2 x half>* %arrayidx59.6.i.i.i, align 4, !tbaa !18
  %101 = load <2 x half>, <2 x half>* %arrayidx63.6.i.i.i, align 4, !tbaa !18
  %102 = load <2 x half>, <2 x half>* %arrayidx68.6.i.i.i, align 4, !tbaa !18
  %103 = load <2 x half>, <2 x half>* %arrayidx74.6.i.i.i, align 4, !tbaa !18
  %104 = extractelement <2 x half> %100, i64 0
  %105 = extractelement <2 x half> %102, i64 0
  %mul75.6.i.i.i = fmul half %104, %105
  %add76.6.i.i.i = fadd half %add78.5.i.i.i, %mul75.6.i.i.i
  %106 = extractelement <2 x half> %100, i64 1
  %107 = extractelement <2 x half> %103, i64 0
  %mul77.6.i.i.i = fmul half %106, %107
  %add78.6.i.i.i = fadd half %add76.6.i.i.i, %mul77.6.i.i.i
  %108 = extractelement <2 x half> %102, i64 1
  %mul79.6.i.i.i = fmul half %104, %108
  %add80.6.i.i.i = fadd half %add82.5.i.i.i, %mul79.6.i.i.i
  %109 = extractelement <2 x half> %103, i64 1
  %mul81.6.i.i.i = fmul half %106, %109
  %add82.6.i.i.i = fadd half %add80.6.i.i.i, %mul81.6.i.i.i
  %110 = extractelement <2 x half> %101, i64 0
  %mul83.6.i.i.i = fmul half %110, %105
  %add84.6.i.i.i = fadd half %add86.5.i.i.i, %mul83.6.i.i.i
  %111 = extractelement <2 x half> %101, i64 1
  %mul85.6.i.i.i = fmul half %111, %107
  %add86.6.i.i.i = fadd half %add84.6.i.i.i, %mul85.6.i.i.i
  %mul87.6.i.i.i = fmul half %110, %108
  %add88.6.i.i.i = fadd half %add90.5.i.i.i, %mul87.6.i.i.i
  %mul89.6.i.i.i = fmul half %111, %109
  %add90.6.i.i.i = fadd half %add88.6.i.i.i, %mul89.6.i.i.i
  %112 = load <2 x half>, <2 x half>* %arrayidx59.7.i.i.i, align 4, !tbaa !18
  %113 = load <2 x half>, <2 x half>* %arrayidx63.7.i.i.i, align 4, !tbaa !18
  %114 = load <2 x half>, <2 x half>* %arrayidx68.7.i.i.i, align 4, !tbaa !18
  %115 = load <2 x half>, <2 x half>* %arrayidx74.7.i.i.i, align 4, !tbaa !18
  %116 = extractelement <2 x half> %112, i64 0
  %117 = extractelement <2 x half> %114, i64 0
  %mul75.7.i.i.i = fmul half %116, %117
  %add76.7.i.i.i = fadd half %add78.6.i.i.i, %mul75.7.i.i.i
  %118 = extractelement <2 x half> %112, i64 1
  %119 = extractelement <2 x half> %115, i64 0
  %mul77.7.i.i.i = fmul half %118, %119
  %add78.7.i.i.i = fadd half %add76.7.i.i.i, %mul77.7.i.i.i
  %120 = extractelement <2 x half> %114, i64 1
  %mul79.7.i.i.i = fmul half %116, %120
  %add80.7.i.i.i = fadd half %add82.6.i.i.i, %mul79.7.i.i.i
  %121 = extractelement <2 x half> %115, i64 1
  %mul81.7.i.i.i = fmul half %118, %121
  %add82.7.i.i.i = fadd half %add80.7.i.i.i, %mul81.7.i.i.i
  %122 = extractelement <2 x half> %113, i64 0
  %mul83.7.i.i.i = fmul half %122, %117
  %add84.7.i.i.i = fadd half %add86.6.i.i.i, %mul83.7.i.i.i
  %123 = extractelement <2 x half> %113, i64 1
  %mul85.7.i.i.i = fmul half %123, %119
  %add86.7.i.i.i = fadd half %add84.7.i.i.i, %mul85.7.i.i.i
  %mul87.7.i.i.i = fmul half %122, %120
  %add88.7.i.i.i = fadd half %add90.6.i.i.i, %mul87.7.i.i.i
  %mul89.7.i.i.i = fmul half %123, %121
  %add90.7.i.i.i = fadd half %add88.7.i.i.i, %mul89.7.i.i.i
  %124 = load <2 x half>, <2 x half>* %arrayidx59.8.i.i.i, align 4, !tbaa !18
  %125 = load <2 x half>, <2 x half>* %arrayidx63.8.i.i.i, align 4, !tbaa !18
  %126 = load <2 x half>, <2 x half>* %arrayidx68.8.i.i.i, align 4, !tbaa !18
  %127 = load <2 x half>, <2 x half>* %arrayidx74.8.i.i.i, align 4, !tbaa !18
  %128 = extractelement <2 x half> %124, i64 0
  %129 = extractelement <2 x half> %126, i64 0
  %mul75.8.i.i.i = fmul half %128, %129
  %add76.8.i.i.i = fadd half %add78.7.i.i.i, %mul75.8.i.i.i
  %130 = extractelement <2 x half> %124, i64 1
  %131 = extractelement <2 x half> %127, i64 0
  %mul77.8.i.i.i = fmul half %130, %131
  %add78.8.i.i.i = fadd half %add76.8.i.i.i, %mul77.8.i.i.i
  %132 = extractelement <2 x half> %126, i64 1
  %mul79.8.i.i.i = fmul half %128, %132
  %add80.8.i.i.i = fadd half %add82.7.i.i.i, %mul79.8.i.i.i
  %133 = extractelement <2 x half> %127, i64 1
  %mul81.8.i.i.i = fmul half %130, %133
  %add82.8.i.i.i = fadd half %add80.8.i.i.i, %mul81.8.i.i.i
  %134 = extractelement <2 x half> %125, i64 0
  %mul83.8.i.i.i = fmul half %134, %129
  %add84.8.i.i.i = fadd half %add86.7.i.i.i, %mul83.8.i.i.i
  %135 = extractelement <2 x half> %125, i64 1
  %mul85.8.i.i.i = fmul half %135, %131
  %add86.8.i.i.i = fadd half %add84.8.i.i.i, %mul85.8.i.i.i
  %mul87.8.i.i.i = fmul half %134, %132
  %add88.8.i.i.i = fadd half %add90.7.i.i.i, %mul87.8.i.i.i
  %mul89.8.i.i.i = fmul half %135, %133
  %add90.8.i.i.i = fadd half %add88.8.i.i.i, %mul89.8.i.i.i
  %136 = load <2 x half>, <2 x half>* %arrayidx59.9.i.i.i, align 4, !tbaa !18
  %137 = load <2 x half>, <2 x half>* %arrayidx63.9.i.i.i, align 4, !tbaa !18
  %138 = load <2 x half>, <2 x half>* %arrayidx68.9.i.i.i, align 4, !tbaa !18
  %139 = load <2 x half>, <2 x half>* %arrayidx74.9.i.i.i, align 4, !tbaa !18
  %140 = extractelement <2 x half> %136, i64 0
  %141 = extractelement <2 x half> %138, i64 0
  %mul75.9.i.i.i = fmul half %140, %141
  %add76.9.i.i.i = fadd half %add78.8.i.i.i, %mul75.9.i.i.i
  %142 = extractelement <2 x half> %136, i64 1
  %143 = extractelement <2 x half> %139, i64 0
  %mul77.9.i.i.i = fmul half %142, %143
  %add78.9.i.i.i = fadd half %add76.9.i.i.i, %mul77.9.i.i.i
  %144 = extractelement <2 x half> %138, i64 1
  %mul79.9.i.i.i = fmul half %140, %144
  %add80.9.i.i.i = fadd half %add82.8.i.i.i, %mul79.9.i.i.i
  %145 = extractelement <2 x half> %139, i64 1
  %mul81.9.i.i.i = fmul half %142, %145
  %add82.9.i.i.i = fadd half %add80.9.i.i.i, %mul81.9.i.i.i
  %146 = extractelement <2 x half> %137, i64 0
  %mul83.9.i.i.i = fmul half %146, %141
  %add84.9.i.i.i = fadd half %add86.8.i.i.i, %mul83.9.i.i.i
  %147 = extractelement <2 x half> %137, i64 1
  %mul85.9.i.i.i = fmul half %147, %143
  %add86.9.i.i.i = fadd half %add84.9.i.i.i, %mul85.9.i.i.i
  %mul87.9.i.i.i = fmul half %146, %144
  %add88.9.i.i.i = fadd half %add90.8.i.i.i, %mul87.9.i.i.i
  %mul89.9.i.i.i = fmul half %147, %145
  %add90.9.i.i.i = fadd half %add88.9.i.i.i, %mul89.9.i.i.i
  %148 = load <2 x half>, <2 x half>* %arrayidx59.10.i.i.i, align 4, !tbaa !18
  %149 = load <2 x half>, <2 x half>* %arrayidx63.10.i.i.i, align 4, !tbaa !18
  %150 = load <2 x half>, <2 x half>* %arrayidx68.10.i.i.i, align 4, !tbaa !18
  %151 = load <2 x half>, <2 x half>* %arrayidx74.10.i.i.i, align 4, !tbaa !18
  %152 = extractelement <2 x half> %148, i64 0
  %153 = extractelement <2 x half> %150, i64 0
  %mul75.10.i.i.i = fmul half %152, %153
  %add76.10.i.i.i = fadd half %add78.9.i.i.i, %mul75.10.i.i.i
  %154 = extractelement <2 x half> %148, i64 1
  %155 = extractelement <2 x half> %151, i64 0
  %mul77.10.i.i.i = fmul half %154, %155
  %add78.10.i.i.i = fadd half %add76.10.i.i.i, %mul77.10.i.i.i
  %156 = extractelement <2 x half> %150, i64 1
  %mul79.10.i.i.i = fmul half %152, %156
  %add80.10.i.i.i = fadd half %add82.9.i.i.i, %mul79.10.i.i.i
  %157 = extractelement <2 x half> %151, i64 1
  %mul81.10.i.i.i = fmul half %154, %157
  %add82.10.i.i.i = fadd half %add80.10.i.i.i, %mul81.10.i.i.i
  %158 = extractelement <2 x half> %149, i64 0
  %mul83.10.i.i.i = fmul half %158, %153
  %add84.10.i.i.i = fadd half %add86.9.i.i.i, %mul83.10.i.i.i
  %159 = extractelement <2 x half> %149, i64 1
  %mul85.10.i.i.i = fmul half %159, %155
  %add86.10.i.i.i = fadd half %add84.10.i.i.i, %mul85.10.i.i.i
  %mul87.10.i.i.i = fmul half %158, %156
  %add88.10.i.i.i = fadd half %add90.9.i.i.i, %mul87.10.i.i.i
  %mul89.10.i.i.i = fmul half %159, %157
  %add90.10.i.i.i = fadd half %add88.10.i.i.i, %mul89.10.i.i.i
  %160 = load <2 x half>, <2 x half>* %arrayidx59.11.i.i.i, align 4, !tbaa !18
  %161 = load <2 x half>, <2 x half>* %arrayidx63.11.i.i.i, align 4, !tbaa !18
  %162 = load <2 x half>, <2 x half>* %arrayidx68.11.i.i.i, align 4, !tbaa !18
  %163 = load <2 x half>, <2 x half>* %arrayidx74.11.i.i.i, align 4, !tbaa !18
  %164 = extractelement <2 x half> %160, i64 0
  %165 = extractelement <2 x half> %162, i64 0
  %mul75.11.i.i.i = fmul half %164, %165
  %add76.11.i.i.i = fadd half %add78.10.i.i.i, %mul75.11.i.i.i
  %166 = extractelement <2 x half> %160, i64 1
  %167 = extractelement <2 x half> %163, i64 0
  %mul77.11.i.i.i = fmul half %166, %167
  %add78.11.i.i.i = fadd half %add76.11.i.i.i, %mul77.11.i.i.i
  %168 = extractelement <2 x half> %162, i64 1
  %mul79.11.i.i.i = fmul half %164, %168
  %add80.11.i.i.i = fadd half %add82.10.i.i.i, %mul79.11.i.i.i
  %169 = extractelement <2 x half> %163, i64 1
  %mul81.11.i.i.i = fmul half %166, %169
  %add82.11.i.i.i = fadd half %add80.11.i.i.i, %mul81.11.i.i.i
  %170 = extractelement <2 x half> %161, i64 0
  %mul83.11.i.i.i = fmul half %170, %165
  %add84.11.i.i.i = fadd half %add86.10.i.i.i, %mul83.11.i.i.i
  %171 = extractelement <2 x half> %161, i64 1
  %mul85.11.i.i.i = fmul half %171, %167
  %add86.11.i.i.i = fadd half %add84.11.i.i.i, %mul85.11.i.i.i
  %mul87.11.i.i.i = fmul half %170, %168
  %add88.11.i.i.i = fadd half %add90.10.i.i.i, %mul87.11.i.i.i
  %mul89.11.i.i.i = fmul half %171, %169
  %add90.11.i.i.i = fadd half %add88.11.i.i.i, %mul89.11.i.i.i
  %172 = load <2 x half>, <2 x half>* %arrayidx59.12.i.i.i, align 4, !tbaa !18
  %173 = load <2 x half>, <2 x half>* %arrayidx63.12.i.i.i, align 4, !tbaa !18
  %174 = load <2 x half>, <2 x half>* %arrayidx68.12.i.i.i, align 4, !tbaa !18
  %175 = load <2 x half>, <2 x half>* %arrayidx74.12.i.i.i, align 4, !tbaa !18
  %176 = extractelement <2 x half> %172, i64 0
  %177 = extractelement <2 x half> %174, i64 0
  %mul75.12.i.i.i = fmul half %176, %177
  %add76.12.i.i.i = fadd half %add78.11.i.i.i, %mul75.12.i.i.i
  %178 = extractelement <2 x half> %172, i64 1
  %179 = extractelement <2 x half> %175, i64 0
  %mul77.12.i.i.i = fmul half %178, %179
  %add78.12.i.i.i = fadd half %add76.12.i.i.i, %mul77.12.i.i.i
  %180 = extractelement <2 x half> %174, i64 1
  %mul79.12.i.i.i = fmul half %176, %180
  %add80.12.i.i.i = fadd half %add82.11.i.i.i, %mul79.12.i.i.i
  %181 = extractelement <2 x half> %175, i64 1
  %mul81.12.i.i.i = fmul half %178, %181
  %add82.12.i.i.i = fadd half %add80.12.i.i.i, %mul81.12.i.i.i
  %182 = extractelement <2 x half> %173, i64 0
  %mul83.12.i.i.i = fmul half %182, %177
  %add84.12.i.i.i = fadd half %add86.11.i.i.i, %mul83.12.i.i.i
  %183 = extractelement <2 x half> %173, i64 1
  %mul85.12.i.i.i = fmul half %183, %179
  %add86.12.i.i.i = fadd half %add84.12.i.i.i, %mul85.12.i.i.i
  %mul87.12.i.i.i = fmul half %182, %180
  %add88.12.i.i.i = fadd half %add90.11.i.i.i, %mul87.12.i.i.i
  %mul89.12.i.i.i = fmul half %183, %181
  %add90.12.i.i.i = fadd half %add88.12.i.i.i, %mul89.12.i.i.i
  %184 = load <2 x half>, <2 x half>* %arrayidx59.13.i.i.i, align 4, !tbaa !18
  %185 = load <2 x half>, <2 x half>* %arrayidx63.13.i.i.i, align 4, !tbaa !18
  %186 = load <2 x half>, <2 x half>* %arrayidx68.13.i.i.i, align 4, !tbaa !18
  %187 = load <2 x half>, <2 x half>* %arrayidx74.13.i.i.i, align 4, !tbaa !18
  %188 = extractelement <2 x half> %184, i64 0
  %189 = extractelement <2 x half> %186, i64 0
  %mul75.13.i.i.i = fmul half %188, %189
  %add76.13.i.i.i = fadd half %add78.12.i.i.i, %mul75.13.i.i.i
  %190 = extractelement <2 x half> %184, i64 1
  %191 = extractelement <2 x half> %187, i64 0
  %mul77.13.i.i.i = fmul half %190, %191
  %add78.13.i.i.i = fadd half %add76.13.i.i.i, %mul77.13.i.i.i
  %192 = extractelement <2 x half> %186, i64 1
  %mul79.13.i.i.i = fmul half %188, %192
  %add80.13.i.i.i = fadd half %add82.12.i.i.i, %mul79.13.i.i.i
  %193 = extractelement <2 x half> %187, i64 1
  %mul81.13.i.i.i = fmul half %190, %193
  %add82.13.i.i.i = fadd half %add80.13.i.i.i, %mul81.13.i.i.i
  %194 = extractelement <2 x half> %185, i64 0
  %mul83.13.i.i.i = fmul half %194, %189
  %add84.13.i.i.i = fadd half %add86.12.i.i.i, %mul83.13.i.i.i
  %195 = extractelement <2 x half> %185, i64 1
  %mul85.13.i.i.i = fmul half %195, %191
  %add86.13.i.i.i = fadd half %add84.13.i.i.i, %mul85.13.i.i.i
  %mul87.13.i.i.i = fmul half %194, %192
  %add88.13.i.i.i = fadd half %add90.12.i.i.i, %mul87.13.i.i.i
  %mul89.13.i.i.i = fmul half %195, %193
  %add90.13.i.i.i = fadd half %add88.13.i.i.i, %mul89.13.i.i.i
  %196 = load <2 x half>, <2 x half>* %arrayidx59.14.i.i.i, align 4, !tbaa !18
  %197 = load <2 x half>, <2 x half>* %arrayidx63.14.i.i.i, align 4, !tbaa !18
  %198 = load <2 x half>, <2 x half>* %arrayidx68.14.i.i.i, align 4, !tbaa !18
  %199 = load <2 x half>, <2 x half>* %arrayidx74.14.i.i.i, align 4, !tbaa !18
  %200 = extractelement <2 x half> %196, i64 0
  %201 = extractelement <2 x half> %198, i64 0
  %mul75.14.i.i.i = fmul half %200, %201
  %add76.14.i.i.i = fadd half %add78.13.i.i.i, %mul75.14.i.i.i
  %202 = extractelement <2 x half> %196, i64 1
  %203 = extractelement <2 x half> %199, i64 0
  %mul77.14.i.i.i = fmul half %202, %203
  %add78.14.i.i.i = fadd half %add76.14.i.i.i, %mul77.14.i.i.i
  %204 = extractelement <2 x half> %198, i64 1
  %mul79.14.i.i.i = fmul half %200, %204
  %add80.14.i.i.i = fadd half %add82.13.i.i.i, %mul79.14.i.i.i
  %205 = extractelement <2 x half> %199, i64 1
  %mul81.14.i.i.i = fmul half %202, %205
  %add82.14.i.i.i = fadd half %add80.14.i.i.i, %mul81.14.i.i.i
  %206 = extractelement <2 x half> %197, i64 0
  %mul83.14.i.i.i = fmul half %206, %201
  %add84.14.i.i.i = fadd half %add86.13.i.i.i, %mul83.14.i.i.i
  %207 = extractelement <2 x half> %197, i64 1
  %mul85.14.i.i.i = fmul half %207, %203
  %add86.14.i.i.i = fadd half %add84.14.i.i.i, %mul85.14.i.i.i
  %mul87.14.i.i.i = fmul half %206, %204
  %add88.14.i.i.i = fadd half %add90.13.i.i.i, %mul87.14.i.i.i
  %mul89.14.i.i.i = fmul half %207, %205
  %add90.14.i.i.i = fadd half %add88.14.i.i.i, %mul89.14.i.i.i
  %208 = load <2 x half>, <2 x half>* %arrayidx59.15.i.i.i, align 4, !tbaa !18
  %209 = load <2 x half>, <2 x half>* %arrayidx63.15.i.i.i, align 4, !tbaa !18
  %210 = load <2 x half>, <2 x half>* %arrayidx68.15.i.i.i, align 4, !tbaa !18
  %211 = load <2 x half>, <2 x half>* %arrayidx74.15.i.i.i, align 4, !tbaa !18
  %212 = extractelement <2 x half> %208, i64 0
  %213 = extractelement <2 x half> %210, i64 0
  %mul75.15.i.i.i = fmul half %212, %213
  %add76.15.i.i.i = fadd half %add78.14.i.i.i, %mul75.15.i.i.i
  %214 = extractelement <2 x half> %208, i64 1
  %215 = extractelement <2 x half> %211, i64 0
  %mul77.15.i.i.i = fmul half %214, %215
  %add78.15.i.i.i = fadd half %add76.15.i.i.i, %mul77.15.i.i.i
  %216 = insertelement <2 x half> undef, half %add78.15.i.i.i, i64 0
  %217 = extractelement <2 x half> %210, i64 1
  %mul79.15.i.i.i = fmul half %212, %217
  %add80.15.i.i.i = fadd half %add82.14.i.i.i, %mul79.15.i.i.i
  %218 = extractelement <2 x half> %211, i64 1
  %mul81.15.i.i.i = fmul half %214, %218
  %add82.15.i.i.i = fadd half %add80.15.i.i.i, %mul81.15.i.i.i
  %219 = insertelement <2 x half> %216, half %add82.15.i.i.i, i64 1
  %220 = extractelement <2 x half> %209, i64 0
  %mul83.15.i.i.i = fmul half %220, %213
  %add84.15.i.i.i = fadd half %add86.14.i.i.i, %mul83.15.i.i.i
  %221 = extractelement <2 x half> %209, i64 1
  %mul85.15.i.i.i = fmul half %221, %215
  %add86.15.i.i.i = fadd half %add84.15.i.i.i, %mul85.15.i.i.i
  %222 = insertelement <2 x half> undef, half %add86.15.i.i.i, i64 0
  %mul87.15.i.i.i = fmul half %220, %217
  %add88.15.i.i.i = fadd half %add90.14.i.i.i, %mul87.15.i.i.i
  %mul89.15.i.i.i = fmul half %221, %218
  %add90.15.i.i.i = fadd half %add88.15.i.i.i, %mul89.15.i.i.i
  %223 = insertelement <2 x half> %222, half %add90.15.i.i.i, i64 1
  tail call void @hc_barrier(i32 1) #9
  store <2 x half> %219, <2 x half>* %arrayidx94.i.i.i, align 4, !tbaa !18
  store <2 x half> %223, <2 x half>* %arrayidx98.i.i.i, align 4, !tbaa !18
  %inc99.i.i.i = add nuw nsw i32 %j.0174.i.i.i, 1
  %exitcond.i.i.i = icmp eq i32 %inc99.i.i.i, 32
  br i1 %exitcond.i.i.i, label %"_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPDhS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENKUlRKNS7_11tiled_indexILi3EEEE_clESI_.exit", label %15

"_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPDhS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENKUlRKNS7_11tiled_indexILi3EEEE_clESI_.exit": ; preds = %15
  ret void
}

; Function Attrs: alwaysinline
define weak void @_Z5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_(half* %Y, half* %W, half* %X) local_unnamed_addr #1 {
  %call = tail call i64 @hc_get_workitem_id(i32 0) #7
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @hc_get_workitem_id(i32 1) #7
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @hc_get_group_id(i32 0) #7
  %conv4 = trunc i64 %call3 to i32
  %call5 = tail call i64 @hc_get_group_id(i32 1) #7
  %conv6 = trunc i64 %call5 to i32
  %mul = shl nsw i32 %conv2, 1
  %mul7 = shl nsw i32 %conv6, 5
  %add = add nsw i32 %mul7, %mul
  %add9 = or i32 %mul, 1
  %add11 = add nsw i32 %mul7, %add9
  %mul12 = shl nsw i32 %conv4, 4
  %add13 = add nsw i32 %mul12, %conv
  %1 = bitcast half* %W to <2 x half>*
  %2 = bitcast half* %X to <2 x half>*
  %3 = bitcast half* %Y to <2 x half>*
  %mul17 = shl i32 %add, 9
  %arrayidx24157 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 %conv
  %4 = bitcast <2 x half> addrspace(3)* %arrayidx24157 to i32 addrspace(3)*
  %5 = addrspacecast i32 addrspace(3)* %4 to i32*
  %mul25 = shl i32 %add11, 9
  %arrayidx34159 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 %conv
  %6 = bitcast <2 x half> addrspace(3)* %arrayidx34159 to i32 addrspace(3)*
  %7 = addrspacecast i32 addrspace(3)* %6 to i32*
  %arrayidx44161 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 %mul, i32 %conv
  %8 = bitcast <2 x half> addrspace(3)* %arrayidx44161 to i32 addrspace(3)*
  %9 = addrspacecast i32 addrspace(3)* %8 to i32*
  %arrayidx54163 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 %add9, i32 %conv
  %10 = bitcast <2 x half> addrspace(3)* %arrayidx54163 to i32 addrspace(3)*
  %11 = addrspacecast i32 addrspace(3)* %10 to i32*
  %mul91 = shl i32 %add, 4
  %add92 = add nsw i32 %mul91, %add13
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds <2 x half>, <2 x half>* %3, i64 %idxprom93
  %mul95 = shl i32 %add11, 4
  %add96 = add nsw i32 %mul95, %add13
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds <2 x half>, <2 x half>* %3, i64 %idxprom97
  %arrayidx59164 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 0
  %arrayidx59 = addrspacecast <2 x half> addrspace(3)* %arrayidx59164 to <2 x half>*
  %arrayidx63165 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 0
  %arrayidx63 = addrspacecast <2 x half> addrspace(3)* %arrayidx63165 to <2 x half>*
  %arrayidx68167 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 0, i32 %conv
  %arrayidx68 = addrspacecast <2 x half> addrspace(3)* %arrayidx68167 to <2 x half>*
  %arrayidx74169 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 1, i32 %conv
  %arrayidx74 = addrspacecast <2 x half> addrspace(3)* %arrayidx74169 to <2 x half>*
  %arrayidx59164.1 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 1
  %arrayidx59.1 = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.1 to <2 x half>*
  %arrayidx63165.1 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 1
  %arrayidx63.1 = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.1 to <2 x half>*
  %arrayidx68167.1 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 2, i32 %conv
  %arrayidx68.1 = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.1 to <2 x half>*
  %arrayidx74169.1 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 3, i32 %conv
  %arrayidx74.1 = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.1 to <2 x half>*
  %arrayidx59164.2 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 2
  %arrayidx59.2 = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.2 to <2 x half>*
  %arrayidx63165.2 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 2
  %arrayidx63.2 = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.2 to <2 x half>*
  %arrayidx68167.2 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 4, i32 %conv
  %arrayidx68.2 = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.2 to <2 x half>*
  %arrayidx74169.2 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 5, i32 %conv
  %arrayidx74.2 = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.2 to <2 x half>*
  %arrayidx59164.3 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 3
  %arrayidx59.3 = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.3 to <2 x half>*
  %arrayidx63165.3 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 3
  %arrayidx63.3 = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.3 to <2 x half>*
  %arrayidx68167.3 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 6, i32 %conv
  %arrayidx68.3 = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.3 to <2 x half>*
  %arrayidx74169.3 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 7, i32 %conv
  %arrayidx74.3 = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.3 to <2 x half>*
  %arrayidx59164.4 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 4
  %arrayidx59.4 = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.4 to <2 x half>*
  %arrayidx63165.4 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 4
  %arrayidx63.4 = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.4 to <2 x half>*
  %arrayidx68167.4 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 8, i32 %conv
  %arrayidx68.4 = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.4 to <2 x half>*
  %arrayidx74169.4 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 9, i32 %conv
  %arrayidx74.4 = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.4 to <2 x half>*
  %arrayidx59164.5 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 5
  %arrayidx59.5 = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.5 to <2 x half>*
  %arrayidx63165.5 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 5
  %arrayidx63.5 = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.5 to <2 x half>*
  %arrayidx68167.5 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 10, i32 %conv
  %arrayidx68.5 = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.5 to <2 x half>*
  %arrayidx74169.5 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 11, i32 %conv
  %arrayidx74.5 = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.5 to <2 x half>*
  %arrayidx59164.6 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 6
  %arrayidx59.6 = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.6 to <2 x half>*
  %arrayidx63165.6 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 6
  %arrayidx63.6 = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.6 to <2 x half>*
  %arrayidx68167.6 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 12, i32 %conv
  %arrayidx68.6 = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.6 to <2 x half>*
  %arrayidx74169.6 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 13, i32 %conv
  %arrayidx74.6 = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.6 to <2 x half>*
  %arrayidx59164.7 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 7
  %arrayidx59.7 = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.7 to <2 x half>*
  %arrayidx63165.7 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 7
  %arrayidx63.7 = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.7 to <2 x half>*
  %arrayidx68167.7 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 14, i32 %conv
  %arrayidx68.7 = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.7 to <2 x half>*
  %arrayidx74169.7 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 15, i32 %conv
  %arrayidx74.7 = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.7 to <2 x half>*
  %arrayidx59164.8 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 8
  %arrayidx59.8 = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.8 to <2 x half>*
  %arrayidx63165.8 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 8
  %arrayidx63.8 = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.8 to <2 x half>*
  %arrayidx68167.8 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 16, i32 %conv
  %arrayidx68.8 = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.8 to <2 x half>*
  %arrayidx74169.8 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 17, i32 %conv
  %arrayidx74.8 = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.8 to <2 x half>*
  %arrayidx59164.9 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 9
  %arrayidx59.9 = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.9 to <2 x half>*
  %arrayidx63165.9 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 9
  %arrayidx63.9 = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.9 to <2 x half>*
  %arrayidx68167.9 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 18, i32 %conv
  %arrayidx68.9 = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.9 to <2 x half>*
  %arrayidx74169.9 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 19, i32 %conv
  %arrayidx74.9 = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.9 to <2 x half>*
  %arrayidx59164.10 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 10
  %arrayidx59.10 = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.10 to <2 x half>*
  %arrayidx63165.10 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 10
  %arrayidx63.10 = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.10 to <2 x half>*
  %arrayidx68167.10 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 20, i32 %conv
  %arrayidx68.10 = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.10 to <2 x half>*
  %arrayidx74169.10 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 21, i32 %conv
  %arrayidx74.10 = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.10 to <2 x half>*
  %arrayidx59164.11 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 11
  %arrayidx59.11 = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.11 to <2 x half>*
  %arrayidx63165.11 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 11
  %arrayidx63.11 = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.11 to <2 x half>*
  %arrayidx68167.11 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 22, i32 %conv
  %arrayidx68.11 = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.11 to <2 x half>*
  %arrayidx74169.11 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 23, i32 %conv
  %arrayidx74.11 = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.11 to <2 x half>*
  %arrayidx59164.12 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 12
  %arrayidx59.12 = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.12 to <2 x half>*
  %arrayidx63165.12 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 12
  %arrayidx63.12 = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.12 to <2 x half>*
  %arrayidx68167.12 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 24, i32 %conv
  %arrayidx68.12 = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.12 to <2 x half>*
  %arrayidx74169.12 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 25, i32 %conv
  %arrayidx74.12 = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.12 to <2 x half>*
  %arrayidx59164.13 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 13
  %arrayidx59.13 = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.13 to <2 x half>*
  %arrayidx63165.13 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 13
  %arrayidx63.13 = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.13 to <2 x half>*
  %arrayidx68167.13 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 26, i32 %conv
  %arrayidx68.13 = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.13 to <2 x half>*
  %arrayidx74169.13 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 27, i32 %conv
  %arrayidx74.13 = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.13 to <2 x half>*
  %arrayidx59164.14 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 14
  %arrayidx59.14 = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.14 to <2 x half>*
  %arrayidx63165.14 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 14
  %arrayidx63.14 = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.14 to <2 x half>*
  %arrayidx68167.14 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 28, i32 %conv
  %arrayidx68.14 = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.14 to <2 x half>*
  %arrayidx74169.14 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 29, i32 %conv
  %arrayidx74.14 = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.14 to <2 x half>*
  %arrayidx59164.15 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %mul, i32 15
  %arrayidx59.15 = addrspacecast <2 x half> addrspace(3)* %arrayidx59164.15 to <2 x half>*
  %arrayidx63165.15 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sW, i32 0, i32 %add9, i32 15
  %arrayidx63.15 = addrspacecast <2 x half> addrspace(3)* %arrayidx63165.15 to <2 x half>*
  %arrayidx68167.15 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 30, i32 %conv
  %arrayidx68.15 = addrspacecast <2 x half> addrspace(3)* %arrayidx68167.15 to <2 x half>*
  %arrayidx74169.15 = getelementptr inbounds [32 x [16 x <2 x half>]], [32 x [16 x <2 x half>]] addrspace(3)* @_ZZ5Dotv1IDhLi1024ELi1024ELi1024ELi1024EEvPT_S1_S1_E2sX, i32 0, i32 31, i32 %conv
  %arrayidx74.15 = addrspacecast <2 x half> addrspace(3)* %arrayidx74169.15 to <2 x half>*
  br label %12

; <label>:12:                                     ; preds = %12, %0
  %c0.0176 = phi <2 x half> [ zeroinitializer, %0 ], [ %216, %12 ]
  %c1.0175 = phi <2 x half> [ zeroinitializer, %0 ], [ %220, %12 ]
  %j.0174 = phi i32 [ 0, %0 ], [ %inc99, %12 ]
  %mul18 = shl nsw i32 %j.0174, 4
  %add19 = add nsw i32 %mul18, %conv
  %add20 = add nsw i32 %add19, %mul17
  %idxprom = sext i32 %add20 to i64
  %arrayidx = getelementptr inbounds <2 x half>, <2 x half>* %1, i64 %idxprom
  %13 = bitcast <2 x half>* %arrayidx to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !18
  store i32 %14, i32* %5, align 4, !tbaa !18
  %add28 = add nsw i32 %add19, %mul25
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds <2 x half>, <2 x half>* %1, i64 %idxprom29
  %15 = bitcast <2 x half>* %arrayidx30 to i32*
  %16 = load i32, i32* %15, align 4, !tbaa !18
  store i32 %16, i32* %7, align 4, !tbaa !18
  %add36 = add nsw i32 %mul18, %mul
  %mul37 = shl i32 %add36, 9
  %add38 = add nsw i32 %mul37, %add13
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds <2 x half>, <2 x half>* %2, i64 %idxprom39
  %17 = bitcast <2 x half>* %arrayidx40 to i32*
  %18 = load i32, i32* %17, align 4, !tbaa !18
  store i32 %18, i32* %9, align 4, !tbaa !18
  %add46 = add nsw i32 %mul18, %add9
  %mul47 = shl i32 %add46, 9
  %add48 = add nsw i32 %mul47, %add13
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds <2 x half>, <2 x half>* %2, i64 %idxprom49
  %19 = bitcast <2 x half>* %arrayidx50 to i32*
  %20 = load i32, i32* %19, align 4, !tbaa !18
  store i32 %20, i32* %11, align 4, !tbaa !18
  tail call void @hc_barrier(i32 1) #9
  %21 = load <2 x half>, <2 x half>* %arrayidx59, align 4, !tbaa !18
  %22 = load <2 x half>, <2 x half>* %arrayidx63, align 4, !tbaa !18
  %23 = load <2 x half>, <2 x half>* %arrayidx68, align 4, !tbaa !18
  %24 = load <2 x half>, <2 x half>* %arrayidx74, align 4, !tbaa !18
  %25 = extractelement <2 x half> %c0.0176, i64 0
  %26 = extractelement <2 x half> %21, i64 0
  %27 = extractelement <2 x half> %23, i64 0
  %mul75 = fmul half %26, %27
  %add76 = fadd half %25, %mul75
  %28 = extractelement <2 x half> %21, i64 1
  %29 = extractelement <2 x half> %24, i64 0
  %mul77 = fmul half %28, %29
  %add78 = fadd half %add76, %mul77
  %30 = extractelement <2 x half> %c0.0176, i64 1
  %31 = extractelement <2 x half> %23, i64 1
  %mul79 = fmul half %26, %31
  %add80 = fadd half %30, %mul79
  %32 = extractelement <2 x half> %24, i64 1
  %mul81 = fmul half %28, %32
  %add82 = fadd half %add80, %mul81
  %33 = extractelement <2 x half> %c1.0175, i64 0
  %34 = extractelement <2 x half> %22, i64 0
  %mul83 = fmul half %34, %27
  %add84 = fadd half %33, %mul83
  %35 = extractelement <2 x half> %22, i64 1
  %mul85 = fmul half %35, %29
  %add86 = fadd half %add84, %mul85
  %36 = extractelement <2 x half> %c1.0175, i64 1
  %mul87 = fmul half %34, %31
  %add88 = fadd half %36, %mul87
  %mul89 = fmul half %35, %32
  %add90 = fadd half %add88, %mul89
  %37 = load <2 x half>, <2 x half>* %arrayidx59.1, align 4, !tbaa !18
  %38 = load <2 x half>, <2 x half>* %arrayidx63.1, align 4, !tbaa !18
  %39 = load <2 x half>, <2 x half>* %arrayidx68.1, align 4, !tbaa !18
  %40 = load <2 x half>, <2 x half>* %arrayidx74.1, align 4, !tbaa !18
  %41 = extractelement <2 x half> %37, i64 0
  %42 = extractelement <2 x half> %39, i64 0
  %mul75.1 = fmul half %41, %42
  %add76.1 = fadd half %add78, %mul75.1
  %43 = extractelement <2 x half> %37, i64 1
  %44 = extractelement <2 x half> %40, i64 0
  %mul77.1 = fmul half %43, %44
  %add78.1 = fadd half %add76.1, %mul77.1
  %45 = extractelement <2 x half> %39, i64 1
  %mul79.1 = fmul half %41, %45
  %add80.1 = fadd half %add82, %mul79.1
  %46 = extractelement <2 x half> %40, i64 1
  %mul81.1 = fmul half %43, %46
  %add82.1 = fadd half %add80.1, %mul81.1
  %47 = extractelement <2 x half> %38, i64 0
  %mul83.1 = fmul half %47, %42
  %add84.1 = fadd half %add86, %mul83.1
  %48 = extractelement <2 x half> %38, i64 1
  %mul85.1 = fmul half %48, %44
  %add86.1 = fadd half %add84.1, %mul85.1
  %mul87.1 = fmul half %47, %45
  %add88.1 = fadd half %add90, %mul87.1
  %mul89.1 = fmul half %48, %46
  %add90.1 = fadd half %add88.1, %mul89.1
  %49 = load <2 x half>, <2 x half>* %arrayidx59.2, align 4, !tbaa !18
  %50 = load <2 x half>, <2 x half>* %arrayidx63.2, align 4, !tbaa !18
  %51 = load <2 x half>, <2 x half>* %arrayidx68.2, align 4, !tbaa !18
  %52 = load <2 x half>, <2 x half>* %arrayidx74.2, align 4, !tbaa !18
  %53 = extractelement <2 x half> %49, i64 0
  %54 = extractelement <2 x half> %51, i64 0
  %mul75.2 = fmul half %53, %54
  %add76.2 = fadd half %add78.1, %mul75.2
  %55 = extractelement <2 x half> %49, i64 1
  %56 = extractelement <2 x half> %52, i64 0
  %mul77.2 = fmul half %55, %56
  %add78.2 = fadd half %add76.2, %mul77.2
  %57 = extractelement <2 x half> %51, i64 1
  %mul79.2 = fmul half %53, %57
  %add80.2 = fadd half %add82.1, %mul79.2
  %58 = extractelement <2 x half> %52, i64 1
  %mul81.2 = fmul half %55, %58
  %add82.2 = fadd half %add80.2, %mul81.2
  %59 = extractelement <2 x half> %50, i64 0
  %mul83.2 = fmul half %59, %54
  %add84.2 = fadd half %add86.1, %mul83.2
  %60 = extractelement <2 x half> %50, i64 1
  %mul85.2 = fmul half %60, %56
  %add86.2 = fadd half %add84.2, %mul85.2
  %mul87.2 = fmul half %59, %57
  %add88.2 = fadd half %add90.1, %mul87.2
  %mul89.2 = fmul half %60, %58
  %add90.2 = fadd half %add88.2, %mul89.2
  %61 = load <2 x half>, <2 x half>* %arrayidx59.3, align 4, !tbaa !18
  %62 = load <2 x half>, <2 x half>* %arrayidx63.3, align 4, !tbaa !18
  %63 = load <2 x half>, <2 x half>* %arrayidx68.3, align 4, !tbaa !18
  %64 = load <2 x half>, <2 x half>* %arrayidx74.3, align 4, !tbaa !18
  %65 = extractelement <2 x half> %61, i64 0
  %66 = extractelement <2 x half> %63, i64 0
  %mul75.3 = fmul half %65, %66
  %add76.3 = fadd half %add78.2, %mul75.3
  %67 = extractelement <2 x half> %61, i64 1
  %68 = extractelement <2 x half> %64, i64 0
  %mul77.3 = fmul half %67, %68
  %add78.3 = fadd half %add76.3, %mul77.3
  %69 = extractelement <2 x half> %63, i64 1
  %mul79.3 = fmul half %65, %69
  %add80.3 = fadd half %add82.2, %mul79.3
  %70 = extractelement <2 x half> %64, i64 1
  %mul81.3 = fmul half %67, %70
  %add82.3 = fadd half %add80.3, %mul81.3
  %71 = extractelement <2 x half> %62, i64 0
  %mul83.3 = fmul half %71, %66
  %add84.3 = fadd half %add86.2, %mul83.3
  %72 = extractelement <2 x half> %62, i64 1
  %mul85.3 = fmul half %72, %68
  %add86.3 = fadd half %add84.3, %mul85.3
  %mul87.3 = fmul half %71, %69
  %add88.3 = fadd half %add90.2, %mul87.3
  %mul89.3 = fmul half %72, %70
  %add90.3 = fadd half %add88.3, %mul89.3
  %73 = load <2 x half>, <2 x half>* %arrayidx59.4, align 4, !tbaa !18
  %74 = load <2 x half>, <2 x half>* %arrayidx63.4, align 4, !tbaa !18
  %75 = load <2 x half>, <2 x half>* %arrayidx68.4, align 4, !tbaa !18
  %76 = load <2 x half>, <2 x half>* %arrayidx74.4, align 4, !tbaa !18
  %77 = extractelement <2 x half> %73, i64 0
  %78 = extractelement <2 x half> %75, i64 0
  %mul75.4 = fmul half %77, %78
  %add76.4 = fadd half %add78.3, %mul75.4
  %79 = extractelement <2 x half> %73, i64 1
  %80 = extractelement <2 x half> %76, i64 0
  %mul77.4 = fmul half %79, %80
  %add78.4 = fadd half %add76.4, %mul77.4
  %81 = extractelement <2 x half> %75, i64 1
  %mul79.4 = fmul half %77, %81
  %add80.4 = fadd half %add82.3, %mul79.4
  %82 = extractelement <2 x half> %76, i64 1
  %mul81.4 = fmul half %79, %82
  %add82.4 = fadd half %add80.4, %mul81.4
  %83 = extractelement <2 x half> %74, i64 0
  %mul83.4 = fmul half %83, %78
  %add84.4 = fadd half %add86.3, %mul83.4
  %84 = extractelement <2 x half> %74, i64 1
  %mul85.4 = fmul half %84, %80
  %add86.4 = fadd half %add84.4, %mul85.4
  %mul87.4 = fmul half %83, %81
  %add88.4 = fadd half %add90.3, %mul87.4
  %mul89.4 = fmul half %84, %82
  %add90.4 = fadd half %add88.4, %mul89.4
  %85 = load <2 x half>, <2 x half>* %arrayidx59.5, align 4, !tbaa !18
  %86 = load <2 x half>, <2 x half>* %arrayidx63.5, align 4, !tbaa !18
  %87 = load <2 x half>, <2 x half>* %arrayidx68.5, align 4, !tbaa !18
  %88 = load <2 x half>, <2 x half>* %arrayidx74.5, align 4, !tbaa !18
  %89 = extractelement <2 x half> %85, i64 0
  %90 = extractelement <2 x half> %87, i64 0
  %mul75.5 = fmul half %89, %90
  %add76.5 = fadd half %add78.4, %mul75.5
  %91 = extractelement <2 x half> %85, i64 1
  %92 = extractelement <2 x half> %88, i64 0
  %mul77.5 = fmul half %91, %92
  %add78.5 = fadd half %add76.5, %mul77.5
  %93 = extractelement <2 x half> %87, i64 1
  %mul79.5 = fmul half %89, %93
  %add80.5 = fadd half %add82.4, %mul79.5
  %94 = extractelement <2 x half> %88, i64 1
  %mul81.5 = fmul half %91, %94
  %add82.5 = fadd half %add80.5, %mul81.5
  %95 = extractelement <2 x half> %86, i64 0
  %mul83.5 = fmul half %95, %90
  %add84.5 = fadd half %add86.4, %mul83.5
  %96 = extractelement <2 x half> %86, i64 1
  %mul85.5 = fmul half %96, %92
  %add86.5 = fadd half %add84.5, %mul85.5
  %mul87.5 = fmul half %95, %93
  %add88.5 = fadd half %add90.4, %mul87.5
  %mul89.5 = fmul half %96, %94
  %add90.5 = fadd half %add88.5, %mul89.5
  %97 = load <2 x half>, <2 x half>* %arrayidx59.6, align 4, !tbaa !18
  %98 = load <2 x half>, <2 x half>* %arrayidx63.6, align 4, !tbaa !18
  %99 = load <2 x half>, <2 x half>* %arrayidx68.6, align 4, !tbaa !18
  %100 = load <2 x half>, <2 x half>* %arrayidx74.6, align 4, !tbaa !18
  %101 = extractelement <2 x half> %97, i64 0
  %102 = extractelement <2 x half> %99, i64 0
  %mul75.6 = fmul half %101, %102
  %add76.6 = fadd half %add78.5, %mul75.6
  %103 = extractelement <2 x half> %97, i64 1
  %104 = extractelement <2 x half> %100, i64 0
  %mul77.6 = fmul half %103, %104
  %add78.6 = fadd half %add76.6, %mul77.6
  %105 = extractelement <2 x half> %99, i64 1
  %mul79.6 = fmul half %101, %105
  %add80.6 = fadd half %add82.5, %mul79.6
  %106 = extractelement <2 x half> %100, i64 1
  %mul81.6 = fmul half %103, %106
  %add82.6 = fadd half %add80.6, %mul81.6
  %107 = extractelement <2 x half> %98, i64 0
  %mul83.6 = fmul half %107, %102
  %add84.6 = fadd half %add86.5, %mul83.6
  %108 = extractelement <2 x half> %98, i64 1
  %mul85.6 = fmul half %108, %104
  %add86.6 = fadd half %add84.6, %mul85.6
  %mul87.6 = fmul half %107, %105
  %add88.6 = fadd half %add90.5, %mul87.6
  %mul89.6 = fmul half %108, %106
  %add90.6 = fadd half %add88.6, %mul89.6
  %109 = load <2 x half>, <2 x half>* %arrayidx59.7, align 4, !tbaa !18
  %110 = load <2 x half>, <2 x half>* %arrayidx63.7, align 4, !tbaa !18
  %111 = load <2 x half>, <2 x half>* %arrayidx68.7, align 4, !tbaa !18
  %112 = load <2 x half>, <2 x half>* %arrayidx74.7, align 4, !tbaa !18
  %113 = extractelement <2 x half> %109, i64 0
  %114 = extractelement <2 x half> %111, i64 0
  %mul75.7 = fmul half %113, %114
  %add76.7 = fadd half %add78.6, %mul75.7
  %115 = extractelement <2 x half> %109, i64 1
  %116 = extractelement <2 x half> %112, i64 0
  %mul77.7 = fmul half %115, %116
  %add78.7 = fadd half %add76.7, %mul77.7
  %117 = extractelement <2 x half> %111, i64 1
  %mul79.7 = fmul half %113, %117
  %add80.7 = fadd half %add82.6, %mul79.7
  %118 = extractelement <2 x half> %112, i64 1
  %mul81.7 = fmul half %115, %118
  %add82.7 = fadd half %add80.7, %mul81.7
  %119 = extractelement <2 x half> %110, i64 0
  %mul83.7 = fmul half %119, %114
  %add84.7 = fadd half %add86.6, %mul83.7
  %120 = extractelement <2 x half> %110, i64 1
  %mul85.7 = fmul half %120, %116
  %add86.7 = fadd half %add84.7, %mul85.7
  %mul87.7 = fmul half %119, %117
  %add88.7 = fadd half %add90.6, %mul87.7
  %mul89.7 = fmul half %120, %118
  %add90.7 = fadd half %add88.7, %mul89.7
  %121 = load <2 x half>, <2 x half>* %arrayidx59.8, align 4, !tbaa !18
  %122 = load <2 x half>, <2 x half>* %arrayidx63.8, align 4, !tbaa !18
  %123 = load <2 x half>, <2 x half>* %arrayidx68.8, align 4, !tbaa !18
  %124 = load <2 x half>, <2 x half>* %arrayidx74.8, align 4, !tbaa !18
  %125 = extractelement <2 x half> %121, i64 0
  %126 = extractelement <2 x half> %123, i64 0
  %mul75.8 = fmul half %125, %126
  %add76.8 = fadd half %add78.7, %mul75.8
  %127 = extractelement <2 x half> %121, i64 1
  %128 = extractelement <2 x half> %124, i64 0
  %mul77.8 = fmul half %127, %128
  %add78.8 = fadd half %add76.8, %mul77.8
  %129 = extractelement <2 x half> %123, i64 1
  %mul79.8 = fmul half %125, %129
  %add80.8 = fadd half %add82.7, %mul79.8
  %130 = extractelement <2 x half> %124, i64 1
  %mul81.8 = fmul half %127, %130
  %add82.8 = fadd half %add80.8, %mul81.8
  %131 = extractelement <2 x half> %122, i64 0
  %mul83.8 = fmul half %131, %126
  %add84.8 = fadd half %add86.7, %mul83.8
  %132 = extractelement <2 x half> %122, i64 1
  %mul85.8 = fmul half %132, %128
  %add86.8 = fadd half %add84.8, %mul85.8
  %mul87.8 = fmul half %131, %129
  %add88.8 = fadd half %add90.7, %mul87.8
  %mul89.8 = fmul half %132, %130
  %add90.8 = fadd half %add88.8, %mul89.8
  %133 = load <2 x half>, <2 x half>* %arrayidx59.9, align 4, !tbaa !18
  %134 = load <2 x half>, <2 x half>* %arrayidx63.9, align 4, !tbaa !18
  %135 = load <2 x half>, <2 x half>* %arrayidx68.9, align 4, !tbaa !18
  %136 = load <2 x half>, <2 x half>* %arrayidx74.9, align 4, !tbaa !18
  %137 = extractelement <2 x half> %133, i64 0
  %138 = extractelement <2 x half> %135, i64 0
  %mul75.9 = fmul half %137, %138
  %add76.9 = fadd half %add78.8, %mul75.9
  %139 = extractelement <2 x half> %133, i64 1
  %140 = extractelement <2 x half> %136, i64 0
  %mul77.9 = fmul half %139, %140
  %add78.9 = fadd half %add76.9, %mul77.9
  %141 = extractelement <2 x half> %135, i64 1
  %mul79.9 = fmul half %137, %141
  %add80.9 = fadd half %add82.8, %mul79.9
  %142 = extractelement <2 x half> %136, i64 1
  %mul81.9 = fmul half %139, %142
  %add82.9 = fadd half %add80.9, %mul81.9
  %143 = extractelement <2 x half> %134, i64 0
  %mul83.9 = fmul half %143, %138
  %add84.9 = fadd half %add86.8, %mul83.9
  %144 = extractelement <2 x half> %134, i64 1
  %mul85.9 = fmul half %144, %140
  %add86.9 = fadd half %add84.9, %mul85.9
  %mul87.9 = fmul half %143, %141
  %add88.9 = fadd half %add90.8, %mul87.9
  %mul89.9 = fmul half %144, %142
  %add90.9 = fadd half %add88.9, %mul89.9
  %145 = load <2 x half>, <2 x half>* %arrayidx59.10, align 4, !tbaa !18
  %146 = load <2 x half>, <2 x half>* %arrayidx63.10, align 4, !tbaa !18
  %147 = load <2 x half>, <2 x half>* %arrayidx68.10, align 4, !tbaa !18
  %148 = load <2 x half>, <2 x half>* %arrayidx74.10, align 4, !tbaa !18
  %149 = extractelement <2 x half> %145, i64 0
  %150 = extractelement <2 x half> %147, i64 0
  %mul75.10 = fmul half %149, %150
  %add76.10 = fadd half %add78.9, %mul75.10
  %151 = extractelement <2 x half> %145, i64 1
  %152 = extractelement <2 x half> %148, i64 0
  %mul77.10 = fmul half %151, %152
  %add78.10 = fadd half %add76.10, %mul77.10
  %153 = extractelement <2 x half> %147, i64 1
  %mul79.10 = fmul half %149, %153
  %add80.10 = fadd half %add82.9, %mul79.10
  %154 = extractelement <2 x half> %148, i64 1
  %mul81.10 = fmul half %151, %154
  %add82.10 = fadd half %add80.10, %mul81.10
  %155 = extractelement <2 x half> %146, i64 0
  %mul83.10 = fmul half %155, %150
  %add84.10 = fadd half %add86.9, %mul83.10
  %156 = extractelement <2 x half> %146, i64 1
  %mul85.10 = fmul half %156, %152
  %add86.10 = fadd half %add84.10, %mul85.10
  %mul87.10 = fmul half %155, %153
  %add88.10 = fadd half %add90.9, %mul87.10
  %mul89.10 = fmul half %156, %154
  %add90.10 = fadd half %add88.10, %mul89.10
  %157 = load <2 x half>, <2 x half>* %arrayidx59.11, align 4, !tbaa !18
  %158 = load <2 x half>, <2 x half>* %arrayidx63.11, align 4, !tbaa !18
  %159 = load <2 x half>, <2 x half>* %arrayidx68.11, align 4, !tbaa !18
  %160 = load <2 x half>, <2 x half>* %arrayidx74.11, align 4, !tbaa !18
  %161 = extractelement <2 x half> %157, i64 0
  %162 = extractelement <2 x half> %159, i64 0
  %mul75.11 = fmul half %161, %162
  %add76.11 = fadd half %add78.10, %mul75.11
  %163 = extractelement <2 x half> %157, i64 1
  %164 = extractelement <2 x half> %160, i64 0
  %mul77.11 = fmul half %163, %164
  %add78.11 = fadd half %add76.11, %mul77.11
  %165 = extractelement <2 x half> %159, i64 1
  %mul79.11 = fmul half %161, %165
  %add80.11 = fadd half %add82.10, %mul79.11
  %166 = extractelement <2 x half> %160, i64 1
  %mul81.11 = fmul half %163, %166
  %add82.11 = fadd half %add80.11, %mul81.11
  %167 = extractelement <2 x half> %158, i64 0
  %mul83.11 = fmul half %167, %162
  %add84.11 = fadd half %add86.10, %mul83.11
  %168 = extractelement <2 x half> %158, i64 1
  %mul85.11 = fmul half %168, %164
  %add86.11 = fadd half %add84.11, %mul85.11
  %mul87.11 = fmul half %167, %165
  %add88.11 = fadd half %add90.10, %mul87.11
  %mul89.11 = fmul half %168, %166
  %add90.11 = fadd half %add88.11, %mul89.11
  %169 = load <2 x half>, <2 x half>* %arrayidx59.12, align 4, !tbaa !18
  %170 = load <2 x half>, <2 x half>* %arrayidx63.12, align 4, !tbaa !18
  %171 = load <2 x half>, <2 x half>* %arrayidx68.12, align 4, !tbaa !18
  %172 = load <2 x half>, <2 x half>* %arrayidx74.12, align 4, !tbaa !18
  %173 = extractelement <2 x half> %169, i64 0
  %174 = extractelement <2 x half> %171, i64 0
  %mul75.12 = fmul half %173, %174
  %add76.12 = fadd half %add78.11, %mul75.12
  %175 = extractelement <2 x half> %169, i64 1
  %176 = extractelement <2 x half> %172, i64 0
  %mul77.12 = fmul half %175, %176
  %add78.12 = fadd half %add76.12, %mul77.12
  %177 = extractelement <2 x half> %171, i64 1
  %mul79.12 = fmul half %173, %177
  %add80.12 = fadd half %add82.11, %mul79.12
  %178 = extractelement <2 x half> %172, i64 1
  %mul81.12 = fmul half %175, %178
  %add82.12 = fadd half %add80.12, %mul81.12
  %179 = extractelement <2 x half> %170, i64 0
  %mul83.12 = fmul half %179, %174
  %add84.12 = fadd half %add86.11, %mul83.12
  %180 = extractelement <2 x half> %170, i64 1
  %mul85.12 = fmul half %180, %176
  %add86.12 = fadd half %add84.12, %mul85.12
  %mul87.12 = fmul half %179, %177
  %add88.12 = fadd half %add90.11, %mul87.12
  %mul89.12 = fmul half %180, %178
  %add90.12 = fadd half %add88.12, %mul89.12
  %181 = load <2 x half>, <2 x half>* %arrayidx59.13, align 4, !tbaa !18
  %182 = load <2 x half>, <2 x half>* %arrayidx63.13, align 4, !tbaa !18
  %183 = load <2 x half>, <2 x half>* %arrayidx68.13, align 4, !tbaa !18
  %184 = load <2 x half>, <2 x half>* %arrayidx74.13, align 4, !tbaa !18
  %185 = extractelement <2 x half> %181, i64 0
  %186 = extractelement <2 x half> %183, i64 0
  %mul75.13 = fmul half %185, %186
  %add76.13 = fadd half %add78.12, %mul75.13
  %187 = extractelement <2 x half> %181, i64 1
  %188 = extractelement <2 x half> %184, i64 0
  %mul77.13 = fmul half %187, %188
  %add78.13 = fadd half %add76.13, %mul77.13
  %189 = extractelement <2 x half> %183, i64 1
  %mul79.13 = fmul half %185, %189
  %add80.13 = fadd half %add82.12, %mul79.13
  %190 = extractelement <2 x half> %184, i64 1
  %mul81.13 = fmul half %187, %190
  %add82.13 = fadd half %add80.13, %mul81.13
  %191 = extractelement <2 x half> %182, i64 0
  %mul83.13 = fmul half %191, %186
  %add84.13 = fadd half %add86.12, %mul83.13
  %192 = extractelement <2 x half> %182, i64 1
  %mul85.13 = fmul half %192, %188
  %add86.13 = fadd half %add84.13, %mul85.13
  %mul87.13 = fmul half %191, %189
  %add88.13 = fadd half %add90.12, %mul87.13
  %mul89.13 = fmul half %192, %190
  %add90.13 = fadd half %add88.13, %mul89.13
  %193 = load <2 x half>, <2 x half>* %arrayidx59.14, align 4, !tbaa !18
  %194 = load <2 x half>, <2 x half>* %arrayidx63.14, align 4, !tbaa !18
  %195 = load <2 x half>, <2 x half>* %arrayidx68.14, align 4, !tbaa !18
  %196 = load <2 x half>, <2 x half>* %arrayidx74.14, align 4, !tbaa !18
  %197 = extractelement <2 x half> %193, i64 0
  %198 = extractelement <2 x half> %195, i64 0
  %mul75.14 = fmul half %197, %198
  %add76.14 = fadd half %add78.13, %mul75.14
  %199 = extractelement <2 x half> %193, i64 1
  %200 = extractelement <2 x half> %196, i64 0
  %mul77.14 = fmul half %199, %200
  %add78.14 = fadd half %add76.14, %mul77.14
  %201 = extractelement <2 x half> %195, i64 1
  %mul79.14 = fmul half %197, %201
  %add80.14 = fadd half %add82.13, %mul79.14
  %202 = extractelement <2 x half> %196, i64 1
  %mul81.14 = fmul half %199, %202
  %add82.14 = fadd half %add80.14, %mul81.14
  %203 = extractelement <2 x half> %194, i64 0
  %mul83.14 = fmul half %203, %198
  %add84.14 = fadd half %add86.13, %mul83.14
  %204 = extractelement <2 x half> %194, i64 1
  %mul85.14 = fmul half %204, %200
  %add86.14 = fadd half %add84.14, %mul85.14
  %mul87.14 = fmul half %203, %201
  %add88.14 = fadd half %add90.13, %mul87.14
  %mul89.14 = fmul half %204, %202
  %add90.14 = fadd half %add88.14, %mul89.14
  %205 = load <2 x half>, <2 x half>* %arrayidx59.15, align 4, !tbaa !18
  %206 = load <2 x half>, <2 x half>* %arrayidx63.15, align 4, !tbaa !18
  %207 = load <2 x half>, <2 x half>* %arrayidx68.15, align 4, !tbaa !18
  %208 = load <2 x half>, <2 x half>* %arrayidx74.15, align 4, !tbaa !18
  %209 = extractelement <2 x half> %205, i64 0
  %210 = extractelement <2 x half> %207, i64 0
  %mul75.15 = fmul half %209, %210
  %add76.15 = fadd half %add78.14, %mul75.15
  %211 = extractelement <2 x half> %205, i64 1
  %212 = extractelement <2 x half> %208, i64 0
  %mul77.15 = fmul half %211, %212
  %add78.15 = fadd half %add76.15, %mul77.15
  %213 = insertelement <2 x half> undef, half %add78.15, i64 0
  %214 = extractelement <2 x half> %207, i64 1
  %mul79.15 = fmul half %209, %214
  %add80.15 = fadd half %add82.14, %mul79.15
  %215 = extractelement <2 x half> %208, i64 1
  %mul81.15 = fmul half %211, %215
  %add82.15 = fadd half %add80.15, %mul81.15
  %216 = insertelement <2 x half> %213, half %add82.15, i64 1
  %217 = extractelement <2 x half> %206, i64 0
  %mul83.15 = fmul half %217, %210
  %add84.15 = fadd half %add86.14, %mul83.15
  %218 = extractelement <2 x half> %206, i64 1
  %mul85.15 = fmul half %218, %212
  %add86.15 = fadd half %add84.15, %mul85.15
  %219 = insertelement <2 x half> undef, half %add86.15, i64 0
  %mul87.15 = fmul half %217, %214
  %add88.15 = fadd half %add90.14, %mul87.15
  %mul89.15 = fmul half %218, %215
  %add90.15 = fadd half %add88.15, %mul89.15
  %220 = insertelement <2 x half> %219, half %add90.15, i64 1
  tail call void @hc_barrier(i32 1) #9
  store <2 x half> %216, <2 x half>* %arrayidx94, align 4, !tbaa !18
  store <2 x half> %220, <2 x half>* %arrayidx98, align 4, !tbaa !18
  %inc99 = add nuw nsw i32 %j.0174, 1
  %exitcond = icmp eq i32 %inc99, 32
  br i1 %exitcond, label %221, label %12

; <label>:221:                                    ; preds = %12
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @hc_get_workitem_id(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i64 @hc_get_group_id(i32) local_unnamed_addr #3

; Function Attrs: noduplicate
declare void @hc_barrier(i32) local_unnamed_addr #6

attributes #0 = { alwaysinline norecurse "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noduplicate "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-fp16-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind readnone }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin noduplicate }

!hcc.kernels = !{!0}
!llvm.ident = !{!1}

!0 = !{void (half*, half*, half*)* @"_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPDhS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_"}
!1 = !{!"HCC clang version 5.0.0  (based on HCC 1.0.17223-03d66c7-8685ae3-32090c8 )"}
!2 = !{!3, !4, i64 0}
!3 = !{!"_ZTSN6Kalmar12__index_leafILi0EEE", !4, i64 0, !4, i64 4}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!4, !4, i64 0}
!8 = !{!9, !4, i64 0}
!9 = !{!"_ZTSN6Kalmar12__index_leafILi1EEE", !4, i64 0, !4, i64 4}
!10 = !{!11, !4, i64 0}
!11 = !{!"_ZTSN6Kalmar12__index_leafILi2EEE", !4, i64 0, !4, i64 4}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"__fp16", !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !5, i64 0}
!18 = !{!5, !5, i64 0}

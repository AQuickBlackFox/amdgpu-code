; ModuleID = '<stdin>'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid_launch_parm = type { %struct.gl_dim3, %struct.gl_dim3, i32, i32, i32, %"class.hc::accelerator_view"*, %"class.hc::completion_future"* }
%struct.gl_dim3 = type { i32, i32, i32 }
%"class.hc::accelerator_view" = type { %"class.std::__1::shared_ptr" }
%"class.std::__1::shared_ptr" = type { %"class.Kalmar::KalmarQueue"*, %"class.std::__1::__shared_weak_count"* }
%"class.Kalmar::KalmarQueue" = type { i32 (...)**, %"class.Kalmar::KalmarDevice"*, i32, i32 }
%"class.Kalmar::KalmarDevice" = type { i32 (...)**, i32, %"class.std::__1::map", %"class.std::__1::mutex", i8 }
%"class.std::__1::map" = type { %"class.std::__1::__tree.8" }
%"class.std::__1::__tree.8" = type { %"class.std::__1::__tree_node.9"*, %"class.std::__1::__compressed_pair.10.15", %"class.std::__1::__compressed_pair.14" }
%"class.std::__1::__tree_node.9" = type { %"class.std::__1::__tree_node_base.base", %"union.std::__1::__value_type" }
%"class.std::__1::__tree_node_base.base" = type <{ %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"*, i8 }>
%"class.std::__1::__tree_end_node" = type { %"class.std::__1::__tree_node_base"* }
%"class.std::__1::__tree_node_base" = type { %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"*, i8 }
%"union.std::__1::__value_type" = type { %"struct.std::__1::pair" }
%"struct.std::__1::pair" = type { %"class.std::__1::__thread_id", %"class.std::__1::shared_ptr" }
%"class.std::__1::__thread_id" = type { i64 }
%"class.std::__1::__compressed_pair.10.15" = type { %"class.std::__1::__libcpp_compressed_pair_imp" }
%"class.std::__1::__libcpp_compressed_pair_imp" = type { %"class.std::__1::__tree_end_node" }
%"class.std::__1::__compressed_pair.14" = type { %"class.std::__1::__libcpp_compressed_pair_imp.15" }
%"class.std::__1::__libcpp_compressed_pair_imp.15" = type { i64 }
%"class.std::__1::mutex" = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %"struct.(anonymous union)::__pthread_mutex_s" }
%"struct.(anonymous union)::__pthread_mutex_s" = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::__1::__shared_weak_count" = type { %"class.std::__1::__shared_count", i64 }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }
%"class.hc::completion_future" = type { %"class.std::__1::shared_future", %"class.std::__1::thread"*, %"class.std::__1::shared_ptr.30" }
%"class.std::__1::shared_future" = type { %"class.std::__1::__assoc_sub_state"* }
%"class.std::__1::__assoc_sub_state" = type { %"class.std::__1::__shared_count", %"class.std::exception_ptr", %"class.std::__1::mutex", %"class.std::__1::condition_variable", i32 }
%"class.std::exception_ptr" = type { i8* }
%"class.std::__1::condition_variable" = type { %union.pthread_cond_t }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%"class.std::__1::thread" = type { i64 }
%"class.std::__1::shared_ptr.30" = type { %"class.Kalmar::KalmarAsyncOp"*, %"class.std::__1::__shared_weak_count"* }
%"class.Kalmar::KalmarAsyncOp" = type { i32 (...)**, i32, i64 }

; Function Attrs: nounwind readnone
declare i64 @hc_get_num_groups(i32) #0

; Function Attrs: nounwind readnone
declare i64 @hc_get_workitem_id(i32) #0

; Function Attrs: nounwind readnone
declare i64 @amp_get_global_id(i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind readnone
declare i64 @amp_get_local_size(i32) #0

declare i32 @__rocm_hadd(i32, i32) #2

; Function Attrs: nounwind uwtable
define spir_kernel void @ZZ16ihipMemsetKernelIcEN2hc17completion_futureEP12ihipStream_tR14LockedAccessorI24ihipStreamCriticalBase_tINSt3__15mutexEEEPT_SB_mENUlNS0_11tiled_indexILi1EEEE_19__cxxamp_trampolineEmPcc(i64, i8 addrspace(1)*, i8 signext) #3 align 2 {
  %4 = tail call spir_func i64 @amp_get_global_id(i32 0) #5
  %sext.i = shl i64 %4, 32
  %5 = ashr exact i64 %sext.i, 32
  %6 = icmp ult i64 %5, %0
  br i1 %6, label %.lr.ph.i, label %_ZZ16ihipMemsetKernelIcEN2hc17completion_futureEP12ihipStream_tR14LockedAccessorI24ihipStreamCriticalBase_tINSt3__15mutexEEEPT_SB_mENKUlNS0_11tiled_indexILi1EEEE_clESE_.exit

.lr.ph.i:                                         ; preds = %3
  %7 = tail call spir_func i64 @amp_get_local_size(i32 0) #5
  %8 = tail call spir_func i64 @hc_get_num_groups(i32 0) #5
  %9 = shl i64 %7, 32
  %sext3.i = mul i64 %9, %8
  %10 = ashr exact i64 %sext3.i, 32
  br label %11

; <label>:11                                      ; preds = %11, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %5, %.lr.ph.i ], [ %indvars.iv.next.i, %11 ]
  %12 = getelementptr inbounds i8 addrspace(1)* %1, i64 %indvars.iv.i
  store i8 %2, i8 addrspace(1)* %12, align 1, !tbaa !16
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, %10
  %13 = icmp ult i64 %indvars.iv.next.i, %0
  br i1 %13, label %11, label %_ZZ16ihipMemsetKernelIcEN2hc17completion_futureEP12ihipStream_tR14LockedAccessorI24ihipStreamCriticalBase_tINSt3__15mutexEEEPT_SB_mENKUlNS0_11tiled_indexILi1EEEE_clESE_.exit.loopexit

_ZZ16ihipMemsetKernelIcEN2hc17completion_futureEP12ihipStream_tR14LockedAccessorI24ihipStreamCriticalBase_tINSt3__15mutexEEEPT_SB_mENKUlNS0_11tiled_indexILi1EEEE_clESE_.exit.loopexit: ; preds = %11
  br label %_ZZ16ihipMemsetKernelIcEN2hc17completion_futureEP12ihipStream_tR14LockedAccessorI24ihipStreamCriticalBase_tINSt3__15mutexEEEPT_SB_mENKUlNS0_11tiled_indexILi1EEEE_clESE_.exit

_ZZ16ihipMemsetKernelIcEN2hc17completion_futureEP12ihipStream_tR14LockedAccessorI24ihipStreamCriticalBase_tINSt3__15mutexEEEPT_SB_mENKUlNS0_11tiled_indexILi1EEEE_clESE_.exit: ; preds = %_ZZ16ihipMemsetKernelIcEN2hc17completion_futureEP12ihipStream_tR14LockedAccessorI24ihipStreamCriticalBase_tINSt3__15mutexEEEPT_SB_mENKUlNS0_11tiled_indexILi1EEEE_clESE_.exit.loopexit, %3
  ret void
}

; Function Attrs: nounwind uwtable
define spir_kernel void @ZZ16ihipMemsetKernelIjEN2hc17completion_futureEP12ihipStream_tR14LockedAccessorI24ihipStreamCriticalBase_tINSt3__15mutexEEEPT_SB_mENUlNS0_11tiled_indexILi1EEEE_19__cxxamp_trampolineEmPjj(i64, i32 addrspace(1)*, i32) #3 align 2 {
  %4 = tail call spir_func i64 @amp_get_global_id(i32 0) #5
  %sext.i = shl i64 %4, 32
  %5 = ashr exact i64 %sext.i, 32
  %6 = icmp ult i64 %5, %0
  br i1 %6, label %.lr.ph.i, label %_ZZ16ihipMemsetKernelIjEN2hc17completion_futureEP12ihipStream_tR14LockedAccessorI24ihipStreamCriticalBase_tINSt3__15mutexEEEPT_SB_mENKUlNS0_11tiled_indexILi1EEEE_clESE_.exit

.lr.ph.i:                                         ; preds = %3
  %7 = tail call spir_func i64 @amp_get_local_size(i32 0) #5
  %8 = tail call spir_func i64 @hc_get_num_groups(i32 0) #5
  %9 = shl i64 %7, 32
  %sext3.i = mul i64 %9, %8
  %10 = ashr exact i64 %sext3.i, 32
  br label %11

; <label>:11                                      ; preds = %11, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %5, %.lr.ph.i ], [ %indvars.iv.next.i, %11 ]
  %12 = getelementptr inbounds i32 addrspace(1)* %1, i64 %indvars.iv.i
  store i32 %2, i32 addrspace(1)* %12, align 4, !tbaa !19
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, %10
  %13 = icmp ult i64 %indvars.iv.next.i, %0
  br i1 %13, label %11, label %_ZZ16ihipMemsetKernelIjEN2hc17completion_futureEP12ihipStream_tR14LockedAccessorI24ihipStreamCriticalBase_tINSt3__15mutexEEEPT_SB_mENKUlNS0_11tiled_indexILi1EEEE_clESE_.exit.loopexit

_ZZ16ihipMemsetKernelIjEN2hc17completion_futureEP12ihipStream_tR14LockedAccessorI24ihipStreamCriticalBase_tINSt3__15mutexEEEPT_SB_mENKUlNS0_11tiled_indexILi1EEEE_clESE_.exit.loopexit: ; preds = %11
  br label %_ZZ16ihipMemsetKernelIjEN2hc17completion_futureEP12ihipStream_tR14LockedAccessorI24ihipStreamCriticalBase_tINSt3__15mutexEEEPT_SB_mENKUlNS0_11tiled_indexILi1EEEE_clESE_.exit

_ZZ16ihipMemsetKernelIjEN2hc17completion_futureEP12ihipStream_tR14LockedAccessorI24ihipStreamCriticalBase_tINSt3__15mutexEEEPT_SB_mENKUlNS0_11tiled_indexILi1EEEE_clESE_.exit: ; preds = %_ZZ16ihipMemsetKernelIjEN2hc17completion_futureEP12ihipStream_tR14LockedAccessorI24ihipStreamCriticalBase_tINSt3__15mutexEEEPT_SB_mENKUlNS0_11tiled_indexILi1EEEE_clESE_.exit.loopexit, %3
  ret void
}

; Function Attrs: uwtable
define spir_kernel void @ZN12_GLOBAL__N_146_Z9FuncHADD216grid_launch_parmPiS0_S0__functor19__cxxamp_trampolineEiiiiiiPKiS2_Pi(i32, i32, i32, i32, i32, i32, i32 addrspace(1)*, i32 addrspace(1)*, i32 addrspace(1)*) #4 align 2 {
  %10 = alloca %struct.grid_launch_parm, align 8
  %11 = alloca %struct.grid_launch_parm, align 16
  %.sroa.84 = alloca { i32, i32, i32, %"class.hc::accelerator_view"*, %"class.hc::completion_future"* }, align 8
  %12 = insertelement <4 x i32> undef, i32 %0, i32 0
  %13 = insertelement <4 x i32> %12, i32 %1, i32 1
  %14 = insertelement <4 x i32> %13, i32 %2, i32 2
  %15 = insertelement <4 x i32> %14, i32 %3, i32 3
  %16 = bitcast %struct.grid_launch_parm* %11 to i8*
  call spir_func void @llvm.lifetime.start(i64 56, i8* %16)
  %17 = bitcast %struct.grid_launch_parm* %11 to <4 x i32>*
  store <4 x i32> %15, <4 x i32>* %17, align 16
  %18 = getelementptr inbounds %struct.grid_launch_parm* %11, i64 0, i32 1, i32 1
  store i32 %4, i32* %18, align 8
  %19 = getelementptr inbounds %struct.grid_launch_parm* %11, i64 0, i32 1, i32 2
  store i32 %5, i32* %19, align 4
  %20 = getelementptr inbounds %struct.grid_launch_parm* %11, i64 0, i32 2
  %21 = bitcast i32* %20 to i8*
  %22 = bitcast { i32, i32, i32, %"class.hc::accelerator_view"*, %"class.hc::completion_future"* }* %.sroa.84 to i8*
  call spir_func void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  %23 = bitcast %struct.grid_launch_parm* %10 to i8*
  call spir_func void @llvm.lifetime.start(i64 56, i8* %23)
  %tmp = bitcast %struct.grid_launch_parm* %10 to i8*
  %tmp1 = bitcast %struct.grid_launch_parm* %11 to i8*
  call spir_func void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp, i8* %tmp1, i64 56, i32 1, i1 false)
  %24 = call spir_func i64 @hc_get_workitem_id(i32 0) #5
  %sext.i = shl i64 %24, 32
  %25 = ashr exact i64 %sext.i, 32
  %26 = getelementptr inbounds i32 addrspace(1)* %6, i64 %25
  %27 = load i32 addrspace(1)* %26, align 4, !tbaa !19
  %28 = getelementptr inbounds i32 addrspace(1)* %7, i64 %25
  %29 = load i32 addrspace(1)* %28, align 4, !tbaa !19
  %30 = call spir_func i32 @__rocm_hadd(i32 %27, i32 %29) #6
  %31 = ashr i32 %27, 16
  %32 = ashr i32 %29, 16
  %33 = call spir_func i32 @__rocm_hadd(i32 %31, i32 %32) #6
  %34 = shl i32 %33, 16
  %35 = and i32 %30, 65535
  %36 = or i32 %34, %35
  %37 = getelementptr inbounds i32 addrspace(1)* %8, i64 %25
  store i32 %36, i32 addrspace(1)* %37, align 4, !tbaa !19
  %38 = bitcast %struct.grid_launch_parm* %10 to i8*
  call spir_func void @llvm.lifetime.end(i64 56, i8* %38)
  call spir_func void @llvm.lifetime.end(i64 56, i8* %16)
  ret void
}

; Function Attrs: uwtable
define spir_kernel void @ZN12_GLOBAL__N_144_Z7DoHADD216grid_launch_parmPiS0_S0__functor19__cxxamp_trampolineEiiiiiiPKiS2_Pi(i32, i32, i32, i32, i32, i32, i32 addrspace(1)*, i32 addrspace(1)*, i32 addrspace(1)*) #4 align 2 {
  %10 = alloca %struct.grid_launch_parm, align 8
  %11 = alloca %struct.grid_launch_parm, align 16
  %.sroa.84 = alloca { i32, i32, i32, %"class.hc::accelerator_view"*, %"class.hc::completion_future"* }, align 8
  %12 = insertelement <4 x i32> undef, i32 %0, i32 0
  %13 = insertelement <4 x i32> %12, i32 %1, i32 1
  %14 = insertelement <4 x i32> %13, i32 %2, i32 2
  %15 = insertelement <4 x i32> %14, i32 %3, i32 3
  %16 = bitcast %struct.grid_launch_parm* %11 to i8*
  call spir_func void @llvm.lifetime.start(i64 56, i8* %16)
  %17 = bitcast %struct.grid_launch_parm* %11 to <4 x i32>*
  store <4 x i32> %15, <4 x i32>* %17, align 16
  %18 = getelementptr inbounds %struct.grid_launch_parm* %11, i64 0, i32 1, i32 1
  store i32 %4, i32* %18, align 8
  %19 = getelementptr inbounds %struct.grid_launch_parm* %11, i64 0, i32 1, i32 2
  store i32 %5, i32* %19, align 4
  %20 = getelementptr inbounds %struct.grid_launch_parm* %11, i64 0, i32 2
  %21 = bitcast i32* %20 to i8*
  %22 = bitcast { i32, i32, i32, %"class.hc::accelerator_view"*, %"class.hc::completion_future"* }* %.sroa.84 to i8*
  call spir_func void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  %23 = bitcast %struct.grid_launch_parm* %10 to i8*
  call spir_func void @llvm.lifetime.start(i64 56, i8* %23)
  %tmp = bitcast %struct.grid_launch_parm* %10 to i8*
  %tmp1 = bitcast %struct.grid_launch_parm* %11 to i8*
  call spir_func void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp, i8* %tmp1, i64 56, i32 1, i1 false)
  %24 = call spir_func i64 @hc_get_workitem_id(i32 0) #5
  %sext.i = shl i64 %24, 32
  %25 = ashr exact i64 %sext.i, 32
  %26 = getelementptr inbounds i32 addrspace(1)* %6, i64 %25
  %27 = load i32 addrspace(1)* %26, align 4, !tbaa !19
  %28 = getelementptr inbounds i32 addrspace(1)* %7, i64 %25
  %29 = load i32 addrspace(1)* %28, align 4, !tbaa !19
  %30 = ashr i32 %27, 16
  %31 = ashr i32 %29, 16
  br label %32

; <label>:32                                      ; preds = %32, %9
  %i.01.i = phi i32 [ 0, %9 ], [ %35, %32 ]
  %33 = call spir_func i32 @__rocm_hadd(i32 %27, i32 %29) #6
  %34 = call spir_func i32 @__rocm_hadd(i32 %30, i32 %31) #6
  %35 = add nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %35, 134217728
  br i1 %exitcond.i, label %_Z7DoHADD216grid_launch_parmPiS0_S0_.exit, label %32

_Z7DoHADD216grid_launch_parmPiS0_S0_.exit:        ; preds = %32
  %36 = shl i32 %34, 16
  %37 = and i32 %33, 65535
  %38 = or i32 %36, %37
  %39 = getelementptr inbounds i32 addrspace(1)* %8, i64 %25
  store i32 %38, i32 addrspace(1)* %39, align 4, !tbaa !19
  %40 = bitcast %struct.grid_launch_parm* %10 to i8*
  call spir_func void @llvm.lifetime.end(i64 56, i8* %40)
  call spir_func void @llvm.lifetime.end(i64 56, i8* %16)
  ret void
}

attributes #0 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind readnone }
attributes #6 = { nobuiltin }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!opencl.kernels = !{!1, !7, !9, !15}

!0 = metadata !{metadata !"HCC clang version 3.5.0  (based on HCC 0.10.16481-e2b4718-6fa8481 LLVM 3.5.0svn)"}
!1 = metadata !{void (i64, i8 addrspace(1)*, i8)* @ZZ16ihipMemsetKernelIcEN2hc17completion_futureEP12ihipStream_tR14LockedAccessorI24ihipStreamCriticalBase_tINSt3__15mutexEEEPT_SB_mENUlNS0_11tiled_indexILi1EEEE_19__cxxamp_trampolineEmPcc, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!2 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!3 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!4 = metadata !{metadata !"kernel_arg_type", metadata !"size_t", metadata !"char*", metadata !"char"}
!5 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!6 = metadata !{metadata !"kernel_arg_name", metadata !"", metadata !"", metadata !""}
!7 = metadata !{void (i64, i32 addrspace(1)*, i32)* @ZZ16ihipMemsetKernelIjEN2hc17completion_futureEP12ihipStream_tR14LockedAccessorI24ihipStreamCriticalBase_tINSt3__15mutexEEEPT_SB_mENUlNS0_11tiled_indexILi1EEEE_19__cxxamp_trampolineEmPjj, metadata !2, metadata !3, metadata !8, metadata !5, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"size_t", metadata !"uint*", metadata !"uint"}
!9 = metadata !{void (i32, i32, i32, i32, i32, i32, i32 addrspace(1)*, i32 addrspace(1)*, i32 addrspace(1)*)* @ZN12_GLOBAL__N_146_Z9FuncHADD216grid_launch_parmPiS0_S0__functor19__cxxamp_trampolineEiiiiiiPKiS2_Pi, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14}
!10 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!11 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!12 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int*", metadata !"int*", metadata !"int*"}
!13 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !""}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!15 = metadata !{void (i32, i32, i32, i32, i32, i32, i32 addrspace(1)*, i32 addrspace(1)*, i32 addrspace(1)*)* @ZN12_GLOBAL__N_144_Z7DoHADD216grid_launch_parmPiS0_S0__functor19__cxxamp_trampolineEiiiiiiPKiS2_Pi, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14}
!16 = metadata !{metadata !17, metadata !17, i64 0}
!17 = metadata !{metadata !"omnipotent char", metadata !18, i64 0}
!18 = metadata !{metadata !"Simple C/C++ TBAA"}
!19 = metadata !{metadata !20, metadata !20, i64 0}
!20 = metadata !{metadata !"int", metadata !17, i64 0}

	.text
	.hsa_code_object_version 2,1
	.hsa_code_object_isa 8,0,3,"AMD","AMDGPU"
	.weak	_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPDhS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_
	.p2align	8
	.type	_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPDhS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_,@function
	.amdgpu_hsa_kernel _ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPDhS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_
_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPDhS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_: ; @"_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPDhS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_"
.Lfunc_begin0:
	.amd_kernel_code_t
		amd_code_version_major = 1
		amd_code_version_minor = 1
		amd_machine_kind = 1
		amd_machine_version_major = 8
		amd_machine_version_minor = 0
		amd_machine_version_stepping = 3
		kernel_code_entry_byte_offset = 256
		kernel_code_prefetch_byte_size = 0
		max_scratch_backing_memory_byte_size = 0
		granulated_workitem_vgpr_count = 8
		granulated_wavefront_sgpr_count = 1
		priority = 0
		float_mode = 192
		priv = 0
		enable_dx10_clamp = 1
		debug_mode = 0
		enable_ieee_mode = 1
		enable_sgpr_private_segment_wave_byte_offset = 0
		user_sgpr_count = 6
		enable_trap_handler = 1
		enable_sgpr_workgroup_id_x = 1
		enable_sgpr_workgroup_id_y = 1
		enable_sgpr_workgroup_id_z = 0
		enable_sgpr_workgroup_info = 0
		enable_vgpr_workitem_id = 1
		enable_exception_msb = 0
		granulated_lds_size = 8
		enable_exception = 0
		enable_sgpr_private_segment_buffer = 1
		enable_sgpr_dispatch_ptr = 0
		enable_sgpr_queue_ptr = 0
		enable_sgpr_kernarg_segment_ptr = 1
		enable_sgpr_dispatch_id = 0
		enable_sgpr_flat_scratch_init = 0
		enable_sgpr_private_segment_size = 0
		enable_sgpr_grid_workgroup_count_x = 0
		enable_sgpr_grid_workgroup_count_y = 0
		enable_sgpr_grid_workgroup_count_z = 0
		enable_ordered_append_gds = 0
		private_element_size = 1
		is_ptr64 = 1
		is_dynamic_callstack = 0
		is_debug_enabled = 0
		is_xnack_enabled = 0
		workitem_private_segment_byte_size = 0
		workgroup_group_segment_byte_size = 4096
		gds_segment_byte_size = 0
		kernarg_segment_byte_size = 24
		workgroup_fbarrier_count = 0
		wavefront_sgpr_count = 12
		workitem_vgpr_count = 33
		reserved_vgpr_first = 0
		reserved_vgpr_count = 0
		reserved_sgpr_first = 0
		reserved_sgpr_count = 0
		debug_wavefront_private_segment_offset_sgpr = 0
		debug_private_segment_buffer_sgpr = 0
		kernarg_segment_alignment = 4
		group_segment_alignment = 4
		private_segment_alignment = 4
		wavefront_size = 6
		call_convention = -1
		runtime_loader_kernel_symbol = 0
	.end_amd_kernel_code_t
; BB#0:
	s_load_dwordx2 s[8:9], s[4:5], 0x0
	s_load_dwordx2 s[0:1], s[4:5], 0x8
	s_load_dwordx2 s[2:3], s[4:5], 0x10
	v_lshlrev_b32_e32 v2, 1, v1
	s_lshl_b32 s4, s7, 5
	v_add_i32_e32 v6, vcc, s4, v2
	v_or_b32_e32 v2, 1, v2
	v_add_i32_e32 v8, vcc, s4, v2
	s_lshl_b32 s4, s6, 4
	v_add_i32_e32 v9, vcc, s4, v0
	v_lshlrev_b32_e32 v6, 4, v6
	v_lshlrev_b32_e32 v5, 7, v1
	v_add_i32_e32 v6, vcc, v9, v6
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshlrev_b32_e32 v2, 2, v0
	v_add_i32_e32 v3, vcc, 0x800, v5
	v_add_i32_e32 v4, vcc, v3, v2
	v_add_i32_e32 v5, vcc, v5, v2
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v6, vcc, s8, v6
	v_mov_b32_e32 v10, s9
	v_lshlrev_b32_e32 v8, 4, v8
	v_addc_u32_e32 v7, vcc, v7, v10, vcc
	v_add_i32_e32 v8, vcc, v9, v8
	v_ashrrev_i32_e32 v9, 31, v8
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_i32_e32 v8, vcc, s8, v8
	v_lshlrev_b32_e32 v1, 10, v1
	v_addc_u32_e32 v9, vcc, v10, v9, vcc
	v_add_i32_e32 v0, vcc, v0, v1
	v_add_i32_e32 v1, vcc, s4, v0
	s_lshl_b32 s4, s7, 14
	s_mov_b32 s5, 0xfffc0000
	v_mov_b32_e32 v10, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v12, 0
	s_mov_b32 m0, -1
BB0_1:                                  ; =>This Inner Loop Header: Depth=1
	v_add_i32_e32 v14, vcc, s4, v0
	v_ashrrev_i32_e32 v15, 31, v14
	v_lshlrev_b64 v[15:16], 2, v[14:15]
	v_add_i32_e32 v15, vcc, s0, v15
	v_mov_b32_e32 v17, s1
	v_addc_u32_e32 v16, vcc, v16, v17, vcc
	flat_load_dword v15, v[15:16]
	v_add_i32_e32 v14, vcc, 0x200, v14
	s_add_i32 s4, s4, 16
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v4, v15
	s_waitcnt lgkmcnt(0)
	v_ashrrev_i32_e32 v15, 31, v14
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_i32_e32 v14, vcc, s0, v14
	v_addc_u32_e32 v15, vcc, v17, v15, vcc
	flat_load_dword v14, v[14:15]
	v_add_i32_e32 v16, vcc, s5, v1
	v_mov_b32_e32 v17, s3
	s_addk_i32 s5, 0x2000
	s_cmp_lg_u32 s5, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v4, v14 offset:64
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v14, vcc, 0x40000, v16
	v_ashrrev_i32_e32 v15, 31, v14
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_i32_e32 v14, vcc, s2, v14
	v_addc_u32_e32 v15, vcc, v15, v17, vcc
	flat_load_dword v14, v[14:15]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v5, v14
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v14, vcc, 0x40200, v16
	v_ashrrev_i32_e32 v15, 31, v14
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_i32_e32 v14, vcc, s2, v14
	v_addc_u32_e32 v15, vcc, v17, v15, vcc
	flat_load_dword v14, v[14:15]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b32 v5, v14 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read2_b32 v[14:15], v3 offset1:16
	ds_read2_b32 v[16:17], v2 offset1:16
	s_waitcnt lgkmcnt(0)
	v_mul_f16_e32 v18, v16, v14
	v_add_f16_e32 v10, v18, v10
	v_lshrrev_b32_e32 v18, 16, v14
	v_mul_f16_e32 v19, v17, v18
	v_add_f16_e32 v19, v19, v10
	v_lshrrev_b32_e32 v10, 16, v16
	v_mul_f16_e32 v14, v10, v14
	v_add_f16_e32 v11, v14, v11
	v_lshrrev_b32_e32 v14, 16, v17
	v_mul_f16_e32 v18, v14, v18
	v_add_f16_e32 v18, v18, v11
	v_mul_f16_e32 v11, v16, v15
	v_add_f16_e32 v11, v11, v12
	v_lshrrev_b32_e32 v12, 16, v15
	v_mul_f16_e32 v16, v17, v12
	v_mul_f16_e32 v10, v10, v15
	v_add_f16_e32 v16, v16, v11
	v_add_f16_e32 v10, v10, v13
	v_mul_f16_e32 v11, v14, v12
	v_add_f16_e32 v14, v11, v10
	ds_read2_b32 v[10:11], v3 offset0:1 offset1:17
	ds_read2_b32 v[12:13], v2 offset0:32 offset1:48
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v17, 16, v10
	v_mul_f16_e32 v15, v12, v10
	v_add_f16_e32 v15, v15, v19
	v_mul_f16_e32 v19, v13, v17
	v_add_f16_e32 v15, v19, v15
	v_lshrrev_b32_e32 v19, 16, v12
	v_mul_f16_e32 v10, v19, v10
	v_add_f16_e32 v10, v10, v18
	v_lshrrev_b32_e32 v18, 16, v13
	v_mul_f16_e32 v17, v18, v17
	v_add_f16_e32 v17, v17, v10
	v_mul_f16_e32 v10, v12, v11
	v_lshrrev_b32_e32 v12, 16, v11
	v_add_f16_e32 v10, v10, v16
	v_mul_f16_e32 v13, v13, v12
	v_add_f16_e32 v16, v13, v10
	v_mul_f16_e32 v10, v19, v11
	v_mul_f16_e32 v11, v18, v12
	v_add_f16_e32 v10, v10, v14
	v_add_f16_e32 v14, v11, v10
	ds_read2_b32 v[10:11], v3 offset0:2 offset1:18
	ds_read2_b32 v[12:13], v2 offset0:64 offset1:80
	s_waitcnt lgkmcnt(0)
	v_mul_f16_e32 v18, v12, v10
	v_add_f16_e32 v15, v18, v15
	v_lshrrev_b32_e32 v18, 16, v10
	v_mul_f16_e32 v19, v13, v18
	v_add_f16_e32 v15, v19, v15
	v_lshrrev_b32_e32 v19, 16, v12
	v_mul_f16_e32 v10, v19, v10
	v_add_f16_e32 v10, v10, v17
	v_lshrrev_b32_e32 v17, 16, v13
	v_mul_f16_e32 v18, v17, v18
	v_add_f16_e32 v18, v18, v10
	v_mul_f16_e32 v10, v12, v11
	v_lshrrev_b32_e32 v12, 16, v11
	v_add_f16_e32 v10, v10, v16
	v_mul_f16_e32 v13, v13, v12
	v_add_f16_e32 v16, v13, v10
	v_mul_f16_e32 v10, v19, v11
	v_mul_f16_e32 v11, v17, v12
	v_add_f16_e32 v10, v10, v14
	v_add_f16_e32 v14, v11, v10
	ds_read2_b32 v[10:11], v3 offset0:3 offset1:19
	ds_read2_b32 v[12:13], v2 offset0:96 offset1:112
	s_waitcnt lgkmcnt(0)
	v_mul_f16_e32 v17, v12, v10
	v_add_f16_e32 v15, v17, v15
	v_lshrrev_b32_e32 v17, 16, v10
	v_mul_f16_e32 v19, v13, v17
	v_add_f16_e32 v15, v19, v15
	v_lshrrev_b32_e32 v19, 16, v12
	v_mul_f16_e32 v10, v19, v10
	v_add_f16_e32 v10, v10, v18
	v_lshrrev_b32_e32 v18, 16, v13
	v_mul_f16_e32 v17, v18, v17
	v_add_f16_e32 v17, v17, v10
	v_mul_f16_e32 v10, v12, v11
	v_lshrrev_b32_e32 v12, 16, v11
	v_add_f16_e32 v10, v10, v16
	v_mul_f16_e32 v13, v13, v12
	v_add_f16_e32 v16, v13, v10
	v_mul_f16_e32 v10, v19, v11
	v_mul_f16_e32 v11, v18, v12
	v_add_f16_e32 v10, v10, v14
	v_add_f16_e32 v14, v11, v10
	ds_read2_b32 v[10:11], v3 offset0:4 offset1:20
	ds_read2_b32 v[12:13], v2 offset0:128 offset1:144
	s_waitcnt lgkmcnt(0)
	v_mul_f16_e32 v18, v12, v10
	v_add_f16_e32 v15, v18, v15
	v_lshrrev_b32_e32 v18, 16, v10
	v_mul_f16_e32 v19, v13, v18
	v_add_f16_e32 v15, v19, v15
	v_lshrrev_b32_e32 v19, 16, v12
	v_mul_f16_e32 v10, v19, v10
	v_add_f16_e32 v10, v10, v17
	v_lshrrev_b32_e32 v17, 16, v13
	v_mul_f16_e32 v18, v17, v18
	v_add_f16_e32 v18, v18, v10
	v_mul_f16_e32 v10, v12, v11
	v_lshrrev_b32_e32 v12, 16, v11
	v_add_f16_e32 v10, v10, v16
	v_mul_f16_e32 v13, v13, v12
	v_add_f16_e32 v16, v13, v10
	v_mul_f16_e32 v10, v19, v11
	v_mul_f16_e32 v11, v17, v12
	v_add_f16_e32 v10, v10, v14
	v_add_f16_e32 v14, v11, v10
	ds_read2_b32 v[10:11], v3 offset0:5 offset1:21
	ds_read2_b32 v[12:13], v2 offset0:160 offset1:176
	s_waitcnt lgkmcnt(0)
	v_mul_f16_e32 v17, v12, v10
	v_add_f16_e32 v15, v17, v15
	v_lshrrev_b32_e32 v17, 16, v10
	v_mul_f16_e32 v19, v13, v17
	v_add_f16_e32 v15, v19, v15
	v_lshrrev_b32_e32 v19, 16, v12
	v_mul_f16_e32 v10, v19, v10
	v_add_f16_e32 v10, v10, v18
	v_lshrrev_b32_e32 v18, 16, v13
	v_mul_f16_e32 v17, v18, v17
	v_add_f16_e32 v17, v17, v10
	v_mul_f16_e32 v10, v12, v11
	v_lshrrev_b32_e32 v12, 16, v11
	v_add_f16_e32 v10, v10, v16
	v_mul_f16_e32 v13, v13, v12
	v_add_f16_e32 v16, v13, v10
	v_mul_f16_e32 v10, v19, v11
	v_mul_f16_e32 v11, v18, v12
	v_add_f16_e32 v10, v10, v14
	v_add_f16_e32 v14, v11, v10
	ds_read2_b32 v[10:11], v3 offset0:6 offset1:22
	ds_read2_b32 v[12:13], v2 offset0:192 offset1:208
	s_waitcnt lgkmcnt(0)
	v_mul_f16_e32 v18, v12, v10
	v_add_f16_e32 v15, v18, v15
	v_lshrrev_b32_e32 v18, 16, v10
	v_mul_f16_e32 v19, v13, v18
	v_add_f16_e32 v15, v19, v15
	v_lshrrev_b32_e32 v19, 16, v12
	v_mul_f16_e32 v10, v19, v10
	v_add_f16_e32 v10, v10, v17
	v_lshrrev_b32_e32 v17, 16, v13
	v_mul_f16_e32 v18, v17, v18
	v_add_f16_e32 v18, v18, v10
	v_mul_f16_e32 v10, v12, v11
	v_lshrrev_b32_e32 v12, 16, v11
	v_add_f16_e32 v10, v10, v16
	v_mul_f16_e32 v13, v13, v12
	v_add_f16_e32 v16, v13, v10
	v_mul_f16_e32 v10, v19, v11
	v_mul_f16_e32 v11, v17, v12
	v_add_f16_e32 v10, v10, v14
	v_add_f16_e32 v14, v11, v10
	ds_read2_b32 v[10:11], v3 offset0:7 offset1:23
	ds_read2_b32 v[12:13], v2 offset0:224 offset1:240
	s_waitcnt lgkmcnt(0)
	v_mul_f16_e32 v17, v12, v10
	v_add_f16_e32 v15, v17, v15
	v_lshrrev_b32_e32 v17, 16, v10
	v_mul_f16_e32 v19, v13, v17
	v_add_f16_e32 v19, v19, v15
	v_lshrrev_b32_e32 v15, 16, v12
	v_mul_f16_e32 v10, v15, v10
	v_add_f16_e32 v10, v10, v18
	v_lshrrev_b32_e32 v18, 16, v13
	v_mul_f16_e32 v17, v18, v17
	v_add_f16_e32 v17, v17, v10
	v_mul_f16_e32 v10, v12, v11
	v_lshrrev_b32_e32 v12, 16, v11
	v_add_f16_e32 v10, v10, v16
	v_mul_f16_e32 v13, v13, v12
	v_add_f16_e32 v16, v13, v10
	v_mul_f16_e32 v10, v15, v11
	v_mul_f16_e32 v11, v18, v12
	v_add_f16_e32 v10, v10, v14
	v_add_f16_e32 v18, v11, v10
	ds_read2_b32 v[10:11], v3 offset0:8 offset1:24
	ds_read_b32 v12, v2 offset:1088
	ds_read_b32 v15, v2 offset:1216
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v13, 16, v10
	v_lshrrev_b32_e32 v14, 16, v12
	v_mul_f16_e32 v20, v12, v13
	v_mul_f16_e32 v21, v14, v13
	v_lshrrev_b32_e32 v13, 16, v11
	v_mul_f16_e32 v23, v14, v13
	ds_read_b32 v14, v2 offset:1152
	v_mul_f16_e32 v22, v12, v13
	ds_read2_b32 v[12:13], v3 offset0:9 offset1:25
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v27, 16, v14
	v_lshrrev_b32_e32 v25, 16, v12
	v_mul_f16_e32 v28, v27, v12
	v_mul_f16_e32 v24, v14, v12
	v_mul_f16_e32 v29, v14, v13
	v_lshrrev_b32_e32 v14, 16, v13
	v_lshrrev_b32_e32 v12, 16, v15
	v_mul_f16_e32 v26, v15, v25
	v_mul_f16_e32 v30, v15, v14
	v_mul_f16_e32 v31, v12, v14
	ds_read2st64_b32 v[14:15], v2 offset0:4 offset1:5
	v_mul_f16_e32 v25, v12, v25
	v_mul_f16_e32 v27, v27, v13
	ds_read2_b32 v[12:13], v3 offset0:10 offset1:26
	s_waitcnt lgkmcnt(0)
	v_mul_f16_e32 v32, v14, v10
	v_add_f16_e32 v19, v32, v19
	v_add_f16_e32 v19, v20, v19
	v_lshrrev_b32_e32 v20, 16, v14
	v_mul_f16_e32 v10, v20, v10
	v_add_f16_e32 v10, v10, v17
	ds_read_b32 v17, v2 offset:1344
	v_mul_f16_e32 v14, v14, v11
	v_add_f16_e32 v14, v14, v16
	v_mul_f16_e32 v11, v20, v11
	v_add_f16_e32 v16, v24, v19
	v_add_f16_e32 v11, v11, v18
	v_add_f16_e32 v16, v26, v16
	v_mul_f16_e32 v18, v15, v12
	v_add_f16_e32 v16, v18, v16
	v_lshrrev_b32_e32 v18, 16, v12
	v_add_f16_e32 v10, v21, v10
	s_waitcnt lgkmcnt(0)
	v_mul_f16_e32 v19, v17, v18
	v_add_f16_e32 v10, v28, v10
	v_add_f16_e32 v16, v19, v16
	v_lshrrev_b32_e32 v19, 16, v15
	v_add_f16_e32 v10, v25, v10
	v_mul_f16_e32 v12, v19, v12
	v_add_f16_e32 v14, v22, v14
	v_add_f16_e32 v10, v12, v10
	v_lshrrev_b32_e32 v12, 16, v17
	v_add_f16_e32 v14, v29, v14
	v_mul_f16_e32 v18, v12, v18
	v_add_f16_e32 v18, v18, v10
	v_add_f16_e32 v14, v30, v14
	v_mul_f16_e32 v10, v15, v13
	v_add_f16_e32 v11, v23, v11
	v_add_f16_e32 v10, v10, v14
	v_lshrrev_b32_e32 v14, 16, v13
	v_add_f16_e32 v11, v27, v11
	v_mul_f16_e32 v15, v17, v14
	v_add_f16_e32 v15, v15, v10
	v_mul_f16_e32 v10, v19, v13
	v_add_f16_e32 v11, v31, v11
	v_add_f16_e32 v10, v10, v11
	v_mul_f16_e32 v11, v12, v14
	v_add_f16_e32 v12, v11, v10
	ds_read2_b32 v[10:11], v3 offset0:11 offset1:27
	ds_read_b32 v13, v2 offset:1408
	ds_read_b32 v14, v2 offset:1472
	s_waitcnt lgkmcnt(0)
	v_mul_f16_e32 v17, v13, v10
	v_add_f16_e32 v16, v17, v16
	v_lshrrev_b32_e32 v17, 16, v10
	v_mul_f16_e32 v19, v14, v17
	v_add_f16_e32 v16, v19, v16
	v_lshrrev_b32_e32 v19, 16, v13
	v_mul_f16_e32 v10, v19, v10
	v_add_f16_e32 v10, v10, v18
	v_lshrrev_b32_e32 v18, 16, v14
	v_mul_f16_e32 v17, v18, v17
	v_add_f16_e32 v17, v17, v10
	v_mul_f16_e32 v10, v13, v11
	v_lshrrev_b32_e32 v13, 16, v11
	v_add_f16_e32 v10, v10, v15
	v_mul_f16_e32 v14, v14, v13
	v_add_f16_e32 v20, v14, v10
	v_mul_f16_e32 v10, v19, v11
	v_add_f16_e32 v10, v10, v12
	v_mul_f16_e32 v11, v18, v13
	v_add_f16_e32 v18, v11, v10
	ds_read2_b32 v[10:11], v3 offset0:12 offset1:28
	ds_read_b32 v12, v2 offset:1600
	ds_read_b32 v15, v2 offset:1728
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v13, 16, v10
	v_lshrrev_b32_e32 v14, 16, v12
	v_mul_f16_e32 v19, v12, v13
	v_mul_f16_e32 v21, v14, v13
	v_lshrrev_b32_e32 v13, 16, v11
	v_mul_f16_e32 v23, v14, v13
	ds_read_b32 v14, v2 offset:1664
	v_mul_f16_e32 v22, v12, v13
	ds_read2_b32 v[12:13], v3 offset0:13 offset1:29
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v27, 16, v14
	v_lshrrev_b32_e32 v25, 16, v12
	v_mul_f16_e32 v28, v27, v12
	v_mul_f16_e32 v24, v14, v12
	v_mul_f16_e32 v29, v14, v13
	v_lshrrev_b32_e32 v14, 16, v13
	v_lshrrev_b32_e32 v12, 16, v15
	v_mul_f16_e32 v26, v15, v25
	v_mul_f16_e32 v30, v15, v14
	v_mul_f16_e32 v31, v12, v14
	ds_read2st64_b32 v[14:15], v2 offset0:6 offset1:7
	v_mul_f16_e32 v25, v12, v25
	v_mul_f16_e32 v27, v27, v13
	ds_read2_b32 v[12:13], v3 offset0:14 offset1:30
	s_waitcnt lgkmcnt(0)
	v_mul_f16_e32 v32, v14, v10
	v_add_f16_e32 v16, v32, v16
	v_add_f16_e32 v16, v19, v16
	v_lshrrev_b32_e32 v19, 16, v14
	v_mul_f16_e32 v10, v19, v10
	v_add_f16_e32 v10, v10, v17
	ds_read_b32 v17, v2 offset:1856
	v_mul_f16_e32 v14, v14, v11
	v_mul_f16_e32 v11, v19, v11
	v_add_f16_e32 v16, v24, v16
	v_add_f16_e32 v11, v11, v18
	v_add_f16_e32 v16, v26, v16
	v_mul_f16_e32 v18, v15, v12
	v_add_f16_e32 v16, v18, v16
	v_lshrrev_b32_e32 v18, 16, v12
	v_add_f16_e32 v10, v21, v10
	s_waitcnt lgkmcnt(0)
	v_mul_f16_e32 v19, v17, v18
	v_add_f16_e32 v10, v28, v10
	v_add_f16_e32 v16, v19, v16
	v_lshrrev_b32_e32 v19, 16, v15
	v_add_f16_e32 v14, v14, v20
	v_add_f16_e32 v10, v25, v10
	v_mul_f16_e32 v12, v19, v12
	v_add_f16_e32 v14, v22, v14
	v_add_f16_e32 v10, v12, v10
	v_lshrrev_b32_e32 v12, 16, v17
	v_add_f16_e32 v14, v29, v14
	v_mul_f16_e32 v18, v12, v18
	v_add_f16_e32 v18, v18, v10
	v_add_f16_e32 v14, v30, v14
	v_mul_f16_e32 v10, v15, v13
	v_add_f16_e32 v11, v23, v11
	v_add_f16_e32 v10, v10, v14
	v_lshrrev_b32_e32 v14, 16, v13
	v_mul_f16_e32 v15, v17, v14
	v_add_f16_e32 v11, v27, v11
	v_add_f16_e32 v15, v15, v10
	v_mul_f16_e32 v10, v19, v13
	v_add_f16_e32 v11, v31, v11
	v_add_f16_e32 v10, v10, v11
	v_mul_f16_e32 v11, v12, v14
	ds_read2_b32 v[12:13], v3 offset0:15 offset1:31
	ds_read_b32 v17, v2 offset:1920
	ds_read_b32 v19, v2 offset:1984
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_f16_e32 v14, v11, v10
	v_mul_f16_e32 v10, v17, v12
	v_lshrrev_b32_e32 v11, 16, v12
	v_add_f16_e32 v10, v10, v16
	v_mul_f16_e32 v16, v19, v11
	v_add_f16_e32 v10, v16, v10
	v_lshrrev_b32_e32 v16, 16, v17
	v_mul_f16_e32 v12, v16, v12
	v_add_f16_e32 v12, v12, v18
	v_lshrrev_b32_e32 v18, 16, v19
	v_mul_f16_e32 v11, v18, v11
	v_add_f16_e32 v11, v11, v12
	v_lshlrev_b32_e32 v12, 16, v11
	v_or_b32_e32 v20, v12, v10
	v_mul_f16_e32 v12, v17, v13
	v_add_f16_e32 v12, v12, v15
	v_lshrrev_b32_e32 v15, 16, v13
	v_mul_f16_e32 v13, v16, v13
	v_add_f16_e32 v13, v13, v14
	v_mul_f16_e32 v14, v18, v15
	v_add_f16_e32 v13, v14, v13
	v_mul_f16_e32 v17, v19, v15
	v_add_f16_e32 v12, v17, v12
	v_lshlrev_b32_e32 v14, 16, v13
	v_or_b32_e32 v14, v14, v12
	flat_store_dword v[6:7], v20
	s_nop 0
	flat_store_dword v[8:9], v14
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_cbranch_scc1 BB0_1
; BB#2:                                 ; %"_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPDhS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENKUlRKNS7_11tiled_indexILi3EEEE_clESI_.exit"
	s_endpgm
.Lfunc_end0:
	.size	_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPDhS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_, .Lfunc_end0-_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPDhS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_

	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 2124
; NumSgprs: 12
; NumVgprs: 33
; FloatMode: 192
; IeeeMode: 1
; ScratchSize: 0
; LDSByteSize: 4096 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 8
; NumSGPRsForWavesPerEU: 12
; NumVGPRsForWavesPerEU: 33
; ReservedVGPRFirst: 0
; ReservedVGPRCount: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 1
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"HCC clang version 5.0.0  (based on HCC 1.0.17223-03d66c7-8685ae3-32090c8 )" ; string offset=0
.Linfo_string1:
	.asciz	"/home/aditya/rocm/hcc.src/lib/mcwamp.cpp" ; string offset=75
.Linfo_string2:
	.asciz	"/home/aditya/rocm/hcc.src/build/lib" ; string offset=116
	.section	.debug_loc
	.section	.debug_abbrev
	.byte	1                       ; Abbreviation Code
	.byte	17                      ; DW_TAG_compile_unit
	.byte	0                       ; DW_CHILDREN_no
	.byte	37                      ; DW_AT_producer
	.byte	14                      ; DW_FORM_strp
	.byte	19                      ; DW_AT_language
	.byte	5                       ; DW_FORM_data2
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	16                      ; DW_AT_stmt_list
	.byte	6                       ; DW_FORM_data4
	.byte	27                      ; DW_AT_comp_dir
	.byte	14                      ; DW_FORM_strp
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	0                       ; EOM(3)
	.section	.debug_info
.Lcu_begin0:
	.long	26                      ; Length of Unit
	.short	2                       ; DWARF version number
	.long	.debug_abbrev           ; Offset Into Abbrev. Section
	.byte	8                       ; Address Size (in bytes)
	.byte	1                       ; Abbrev [1] 0xb:0x13 DW_TAG_compile_unit
	.long	.Linfo_string0          ; DW_AT_producer
	.short	4                       ; DW_AT_language
	.long	.Linfo_string1          ; DW_AT_name
	.long	.Lline_table_start0     ; DW_AT_stmt_list
	.long	.Linfo_string2          ; DW_AT_comp_dir
	.section	.debug_ranges
	.section	.debug_macinfo
.Lcu_macro_begin0:
	.byte	0                       ; End Of Macro List Mark

	.ident	"HCC clang version 5.0.0  (based on HCC 1.0.17223-03d66c7-8685ae3-32090c8 )"
	.ident	"HCC clang version 5.0.0  (based on HCC 1.0.17214-1f57464-8685ae3-32090c8 )"
	.section	".note.GNU-stack"
	.amdgpu_code_object_metadata
---
Version:         [ 1, 0 ]
Kernels:         
  - Name:            '_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPDhS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_'
    Language:        OpenCL C
    LanguageVersion: [ 2, 0 ]
    Args:            
      - Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       F16
        AddrSpaceQual:   Generic
      - Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       F16
        AddrSpaceQual:   Generic
      - Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       F16
        AddrSpaceQual:   Generic
      - Size:            8
        Align:           8
        ValueKind:       HiddenGlobalOffsetX
        ValueType:       I64
      - Size:            8
        Align:           8
        ValueKind:       HiddenGlobalOffsetY
        ValueType:       I64
      - Size:            8
        Align:           8
        ValueKind:       HiddenGlobalOffsetZ
        ValueType:       I64
    CodeProps:       
      KernargSegmentSize: 24
      WorkgroupGroupSegmentSize: 4096
      WavefrontNumSGPRs: 12
      WorkitemNumVGPRs: 33
      KernargSegmentAlign: 4
      GroupSegmentAlign: 4
      PrivateSegmentAlign: 4
      WavefrontSize:   6
...
	.end_amdgpu_code_object_metadata
	.section	.debug_line
.Lline_table_start0:

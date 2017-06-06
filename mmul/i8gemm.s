	.text
	.hsa_code_object_version 2,1
	.hsa_code_object_isa 8,0,3,"AMD","AMDGPU"
	.weak	_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPaS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_
	.p2align	8
	.type	_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPaS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_,@function
	.amdgpu_hsa_kernel _ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPaS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_
_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPaS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_: ; @"_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPaS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_"
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
		granulated_workitem_vgpr_count = 19
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
		granulated_lds_size = 16
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
		workgroup_group_segment_byte_size = 8192
		gds_segment_byte_size = 0
		kernarg_segment_byte_size = 24
		workgroup_fbarrier_count = 0
		wavefront_sgpr_count = 12
		workitem_vgpr_count = 78
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
	v_lshlrev_b32_e32 v2, 2, v1
	s_load_dwordx2 s[8:9], s[4:5], 0x0
	s_load_dwordx2 s[0:1], s[4:5], 0x8
	s_load_dwordx2 s[2:3], s[4:5], 0x10
	s_lshl_b32 s4, s7, 6
	v_or_b32_e32 v3, 1, v2
	v_or_b32_e32 v4, 2, v2
	v_or_b32_e32 v5, 3, v2
	v_add_i32_e32 v42, vcc, s4, v2
	v_add_i32_e32 v43, vcc, s4, v3
	v_add_i32_e32 v44, vcc, s4, v4
	v_add_i32_e32 v45, vcc, s4, v5
	s_lshl_b32 s4, s6, 4
	v_add_i32_e32 v6, vcc, s4, v0
	v_lshlrev_b32_e32 v10, 4, v42
	v_lshlrev_b32_e32 v9, 8, v1
	v_add_i32_e32 v10, vcc, v6, v10
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b32_e32 v7, 2, v0
	v_add_i32_e32 v1, vcc, 0x1000, v9
	v_add_i32_e32 v8, vcc, v1, v7
	v_add_i32_e32 v9, vcc, v9, v7
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v10, vcc, s8, v10
	v_mov_b32_e32 v36, s9
	v_addc_u32_e32 v11, vcc, v11, v36, vcc
	v_add_i32_e32 v12, vcc, 1, v10
	v_mov_b32_e32 v37, 0
	v_addc_u32_e32 v13, vcc, v11, v37, vcc
	v_add_i32_e32 v14, vcc, 2, v10
	v_mov_b32_e32 v39, 0
	v_addc_u32_e32 v15, vcc, v11, v39, vcc
	v_lshlrev_b32_e32 v18, 4, v43
	v_add_i32_e32 v16, vcc, 3, v10
	v_mov_b32_e32 v41, 0
	v_addc_u32_e32 v17, vcc, v11, v41, vcc
	v_add_i32_e32 v18, vcc, v6, v18
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_i32_e32 v18, vcc, s8, v18
	v_addc_u32_e32 v19, vcc, v36, v19, vcc
	v_add_i32_e32 v20, vcc, 1, v18
	v_addc_u32_e32 v21, vcc, v19, v37, vcc
	v_add_i32_e32 v22, vcc, 2, v18
	v_addc_u32_e32 v23, vcc, v19, v39, vcc
	v_add_i32_e32 v24, vcc, 3, v18
	v_lshlrev_b32_e32 v26, 4, v44
	v_addc_u32_e32 v25, vcc, v19, v41, vcc
	v_add_i32_e32 v26, vcc, v6, v26
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	v_add_i32_e32 v26, vcc, s8, v26
	v_addc_u32_e32 v27, vcc, v36, v27, vcc
	v_add_i32_e32 v28, vcc, 1, v26
	v_addc_u32_e32 v29, vcc, v27, v37, vcc
	v_add_i32_e32 v30, vcc, 2, v26
	v_addc_u32_e32 v31, vcc, v27, v39, vcc
	v_add_i32_e32 v32, vcc, 3, v26
	v_lshlrev_b32_e32 v34, 4, v45
	v_addc_u32_e32 v33, vcc, v27, v41, vcc
	v_add_i32_e32 v34, vcc, v6, v34
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_i32_e32 v34, vcc, s8, v34
	v_addc_u32_e32 v35, vcc, v36, v35, vcc
	v_add_i32_e32 v36, vcc, 1, v34
	v_addc_u32_e32 v37, vcc, v35, v37, vcc
	v_add_i32_e32 v38, vcc, 2, v34
	v_addc_u32_e32 v39, vcc, v35, v39, vcc
	v_add_i32_e32 v40, vcc, 3, v34
	v_addc_u32_e32 v41, vcc, v35, v41, vcc
	v_lshlrev_b32_e32 v42, 5, v42
	v_lshlrev_b32_e32 v43, 5, v43
	v_lshlrev_b32_e32 v44, 5, v44
	v_lshlrev_b32_e32 v45, 5, v45
	s_mov_b32 s4, 0
	s_movk_i32 s5, 0xff
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v46, 0
BB0_1:                                  ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	s_lshl_b32 s6, s4, 4
	v_add_i32_e32 v66, vcc, s6, v0
	v_add_i32_e32 v62, vcc, v42, v66
	v_ashrrev_i32_e32 v63, 31, v62
	v_lshlrev_b64 v[62:63], 2, v[62:63]
	v_add_i32_e32 v62, vcc, s0, v62
	v_mov_b32_e32 v67, s1
	v_addc_u32_e32 v63, vcc, v63, v67, vcc
	v_add_i32_e32 v64, vcc, 1, v62
	v_mov_b32_e32 v68, 0
	v_addc_u32_e32 v65, vcc, v63, v68, vcc
	flat_load_ubyte v69, v[64:65]
	v_add_i32_e32 v64, vcc, 2, v62
	v_mov_b32_e32 v70, 0
	v_addc_u32_e32 v65, vcc, v63, v70, vcc
	flat_load_ubyte v71, v[64:65]
	v_add_i32_e32 v64, vcc, 3, v62
	flat_load_ubyte v62, v[62:63]
	v_mov_b32_e32 v72, 0
	v_addc_u32_e32 v65, vcc, v63, v72, vcc
	flat_load_ubyte v64, v[64:65]
	s_mov_b32 m0, -1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b8 v8, v69 offset:1
	ds_write_b8 v8, v71 offset:2
	ds_write_b8 v8, v62
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v62, vcc, v43, v66
	v_ashrrev_i32_e32 v63, 31, v62
	v_lshlrev_b64 v[62:63], 2, v[62:63]
	v_add_i32_e32 v62, vcc, s0, v62
	v_addc_u32_e32 v63, vcc, v67, v63, vcc
	ds_write_b8 v8, v64 offset:3
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v64, vcc, 2, v62
	v_addc_u32_e32 v65, vcc, v63, v70, vcc
	flat_load_ubyte v69, v[64:65]
	v_add_i32_e32 v64, vcc, 1, v62
	v_addc_u32_e32 v65, vcc, v63, v68, vcc
	flat_load_ubyte v71, v[64:65]
	v_add_i32_e32 v64, vcc, 3, v62
	flat_load_ubyte v62, v[62:63]
	v_addc_u32_e32 v65, vcc, v63, v72, vcc
	flat_load_ubyte v64, v[64:65]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b8 v8, v69 offset:66
	ds_write_b8 v8, v71 offset:65
	ds_write_b8 v8, v62 offset:64
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v62, vcc, v44, v66
	v_ashrrev_i32_e32 v63, 31, v62
	v_lshlrev_b64 v[62:63], 2, v[62:63]
	v_add_i32_e32 v62, vcc, s0, v62
	v_addc_u32_e32 v63, vcc, v67, v63, vcc
	ds_write_b8 v8, v64 offset:67
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v64, vcc, 1, v62
	v_addc_u32_e32 v65, vcc, v63, v68, vcc
	flat_load_ubyte v69, v[64:65]
	v_add_i32_e32 v64, vcc, 2, v62
	v_addc_u32_e32 v65, vcc, v63, v70, vcc
	flat_load_ubyte v71, v[64:65]
	v_add_i32_e32 v64, vcc, 3, v62
	flat_load_ubyte v62, v[62:63]
	v_addc_u32_e32 v65, vcc, v63, v72, vcc
	flat_load_ubyte v64, v[64:65]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b8 v8, v69 offset:129
	ds_write_b8 v8, v71 offset:130
	ds_write_b8 v8, v62 offset:128
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v62, vcc, v45, v66
	v_ashrrev_i32_e32 v63, 31, v62
	v_lshlrev_b64 v[62:63], 2, v[62:63]
	v_add_i32_e32 v62, vcc, s0, v62
	v_addc_u32_e32 v63, vcc, v67, v63, vcc
	ds_write_b8 v8, v64 offset:131
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v64, vcc, 1, v62
	v_addc_u32_e32 v65, vcc, v63, v68, vcc
	flat_load_ubyte v66, v[64:65]
	v_add_i32_e32 v64, vcc, 2, v62
	v_addc_u32_e32 v65, vcc, v63, v70, vcc
	flat_load_ubyte v67, v[64:65]
	v_add_i32_e32 v64, vcc, 3, v62
	flat_load_ubyte v62, v[62:63]
	v_addc_u32_e32 v65, vcc, v63, v72, vcc
	flat_load_ubyte v64, v[64:65]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b8 v8, v66 offset:193
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v66, s3
	ds_write_b8 v8, v67 offset:194
	ds_write_b8 v8, v62 offset:192
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v62, vcc, s6, v2
	v_lshlrev_b32_e32 v62, 5, v62
	v_add_i32_e32 v62, vcc, v6, v62
	v_ashrrev_i32_e32 v63, 31, v62
	v_lshlrev_b64 v[62:63], 2, v[62:63]
	v_add_i32_e32 v62, vcc, s2, v62
	v_addc_u32_e32 v63, vcc, v63, v66, vcc
	ds_write_b8 v8, v64 offset:195
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v64, vcc, 1, v62
	v_addc_u32_e32 v65, vcc, v63, v68, vcc
	flat_load_ubyte v67, v[64:65]
	v_add_i32_e32 v64, vcc, 2, v62
	v_addc_u32_e32 v65, vcc, v63, v70, vcc
	flat_load_ubyte v69, v[64:65]
	v_add_i32_e32 v64, vcc, 3, v62
	flat_load_ubyte v62, v[62:63]
	v_addc_u32_e32 v65, vcc, v63, v72, vcc
	flat_load_ubyte v64, v[64:65]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b8 v9, v67 offset:1
	ds_write_b8 v9, v69 offset:2
	ds_write_b8 v9, v62
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v62, vcc, s6, v3
	v_lshlrev_b32_e32 v62, 5, v62
	v_add_i32_e32 v62, vcc, v6, v62
	v_ashrrev_i32_e32 v63, 31, v62
	v_lshlrev_b64 v[62:63], 2, v[62:63]
	v_add_i32_e32 v62, vcc, s2, v62
	v_addc_u32_e32 v63, vcc, v66, v63, vcc
	ds_write_b8 v9, v64 offset:3
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v64, vcc, 2, v62
	v_addc_u32_e32 v65, vcc, v63, v70, vcc
	flat_load_ubyte v67, v[64:65]
	v_add_i32_e32 v64, vcc, 3, v62
	v_addc_u32_e32 v65, vcc, v63, v72, vcc
	flat_load_ubyte v69, v[64:65]
	v_add_i32_e32 v64, vcc, 1, v62
	flat_load_ubyte v62, v[62:63]
	v_addc_u32_e32 v65, vcc, v63, v68, vcc
	flat_load_ubyte v64, v[64:65]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b8 v9, v67 offset:66
	ds_write_b8 v9, v69 offset:67
	ds_write_b8 v9, v62 offset:64
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v62, vcc, s6, v4
	v_lshlrev_b32_e32 v62, 5, v62
	v_add_i32_e32 v62, vcc, v6, v62
	v_ashrrev_i32_e32 v63, 31, v62
	v_lshlrev_b64 v[62:63], 2, v[62:63]
	v_add_i32_e32 v62, vcc, s2, v62
	v_addc_u32_e32 v63, vcc, v66, v63, vcc
	ds_write_b8 v9, v64 offset:65
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v64, vcc, 1, v62
	v_addc_u32_e32 v65, vcc, v63, v68, vcc
	flat_load_ubyte v67, v[64:65]
	v_add_i32_e32 v64, vcc, 2, v62
	v_addc_u32_e32 v65, vcc, v63, v70, vcc
	flat_load_ubyte v69, v[64:65]
	v_add_i32_e32 v64, vcc, 3, v62
	flat_load_ubyte v62, v[62:63]
	v_addc_u32_e32 v65, vcc, v63, v72, vcc
	flat_load_ubyte v64, v[64:65]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b8 v9, v67 offset:129
	ds_write_b8 v9, v69 offset:130
	ds_write_b8 v9, v62 offset:128
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v62, vcc, s6, v5
	v_lshlrev_b32_e32 v62, 5, v62
	v_add_i32_e32 v62, vcc, v6, v62
	v_ashrrev_i32_e32 v63, 31, v62
	v_lshlrev_b64 v[62:63], 2, v[62:63]
	v_add_i32_e32 v62, vcc, s2, v62
	v_addc_u32_e32 v63, vcc, v66, v63, vcc
	ds_write_b8 v9, v64 offset:131
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v64, vcc, 1, v62
	v_addc_u32_e32 v65, vcc, v63, v68, vcc
	flat_load_ubyte v66, v[64:65]
	v_add_i32_e32 v64, vcc, 2, v62
	v_addc_u32_e32 v65, vcc, v63, v70, vcc
	flat_load_ubyte v67, v[64:65]
	v_add_i32_e32 v64, vcc, 3, v62
	v_addc_u32_e32 v65, vcc, v63, v72, vcc
	flat_load_ubyte v64, v[64:65]
	s_nop 0
	flat_load_ubyte v62, v[62:63]
	s_mov_b32 s6, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_write_b8 v9, v66 offset:193
	ds_write_b8 v9, v67 offset:194
	ds_write_b8 v9, v64 offset:195
	ds_write_b8 v9, v62 offset:192
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v62, v7
BB0_2:                                  ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_mov_b32 m0, -1
	v_add_i32_e32 v63, vcc, s6, v1
	ds_read_i8 v64, v62
	ds_read_i8 v65, v62 offset:1
	ds_read_i8 v66, v62 offset:2
	ds_read_i8 v67, v62 offset:3
	ds_read_i8 v69, v63
	v_and_b32_e32 v61, s5, v61
	v_and_b32_e32 v60, s5, v60
	v_and_b32_e32 v59, s5, v59
	v_and_b32_e32 v58, s5, v58
	s_waitcnt lgkmcnt(0)
	v_mad_i32_i24 v61, v64, v69, v61
	v_mad_i32_i24 v60, v65, v69, v60
	v_mad_i32_i24 v59, v66, v69, v59
	v_mad_i32_i24 v58, v67, v69, v58
	ds_read_i8 v69, v63 offset:128
	v_and_b32_e32 v53, s5, v53
	v_and_b32_e32 v52, s5, v52
	v_and_b32_e32 v51, s5, v51
	v_and_b32_e32 v50, s5, v50
	ds_read_i8 v73, v63 offset:64
	s_waitcnt lgkmcnt(0)
	v_mad_i32_i24 v53, v64, v69, v53
	v_mad_i32_i24 v52, v65, v69, v52
	v_mad_i32_i24 v51, v66, v69, v51
	v_mad_i32_i24 v50, v67, v69, v50
	ds_read_i8 v69, v63 offset:192
	v_and_b32_e32 v57, s5, v57
	v_and_b32_e32 v56, s5, v56
	v_and_b32_e32 v55, s5, v55
	v_and_b32_e32 v49, s5, v49
	v_and_b32_e32 v48, s5, v48
	v_and_b32_e32 v47, s5, v47
	ds_read_i8 v68, v62 offset:64
	ds_read_i8 v70, v63 offset:1
	v_mad_i32_i24 v57, v64, v73, v57
	s_waitcnt lgkmcnt(0)
	v_mad_i32_i24 v49, v64, v69, v49
	ds_read_i8 v64, v62 offset:65
	v_mad_i32_i24 v56, v65, v73, v56
	v_mad_i32_i24 v48, v65, v69, v48
	ds_read_i8 v65, v62 offset:66
	v_mad_i32_i24 v55, v66, v73, v55
	v_mad_i32_i24 v47, v66, v69, v47
	ds_read_i8 v66, v62 offset:67
	v_and_b32_e32 v54, s5, v54
	ds_read_i8 v74, v63 offset:193
	v_mad_i32_i24 v54, v67, v73, v54
	ds_read_i8 v73, v63 offset:129
	v_mad_i32_i24 v61, v68, v70, v61
	s_waitcnt lgkmcnt(0)
	v_mad_i32_i24 v60, v64, v70, v60
	v_mad_i32_i24 v59, v65, v70, v59
	v_mad_i32_i24 v58, v66, v70, v58
	ds_read_i8 v70, v63 offset:65
	v_and_b32_e32 v46, s5, v46
	v_mad_i32_i24 v46, v67, v69, v46
	ds_read_i8 v71, v63 offset:2
	ds_read_i8 v67, v62 offset:128
	ds_read_i8 v69, v62 offset:129
	s_waitcnt lgkmcnt(0)
	v_mad_i32_i24 v56, v64, v70, v56
	v_mad_i32_i24 v55, v65, v70, v55
	v_mad_i32_i24 v52, v64, v73, v52
	v_mad_i32_i24 v48, v64, v74, v48
	ds_read_i8 v64, v62 offset:130
	v_mad_i32_i24 v51, v65, v73, v51
	v_mad_i32_i24 v47, v65, v74, v47
	ds_read_i8 v65, v62 offset:131
	ds_read_i8 v75, v63 offset:194
	ds_read_i8 v76, v63 offset:66
	v_mad_i32_i24 v61, v67, v71, v61
	v_mad_i32_i24 v60, v69, v71, v60
	s_waitcnt lgkmcnt(0)
	v_mad_i32_i24 v59, v64, v71, v59
	v_mad_i32_i24 v58, v65, v71, v58
	ds_read_i8 v71, v63 offset:130
	v_mad_i32_i24 v57, v68, v70, v57
	v_mad_i32_i24 v54, v66, v70, v54
	v_mad_i32_i24 v53, v68, v73, v53
	v_mad_i32_i24 v50, v66, v73, v50
	v_mad_i32_i24 v49, v68, v74, v49
	v_mad_i32_i24 v46, v66, v74, v46
	ds_read_i8 v72, v63 offset:3
	ds_read_i8 v66, v62 offset:192
	ds_read_i8 v68, v62 offset:193
	ds_read_i8 v70, v62 offset:194
	ds_read_i8 v77, v63 offset:67
	v_mad_i32_i24 v55, v64, v76, v55
	ds_read_i8 v73, v63 offset:131
	s_waitcnt lgkmcnt(0)
	v_mad_i32_i24 v51, v64, v71, v51
	v_mad_i32_i24 v47, v64, v75, v47
	ds_read_i8 v64, v62 offset:195
	ds_read_i8 v63, v63 offset:195
	v_mad_i32_i24 v57, v67, v76, v57
	v_mad_i32_i24 v56, v69, v76, v56
	v_mad_i32_i24 v54, v65, v76, v54
	v_mad_i32_i24 v53, v67, v71, v53
	v_mad_i32_i24 v52, v69, v71, v52
	v_mad_i32_i24 v50, v65, v71, v50
	v_mad_i32_i24 v49, v67, v75, v49
	v_mad_i32_i24 v48, v69, v75, v48
	s_add_i32 s6, s6, 4
	v_mad_i32_i24 v46, v65, v75, v46
	v_add_i32_e32 v62, vcc, 0x100, v62
	s_cmp_lg_u32 s6, 64
	v_mad_i32_i24 v61, v66, v72, v61
	v_mad_i32_i24 v60, v68, v72, v60
	v_mad_i32_i24 v59, v70, v72, v59
	s_waitcnt lgkmcnt(0)
	v_mad_i32_i24 v58, v64, v72, v58
	v_mad_i32_i24 v57, v66, v77, v57
	v_mad_i32_i24 v56, v68, v77, v56
	v_mad_i32_i24 v55, v70, v77, v55
	v_mad_i32_i24 v54, v64, v77, v54
	v_mad_i32_i24 v53, v66, v73, v53
	v_mad_i32_i24 v52, v68, v73, v52
	v_mad_i32_i24 v51, v70, v73, v51
	v_mad_i32_i24 v50, v64, v73, v50
	v_mad_i32_i24 v49, v66, v63, v49
	v_mad_i32_i24 v48, v68, v63, v48
	v_mad_i32_i24 v47, v70, v63, v47
	v_mad_i32_i24 v46, v64, v63, v46
	s_cbranch_scc1 BB0_2
; BB#3:                                 ;   in Loop: Header=BB0_1 Depth=1
	s_barrier
	s_add_i32 s4, s4, 1
	s_cmp_lg_u32 s4, 2
	flat_store_byte v[10:11], v61
	s_nop 0
	flat_store_byte v[12:13], v60
	s_nop 0
	flat_store_byte v[14:15], v59
	s_nop 0
	flat_store_byte v[16:17], v58
	s_nop 0
	flat_store_byte v[18:19], v57
	s_nop 0
	flat_store_byte v[20:21], v56
	s_nop 0
	flat_store_byte v[22:23], v55
	s_nop 0
	flat_store_byte v[24:25], v54
	s_nop 0
	flat_store_byte v[26:27], v53
	s_nop 0
	flat_store_byte v[28:29], v52
	s_nop 0
	flat_store_byte v[30:31], v51
	s_nop 0
	flat_store_byte v[32:33], v50
	s_nop 0
	flat_store_byte v[34:35], v49
	s_nop 0
	flat_store_byte v[36:37], v48
	s_nop 0
	flat_store_byte v[38:39], v47
	s_nop 0
	flat_store_byte v[40:41], v46
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_cbranch_scc1 BB0_1
; BB#4:                                 ; %"_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPaS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENKUlRKNS7_11tiled_indexILi3EEEE_clESI_.exit"
	s_endpgm
.Lfunc_end0:
	.size	_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPaS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_, .Lfunc_end0-_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPaS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_

	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 2584
; NumSgprs: 12
; NumVgprs: 78
; FloatMode: 192
; IeeeMode: 1
; ScratchSize: 0
; LDSByteSize: 8192 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 12
; NumVGPRsForWavesPerEU: 78
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
  - Name:            '_ZZN8hip_impl21grid_launch_hip_impl_IZ4mainE3$_0JRPaS3_S3_EEEvNS_12_GLOBAL__N_119New_grid_launch_tagE4dim3S6_iRKN2hc16accelerator_viewET_DpOT0_ENUlRKNS7_11tiled_indexILi3EEEE_19__cxxamp_trampolineES2_S2_S2_'
    Language:        OpenCL C
    LanguageVersion: [ 2, 0 ]
    Args:            
      - Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       I8
        AddrSpaceQual:   Generic
      - Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       I8
        AddrSpaceQual:   Generic
      - Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       I8
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
      WorkgroupGroupSegmentSize: 8192
      WavefrontNumSGPRs: 12
      WorkitemNumVGPRs: 78
      KernargSegmentAlign: 4
      GroupSegmentAlign: 4
      PrivateSegmentAlign: 4
      WavefrontSize:   6
...
	.end_amdgpu_code_object_metadata
	.section	.debug_line
.Lline_table_start0:

	.text
	.hsa_code_object_version 2,1
	.hsa_code_object_isa 9,0,0,"AMD","AMDGPU"
	.weak	_Z5Add01PDv4_fS0_S0_i   ; -- Begin function _Z5Add01PDv4_fS0_S0_i
	.p2align	8
	.type	_Z5Add01PDv4_fS0_S0_i,@function
	.amdgpu_hsa_kernel _Z5Add01PDv4_fS0_S0_i
_Z5Add01PDv4_fS0_S0_i:                  ; @_Z5Add01PDv4_fS0_S0_i
.Lfunc_begin0:
	.amd_kernel_code_t
		amd_code_version_major = 1
		amd_code_version_minor = 1
		amd_machine_kind = 1
		amd_machine_version_major = 9
		amd_machine_version_minor = 0
		amd_machine_version_stepping = 0
		kernel_code_entry_byte_offset = 256
		kernel_code_prefetch_byte_size = 0
		max_scratch_backing_memory_byte_size = 0
		granulated_workitem_vgpr_count = 3
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
		enable_sgpr_workgroup_id_y = 0
		enable_sgpr_workgroup_id_z = 0
		enable_sgpr_workgroup_info = 0
		enable_vgpr_workitem_id = 0
		enable_exception_msb = 0
		granulated_lds_size = 0
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
		workgroup_group_segment_byte_size = 0
		gds_segment_byte_size = 0
		kernarg_segment_byte_size = 28
		workgroup_fbarrier_count = 0
		wavefront_sgpr_count = 12
		workitem_vgpr_count = 13
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
; %bb.0:                                ; %entry
	s_load_dword s8, s[4:5], 0x18
	s_load_dwordx2 s[6:7], s[4:5], 0x0
	s_load_dwordx2 s[2:3], s[4:5], 0x8
	s_load_dwordx2 s[0:1], s[4:5], 0x10
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s4, s8, 31
	s_lshr_b32 s4, s4, 30
	s_add_i32 s8, s8, s4
	s_ashr_i32 s4, s8, 2
	v_cmp_gt_i32_e32 vcc, s4, v0
	s_and_saveexec_b64 s[8:9], vcc
	; mask branch BB0_4
	s_cbranch_execz BB0_4
BB0_1:                                  ; %if.then
	v_lshlrev_b32_e32 v12, 4, v0
	v_mov_b32_e32 v2, s3
	v_add_co_u32_e32 v1, vcc, s2, v12
	v_addc_co_u32_e32 v2, vcc, 0, v2, vcc
	v_mov_b32_e32 v4, s1
	v_add_co_u32_e32 v3, vcc, s0, v12
	v_addc_co_u32_e32 v4, vcc, 0, v4, vcc
	flat_load_dwordx4 v[4:7], v[3:4]
	s_nop 0
	flat_load_dwordx4 v[8:11], v[1:2]
	s_mov_b32 s5, 0x10000
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v2, v10, v6
	v_mul_f32_e32 v1, v9, v5
	v_mov_b32_e32 v6, s7
	v_add_co_u32_e32 v5, vcc, s6, v12
	v_addc_co_u32_e32 v6, vcc, 0, v6, vcc
	v_mul_f32_e32 v3, v11, v7
	v_mul_f32_e32 v4, v8, v4
	flat_load_dwordx4 v[7:10], v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
BB0_2:                                  ; %for.body
                                        ; =>This Inner Loop Header: Depth=1
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	s_sub_i32 s5, s5, 64
	v_add_f32_e32 v10, v3, v10
	v_add_f32_e32 v9, v2, v9
	v_add_f32_e32 v8, v1, v8
	v_add_f32_e32 v7, v4, v7
	s_cmp_lg_u32 s5, 0
	s_cbranch_scc1 BB0_2
; %bb.3:                                ; %for.end
	flat_store_dwordx4 v[5:6], v[7:10]
	s_waitcnt vmcnt(0) lgkmcnt(0)
BB0_4:                                  ; %Flow3
	s_or_b64 exec, exec, s[8:9]
	v_cmp_eq_u32_e32 vcc, s4, v0
	s_and_saveexec_b64 s[4:5], vcc
	; mask branch BB0_8
	s_cbranch_execz BB0_8
BB0_5:                                  ; %if.then9
	v_lshlrev_b32_e32 v4, 4, v0
	v_mov_b32_e32 v1, s7
	v_add_co_u32_e32 v0, vcc, s6, v4
	v_addc_co_u32_e32 v1, vcc, 0, v1, vcc
	v_mov_b32_e32 v3, s3
	v_add_co_u32_e32 v2, vcc, s2, v4
	v_addc_co_u32_e32 v3, vcc, 0, v3, vcc
	v_add_co_u32_e32 v4, vcc, s0, v4
	v_mov_b32_e32 v5, s1
	v_addc_co_u32_e32 v5, vcc, 0, v5, vcc
	flat_load_dword v4, v[4:5]
	s_nop 0
	flat_load_dword v2, v[2:3]
	s_nop 0
	flat_load_dword v3, v[0:1]
	s_mov_b32 s0, 0x10000
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v2, v2, v4
BB0_6:                                  ; %for.body26
                                        ; =>This Inner Loop Header: Depth=1
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	v_add_f32_e32 v3, v2, v3
	s_addk_i32 s0, 0xff80
	s_cmp_lg_u32 s0, 0
	v_add_f32_e32 v3, v2, v3
	s_cbranch_scc1 BB0_6
; %bb.7:                                ; %for.end31
	flat_store_dword v[0:1], v3
	s_waitcnt vmcnt(0) lgkmcnt(0)
BB0_8:                                  ; %if.end33
	s_endpgm
.Lfunc_end0:
	.size	_Z5Add01PDv4_fS0_S0_i, .Lfunc_end0-_Z5Add01PDv4_fS0_S0_i
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 1856
; NumSgprs: 12
; NumVgprs: 13
; ScratchSize: 0
; FloatMode: 192
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 12
; NumVGPRsForWavesPerEU: 13
; ReservedVGPRFirst: 0
; ReservedVGPRCount: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 1
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.weak	_Z5Add02PDv4_fS0_S0_i   ; -- Begin function _Z5Add02PDv4_fS0_S0_i
	.p2align	8
	.type	_Z5Add02PDv4_fS0_S0_i,@function
	.amdgpu_hsa_kernel _Z5Add02PDv4_fS0_S0_i
_Z5Add02PDv4_fS0_S0_i:                  ; @_Z5Add02PDv4_fS0_S0_i
.Lfunc_begin1:
	.amd_kernel_code_t
		amd_code_version_major = 1
		amd_code_version_minor = 1
		amd_machine_kind = 1
		amd_machine_version_major = 9
		amd_machine_version_minor = 0
		amd_machine_version_stepping = 0
		kernel_code_entry_byte_offset = 256
		kernel_code_prefetch_byte_size = 0
		max_scratch_backing_memory_byte_size = 0
		granulated_workitem_vgpr_count = 3
		granulated_wavefront_sgpr_count = 2
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
		enable_sgpr_workgroup_id_y = 0
		enable_sgpr_workgroup_id_z = 0
		enable_sgpr_workgroup_info = 0
		enable_vgpr_workitem_id = 0
		enable_exception_msb = 0
		granulated_lds_size = 0
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
		workgroup_group_segment_byte_size = 0
		gds_segment_byte_size = 0
		kernarg_segment_byte_size = 28
		workgroup_fbarrier_count = 0
		wavefront_sgpr_count = 18
		workitem_vgpr_count = 15
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
; %bb.0:                                ; %entry
	s_load_dword s6, s[4:5], 0x18
	s_load_dwordx2 s[2:3], s[4:5], 0x0
	s_load_dwordx2 s[0:1], s[4:5], 0x8
	s_load_dwordx2 s[8:9], s[4:5], 0x10
	s_mov_b32 s10, -12
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s4, s6, 31
	s_lshr_b32 s4, s4, 30
	s_add_i32 s6, s6, s4
	s_ashr_i32 s6, s6, 2
	s_ashr_i32 s7, s6, 31
	s_lshl_b64 s[4:5], s[6:7], 4
	s_add_u32 s7, s2, s4
	s_addc_u32 s11, s3, s5
	s_add_u32 s7, s7, s10
	s_addc_u32 s11, s11, -1
	s_add_u32 s12, s0, s4
	s_addc_u32 s13, s1, s5
	s_add_u32 s12, s12, s10
	v_lshlrev_b32_e32 v5, 4, v0
	s_addc_u32 s13, s13, -1
	v_mov_b32_e32 v2, s3
	v_add_co_u32_e32 v1, vcc, s2, v5
	s_add_u32 s14, s8, s4
	v_addc_co_u32_e32 v2, vcc, 0, v2, vcc
	s_addc_u32 s15, s9, s5
	v_mov_b32_e32 v3, s1
	v_add_co_u32_e64 v7, s[0:1], s0, v5
	v_mov_b32_e32 v4, s11
	v_cmp_eq_u32_e32 vcc, s6, v0
	s_add_u32 s10, s14, s10
	v_addc_co_u32_e64 v3, s[0:1], 0, v3, s[0:1]
	v_cndmask_b32_e32 v14, v2, v4, vcc
	v_mov_b32_e32 v4, s13
	v_cndmask_b32_e32 v4, v3, v4, vcc
	v_mov_b32_e32 v3, s12
	s_addc_u32 s14, s15, -1
	v_mov_b32_e32 v6, s9
	v_add_co_u32_e64 v5, s[0:1], s8, v5
	v_addc_co_u32_e64 v6, s[0:1], 0, v6, s[0:1]
	v_cndmask_b32_e32 v3, v7, v3, vcc
	v_mov_b32_e32 v7, s14
	v_cndmask_b32_e32 v8, v6, v7, vcc
	v_mov_b32_e32 v6, s10
	v_cndmask_b32_e32 v7, v5, v6, vcc
	flat_load_dwordx4 v[3:6], v[3:4]
	s_nop 0
	flat_load_dwordx4 v[10:13], v[7:8]
	s_mov_b32 s0, 0x10000
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_f32_e32 v10, v3, v10
	v_mov_b32_e32 v3, s7
	v_mul_f32_e32 v7, v6, v13
	v_cndmask_b32_e32 v13, v1, v3, vcc
	v_mul_f32_e32 v8, v5, v12
	v_mul_f32_e32 v9, v4, v11
	flat_load_dwordx4 v[3:6], v[13:14]
	s_waitcnt vmcnt(0) lgkmcnt(0)
BB1_1:                                  ; %for.body
                                        ; =>This Inner Loop Header: Depth=1
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	s_sub_i32 s0, s0, 64
	v_add_f32_e32 v6, v7, v6
	v_add_f32_e32 v5, v8, v5
	v_add_f32_e32 v4, v9, v4
	v_add_f32_e32 v3, v10, v3
	s_cmp_lg_u32 s0, 0
	s_cbranch_scc1 BB1_1
; %bb.2:                                ; %for.end
	v_cmp_gt_i32_e64 s[0:1], s6, v0
	s_and_saveexec_b64 s[6:7], s[0:1]
	; mask branch BB1_4
BB1_3:                                  ; %if.then
	flat_store_dwordx4 v[1:2], v[3:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
BB1_4:                                  ; %if.end
	s_or_b64 exec, exec, s[6:7]
	s_and_saveexec_b64 s[0:1], vcc
	; mask branch BB1_6
BB1_5:                                  ; %if.then28
	s_add_u32 s0, s2, s4
	s_addc_u32 s1, s3, s5
	v_mov_b32_e32 v0, s0
	v_mov_b32_e32 v1, s1
	flat_store_dword v[0:1], v6
	s_waitcnt vmcnt(0) lgkmcnt(0)
BB1_6:                                  ; %if.end32
	s_endpgm
.Lfunc_end1:
	.size	_Z5Add02PDv4_fS0_S0_i, .Lfunc_end1-_Z5Add02PDv4_fS0_S0_i
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 1396
; NumSgprs: 18
; NumVgprs: 15
; ScratchSize: 0
; FloatMode: 192
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 18
; NumVGPRsForWavesPerEU: 15
; ReservedVGPRFirst: 0
; ReservedVGPRCount: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 1
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0

	.ident	"HCC clang version 7.0.0 (ssh://gerritgit/compute/ec/hcc-tot/clang 86791fc4961dc8ffde77bde20d7dfa5e5cbeff5e) (ssh://gerritgit/compute/ec/hcc-tot/llvm 0ccef158132e1222d549edf2da33d4bc0be6c2d1) (based on HCC 1.2.18184-74f5fa9-86791fc-0ccef15 )"
	.section	".note.GNU-stack"
	.amd_amdgpu_isa "amdgcn--amdhsa-amdgiz-gfx900"
	.amd_amdgpu_hsa_metadata
---
Version:         [ 1, 0 ]
Printf:          
  - '1:3:unknown'
  - '2:3:unknown'
  - '3:3:unknown'
  - '4:3:unknown'
  - '5:3:unknown'
  - '6:3:unknown'
  - '7:3:unknown'
Kernels:         
  - Name:            _Z5Add01PDv4_fS0_S0_i
    SymbolName:      '_Z5Add01PDv4_fS0_S0_i@kd'
    Language:        OpenCL C
    LanguageVersion: [ 2, 0 ]
    Args:            
      - Name:            out
        Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       F32
        AddrSpaceQual:   Generic
      - Name:            in1
        Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       F32
        AddrSpaceQual:   Generic
      - Name:            in2
        Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       F32
        AddrSpaceQual:   Generic
      - Name:            num
        Size:            4
        Align:           4
        ValueKind:       ByValue
        ValueType:       I32
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
      - Size:            8
        Align:           8
        ValueKind:       HiddenPrintfBuffer
        ValueType:       I8
        AddrSpaceQual:   Global
    CodeProps:       
      KernargSegmentSize: 28
      GroupSegmentFixedSize: 0
      PrivateSegmentFixedSize: 0
      KernargSegmentAlign: 8
      WavefrontSize:   64
      NumSGPRs:        12
      NumVGPRs:        13
      MaxFlatWorkGroupSize: 256
  - Name:            _Z5Add02PDv4_fS0_S0_i
    SymbolName:      '_Z5Add02PDv4_fS0_S0_i@kd'
    Language:        OpenCL C
    LanguageVersion: [ 2, 0 ]
    Args:            
      - Name:            out
        Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       F32
        AddrSpaceQual:   Generic
      - Name:            in1
        Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       F32
        AddrSpaceQual:   Generic
      - Name:            in2
        Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       F32
        AddrSpaceQual:   Generic
      - Name:            num
        Size:            4
        Align:           4
        ValueKind:       ByValue
        ValueType:       I32
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
      - Size:            8
        Align:           8
        ValueKind:       HiddenPrintfBuffer
        ValueType:       I8
        AddrSpaceQual:   Global
    CodeProps:       
      KernargSegmentSize: 28
      GroupSegmentFixedSize: 0
      PrivateSegmentFixedSize: 0
      KernargSegmentAlign: 8
      WavefrontSize:   64
      NumSGPRs:        18
      NumVGPRs:        15
      MaxFlatWorkGroupSize: 256
...

	.end_amd_amdgpu_hsa_metadata

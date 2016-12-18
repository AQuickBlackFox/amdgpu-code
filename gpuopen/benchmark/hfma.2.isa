	.text
	.hsa_code_object_version 2,1
	.hsa_code_object_isa 8,0,3,"AMD","AMDGPU"
	.section	.note,#alloc
	.long	4
	.long	.Ltmp1-.Ltmp0
	.long	7
	.asciz	"AMD"
	.p2align	2
.Ltmp0:
	.byte	1
	.short	256
.Ltmp1:
	.p2align	2
	.text
	.section	.AMDGPU.config
	.text
	.globl	__rocm_hfma
	.p2align	8
	.type	__rocm_hfma,@function
__rocm_hfma:                            ; @__rocm_hfma
	.amd_kernel_code_t
		amd_code_version_major = 1
		amd_code_version_minor = 0
		amd_machine_kind = 1
		amd_machine_version_major = 8
		amd_machine_version_minor = 0
		amd_machine_version_stepping = 3
		kernel_code_entry_byte_offset = 256
		kernel_code_prefetch_byte_size = 0
		max_scratch_backing_memory_byte_size = 0
		granulated_workitem_vgpr_count = 0
		granulated_wavefront_sgpr_count = 0
		priority = 0
		float_mode = 192
		priv = 0
		enable_dx10_clamp = 1
		debug_mode = 0
		enable_ieee_mode = 1
		enable_sgpr_private_segment_wave_byte_offset = 0
		user_sgpr_count = 6
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
		kernarg_segment_byte_size = 6
		workgroup_fbarrier_count = 0
		wavefront_sgpr_count = 6
		workitem_vgpr_count = 4
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
		call_convention = 0
		runtime_loader_kernel_symbol = 0
	.end_amd_kernel_code_t
; BB#0:
	s_add_u32 s0, s4, 4
	s_addc_u32 s1, s5, 0
	v_mov_b32_e32 v0, s0
	s_add_u32 s0, s4, 2
	v_mov_b32_e32 v1, s1
	s_addc_u32 s1, s5, 0
	flat_load_ushort v2, v[0:1]
	v_mov_b32_e32 v0, s0
	v_mov_b32_e32 v1, s1
	flat_load_ushort v3, v[0:1]
	v_mov_b32_e32 v0, s4
	v_mov_b32_e32 v1, s5
	flat_load_ushort v0, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	;;#ASMSTART
	v_mad_f16 v0, v0, v3, v2
	;;#ASMEND
	s_endpgm
.Lfunc_end0:
	.size	__rocm_hfma, .Lfunc_end0-__rocm_hfma

	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 80
; NumSgprs: 6
; NumVgprs: 4
; FloatMode: 192
; IeeeMode: 1
; ScratchSize: 0
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 6
; NumVGPRsForWavesPerEU: 4
; ReservedVGPRFirst: 0
; ReservedVGPRCount: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.section	.AMDGPU.config
	.text
	.globl	DoHFma
	.p2align	8
	.type	DoHFma,@function
	.amdgpu_hsa_kernel DoHFma
DoHFma:                                 ; @DoHFma
	.amd_kernel_code_t
		amd_code_version_major = 1
		amd_code_version_minor = 0
		amd_machine_kind = 1
		amd_machine_version_major = 8
		amd_machine_version_minor = 0
		amd_machine_version_stepping = 3
		kernel_code_entry_byte_offset = 256
		kernel_code_prefetch_byte_size = 0
		max_scratch_backing_memory_byte_size = 0
		granulated_workitem_vgpr_count = 0
		granulated_wavefront_sgpr_count = 1
		priority = 0
		float_mode = 192
		priv = 0
		enable_dx10_clamp = 1
		debug_mode = 0
		enable_ieee_mode = 1
		enable_sgpr_private_segment_wave_byte_offset = 0
		user_sgpr_count = 6
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
		kernarg_segment_byte_size = 12
		workgroup_fbarrier_count = 0
		wavefront_sgpr_count = 15
		workitem_vgpr_count = 3
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
		call_convention = 0
		runtime_loader_kernel_symbol = 0
	.end_amd_kernel_code_t
; BB#0:
	s_mov_b64 s[10:11], s[2:3]
	s_mov_b64 s[8:9], s[0:1]
	s_load_dword s0, s[4:5], 0x0
	s_load_dword s1, s[4:5], 0x8
	v_lshlrev_b32_e32 v0, 1, v0
	s_mov_b32 s12, s7
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v1, vcc, s0, v0
	v_add_i32_e32 v0, vcc, s1, v0
	buffer_load_ushort v1, v1, s[8:11], s12 offen
	s_nop 0
	buffer_load_ushort v2, v0, s[8:11], s12 offen
	s_mov_b32 s1, 0xffff
	s_brev_b32 s0, 16
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v1, s1, v1
	s_waitcnt vmcnt(0)
BB1_1:                                  ; =>This Inner Loop Header: Depth=1
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	v_and_b32_e32 v2, s1, v2
	s_addk_i32 s0, 0xffe0
	s_cmp_eq_u32 s0, 0
	;;#ASMSTART
	v_mad_f16 v2, v1, v2, v1
	;;#ASMEND
	s_cbranch_scc0 BB1_1
; BB#2:
	buffer_store_short v2, v0, s[8:11], s12 offen
	s_endpgm
.Lfunc_end1:
	.size	DoHFma, .Lfunc_end1-DoHFma

	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 496
; NumSgprs: 15
; NumVgprs: 3
; FloatMode: 192
; IeeeMode: 1
; ScratchSize: 0
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 15
; NumVGPRsForWavesPerEU: 3
; ReservedVGPRFirst: 0
; ReservedVGPRCount: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0

	.ident	"HCC clang version 4.0.0  (based on HCC 1.0.16501-04a69df-ef406d4-eef66ba )"
	.section	".note.GNU-stack"

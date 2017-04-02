	.text
	.hsa_code_object_version 2,1
	.hsa_code_object_isa 8,0,3,"AMD","AMDGPU"
	.amdgpu_runtime_metadata
---
{ amd.MDVersion: [ 2, 1 ], amd.IsaInfo: { amd.IsaInfoWavefrontSize: 64, amd.IsaInfoLocalMemorySize: 65536, amd.IsaInfoEUsPerCU: 4, amd.IsaInfoMaxWavesPerEU: 10, amd.IsaInfoMaxFlatWorkGroupSize: 2048, amd.IsaInfoSGPRAllocGranule: 16, amd.IsaInfoTotalNumSGPRs: 800, amd.IsaInfoAddressableNumSGPRs: 102, amd.IsaInfoVGPRAllocGranule: 4, amd.IsaInfoTotalNumVGPRs: 256, amd.IsaInfoAddressableNumVGPRs: 256 } }
...

	.end_amdgpu_runtime_metadata
	.globl	hello_world
	.p2align	8
	.type	hello_world,@function
	.amdgpu_hsa_kernel hello_world
hello_world:                            ; @hello_world
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
		granulated_workitem_vgpr_count = 1
		granulated_wavefront_sgpr_count = 0
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
		kernarg_segment_byte_size = 16
		workgroup_fbarrier_count = 0
		wavefront_sgpr_count = 8
		workitem_vgpr_count = 56
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
	s_load_dwordx2 s[0:1], s[4:5], 0x0
	s_load_dwordx2 s[2:3], s[4:5], 0x8
	s_waitcnt lgkmcnt(0)
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_mov_b32 s6 0x200000

	v_mov_b32_e32 v2, s0
	v_mov_b32_e32 v3, s1

	v_add_i32_e32 v7, vcc, 0x0, v0						; tx + offset (offset = 256 DWORDs)
	v_add_i32_e32 v8, vcc, v2, v7							; calculate LSB of address with offset
	v_addc_u32_e32 v9, vcc, 0, v3, vcc				; calculate MSB of address with offset

	v_add_i32_e32 v7, vcc, 0x400, v0
	v_add_i32_e32 v10, vcc, v2, v7
	v_addc_u32_e32 v11, vcc, 0, v3, vcc

	v_add_i32_e32 v7, vcc, 0x800, v0
	v_add_i32_e32 v12, vcc, v2, v7
	v_addc_u32_e32 v13, vcc, 0, v3, vcc

	v_add_i32_e32 v7, vcc, 0xC00, v0
	v_add_i32_e32 v14, vcc, v2, v7
	v_addc_u32_e32 v15, vcc, 0, v3, vcc


	v_add_i32_e32 v7, vcc, 0x1000, v0					; tx + offset (offset = 256 DWORDs)
	v_add_i32_e32 v16, vcc, v2, v7						; calculate LSB of address with offset
	v_addc_u32_e32 v17, vcc, 0, v3, vcc				; calculate MSB of address with offset

	v_add_i32_e32 v7, vcc, 0x1400, v0
	v_add_i32_e32 v18, vcc, v2, v7
	v_addc_u32_e32 v19, vcc, 0, v3, vcc

	v_add_i32_e32 v7, vcc, 0x1800, v0
	v_add_i32_e32 v20, vcc, v2, v7
	v_addc_u32_e32 v21, vcc, 0, v3, vcc

	v_add_i32_e32 v7, vcc, 0x1C00, v0
	v_add_i32_e32 v22, vcc, v2, v7
	v_addc_u32_e32 v23, vcc, 0, v3, vcc


	v_add_i32_e32 v7, vcc, 0x2000, v0					; tx + offset (offset = 256 DWORDs)
	v_add_i32_e32 v24, vcc, v2, v7						; calculate LSB of address with offset
	v_addc_u32_e32 v25, vcc, 0, v3, vcc				; calculate MSB of address with offset

	v_add_i32_e32 v7, vcc, 0x2400, v0
	v_add_i32_e32 v26, vcc, v2, v7
	v_addc_u32_e32 v27, vcc, 0, v3, vcc

	v_add_i32_e32 v7, vcc, 0x2800, v0
	v_add_i32_e32 v28, vcc, v2, v7
	v_addc_u32_e32 v29, vcc, 0, v3, vcc

	v_add_i32_e32 v7, vcc, 0x2C00, v0
	v_add_i32_e32 v30, vcc, v2, v7
	v_addc_u32_e32 v31, vcc, 0, v3, vcc


	v_add_i32_e32 v7, vcc, 0x3000, v0					; tx + offset (offset = 256 DWORDs)
	v_add_i32_e32 v32, vcc, v2, v7						; calculate LSB of address with offset
	v_addc_u32_e32 v33, vcc, 0, v3, vcc				; calculate MSB of address with offset

	v_add_i32_e32 v7, vcc, 0x3400, v0
	v_add_i32_e32 v34, vcc, v2, v7
	v_addc_u32_e32 v35, vcc, 0, v3, vcc

	v_add_i32_e32 v7, vcc, 0x3800, v0
	v_add_i32_e32 v36, vcc, v2, v7
	v_addc_u32_e32 v37, vcc, 0, v3, vcc


	v_add_i32_e32 v7, vcc, 0x3C00, v0
	v_add_i32_e32 v38, vcc, v2, v7
	v_addc_u32_e32 v39, vcc, 0, v3, vcc


BB0_1:

	flat_load_dword v40, v[8:9]			; load from the address

	flat_load_dword v41, v[10:11]

	flat_load_dword v42, v[12:13]

	flat_load_dword v43, v[14:15]



	flat_load_dword v44, v[16:17]		; load from the address

	flat_load_dword v45, v[18:19]

	flat_load_dword v46, v[20:21]

	flat_load_dword v47, v[22:23]



	flat_load_dword v48, v[24:25]		; load from the address

	flat_load_dword v49, v[26:27]

	flat_load_dword v50, v[28:29]

	flat_load_dword v51, v[30:31]



	flat_load_dword v52, v[32:33]		; load from the address

	flat_load_dword v53, v[34:35]

	flat_load_dword v54, v[36:37]

	flat_load_dword v55, v[38:39]

	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	s_cbranch_scc1 BB0_1

	v_mov_b32_e32 v2, s0
	v_mov_b32_e32 v3, s1
	v_add_i32_e32 v4, vcc, v2, v0
	v_addc_u32_e32 v5, vcc, 0, v3, vcc
	flat_store_dword v[4:5], v6
	s_endpgm
.Lfunc_end0:
	.size	hello_world, .Lfunc_end0-hello_world

	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 80
; NumSgprs: 8
; NumVgprs: 5
; FloatMode: 192
; IeeeMode: 1
; ScratchSize: 0
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 8
; NumVGPRsForWavesPerEU: 5
; ReservedVGPRFirst: 0
; ReservedVGPRCount: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 1
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0

	.section	".note.GNU-stack"

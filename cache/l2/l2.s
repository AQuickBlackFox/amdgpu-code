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
		workitem_vgpr_count = 40
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

	s_mov_b32 s6, 0x200000

	v_mov_b32_e32 v2, s0
	v_mov_b32_e32 v3, s1

	v_mul_u32_u24 v4, 0x10, v0
	v_add_i32_e32 v5, vcc, v2, v4
	v_addc_u32_e32 v6, vcc, 0, v3, vcc

	v_add_i32_e32 v7, vcc, 0x1, v4
	v_add_i32_e32 v7, vcc, v2, v7
	v_addc_u32_e32 v8, vcc, 0, v3, vcc

	v_add_i32_e32 v9, vcc, 0x2, v4
	v_add_i32_e32 v9, vcc, v2, v9
	v_addc_u32_e32 v10, vcc, 0, v3, vcc

	v_add_i32_e32 v11, vcc, 0x3, v4
	v_add_i32_e32 v11, vcc, v2, v11
	v_addc_u32_e32 v12, vcc, 0, v3, vcc


	v_add_i32_e32 v13, vcc, 0x4, v4
	v_add_i32_e32 v13, vcc, v2, v13
	v_addc_u32_e32 v14, vcc, 0, v3, vcc

	v_add_i32_e32 v15, vcc, 0x5, v4
	v_add_i32_e32 v15, vcc, v2, v15
	v_addc_u32_e32 v16, vcc, 0, v3, vcc

	v_add_i32_e32 v17, vcc, 0x6, v4
	v_add_i32_e32 v17, vcc, v2, v17
	v_addc_u32_e32 v18, vcc, 0, v3, vcc

	v_add_i32_e32 v19, vcc, 0x7, v4
	v_add_i32_e32 v19, vcc, v2, v19
	v_addc_u32_e32 v20, vcc, 0, v3, vcc


	v_add_i32_e32 v21, vcc, 0x8, v4
	v_add_i32_e32 v21, vcc, v2, v21
	v_addc_u32_e32 v22, vcc, 0, v3, vcc

	v_add_i32_e32 v23, vcc, 0x9, v4
	v_add_i32_e32 v23, vcc, v2, v23
	v_addc_u32_e32 v24, vcc, 0, v3, vcc

	v_add_i32_e32 v25, vcc, 0xa, v4
	v_add_i32_e32 v25, vcc, v2, v25
	v_addc_u32_e32 v26, vcc, 0, v3, vcc

	v_add_i32_e32 v27, vcc, 0xb, v4
	v_add_i32_e32 v27, vcc, v2, v27
	v_addc_u32_e32 v28, vcc, 0, v3, vcc


	v_add_i32_e32 v29, vcc, 0xc, v4
	v_add_i32_e32 v29, vcc, v2, v29
	v_addc_u32_e32 v30, vcc, 0, v3, vcc

	v_add_i32_e32 v31, vcc, 0xd, v4
	v_add_i32_e32 v31, vcc, v2, v31
	v_addc_u32_e32 v32, vcc, 0, v3, vcc

	v_add_i32_e32 v33, vcc, 0xe, v4
	v_add_i32_e32 v33, vcc, v2, v33
	v_addc_u32_e32 v34, vcc, 0, v3, vcc

	v_add_i32_e32 v35, vcc, 0xf, v4
	v_add_i32_e32 v35, vcc, v2, v35
	v_addc_u32_e32 v36, vcc, 0, v3, vcc

BB0_1:

	flat_load_dword v35, v[5:6] glc

	flat_load_dword v36, v[7:8] glc

	flat_load_dword v37, v[9:10] glc

	flat_load_dword v38, v[11:12] glc


	flat_load_dword v39, v[13:14] glc

	flat_load_dword v40, v[15:16] glc

	flat_load_dword v41, v[17:18] glc

	flat_load_dword v42, v[19:20] glc


	flat_load_dword v43, v[21:22] glc

	flat_load_dword v44, v[23:24] glc

	flat_load_dword v45, v[25:26] glc

	flat_load_dword v46, v[27:28] glc


	flat_load_dword v47, v[29:30] glc

	flat_load_dword v48, v[31:32] glc

	flat_load_dword v49, v[33:34] glc

	flat_load_dword v50, v[35:36] glc


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

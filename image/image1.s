	.text
	.hsa_code_object_version 2,1
	.hsa_code_object_isa 8,0,3,"AMD","AMDGPU"
	.amdgpu_runtime_metadata
---
{ amd.MDVersion: [ 2, 0 ] }
...

	.end_amdgpu_runtime_metadata
	.section	.AMDGPU.config
	.text
	.globl	image.copy
	.p2align	8
	.type	image.copy,@function
	.amdgpu_hsa_kernel image.copy
image.copy:                             ; @image.copy
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
		granulated_workitem_vgpr_count = 1
		granulated_wavefront_sgpr_count = 2
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
		kernarg_segment_byte_size = 80
		workgroup_fbarrier_count = 0
		wavefront_sgpr_count = 20
		workitem_vgpr_count = 8
		reserved_vgpr_first = 0
		reserved_vgpr_count = 0
		reserved_sgpr_first = 0
		reserved_sgpr_count = 0
		debug_wavefront_private_segment_offset_sgpr = 0
		debug_private_segment_buffer_sgpr = 0
		kernarg_segment_alignment = 5
		group_segment_alignment = 4
		private_segment_alignment = 4
		wavefront_size = 6
		call_convention = 0
		runtime_loader_kernel_symbol = 0
	.end_amd_kernel_code_t
; BB#0:
	s_load_dwordx4 s[16:19], s[4:5], 0x40
	s_load_dwordx8 s[8:15], s[4:5], 0x0
	s_load_dwordx8 s[0:7], s[4:5], 0x20
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v0, s16
	v_mov_b32_e32 v1, s17
	v_mov_b32_e32 v2, s18
	v_mov_b32_e32 v3, s19
	image_load v[4:7], v[0:3], s[8:15] dmask:0xf unorm
	s_waitcnt vmcnt(0)
	image_store v[4:7], v[0:3], s[0:7] dmask:0xf unorm
	s_endpgm
.Lfunc_end0:
	.size	image.copy, .Lfunc_end0-image.copy

	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 68
; NumSgprs: 20
; NumVgprs: 8
; FloatMode: 192
; IeeeMode: 1
; ScratchSize: 0
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 20
; NumVGPRsForWavesPerEU: 8
; ReservedVGPRFirst: 0
; ReservedVGPRCount: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0

	.section	".note.GNU-stack"

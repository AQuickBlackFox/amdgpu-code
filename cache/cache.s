	.text
	.hsa_code_object_version 2,1
	.hsa_code_object_isa 8,0,3,"AMD","AMDGPU"
	.globl	_ZN12_GLOBAL__N_143_Z9Coalesced16grid_launch_parmPfS0__functor19__cxxamp_trampolineEiiiiiiPKfPf
	.p2align	8
	.type	_ZN12_GLOBAL__N_143_Z9Coalesced16grid_launch_parmPfS0__functor19__cxxamp_trampolineEiiiiiiPKfPf,@function
	.amdgpu_hsa_kernel _ZN12_GLOBAL__N_143_Z9Coalesced16grid_launch_parmPfS0__functor19__cxxamp_trampolineEiiiiiiPKfPf
_ZN12_GLOBAL__N_143_Z9Coalesced16grid_launch_parmPfS0__functor19__cxxamp_trampolineEiiiiiiPKfPf: ; @_ZN12_GLOBAL__N_143_Z9Coalesced16grid_launch_parmPfS0__functor19__cxxamp_trampolineEiiiiiiPKfPf
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
	granulated_workitem_vgpr_count = 17
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
	kernarg_segment_byte_size = 40
	workgroup_fbarrier_count = 0
	wavefront_sgpr_count = 8
	workitem_vgpr_count = 71
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
	s_load_dwordx2 s[2:3], s[4:5], 0x18
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[2:3], 2, v[0:1]
	s_load_dwordx2 s[0:1], s[4:5], 0x20
	s_waitcnt lgkmcnt(0)

	v_add_i32_e32 v1, vcc, s2, v2
	v_mov_b32_e32 v2, s3
	v_addc_u32_e32 v2, vcc, v3, v2, vcc
	s_mov_b32 s2, 0x100

BB0_1:

	flat_load_dword v3, v[1:2]
	v_add_i32_e32 v3, vcc, 0x100, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[3:4]
	v_add_i32_e32 v3, vcc, 0x200, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x300, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[3:4]
	v_add_i32_e32 v3, vcc, 0x400, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x500, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[3:4]
	v_add_i32_e32 v3, vcc, 0x600, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[3:4]
	v_add_i32_e32 v3, vcc, 0x700, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x800, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[3:4]
	v_add_i32_e32 v3, vcc, 0x900, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0xa00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0xb00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[3:4]
	v_add_i32_e32 v3, vcc, 0xc00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0xd00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0xe00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0xf00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x1000, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x1100, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x1200, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x1300, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x1400, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x1500, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x1600, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x1700, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x1800, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x1900, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x1a00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x1b00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x1c00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x1d00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[3:4]
	v_add_i32_e32 v3, vcc, 0x1e00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x1f00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x2000, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x2100, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x2200, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x2300, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x2400, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x2500, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x2600, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x2700, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x2800, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x2900, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x2a00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x2b00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x2c00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x2d00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x2e00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x2f00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x3000, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x3100, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x3200, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x3300, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x3400, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x3500, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x3600, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x3700, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x3800, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x3900, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x3a00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x3b00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x3c00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x3d00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x3e00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_i32_e32 v3, vcc, 0x3f00, v1
	v_addc_u32_e32 v4, vcc, 0, v2, vcc
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)

	s_add_i32 s2, s2, -1
	s_cmp_lg_u32 s2, 0
	s_cbranch_scc1 BB0_1

	s_endpgm
.Lfunc_end0:
	.size	_ZN12_GLOBAL__N_143_Z9Coalesced16grid_launch_parmPfS0__functor19__cxxamp_trampolineEiiiiiiPKfPf, .Lfunc_end0-_ZN12_GLOBAL__N_143_Z9Coalesced16grid_launch_parmPfS0__functor19__cxxamp_trampolineEiiiiiiPKfPf

	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 1892
; NumSgprs: 8
; NumVgprs: 71
; FloatMode: 192
; IeeeMode: 1
; ScratchSize: 0
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 8
; NumVGPRsForWavesPerEU: 71
; ReservedVGPRFirst: 0
; ReservedVGPRCount: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 1
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0

	.ident	"HCC clang version 5.0.0  (based on HCC 1.0.17131-8bb41e1-d738071-0cc1781 )"
	.ident	"clang version 5.0.0 (https://github.com/RadeonOpenCompute/clang.git 37d3c0b257b35c909a78af7ac8a08da87d3c2f54) (https://github.com/RadeonOpenCompute/llvm.git 285e4135706ad03d8943f102fa18f0a420f2b33e)"
	.section	".note.GNU-stack"

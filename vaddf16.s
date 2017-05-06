	.text
	.section	.AMDGPU.config
	.long	47176
	.long	11272193
	.long	47180
	.long	132
	.long	47200
	.long	0
	.long	4
	.long	0
	.long	8
	.long	0
	.text
	.globl	hello_world
	.p2align	8
	.type	hello_world,@function
hello_world:                            ; @hello_world
; BB#0:
	s_load_dwordx2 s[2:3], s[0:1], 0x24
	s_load_dwordx2 s[4:5], s[0:1], 0x2c
	v_mov_b32_e32 v1, 0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_load_dwordx2 s[0:1], s[0:1], 0x34
	s_waitcnt lgkmcnt(0)
	v_add_i32_e32 v2, vcc, s2, v0
	v_mov_b32_e32 v3, s3
	v_addc_u32_e32 v3, vcc, v1, v3, vcc
	v_add_i32_e32 v4, vcc, s4, v0
	v_mov_b32_e32 v5, s5
	v_addc_u32_e32 v5, vcc, v1, v5, vcc
	flat_load_dword v2, v[2:3]
	s_nop 0
	flat_load_dword v3, v[4:5]
	v_mov_b32_e32 v4, s1
	v_add_i32_e32 v0, vcc, s0, v0
	v_addc_u32_e32 v1, vcc, v1, v4, vcc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f16_sdwa v4, v3, v2 dst_sel:WORD_1 dst_unused:UNUSED_PAD src0_sel:WORD_1 src1_sel:WORD_1
	v_add_f16_e32 v2, v3, v2
	v_or_b32_e32 v2, v4, v2
	flat_store_dword v[0:1], v2
	s_endpgm
.Lfunc_end0:
	.size	hello_world, .Lfunc_end0-hello_world

	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 128
; NumSgprs: 8
; NumVgprs: 6
; ScratchSize: 0
; codeLenInByte = 128
; NumSgprs: 8
; NumVgprs: 6
; FloatMode: 192
; IeeeMode: 1
; ScratchSize: 0
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 8
; NumVGPRsForWavesPerEU: 6
; ReservedVGPRFirst: 0
; ReservedVGPRCount: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0

	.section	".note.GNU-stack"

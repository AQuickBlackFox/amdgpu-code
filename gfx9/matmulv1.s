        .text
        .hsa_code_object_version 2,1
        .hsa_code_object_isa 9,0,0,"AMD","AMDGPU"
        .globl  __hdp2x2a
        .p2align        2
        .type   __hdp2x2a,@function
__hdp2x2a:                              ; @__hdp2x2a
; BB#0:
        s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
        s_endpgm
.Lfunc_end0:
        .size   __hdp2x2a, .Lfunc_end0-__hdp2x2a

        .section        .AMDGPU.csdata
; Function info:
; codeLenInByte = 8
; NumSgprs: 0
; NumVgprs: 0
; ScratchSize: 0
        .text
        .globl  hello_world
        .p2align        8
        .type   hello_world,@function
        .amdgpu_hsa_kernel hello_world
hello_world:                            ; @hello_world
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
                kernarg_segment_byte_size = 24
                workgroup_fbarrier_count = 0
                wavefront_sgpr_count = 8
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
; BB#0:
        s_load_dwordx2 s[0:1], s[4:5], 0x0
        s_load_dwordx2 s[2:3], s[4:5], 0x8
        v_mov_b32_e32 v1, 0
        s_load_dwordx2 s[4:5], s[4:5], 0x10
        v_lshlrev_b64 v[0:1], 3, v[0:1]
        s_waitcnt lgkmcnt(0)
        v_add_i32_e32 v2, vcc, s0, v0
        v_mov_b32_e32 v3, s1
        v_addc_u32_e32 v3, vcc, v1, v3, vcc
        v_add_i32_e32 v4, vcc, s2, v0
        v_mov_b32_e32 v5, s3
        v_addc_u32_e32 v5, vcc, v1, v5, vcc
        v_add_i32_e32 v0, vcc, s4, v0
        v_mov_b32_e32 v6, s5
        flat_load_dwordx2 v[4:5], v[4:5]
        v_addc_u32_e32 v1, vcc, v1, v6, vcc
        v_mov_b32_e32 v6, 0
        flat_load_dwordx2 v[2:3], v[2:3]
        s_nop 0
        flat_load_dwordx2 v[6:7], v[0:1]
        v_mov_b32_e32 v8, 0xffff
        s_waitcnt vmcnt(2) lgkmcnt(0)
        v_lshrrev_b32_e32 v12, 16, v4
        v_lshrrev_b32_e32 v11, 16, v5
        s_waitcnt vmcnt(1)
        v_mul_f16_e32 v13, v4, v2
        v_lshrrev_b32_e32 v9, 16, v3
        v_mul_f16_e32 v4, v4, v3
        v_lshrrev_b32_e32 v10, 16, v2
        v_mul_f16_e32 v14, v12, v2
        s_waitcnt vmcnt(0)
        v_mov_b32_e32 v2, v7
        v_mul_f16_e32 v3, v12, v3
        v_mul_f16_e32 v12, v5, v10
        v_mul_f16_e32 v5, v5, v9
        v_add_f16_e32 v2, v2, v4
        v_mul_f16_e32 v10, v11, v10
        v_mul_f16_e32 v9, v11, v9
        v_lshrrev_b32_e32 v11, 16, v7
        v_lshrrev_b32_e32 v7, 16, v6
        v_add_f16_e32 v6, v6, v13
        v_add_f16_e32 v3, v11, v3
        v_add_f16_e32 v7, v7, v14
        v_add_f16_e32 v4, v6, v12
        v_add_f16_e32 v5, v2, v5
        v_and_b32_e32 v2, v4, v8
        v_add_f16_e32 v6, v7, v10
        v_add_f16_e32 v3, v3, v9
        v_and_b32_e32 v4, v5, v8
        v_lshl_or_b32 v2, v6, 16, v2
        v_lshl_or_b32 v3, v3, 16, v4
        flat_store_dwordx2 v[0:1], v[2:3]
        s_endpgm
.Lfunc_end1:
        .size   hello_world, .Lfunc_end1-hello_world

        .section        .AMDGPU.csdata
; Kernel info:
; codeLenInByte = 256
; NumSgprs: 8
; NumVgprs: 15
; ScratchSize: 0
; codeLenInByte = 256
; NumSgprs: 8
; NumVgprs: 15
; FloatMode: 192
; IeeeMode: 1
; ScratchSize: 0
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 8
; NumVGPRsForWavesPerEU: 15
; ReservedVGPRFirst: 0
; ReservedVGPRCount: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 1
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0

        .section        ".note.GNU-stack"
        .amdgpu_code_object_metadata
---
Version:         [ 1, 0 ]
Kernels:
  - Name:            hello_world
    Args:
      - Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       F16
        AddrSpaceQual:   Global
      - Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       F16
        AddrSpaceQual:   Global
      - Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       F16
        AddrSpaceQual:   Global
    CodeProps:
      KernargSegmentSize: 24
      WavefrontNumSGPRs: 8
      WorkitemNumVGPRs: 15
      KernargSegmentAlign: 4
      GroupSegmentAlign: 4
      PrivateSegmentAlign: 4
      WavefrontSize:   6
...
        .end_amdgpu_code_object_metadata

        .text
        .hsa_code_object_version 2,1
        .hsa_code_object_isa 8,0,3,"AMD","AMDGPU"
        .weak   __macf16
        .p2align        8
        .type   __macf16,@function
__macf16:                               ; @__macf16
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
                kernarg_segment_byte_size = 12
                workgroup_fbarrier_count = 0
                wavefront_sgpr_count = 6
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
                call_convention = -1
                runtime_loader_kernel_symbol = 0
        .end_amd_kernel_code_t
; BB#0:
        s_load_dword s0, s[4:5], 0x0
        s_load_dword s1, s[4:5], 0x4
        s_load_dword s2, s[4:5], 0x8
        s_waitcnt lgkmcnt(0)
        v_mov_b32_e32 v0, s0
        v_mov_b32_e32 v1, s1
        v_mov_b32_e32 v2, s2
        ;;#ASMSTART
        v_mac_f16 v2, v0, v1
        ;;#ASMEND
        s_endpgm
.Lfunc_end0:
        .size   __macf16, .Lfunc_end0-__macf16

        .section        .AMDGPU.csdata
; Kernel info:
; codeLenInByte = 52
; NumSgprs: 6
; NumVgprs: 3
; FloatMode: 192
; IeeeMode: 1
; ScratchSize: 0
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 6
; NumVGPRsForWavesPerEU: 3
; ReservedVGPRFirst: 0
; ReservedVGPRCount: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 1
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
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
                kernarg_segment_byte_size = 24
                workgroup_fbarrier_count = 0
                wavefront_sgpr_count = 8
                workitem_vgpr_count = 10
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
        v_ashrrev_i32_e32 v1, 31, v0
        s_load_dwordx2 s[4:5], s[4:5], 0x10
        v_lshlrev_b64 v[0:1], 2, v[0:1]
        s_waitcnt lgkmcnt(0)
        v_add_i32_e32 v2, vcc, s0, v0
        v_mov_b32_e32 v3, s1
        v_addc_u32_e32 v3, vcc, v1, v3, vcc
        v_add_i32_e32 v4, vcc, s2, v0
        v_mov_b32_e32 v5, s3
        v_addc_u32_e32 v5, vcc, v1, v5, vcc
        v_add_i32_e32 v0, vcc, s4, v0
        v_mov_b32_e32 v6, s5
        v_addc_u32_e32 v1, vcc, v1, v6, vcc
        flat_load_dword v2, v[2:3]
        s_nop 0
        flat_load_dword v3, v[4:5]
        s_nop 0
        flat_load_dword v4, v[0:1]
        s_waitcnt vmcnt(0) lgkmcnt(0)
        ;;#ASMSTART
;       v_mac_f16 v4, v2, v3
        ;;#ASMEND
;       flat_store_dword v[0:1], v4
        v_mov_b32 v6, v0
        v_mov_b32 v7, v1
        v_mov_b32 v0, v4
        v_mov_b32 v1, v2
        v_mov_b32 v2, v3
        .quad 024050520050600002371
        flat_store_dword v[6:7], v0

        s_endpgm
.Lfunc_end1:
        .size   hello_world, .Lfunc_end1-hello_world

        .section        .AMDGPU.csdata
; Kernel info:
; codeLenInByte = 132
; NumSgprs: 8
; NumVgprs: 7
; FloatMode: 192
; IeeeMode: 1
; ScratchSize: 0
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 8
; NumVGPRsForWavesPerEU: 7
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
...
        .end_amdgpu_code_object_metadata

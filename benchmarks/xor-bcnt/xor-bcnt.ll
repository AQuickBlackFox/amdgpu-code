declare i32 @llvm.amdgcn.workitem.id.x() #6

define i32 @__do_xor_bcnt(i32 %a, i32 %b, i32 %c) {
  %1 = tail call i32 asm "v_xor_b32 $0, $1, $2","=v,v,v"(i32 %a, i32 %b)
  %2 = tail call i32 asm "v_bcnt_u32_b32 $0, $1, $2","=v,v,v"(i32 %c, i32 %1)
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind
define amdgpu_kernel void @xor_bcnt(i32* nocapture readonly %in1d, i32* nocapture readonly %in2d, i32* nocapture %outd) local_unnamed_addr #5 {
  %1 = tail call i32 @llvm.amdgcn.workitem.id.x() #12
  %arrayidx = getelementptr inbounds i32, i32* %in1d, i32 %1
  %2 = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %in2d, i32 %1
  %3 = load i32, i32* %arrayidx2, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %outd, i32 %1
  %4 = load i32, i32* %arrayidx4, align 4
  br label %6

; <label>:5:                                      ; preds = %6
  store i32 %call5.63, i32* %arrayidx4, align 4
  ret void

; <label>:6:                                      ; preds = %6, %0
  %i.021 = phi i32 [ 0, %0 ], [ %inc.63, %6 ]
  %out.020 = phi i32 [ %4, %0 ], [ %call5.63, %6 ]
  %call5 = tail call i32 @__do_xor_bcnt(i32 %out.020, i32 %2, i32 %3) #12
  %call5.1 = tail call i32 @__do_xor_bcnt(i32 %call5, i32 %2, i32 %3) #12
  %call5.2 = tail call i32 @__do_xor_bcnt(i32 %call5.1, i32 %2, i32 %3) #12
  %call5.3 = tail call i32 @__do_xor_bcnt(i32 %call5.2, i32 %2, i32 %3) #12
  %call5.4 = tail call i32 @__do_xor_bcnt(i32 %call5.3, i32 %2, i32 %3) #12
  %call5.5 = tail call i32 @__do_xor_bcnt(i32 %call5.4, i32 %2, i32 %3) #12
  %call5.6 = tail call i32 @__do_xor_bcnt(i32 %call5.5, i32 %2, i32 %3) #12
  %call5.7 = tail call i32 @__do_xor_bcnt(i32 %call5.6, i32 %2, i32 %3) #12
  %call5.8 = tail call i32 @__do_xor_bcnt(i32 %call5.7, i32 %2, i32 %3) #12
  %call5.9 = tail call i32 @__do_xor_bcnt(i32 %call5.8, i32 %2, i32 %3) #12
  %call5.10 = tail call i32 @__do_xor_bcnt(i32 %call5.9, i32 %2, i32 %3) #12
  %call5.11 = tail call i32 @__do_xor_bcnt(i32 %call5.10, i32 %2, i32 %3) #12
  %call5.12 = tail call i32 @__do_xor_bcnt(i32 %call5.11, i32 %2, i32 %3) #12
  %call5.13 = tail call i32 @__do_xor_bcnt(i32 %call5.12, i32 %2, i32 %3) #12
  %call5.14 = tail call i32 @__do_xor_bcnt(i32 %call5.13, i32 %2, i32 %3) #12
  %call5.15 = tail call i32 @__do_xor_bcnt(i32 %call5.14, i32 %2, i32 %3) #12
  %call5.16 = tail call i32 @__do_xor_bcnt(i32 %call5.15, i32 %2, i32 %3) #12
  %call5.17 = tail call i32 @__do_xor_bcnt(i32 %call5.16, i32 %2, i32 %3) #12
  %call5.18 = tail call i32 @__do_xor_bcnt(i32 %call5.17, i32 %2, i32 %3) #12
  %call5.19 = tail call i32 @__do_xor_bcnt(i32 %call5.18, i32 %2, i32 %3) #12
  %call5.20 = tail call i32 @__do_xor_bcnt(i32 %call5.19, i32 %2, i32 %3) #12
  %call5.21 = tail call i32 @__do_xor_bcnt(i32 %call5.20, i32 %2, i32 %3) #12
  %call5.22 = tail call i32 @__do_xor_bcnt(i32 %call5.21, i32 %2, i32 %3) #12
  %call5.23 = tail call i32 @__do_xor_bcnt(i32 %call5.22, i32 %2, i32 %3) #12
  %call5.24 = tail call i32 @__do_xor_bcnt(i32 %call5.23, i32 %2, i32 %3) #12
  %call5.25 = tail call i32 @__do_xor_bcnt(i32 %call5.24, i32 %2, i32 %3) #12
  %call5.26 = tail call i32 @__do_xor_bcnt(i32 %call5.25, i32 %2, i32 %3) #12
  %call5.27 = tail call i32 @__do_xor_bcnt(i32 %call5.26, i32 %2, i32 %3) #12
  %call5.28 = tail call i32 @__do_xor_bcnt(i32 %call5.27, i32 %2, i32 %3) #12
  %call5.29 = tail call i32 @__do_xor_bcnt(i32 %call5.28, i32 %2, i32 %3) #12
  %call5.30 = tail call i32 @__do_xor_bcnt(i32 %call5.29, i32 %2, i32 %3) #12
  %call5.31 = tail call i32 @__do_xor_bcnt(i32 %call5.30, i32 %2, i32 %3) #12
  %call5.32 = tail call i32 @__do_xor_bcnt(i32 %call5.31, i32 %2, i32 %3) #12
  %call5.33 = tail call i32 @__do_xor_bcnt(i32 %call5.32, i32 %2, i32 %3) #12
  %call5.34 = tail call i32 @__do_xor_bcnt(i32 %call5.33, i32 %2, i32 %3) #12
  %call5.35 = tail call i32 @__do_xor_bcnt(i32 %call5.34, i32 %2, i32 %3) #12
  %call5.36 = tail call i32 @__do_xor_bcnt(i32 %call5.35, i32 %2, i32 %3) #12
  %call5.37 = tail call i32 @__do_xor_bcnt(i32 %call5.36, i32 %2, i32 %3) #12
  %call5.38 = tail call i32 @__do_xor_bcnt(i32 %call5.37, i32 %2, i32 %3) #12
  %call5.39 = tail call i32 @__do_xor_bcnt(i32 %call5.38, i32 %2, i32 %3) #12
  %call5.40 = tail call i32 @__do_xor_bcnt(i32 %call5.39, i32 %2, i32 %3) #12
  %call5.41 = tail call i32 @__do_xor_bcnt(i32 %call5.40, i32 %2, i32 %3) #12
  %call5.42 = tail call i32 @__do_xor_bcnt(i32 %call5.41, i32 %2, i32 %3) #12
  %call5.43 = tail call i32 @__do_xor_bcnt(i32 %call5.42, i32 %2, i32 %3) #12
  %call5.44 = tail call i32 @__do_xor_bcnt(i32 %call5.43, i32 %2, i32 %3) #12
  %call5.45 = tail call i32 @__do_xor_bcnt(i32 %call5.44, i32 %2, i32 %3) #12
  %call5.46 = tail call i32 @__do_xor_bcnt(i32 %call5.45, i32 %2, i32 %3) #12
  %call5.47 = tail call i32 @__do_xor_bcnt(i32 %call5.46, i32 %2, i32 %3) #12
  %call5.48 = tail call i32 @__do_xor_bcnt(i32 %call5.47, i32 %2, i32 %3) #12
  %call5.49 = tail call i32 @__do_xor_bcnt(i32 %call5.48, i32 %2, i32 %3) #12
  %call5.50 = tail call i32 @__do_xor_bcnt(i32 %call5.49, i32 %2, i32 %3) #12
  %call5.51 = tail call i32 @__do_xor_bcnt(i32 %call5.50, i32 %2, i32 %3) #12
  %call5.52 = tail call i32 @__do_xor_bcnt(i32 %call5.51, i32 %2, i32 %3) #12
  %call5.53 = tail call i32 @__do_xor_bcnt(i32 %call5.52, i32 %2, i32 %3) #12
  %call5.54 = tail call i32 @__do_xor_bcnt(i32 %call5.53, i32 %2, i32 %3) #12
  %call5.55 = tail call i32 @__do_xor_bcnt(i32 %call5.54, i32 %2, i32 %3) #12
  %call5.56 = tail call i32 @__do_xor_bcnt(i32 %call5.55, i32 %2, i32 %3) #12
  %call5.57 = tail call i32 @__do_xor_bcnt(i32 %call5.56, i32 %2, i32 %3) #12
  %call5.58 = tail call i32 @__do_xor_bcnt(i32 %call5.57, i32 %2, i32 %3) #12
  %call5.59 = tail call i32 @__do_xor_bcnt(i32 %call5.58, i32 %2, i32 %3) #12
  %call5.60 = tail call i32 @__do_xor_bcnt(i32 %call5.59, i32 %2, i32 %3) #12
  %call5.61 = tail call i32 @__do_xor_bcnt(i32 %call5.60, i32 %2, i32 %3) #12
  %call5.62 = tail call i32 @__do_xor_bcnt(i32 %call5.61, i32 %2, i32 %3) #12
  %call5.63 = tail call i32 @__do_xor_bcnt(i32 %call5.62, i32 %2, i32 %3) #12
  %inc.63 = add nsw i32 %i.021, 64
  %exitcond.63 = icmp eq i32 %inc.63, 2097152
  br i1 %exitcond.63, label %5, label %6
}

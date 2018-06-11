; ModuleID = 'md5.c.bc'
source_filename = "md5.c.bc"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [128 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@fillbuf = internal constant [64 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16

; Function Attrs: nounwind uwtable
define void @md5_init_ctx(%struct.md5_ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.md5_ctx*, align 8
  store %struct.md5_ctx* %ctx, %struct.md5_ctx** %ctx.addr, align 8
  %tmp = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp, i32 0, i32 0
  store i32 1732584193, i32* %A, align 4
  %tmp1 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp1, i32 0, i32 1
  store i32 -271733879, i32* %B, align 4
  %tmp2 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %C = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp2, i32 0, i32 2
  store i32 -1732584194, i32* %C, align 4
  %tmp3 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp3, i32 0, i32 3
  store i32 271733878, i32* %D, align 4
  %tmp4 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp4, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i32 0, i64 1
  store i32 0, i32* %arrayidx, align 4
  %tmp5 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total1 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp5, i32 0, i32 4
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %total1, i32 0, i64 0
  store i32 0, i32* %arrayidx2, align 4
  %tmp6 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp6, i32 0, i32 5
  store i32 0, i32* %buflen, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @md5_read_ctx(%struct.md5_ctx* %ctx, i8* %resbuf) #0 {
entry:
  %ctx.addr = alloca %struct.md5_ctx*, align 8
  %resbuf.addr = alloca i8*, align 8
  store %struct.md5_ctx* %ctx, %struct.md5_ctx** %ctx.addr, align 8
  store i8* %resbuf, i8** %resbuf.addr, align 8
  %tmp = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %A = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp, i32 0, i32 0
  %tmp1 = load i32, i32* %A, align 4
  %tmp2 = load i8*, i8** %resbuf.addr, align 8
  %tmp3 = bitcast i8* %tmp2 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %tmp3, i64 0
  store i32 %tmp1, i32* %arrayidx, align 4
  %tmp4 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %B = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp4, i32 0, i32 1
  %tmp5 = load i32, i32* %B, align 4
  %tmp6 = load i8*, i8** %resbuf.addr, align 8
  %tmp7 = bitcast i8* %tmp6 to i32*
  %arrayidx1 = getelementptr inbounds i32, i32* %tmp7, i64 1
  store i32 %tmp5, i32* %arrayidx1, align 4
  %tmp8 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %C = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp8, i32 0, i32 2
  %tmp9 = load i32, i32* %C, align 4
  %tmp10 = load i8*, i8** %resbuf.addr, align 8
  %tmp11 = bitcast i8* %tmp10 to i32*
  %arrayidx2 = getelementptr inbounds i32, i32* %tmp11, i64 2
  store i32 %tmp9, i32* %arrayidx2, align 4
  %tmp12 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp12, i32 0, i32 3
  %tmp13 = load i32, i32* %D, align 4
  %tmp14 = load i8*, i8** %resbuf.addr, align 8
  %tmp15 = bitcast i8* %tmp14 to i32*
  %arrayidx3 = getelementptr inbounds i32, i32* %tmp15, i64 3
  store i32 %tmp13, i32* %arrayidx3, align 4
  %tmp16 = load i8*, i8** %resbuf.addr, align 8
  ret i8* %tmp16
}

; Function Attrs: nounwind uwtable
define i8* @md5_finish_ctx(%struct.md5_ctx* %ctx, i8* %resbuf) #0 {
entry:
  %ctx.addr = alloca %struct.md5_ctx*, align 8
  %resbuf.addr = alloca i8*, align 8
  %bytes = alloca i32, align 4
  %pad = alloca i64, align 8
  store %struct.md5_ctx* %ctx, %struct.md5_ctx** %ctx.addr, align 8
  store i8* %resbuf, i8** %resbuf.addr, align 8
  %tmp = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp, i32 0, i32 5
  %tmp1 = load i32, i32* %buflen, align 4
  store i32 %tmp1, i32* %bytes, align 4
  %tmp2 = load i32, i32* %bytes, align 4
  %tmp3 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp3, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i32 0, i64 0
  %tmp4 = load i32, i32* %arrayidx, align 4
  %add = add i32 %tmp4, %tmp2
  store i32 %add, i32* %arrayidx, align 4
  %tmp5 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total1 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp5, i32 0, i32 4
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %total1, i32 0, i64 0
  %tmp6 = load i32, i32* %arrayidx2, align 4
  %tmp7 = load i32, i32* %bytes, align 4
  %cmp = icmp ult i32 %tmp6, %tmp7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp8 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp8, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %total3, i32 0, i64 1
  %tmp9 = load i32, i32* %arrayidx4, align 4
  %inc = add i32 %tmp9, 1
  store i32 %inc, i32* %arrayidx4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp10 = load i32, i32* %bytes, align 4
  %cmp5 = icmp uge i32 %tmp10, 56
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %tmp11 = load i32, i32* %bytes, align 4
  %sub = sub i32 120, %tmp11
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %tmp12 = load i32, i32* %bytes, align 4
  %sub6 = sub i32 56, %tmp12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub6, %cond.false ]
  %conv = zext i32 %cond to i64
  store i64 %conv, i64* %pad, align 8
  %tmp13 = load i32, i32* %bytes, align 4
  %idxprom = zext i32 %tmp13 to i64
  %tmp14 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp14, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i32 0, i64 %idxprom
  %tmp15 = load i64, i64* %pad, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx7, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf, i32 0, i32 0), i64 %tmp15, i32 1, i1 false)
  %tmp16 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total8 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp16, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %total8, i32 0, i64 0
  %tmp17 = load i32, i32* %arrayidx9, align 4
  %shl = shl i32 %tmp17, 3
  %tmp18 = load i32, i32* %bytes, align 4
  %conv10 = zext i32 %tmp18 to i64
  %tmp19 = load i64, i64* %pad, align 8
  %add11 = add i64 %conv10, %tmp19
  %tmp20 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer12 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp20, i32 0, i32 6
  %arrayidx13 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer12, i32 0, i64 %add11
  %tmp21 = bitcast i8* %arrayidx13 to i32*
  store i32 %shl, i32* %tmp21, align 4
  %tmp22 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total14 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp22, i32 0, i32 4
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %total14, i32 0, i64 1
  %tmp23 = load i32, i32* %arrayidx15, align 4
  %shl16 = shl i32 %tmp23, 3
  %tmp24 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total17 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp24, i32 0, i32 4
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %total17, i32 0, i64 0
  %tmp25 = load i32, i32* %arrayidx18, align 4
  %shr = lshr i32 %tmp25, 29
  %or = or i32 %shl16, %shr
  %tmp26 = load i32, i32* %bytes, align 4
  %conv19 = zext i32 %tmp26 to i64
  %tmp27 = load i64, i64* %pad, align 8
  %add20 = add i64 %conv19, %tmp27
  %add21 = add i64 %add20, 4
  %tmp28 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer22 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp28, i32 0, i32 6
  %arrayidx23 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer22, i32 0, i64 %add21
  %tmp29 = bitcast i8* %arrayidx23 to i32*
  store i32 %or, i32* %tmp29, align 4
  %tmp30 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer24 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp30, i32 0, i32 6
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buffer24, i32 0, i32 0
  %tmp31 = load i32, i32* %bytes, align 4
  %conv25 = zext i32 %tmp31 to i64
  %tmp32 = load i64, i64* %pad, align 8
  %add26 = add i64 %conv25, %tmp32
  %add27 = add i64 %add26, 8
  %tmp33 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  call void @md5_process_block(i8* %arraydecay, i64 %add27, %struct.md5_ctx* %tmp33)
  %tmp34 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %tmp35 = load i8*, i8** %resbuf.addr, align 8
  %call = call i8* @md5_read_ctx(%struct.md5_ctx* %tmp34, i8* %tmp35)
  ret i8* %call
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @md5_process_block(i8* %buffer, i64 %len, %struct.md5_ctx* %ctx) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ctx.addr = alloca %struct.md5_ctx*, align 8
  %correct_words = alloca [16 x i32], align 16
  %words = alloca i32*, align 8
  %nwords = alloca i64, align 8
  %endp = alloca i32*, align 8
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  %C = alloca i32, align 4
  %D = alloca i32, align 4
  %cwp = alloca i32*, align 8
  %A_save = alloca i32, align 4
  %B_save = alloca i32, align 4
  %C_save = alloca i32, align 4
  %D_save = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.md5_ctx* %ctx, %struct.md5_ctx** %ctx.addr, align 8
  %tmp = load i8*, i8** %buffer.addr, align 8
  %tmp1 = bitcast i8* %tmp to i32*
  store i32* %tmp1, i32** %words, align 8
  %tmp2 = load i64, i64* %len.addr, align 8
  %div = udiv i64 %tmp2, 4
  store i64 %div, i64* %nwords, align 8
  %tmp3 = load i32*, i32** %words, align 8
  %tmp4 = load i64, i64* %nwords, align 8
  %add.ptr = getelementptr inbounds i32, i32* %tmp3, i64 %tmp4
  store i32* %add.ptr, i32** %endp, align 8
  %tmp5 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %A1 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp5, i32 0, i32 0
  %tmp6 = load i32, i32* %A1, align 4
  store i32 %tmp6, i32* %A, align 4
  %tmp7 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %B2 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp7, i32 0, i32 1
  %tmp8 = load i32, i32* %B2, align 4
  store i32 %tmp8, i32* %B, align 4
  %tmp9 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %C3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp9, i32 0, i32 2
  %tmp10 = load i32, i32* %C3, align 4
  store i32 %tmp10, i32* %C, align 4
  %tmp11 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %D4 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp11, i32 0, i32 3
  %tmp12 = load i32, i32* %D4, align 4
  store i32 %tmp12, i32* %D, align 4
  %tmp13 = load i64, i64* %len.addr, align 8
  %tmp14 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp14, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i32 0, i64 0
  %tmp15 = load i32, i32* %arrayidx, align 4
  %conv = zext i32 %tmp15 to i64
  %add = add i64 %conv, %tmp13
  %conv5 = trunc i64 %add to i32
  store i32 %conv5, i32* %arrayidx, align 4
  %tmp16 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total6 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp16, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %total6, i32 0, i64 0
  %tmp17 = load i32, i32* %arrayidx7, align 4
  %conv8 = zext i32 %tmp17 to i64
  %tmp18 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %conv8, %tmp18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp19 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %total10 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp19, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %total10, i32 0, i64 1
  %tmp20 = load i32, i32* %arrayidx11, align 4
  %inc = add i32 %tmp20, 1
  store i32 %inc, i32* %arrayidx11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %do.end836, %if.end
  %tmp21 = load i32*, i32** %words, align 8
  %tmp22 = load i32*, i32** %endp, align 8
  %cmp12 = icmp ult i32* %tmp21, %tmp22
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i32 0
  store i32* %arraydecay, i32** %cwp, align 8
  %tmp23 = load i32, i32* %A, align 4
  store i32 %tmp23, i32* %A_save, align 4
  %tmp24 = load i32, i32* %B, align 4
  store i32 %tmp24, i32* %B_save, align 4
  %tmp25 = load i32, i32* %C, align 4
  store i32 %tmp25, i32* %C_save, align 4
  %tmp26 = load i32, i32* %D, align 4
  store i32 %tmp26, i32* %D_save, align 4
  br label %do.body

do.body:                                          ; preds = %while.body
  %tmp27 = load i32, i32* %D, align 4
  %tmp28 = load i32, i32* %B, align 4
  %tmp29 = load i32, i32* %C, align 4
  %tmp30 = load i32, i32* %D, align 4
  %xor = xor i32 %tmp29, %tmp30
  %and = and i32 %tmp28, %xor
  %xor14 = xor i32 %tmp27, %and
  %tmp31 = load i32*, i32** %words, align 8
  %tmp32 = load i32, i32* %tmp31, align 4
  %tmp33 = load i32*, i32** %cwp, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %tmp33, i32 1
  store i32* %incdec.ptr, i32** %cwp, align 8
  store i32 %tmp32, i32* %tmp33, align 4
  %add15 = add i32 %xor14, %tmp32
  %add16 = add i32 %add15, -680876936
  %tmp34 = load i32, i32* %A, align 4
  %add17 = add i32 %tmp34, %add16
  store i32 %add17, i32* %A, align 4
  %tmp35 = load i32*, i32** %words, align 8
  %incdec.ptr18 = getelementptr inbounds i32, i32* %tmp35, i32 1
  store i32* %incdec.ptr18, i32** %words, align 8
  %tmp36 = load i32, i32* %A, align 4
  %shl = shl i32 %tmp36, 7
  %tmp37 = load i32, i32* %A, align 4
  %shr = lshr i32 %tmp37, 25
  %or = or i32 %shl, %shr
  store i32 %or, i32* %A, align 4
  %tmp38 = load i32, i32* %B, align 4
  %tmp39 = load i32, i32* %A, align 4
  %add19 = add i32 %tmp39, %tmp38
  store i32 %add19, i32* %A, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body20

do.body20:                                        ; preds = %do.end
  %tmp40 = load i32, i32* %C, align 4
  %tmp41 = load i32, i32* %A, align 4
  %tmp42 = load i32, i32* %B, align 4
  %tmp43 = load i32, i32* %C, align 4
  %xor21 = xor i32 %tmp42, %tmp43
  %and22 = and i32 %tmp41, %xor21
  %xor23 = xor i32 %tmp40, %and22
  %tmp44 = load i32*, i32** %words, align 8
  %tmp45 = load i32, i32* %tmp44, align 4
  %tmp46 = load i32*, i32** %cwp, align 8
  %incdec.ptr24 = getelementptr inbounds i32, i32* %tmp46, i32 1
  store i32* %incdec.ptr24, i32** %cwp, align 8
  store i32 %tmp45, i32* %tmp46, align 4
  %add25 = add i32 %xor23, %tmp45
  %add26 = add i32 %add25, -389564586
  %tmp47 = load i32, i32* %D, align 4
  %add27 = add i32 %tmp47, %add26
  store i32 %add27, i32* %D, align 4
  %tmp48 = load i32*, i32** %words, align 8
  %incdec.ptr28 = getelementptr inbounds i32, i32* %tmp48, i32 1
  store i32* %incdec.ptr28, i32** %words, align 8
  %tmp49 = load i32, i32* %D, align 4
  %shl29 = shl i32 %tmp49, 12
  %tmp50 = load i32, i32* %D, align 4
  %shr30 = lshr i32 %tmp50, 20
  %or31 = or i32 %shl29, %shr30
  store i32 %or31, i32* %D, align 4
  %tmp51 = load i32, i32* %A, align 4
  %tmp52 = load i32, i32* %D, align 4
  %add32 = add i32 %tmp52, %tmp51
  store i32 %add32, i32* %D, align 4
  br label %do.end33

do.end33:                                         ; preds = %do.body20
  br label %do.body34

do.body34:                                        ; preds = %do.end33
  %tmp53 = load i32, i32* %B, align 4
  %tmp54 = load i32, i32* %D, align 4
  %tmp55 = load i32, i32* %A, align 4
  %tmp56 = load i32, i32* %B, align 4
  %xor35 = xor i32 %tmp55, %tmp56
  %and36 = and i32 %tmp54, %xor35
  %xor37 = xor i32 %tmp53, %and36
  %tmp57 = load i32*, i32** %words, align 8
  %tmp58 = load i32, i32* %tmp57, align 4
  %tmp59 = load i32*, i32** %cwp, align 8
  %incdec.ptr38 = getelementptr inbounds i32, i32* %tmp59, i32 1
  store i32* %incdec.ptr38, i32** %cwp, align 8
  store i32 %tmp58, i32* %tmp59, align 4
  %add39 = add i32 %xor37, %tmp58
  %add40 = add i32 %add39, 606105819
  %tmp60 = load i32, i32* %C, align 4
  %add41 = add i32 %tmp60, %add40
  store i32 %add41, i32* %C, align 4
  %tmp61 = load i32*, i32** %words, align 8
  %incdec.ptr42 = getelementptr inbounds i32, i32* %tmp61, i32 1
  store i32* %incdec.ptr42, i32** %words, align 8
  %tmp62 = load i32, i32* %C, align 4
  %shl43 = shl i32 %tmp62, 17
  %tmp63 = load i32, i32* %C, align 4
  %shr44 = lshr i32 %tmp63, 15
  %or45 = or i32 %shl43, %shr44
  store i32 %or45, i32* %C, align 4
  %tmp64 = load i32, i32* %D, align 4
  %tmp65 = load i32, i32* %C, align 4
  %add46 = add i32 %tmp65, %tmp64
  store i32 %add46, i32* %C, align 4
  br label %do.end47

do.end47:                                         ; preds = %do.body34
  br label %do.body48

do.body48:                                        ; preds = %do.end47
  %tmp66 = load i32, i32* %A, align 4
  %tmp67 = load i32, i32* %C, align 4
  %tmp68 = load i32, i32* %D, align 4
  %tmp69 = load i32, i32* %A, align 4
  %xor49 = xor i32 %tmp68, %tmp69
  %and50 = and i32 %tmp67, %xor49
  %xor51 = xor i32 %tmp66, %and50
  %tmp70 = load i32*, i32** %words, align 8
  %tmp71 = load i32, i32* %tmp70, align 4
  %tmp72 = load i32*, i32** %cwp, align 8
  %incdec.ptr52 = getelementptr inbounds i32, i32* %tmp72, i32 1
  store i32* %incdec.ptr52, i32** %cwp, align 8
  store i32 %tmp71, i32* %tmp72, align 4
  %add53 = add i32 %xor51, %tmp71
  %add54 = add i32 %add53, -1044525330
  %tmp73 = load i32, i32* %B, align 4
  %add55 = add i32 %tmp73, %add54
  store i32 %add55, i32* %B, align 4
  %tmp74 = load i32*, i32** %words, align 8
  %incdec.ptr56 = getelementptr inbounds i32, i32* %tmp74, i32 1
  store i32* %incdec.ptr56, i32** %words, align 8
  %tmp75 = load i32, i32* %B, align 4
  %shl57 = shl i32 %tmp75, 22
  %tmp76 = load i32, i32* %B, align 4
  %shr58 = lshr i32 %tmp76, 10
  %or59 = or i32 %shl57, %shr58
  store i32 %or59, i32* %B, align 4
  %tmp77 = load i32, i32* %C, align 4
  %tmp78 = load i32, i32* %B, align 4
  %add60 = add i32 %tmp78, %tmp77
  store i32 %add60, i32* %B, align 4
  br label %do.end61

do.end61:                                         ; preds = %do.body48
  br label %do.body62

do.body62:                                        ; preds = %do.end61
  %tmp79 = load i32, i32* %D, align 4
  %tmp80 = load i32, i32* %B, align 4
  %tmp81 = load i32, i32* %C, align 4
  %tmp82 = load i32, i32* %D, align 4
  %xor63 = xor i32 %tmp81, %tmp82
  %and64 = and i32 %tmp80, %xor63
  %xor65 = xor i32 %tmp79, %and64
  %tmp83 = load i32*, i32** %words, align 8
  %tmp84 = load i32, i32* %tmp83, align 4
  %tmp85 = load i32*, i32** %cwp, align 8
  %incdec.ptr66 = getelementptr inbounds i32, i32* %tmp85, i32 1
  store i32* %incdec.ptr66, i32** %cwp, align 8
  store i32 %tmp84, i32* %tmp85, align 4
  %add67 = add i32 %xor65, %tmp84
  %add68 = add i32 %add67, -176418897
  %tmp86 = load i32, i32* %A, align 4
  %add69 = add i32 %tmp86, %add68
  store i32 %add69, i32* %A, align 4
  %tmp87 = load i32*, i32** %words, align 8
  %incdec.ptr70 = getelementptr inbounds i32, i32* %tmp87, i32 1
  store i32* %incdec.ptr70, i32** %words, align 8
  %tmp88 = load i32, i32* %A, align 4
  %shl71 = shl i32 %tmp88, 7
  %tmp89 = load i32, i32* %A, align 4
  %shr72 = lshr i32 %tmp89, 25
  %or73 = or i32 %shl71, %shr72
  store i32 %or73, i32* %A, align 4
  %tmp90 = load i32, i32* %B, align 4
  %tmp91 = load i32, i32* %A, align 4
  %add74 = add i32 %tmp91, %tmp90
  store i32 %add74, i32* %A, align 4
  br label %do.end75

do.end75:                                         ; preds = %do.body62
  br label %do.body76

do.body76:                                        ; preds = %do.end75
  %tmp92 = load i32, i32* %C, align 4
  %tmp93 = load i32, i32* %A, align 4
  %tmp94 = load i32, i32* %B, align 4
  %tmp95 = load i32, i32* %C, align 4
  %xor77 = xor i32 %tmp94, %tmp95
  %and78 = and i32 %tmp93, %xor77
  %xor79 = xor i32 %tmp92, %and78
  %tmp96 = load i32*, i32** %words, align 8
  %tmp97 = load i32, i32* %tmp96, align 4
  %tmp98 = load i32*, i32** %cwp, align 8
  %incdec.ptr80 = getelementptr inbounds i32, i32* %tmp98, i32 1
  store i32* %incdec.ptr80, i32** %cwp, align 8
  store i32 %tmp97, i32* %tmp98, align 4
  %add81 = add i32 %xor79, %tmp97
  %add82 = add i32 %add81, 1200080426
  %tmp99 = load i32, i32* %D, align 4
  %add83 = add i32 %tmp99, %add82
  store i32 %add83, i32* %D, align 4
  %tmp100 = load i32*, i32** %words, align 8
  %incdec.ptr84 = getelementptr inbounds i32, i32* %tmp100, i32 1
  store i32* %incdec.ptr84, i32** %words, align 8
  %tmp101 = load i32, i32* %D, align 4
  %shl85 = shl i32 %tmp101, 12
  %tmp102 = load i32, i32* %D, align 4
  %shr86 = lshr i32 %tmp102, 20
  %or87 = or i32 %shl85, %shr86
  store i32 %or87, i32* %D, align 4
  %tmp103 = load i32, i32* %A, align 4
  %tmp104 = load i32, i32* %D, align 4
  %add88 = add i32 %tmp104, %tmp103
  store i32 %add88, i32* %D, align 4
  br label %do.end89

do.end89:                                         ; preds = %do.body76
  br label %do.body90

do.body90:                                        ; preds = %do.end89
  %tmp105 = load i32, i32* %B, align 4
  %tmp106 = load i32, i32* %D, align 4
  %tmp107 = load i32, i32* %A, align 4
  %tmp108 = load i32, i32* %B, align 4
  %xor91 = xor i32 %tmp107, %tmp108
  %and92 = and i32 %tmp106, %xor91
  %xor93 = xor i32 %tmp105, %and92
  %tmp109 = load i32*, i32** %words, align 8
  %tmp110 = load i32, i32* %tmp109, align 4
  %tmp111 = load i32*, i32** %cwp, align 8
  %incdec.ptr94 = getelementptr inbounds i32, i32* %tmp111, i32 1
  store i32* %incdec.ptr94, i32** %cwp, align 8
  store i32 %tmp110, i32* %tmp111, align 4
  %add95 = add i32 %xor93, %tmp110
  %add96 = add i32 %add95, -1473231341
  %tmp112 = load i32, i32* %C, align 4
  %add97 = add i32 %tmp112, %add96
  store i32 %add97, i32* %C, align 4
  %tmp113 = load i32*, i32** %words, align 8
  %incdec.ptr98 = getelementptr inbounds i32, i32* %tmp113, i32 1
  store i32* %incdec.ptr98, i32** %words, align 8
  %tmp114 = load i32, i32* %C, align 4
  %shl99 = shl i32 %tmp114, 17
  %tmp115 = load i32, i32* %C, align 4
  %shr100 = lshr i32 %tmp115, 15
  %or101 = or i32 %shl99, %shr100
  store i32 %or101, i32* %C, align 4
  %tmp116 = load i32, i32* %D, align 4
  %tmp117 = load i32, i32* %C, align 4
  %add102 = add i32 %tmp117, %tmp116
  store i32 %add102, i32* %C, align 4
  br label %do.end103

do.end103:                                        ; preds = %do.body90
  br label %do.body104

do.body104:                                       ; preds = %do.end103
  %tmp118 = load i32, i32* %A, align 4
  %tmp119 = load i32, i32* %C, align 4
  %tmp120 = load i32, i32* %D, align 4
  %tmp121 = load i32, i32* %A, align 4
  %xor105 = xor i32 %tmp120, %tmp121
  %and106 = and i32 %tmp119, %xor105
  %xor107 = xor i32 %tmp118, %and106
  %tmp122 = load i32*, i32** %words, align 8
  %tmp123 = load i32, i32* %tmp122, align 4
  %tmp124 = load i32*, i32** %cwp, align 8
  %incdec.ptr108 = getelementptr inbounds i32, i32* %tmp124, i32 1
  store i32* %incdec.ptr108, i32** %cwp, align 8
  store i32 %tmp123, i32* %tmp124, align 4
  %add109 = add i32 %xor107, %tmp123
  %add110 = add i32 %add109, -45705983
  %tmp125 = load i32, i32* %B, align 4
  %add111 = add i32 %tmp125, %add110
  store i32 %add111, i32* %B, align 4
  %tmp126 = load i32*, i32** %words, align 8
  %incdec.ptr112 = getelementptr inbounds i32, i32* %tmp126, i32 1
  store i32* %incdec.ptr112, i32** %words, align 8
  %tmp127 = load i32, i32* %B, align 4
  %shl113 = shl i32 %tmp127, 22
  %tmp128 = load i32, i32* %B, align 4
  %shr114 = lshr i32 %tmp128, 10
  %or115 = or i32 %shl113, %shr114
  store i32 %or115, i32* %B, align 4
  %tmp129 = load i32, i32* %C, align 4
  %tmp130 = load i32, i32* %B, align 4
  %add116 = add i32 %tmp130, %tmp129
  store i32 %add116, i32* %B, align 4
  br label %do.end117

do.end117:                                        ; preds = %do.body104
  br label %do.body118

do.body118:                                       ; preds = %do.end117
  %tmp131 = load i32, i32* %D, align 4
  %tmp132 = load i32, i32* %B, align 4
  %tmp133 = load i32, i32* %C, align 4
  %tmp134 = load i32, i32* %D, align 4
  %xor119 = xor i32 %tmp133, %tmp134
  %and120 = and i32 %tmp132, %xor119
  %xor121 = xor i32 %tmp131, %and120
  %tmp135 = load i32*, i32** %words, align 8
  %tmp136 = load i32, i32* %tmp135, align 4
  %tmp137 = load i32*, i32** %cwp, align 8
  %incdec.ptr122 = getelementptr inbounds i32, i32* %tmp137, i32 1
  store i32* %incdec.ptr122, i32** %cwp, align 8
  store i32 %tmp136, i32* %tmp137, align 4
  %add123 = add i32 %xor121, %tmp136
  %add124 = add i32 %add123, 1770035416
  %tmp138 = load i32, i32* %A, align 4
  %add125 = add i32 %tmp138, %add124
  store i32 %add125, i32* %A, align 4
  %tmp139 = load i32*, i32** %words, align 8
  %incdec.ptr126 = getelementptr inbounds i32, i32* %tmp139, i32 1
  store i32* %incdec.ptr126, i32** %words, align 8
  %tmp140 = load i32, i32* %A, align 4
  %shl127 = shl i32 %tmp140, 7
  %tmp141 = load i32, i32* %A, align 4
  %shr128 = lshr i32 %tmp141, 25
  %or129 = or i32 %shl127, %shr128
  store i32 %or129, i32* %A, align 4
  %tmp142 = load i32, i32* %B, align 4
  %tmp143 = load i32, i32* %A, align 4
  %add130 = add i32 %tmp143, %tmp142
  store i32 %add130, i32* %A, align 4
  br label %do.end131

do.end131:                                        ; preds = %do.body118
  br label %do.body132

do.body132:                                       ; preds = %do.end131
  %tmp144 = load i32, i32* %C, align 4
  %tmp145 = load i32, i32* %A, align 4
  %tmp146 = load i32, i32* %B, align 4
  %tmp147 = load i32, i32* %C, align 4
  %xor133 = xor i32 %tmp146, %tmp147
  %and134 = and i32 %tmp145, %xor133
  %xor135 = xor i32 %tmp144, %and134
  %tmp148 = load i32*, i32** %words, align 8
  %tmp149 = load i32, i32* %tmp148, align 4
  %tmp150 = load i32*, i32** %cwp, align 8
  %incdec.ptr136 = getelementptr inbounds i32, i32* %tmp150, i32 1
  store i32* %incdec.ptr136, i32** %cwp, align 8
  store i32 %tmp149, i32* %tmp150, align 4
  %add137 = add i32 %xor135, %tmp149
  %add138 = add i32 %add137, -1958414417
  %tmp151 = load i32, i32* %D, align 4
  %add139 = add i32 %tmp151, %add138
  store i32 %add139, i32* %D, align 4
  %tmp152 = load i32*, i32** %words, align 8
  %incdec.ptr140 = getelementptr inbounds i32, i32* %tmp152, i32 1
  store i32* %incdec.ptr140, i32** %words, align 8
  %tmp153 = load i32, i32* %D, align 4
  %shl141 = shl i32 %tmp153, 12
  %tmp154 = load i32, i32* %D, align 4
  %shr142 = lshr i32 %tmp154, 20
  %or143 = or i32 %shl141, %shr142
  store i32 %or143, i32* %D, align 4
  %tmp155 = load i32, i32* %A, align 4
  %tmp156 = load i32, i32* %D, align 4
  %add144 = add i32 %tmp156, %tmp155
  store i32 %add144, i32* %D, align 4
  br label %do.end145

do.end145:                                        ; preds = %do.body132
  br label %do.body146

do.body146:                                       ; preds = %do.end145
  %tmp157 = load i32, i32* %B, align 4
  %tmp158 = load i32, i32* %D, align 4
  %tmp159 = load i32, i32* %A, align 4
  %tmp160 = load i32, i32* %B, align 4
  %xor147 = xor i32 %tmp159, %tmp160
  %and148 = and i32 %tmp158, %xor147
  %xor149 = xor i32 %tmp157, %and148
  %tmp161 = load i32*, i32** %words, align 8
  %tmp162 = load i32, i32* %tmp161, align 4
  %tmp163 = load i32*, i32** %cwp, align 8
  %incdec.ptr150 = getelementptr inbounds i32, i32* %tmp163, i32 1
  store i32* %incdec.ptr150, i32** %cwp, align 8
  store i32 %tmp162, i32* %tmp163, align 4
  %add151 = add i32 %xor149, %tmp162
  %add152 = add i32 %add151, -42063
  %tmp164 = load i32, i32* %C, align 4
  %add153 = add i32 %tmp164, %add152
  store i32 %add153, i32* %C, align 4
  %tmp165 = load i32*, i32** %words, align 8
  %incdec.ptr154 = getelementptr inbounds i32, i32* %tmp165, i32 1
  store i32* %incdec.ptr154, i32** %words, align 8
  %tmp166 = load i32, i32* %C, align 4
  %shl155 = shl i32 %tmp166, 17
  %tmp167 = load i32, i32* %C, align 4
  %shr156 = lshr i32 %tmp167, 15
  %or157 = or i32 %shl155, %shr156
  store i32 %or157, i32* %C, align 4
  %tmp168 = load i32, i32* %D, align 4
  %tmp169 = load i32, i32* %C, align 4
  %add158 = add i32 %tmp169, %tmp168
  store i32 %add158, i32* %C, align 4
  br label %do.end159

do.end159:                                        ; preds = %do.body146
  br label %do.body160

do.body160:                                       ; preds = %do.end159
  %tmp170 = load i32, i32* %A, align 4
  %tmp171 = load i32, i32* %C, align 4
  %tmp172 = load i32, i32* %D, align 4
  %tmp173 = load i32, i32* %A, align 4
  %xor161 = xor i32 %tmp172, %tmp173
  %and162 = and i32 %tmp171, %xor161
  %xor163 = xor i32 %tmp170, %and162
  %tmp174 = load i32*, i32** %words, align 8
  %tmp175 = load i32, i32* %tmp174, align 4
  %tmp176 = load i32*, i32** %cwp, align 8
  %incdec.ptr164 = getelementptr inbounds i32, i32* %tmp176, i32 1
  store i32* %incdec.ptr164, i32** %cwp, align 8
  store i32 %tmp175, i32* %tmp176, align 4
  %add165 = add i32 %xor163, %tmp175
  %add166 = add i32 %add165, -1990404162
  %tmp177 = load i32, i32* %B, align 4
  %add167 = add i32 %tmp177, %add166
  store i32 %add167, i32* %B, align 4
  %tmp178 = load i32*, i32** %words, align 8
  %incdec.ptr168 = getelementptr inbounds i32, i32* %tmp178, i32 1
  store i32* %incdec.ptr168, i32** %words, align 8
  %tmp179 = load i32, i32* %B, align 4
  %shl169 = shl i32 %tmp179, 22
  %tmp180 = load i32, i32* %B, align 4
  %shr170 = lshr i32 %tmp180, 10
  %or171 = or i32 %shl169, %shr170
  store i32 %or171, i32* %B, align 4
  %tmp181 = load i32, i32* %C, align 4
  %tmp182 = load i32, i32* %B, align 4
  %add172 = add i32 %tmp182, %tmp181
  store i32 %add172, i32* %B, align 4
  br label %do.end173

do.end173:                                        ; preds = %do.body160
  br label %do.body174

do.body174:                                       ; preds = %do.end173
  %tmp183 = load i32, i32* %D, align 4
  %tmp184 = load i32, i32* %B, align 4
  %tmp185 = load i32, i32* %C, align 4
  %tmp186 = load i32, i32* %D, align 4
  %xor175 = xor i32 %tmp185, %tmp186
  %and176 = and i32 %tmp184, %xor175
  %xor177 = xor i32 %tmp183, %and176
  %tmp187 = load i32*, i32** %words, align 8
  %tmp188 = load i32, i32* %tmp187, align 4
  %tmp189 = load i32*, i32** %cwp, align 8
  %incdec.ptr178 = getelementptr inbounds i32, i32* %tmp189, i32 1
  store i32* %incdec.ptr178, i32** %cwp, align 8
  store i32 %tmp188, i32* %tmp189, align 4
  %add179 = add i32 %xor177, %tmp188
  %add180 = add i32 %add179, 1804603682
  %tmp190 = load i32, i32* %A, align 4
  %add181 = add i32 %tmp190, %add180
  store i32 %add181, i32* %A, align 4
  %tmp191 = load i32*, i32** %words, align 8
  %incdec.ptr182 = getelementptr inbounds i32, i32* %tmp191, i32 1
  store i32* %incdec.ptr182, i32** %words, align 8
  %tmp192 = load i32, i32* %A, align 4
  %shl183 = shl i32 %tmp192, 7
  %tmp193 = load i32, i32* %A, align 4
  %shr184 = lshr i32 %tmp193, 25
  %or185 = or i32 %shl183, %shr184
  store i32 %or185, i32* %A, align 4
  %tmp194 = load i32, i32* %B, align 4
  %tmp195 = load i32, i32* %A, align 4
  %add186 = add i32 %tmp195, %tmp194
  store i32 %add186, i32* %A, align 4
  br label %do.end187

do.end187:                                        ; preds = %do.body174
  br label %do.body188

do.body188:                                       ; preds = %do.end187
  %tmp196 = load i32, i32* %C, align 4
  %tmp197 = load i32, i32* %A, align 4
  %tmp198 = load i32, i32* %B, align 4
  %tmp199 = load i32, i32* %C, align 4
  %xor189 = xor i32 %tmp198, %tmp199
  %and190 = and i32 %tmp197, %xor189
  %xor191 = xor i32 %tmp196, %and190
  %tmp200 = load i32*, i32** %words, align 8
  %tmp201 = load i32, i32* %tmp200, align 4
  %tmp202 = load i32*, i32** %cwp, align 8
  %incdec.ptr192 = getelementptr inbounds i32, i32* %tmp202, i32 1
  store i32* %incdec.ptr192, i32** %cwp, align 8
  store i32 %tmp201, i32* %tmp202, align 4
  %add193 = add i32 %xor191, %tmp201
  %add194 = add i32 %add193, -40341101
  %tmp203 = load i32, i32* %D, align 4
  %add195 = add i32 %tmp203, %add194
  store i32 %add195, i32* %D, align 4
  %tmp204 = load i32*, i32** %words, align 8
  %incdec.ptr196 = getelementptr inbounds i32, i32* %tmp204, i32 1
  store i32* %incdec.ptr196, i32** %words, align 8
  %tmp205 = load i32, i32* %D, align 4
  %shl197 = shl i32 %tmp205, 12
  %tmp206 = load i32, i32* %D, align 4
  %shr198 = lshr i32 %tmp206, 20
  %or199 = or i32 %shl197, %shr198
  store i32 %or199, i32* %D, align 4
  %tmp207 = load i32, i32* %A, align 4
  %tmp208 = load i32, i32* %D, align 4
  %add200 = add i32 %tmp208, %tmp207
  store i32 %add200, i32* %D, align 4
  br label %do.end201

do.end201:                                        ; preds = %do.body188
  br label %do.body202

do.body202:                                       ; preds = %do.end201
  %tmp209 = load i32, i32* %B, align 4
  %tmp210 = load i32, i32* %D, align 4
  %tmp211 = load i32, i32* %A, align 4
  %tmp212 = load i32, i32* %B, align 4
  %xor203 = xor i32 %tmp211, %tmp212
  %and204 = and i32 %tmp210, %xor203
  %xor205 = xor i32 %tmp209, %and204
  %tmp213 = load i32*, i32** %words, align 8
  %tmp214 = load i32, i32* %tmp213, align 4
  %tmp215 = load i32*, i32** %cwp, align 8
  %incdec.ptr206 = getelementptr inbounds i32, i32* %tmp215, i32 1
  store i32* %incdec.ptr206, i32** %cwp, align 8
  store i32 %tmp214, i32* %tmp215, align 4
  %add207 = add i32 %xor205, %tmp214
  %add208 = add i32 %add207, -1502002290
  %tmp216 = load i32, i32* %C, align 4
  %add209 = add i32 %tmp216, %add208
  store i32 %add209, i32* %C, align 4
  %tmp217 = load i32*, i32** %words, align 8
  %incdec.ptr210 = getelementptr inbounds i32, i32* %tmp217, i32 1
  store i32* %incdec.ptr210, i32** %words, align 8
  %tmp218 = load i32, i32* %C, align 4
  %shl211 = shl i32 %tmp218, 17
  %tmp219 = load i32, i32* %C, align 4
  %shr212 = lshr i32 %tmp219, 15
  %or213 = or i32 %shl211, %shr212
  store i32 %or213, i32* %C, align 4
  %tmp220 = load i32, i32* %D, align 4
  %tmp221 = load i32, i32* %C, align 4
  %add214 = add i32 %tmp221, %tmp220
  store i32 %add214, i32* %C, align 4
  br label %do.end215

do.end215:                                        ; preds = %do.body202
  br label %do.body216

do.body216:                                       ; preds = %do.end215
  %tmp222 = load i32, i32* %A, align 4
  %tmp223 = load i32, i32* %C, align 4
  %tmp224 = load i32, i32* %D, align 4
  %tmp225 = load i32, i32* %A, align 4
  %xor217 = xor i32 %tmp224, %tmp225
  %and218 = and i32 %tmp223, %xor217
  %xor219 = xor i32 %tmp222, %and218
  %tmp226 = load i32*, i32** %words, align 8
  %tmp227 = load i32, i32* %tmp226, align 4
  %tmp228 = load i32*, i32** %cwp, align 8
  %incdec.ptr220 = getelementptr inbounds i32, i32* %tmp228, i32 1
  store i32* %incdec.ptr220, i32** %cwp, align 8
  store i32 %tmp227, i32* %tmp228, align 4
  %add221 = add i32 %xor219, %tmp227
  %add222 = add i32 %add221, 1236535329
  %tmp229 = load i32, i32* %B, align 4
  %add223 = add i32 %tmp229, %add222
  store i32 %add223, i32* %B, align 4
  %tmp230 = load i32*, i32** %words, align 8
  %incdec.ptr224 = getelementptr inbounds i32, i32* %tmp230, i32 1
  store i32* %incdec.ptr224, i32** %words, align 8
  %tmp231 = load i32, i32* %B, align 4
  %shl225 = shl i32 %tmp231, 22
  %tmp232 = load i32, i32* %B, align 4
  %shr226 = lshr i32 %tmp232, 10
  %or227 = or i32 %shl225, %shr226
  store i32 %or227, i32* %B, align 4
  %tmp233 = load i32, i32* %C, align 4
  %tmp234 = load i32, i32* %B, align 4
  %add228 = add i32 %tmp234, %tmp233
  store i32 %add228, i32* %B, align 4
  br label %do.end229

do.end229:                                        ; preds = %do.body216
  br label %do.body230

do.body230:                                       ; preds = %do.end229
  %tmp235 = load i32, i32* %C, align 4
  %tmp236 = load i32, i32* %D, align 4
  %tmp237 = load i32, i32* %B, align 4
  %tmp238 = load i32, i32* %C, align 4
  %xor231 = xor i32 %tmp237, %tmp238
  %and232 = and i32 %tmp236, %xor231
  %xor233 = xor i32 %tmp235, %and232
  %arrayidx234 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 1
  %tmp239 = load i32, i32* %arrayidx234, align 4
  %add235 = add i32 %xor233, %tmp239
  %add236 = add i32 %add235, -165796510
  %tmp240 = load i32, i32* %A, align 4
  %add237 = add i32 %tmp240, %add236
  store i32 %add237, i32* %A, align 4
  %tmp241 = load i32, i32* %A, align 4
  %shl238 = shl i32 %tmp241, 5
  %tmp242 = load i32, i32* %A, align 4
  %shr239 = lshr i32 %tmp242, 27
  %or240 = or i32 %shl238, %shr239
  store i32 %or240, i32* %A, align 4
  %tmp243 = load i32, i32* %B, align 4
  %tmp244 = load i32, i32* %A, align 4
  %add241 = add i32 %tmp244, %tmp243
  store i32 %add241, i32* %A, align 4
  br label %do.end242

do.end242:                                        ; preds = %do.body230
  br label %do.body243

do.body243:                                       ; preds = %do.end242
  %tmp245 = load i32, i32* %B, align 4
  %tmp246 = load i32, i32* %C, align 4
  %tmp247 = load i32, i32* %A, align 4
  %tmp248 = load i32, i32* %B, align 4
  %xor244 = xor i32 %tmp247, %tmp248
  %and245 = and i32 %tmp246, %xor244
  %xor246 = xor i32 %tmp245, %and245
  %arrayidx247 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 6
  %tmp249 = load i32, i32* %arrayidx247, align 4
  %add248 = add i32 %xor246, %tmp249
  %add249 = add i32 %add248, -1069501632
  %tmp250 = load i32, i32* %D, align 4
  %add250 = add i32 %tmp250, %add249
  store i32 %add250, i32* %D, align 4
  %tmp251 = load i32, i32* %D, align 4
  %shl251 = shl i32 %tmp251, 9
  %tmp252 = load i32, i32* %D, align 4
  %shr252 = lshr i32 %tmp252, 23
  %or253 = or i32 %shl251, %shr252
  store i32 %or253, i32* %D, align 4
  %tmp253 = load i32, i32* %A, align 4
  %tmp254 = load i32, i32* %D, align 4
  %add254 = add i32 %tmp254, %tmp253
  store i32 %add254, i32* %D, align 4
  br label %do.end255

do.end255:                                        ; preds = %do.body243
  br label %do.body256

do.body256:                                       ; preds = %do.end255
  %tmp255 = load i32, i32* %A, align 4
  %tmp256 = load i32, i32* %B, align 4
  %tmp257 = load i32, i32* %D, align 4
  %tmp258 = load i32, i32* %A, align 4
  %xor257 = xor i32 %tmp257, %tmp258
  %and258 = and i32 %tmp256, %xor257
  %xor259 = xor i32 %tmp255, %and258
  %arrayidx260 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 11
  %tmp259 = load i32, i32* %arrayidx260, align 4
  %add261 = add i32 %xor259, %tmp259
  %add262 = add i32 %add261, 643717713
  %tmp260 = load i32, i32* %C, align 4
  %add263 = add i32 %tmp260, %add262
  store i32 %add263, i32* %C, align 4
  %tmp261 = load i32, i32* %C, align 4
  %shl264 = shl i32 %tmp261, 14
  %tmp262 = load i32, i32* %C, align 4
  %shr265 = lshr i32 %tmp262, 18
  %or266 = or i32 %shl264, %shr265
  store i32 %or266, i32* %C, align 4
  %tmp263 = load i32, i32* %D, align 4
  %tmp264 = load i32, i32* %C, align 4
  %add267 = add i32 %tmp264, %tmp263
  store i32 %add267, i32* %C, align 4
  br label %do.end268

do.end268:                                        ; preds = %do.body256
  br label %do.body269

do.body269:                                       ; preds = %do.end268
  %tmp265 = load i32, i32* %D, align 4
  %tmp266 = load i32, i32* %A, align 4
  %tmp267 = load i32, i32* %C, align 4
  %tmp268 = load i32, i32* %D, align 4
  %xor270 = xor i32 %tmp267, %tmp268
  %and271 = and i32 %tmp266, %xor270
  %xor272 = xor i32 %tmp265, %and271
  %arrayidx273 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 0
  %tmp269 = load i32, i32* %arrayidx273, align 4
  %add274 = add i32 %xor272, %tmp269
  %add275 = add i32 %add274, -373897302
  %tmp270 = load i32, i32* %B, align 4
  %add276 = add i32 %tmp270, %add275
  store i32 %add276, i32* %B, align 4
  %tmp271 = load i32, i32* %B, align 4
  %shl277 = shl i32 %tmp271, 20
  %tmp272 = load i32, i32* %B, align 4
  %shr278 = lshr i32 %tmp272, 12
  %or279 = or i32 %shl277, %shr278
  store i32 %or279, i32* %B, align 4
  %tmp273 = load i32, i32* %C, align 4
  %tmp274 = load i32, i32* %B, align 4
  %add280 = add i32 %tmp274, %tmp273
  store i32 %add280, i32* %B, align 4
  br label %do.end281

do.end281:                                        ; preds = %do.body269
  br label %do.body282

do.body282:                                       ; preds = %do.end281
  %tmp275 = load i32, i32* %C, align 4
  %tmp276 = load i32, i32* %D, align 4
  %tmp277 = load i32, i32* %B, align 4
  %tmp278 = load i32, i32* %C, align 4
  %xor283 = xor i32 %tmp277, %tmp278
  %and284 = and i32 %tmp276, %xor283
  %xor285 = xor i32 %tmp275, %and284
  %arrayidx286 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 5
  %tmp279 = load i32, i32* %arrayidx286, align 4
  %add287 = add i32 %xor285, %tmp279
  %add288 = add i32 %add287, -701558691
  %tmp280 = load i32, i32* %A, align 4
  %add289 = add i32 %tmp280, %add288
  store i32 %add289, i32* %A, align 4
  %tmp281 = load i32, i32* %A, align 4
  %shl290 = shl i32 %tmp281, 5
  %tmp282 = load i32, i32* %A, align 4
  %shr291 = lshr i32 %tmp282, 27
  %or292 = or i32 %shl290, %shr291
  store i32 %or292, i32* %A, align 4
  %tmp283 = load i32, i32* %B, align 4
  %tmp284 = load i32, i32* %A, align 4
  %add293 = add i32 %tmp284, %tmp283
  store i32 %add293, i32* %A, align 4
  br label %do.end294

do.end294:                                        ; preds = %do.body282
  br label %do.body295

do.body295:                                       ; preds = %do.end294
  %tmp285 = load i32, i32* %B, align 4
  %tmp286 = load i32, i32* %C, align 4
  %tmp287 = load i32, i32* %A, align 4
  %tmp288 = load i32, i32* %B, align 4
  %xor296 = xor i32 %tmp287, %tmp288
  %and297 = and i32 %tmp286, %xor296
  %xor298 = xor i32 %tmp285, %and297
  %arrayidx299 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 10
  %tmp289 = load i32, i32* %arrayidx299, align 4
  %add300 = add i32 %xor298, %tmp289
  %add301 = add i32 %add300, 38016083
  %tmp290 = load i32, i32* %D, align 4
  %add302 = add i32 %tmp290, %add301
  store i32 %add302, i32* %D, align 4
  %tmp291 = load i32, i32* %D, align 4
  %shl303 = shl i32 %tmp291, 9
  %tmp292 = load i32, i32* %D, align 4
  %shr304 = lshr i32 %tmp292, 23
  %or305 = or i32 %shl303, %shr304
  store i32 %or305, i32* %D, align 4
  %tmp293 = load i32, i32* %A, align 4
  %tmp294 = load i32, i32* %D, align 4
  %add306 = add i32 %tmp294, %tmp293
  store i32 %add306, i32* %D, align 4
  br label %do.end307

do.end307:                                        ; preds = %do.body295
  br label %do.body308

do.body308:                                       ; preds = %do.end307
  %tmp295 = load i32, i32* %A, align 4
  %tmp296 = load i32, i32* %B, align 4
  %tmp297 = load i32, i32* %D, align 4
  %tmp298 = load i32, i32* %A, align 4
  %xor309 = xor i32 %tmp297, %tmp298
  %and310 = and i32 %tmp296, %xor309
  %xor311 = xor i32 %tmp295, %and310
  %arrayidx312 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 15
  %tmp299 = load i32, i32* %arrayidx312, align 4
  %add313 = add i32 %xor311, %tmp299
  %add314 = add i32 %add313, -660478335
  %tmp300 = load i32, i32* %C, align 4
  %add315 = add i32 %tmp300, %add314
  store i32 %add315, i32* %C, align 4
  %tmp301 = load i32, i32* %C, align 4
  %shl316 = shl i32 %tmp301, 14
  %tmp302 = load i32, i32* %C, align 4
  %shr317 = lshr i32 %tmp302, 18
  %or318 = or i32 %shl316, %shr317
  store i32 %or318, i32* %C, align 4
  %tmp303 = load i32, i32* %D, align 4
  %tmp304 = load i32, i32* %C, align 4
  %add319 = add i32 %tmp304, %tmp303
  store i32 %add319, i32* %C, align 4
  br label %do.end320

do.end320:                                        ; preds = %do.body308
  br label %do.body321

do.body321:                                       ; preds = %do.end320
  %tmp305 = load i32, i32* %D, align 4
  %tmp306 = load i32, i32* %A, align 4
  %tmp307 = load i32, i32* %C, align 4
  %tmp308 = load i32, i32* %D, align 4
  %xor322 = xor i32 %tmp307, %tmp308
  %and323 = and i32 %tmp306, %xor322
  %xor324 = xor i32 %tmp305, %and323
  %arrayidx325 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 4
  %tmp309 = load i32, i32* %arrayidx325, align 4
  %add326 = add i32 %xor324, %tmp309
  %add327 = add i32 %add326, -405537848
  %tmp310 = load i32, i32* %B, align 4
  %add328 = add i32 %tmp310, %add327
  store i32 %add328, i32* %B, align 4
  %tmp311 = load i32, i32* %B, align 4
  %shl329 = shl i32 %tmp311, 20
  %tmp312 = load i32, i32* %B, align 4
  %shr330 = lshr i32 %tmp312, 12
  %or331 = or i32 %shl329, %shr330
  store i32 %or331, i32* %B, align 4
  %tmp313 = load i32, i32* %C, align 4
  %tmp314 = load i32, i32* %B, align 4
  %add332 = add i32 %tmp314, %tmp313
  store i32 %add332, i32* %B, align 4
  br label %do.end333

do.end333:                                        ; preds = %do.body321
  br label %do.body334

do.body334:                                       ; preds = %do.end333
  %tmp315 = load i32, i32* %C, align 4
  %tmp316 = load i32, i32* %D, align 4
  %tmp317 = load i32, i32* %B, align 4
  %tmp318 = load i32, i32* %C, align 4
  %xor335 = xor i32 %tmp317, %tmp318
  %and336 = and i32 %tmp316, %xor335
  %xor337 = xor i32 %tmp315, %and336
  %arrayidx338 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 9
  %tmp319 = load i32, i32* %arrayidx338, align 4
  %add339 = add i32 %xor337, %tmp319
  %add340 = add i32 %add339, 568446438
  %tmp320 = load i32, i32* %A, align 4
  %add341 = add i32 %tmp320, %add340
  store i32 %add341, i32* %A, align 4
  %tmp321 = load i32, i32* %A, align 4
  %shl342 = shl i32 %tmp321, 5
  %tmp322 = load i32, i32* %A, align 4
  %shr343 = lshr i32 %tmp322, 27
  %or344 = or i32 %shl342, %shr343
  store i32 %or344, i32* %A, align 4
  %tmp323 = load i32, i32* %B, align 4
  %tmp324 = load i32, i32* %A, align 4
  %add345 = add i32 %tmp324, %tmp323
  store i32 %add345, i32* %A, align 4
  br label %do.end346

do.end346:                                        ; preds = %do.body334
  br label %do.body347

do.body347:                                       ; preds = %do.end346
  %tmp325 = load i32, i32* %B, align 4
  %tmp326 = load i32, i32* %C, align 4
  %tmp327 = load i32, i32* %A, align 4
  %tmp328 = load i32, i32* %B, align 4
  %xor348 = xor i32 %tmp327, %tmp328
  %and349 = and i32 %tmp326, %xor348
  %xor350 = xor i32 %tmp325, %and349
  %arrayidx351 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 14
  %tmp329 = load i32, i32* %arrayidx351, align 4
  %add352 = add i32 %xor350, %tmp329
  %add353 = add i32 %add352, -1019803690
  %tmp330 = load i32, i32* %D, align 4
  %add354 = add i32 %tmp330, %add353
  store i32 %add354, i32* %D, align 4
  %tmp331 = load i32, i32* %D, align 4
  %shl355 = shl i32 %tmp331, 9
  %tmp332 = load i32, i32* %D, align 4
  %shr356 = lshr i32 %tmp332, 23
  %or357 = or i32 %shl355, %shr356
  store i32 %or357, i32* %D, align 4
  %tmp333 = load i32, i32* %A, align 4
  %tmp334 = load i32, i32* %D, align 4
  %add358 = add i32 %tmp334, %tmp333
  store i32 %add358, i32* %D, align 4
  br label %do.end359

do.end359:                                        ; preds = %do.body347
  br label %do.body360

do.body360:                                       ; preds = %do.end359
  %tmp335 = load i32, i32* %A, align 4
  %tmp336 = load i32, i32* %B, align 4
  %tmp337 = load i32, i32* %D, align 4
  %tmp338 = load i32, i32* %A, align 4
  %xor361 = xor i32 %tmp337, %tmp338
  %and362 = and i32 %tmp336, %xor361
  %xor363 = xor i32 %tmp335, %and362
  %arrayidx364 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 3
  %tmp339 = load i32, i32* %arrayidx364, align 4
  %add365 = add i32 %xor363, %tmp339
  %add366 = add i32 %add365, -187363961
  %tmp340 = load i32, i32* %C, align 4
  %add367 = add i32 %tmp340, %add366
  store i32 %add367, i32* %C, align 4
  %tmp341 = load i32, i32* %C, align 4
  %shl368 = shl i32 %tmp341, 14
  %tmp342 = load i32, i32* %C, align 4
  %shr369 = lshr i32 %tmp342, 18
  %or370 = or i32 %shl368, %shr369
  store i32 %or370, i32* %C, align 4
  %tmp343 = load i32, i32* %D, align 4
  %tmp344 = load i32, i32* %C, align 4
  %add371 = add i32 %tmp344, %tmp343
  store i32 %add371, i32* %C, align 4
  br label %do.end372

do.end372:                                        ; preds = %do.body360
  br label %do.body373

do.body373:                                       ; preds = %do.end372
  %tmp345 = load i32, i32* %D, align 4
  %tmp346 = load i32, i32* %A, align 4
  %tmp347 = load i32, i32* %C, align 4
  %tmp348 = load i32, i32* %D, align 4
  %xor374 = xor i32 %tmp347, %tmp348
  %and375 = and i32 %tmp346, %xor374
  %xor376 = xor i32 %tmp345, %and375
  %arrayidx377 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 8
  %tmp349 = load i32, i32* %arrayidx377, align 4
  %add378 = add i32 %xor376, %tmp349
  %add379 = add i32 %add378, 1163531501
  %tmp350 = load i32, i32* %B, align 4
  %add380 = add i32 %tmp350, %add379
  store i32 %add380, i32* %B, align 4
  %tmp351 = load i32, i32* %B, align 4
  %shl381 = shl i32 %tmp351, 20
  %tmp352 = load i32, i32* %B, align 4
  %shr382 = lshr i32 %tmp352, 12
  %or383 = or i32 %shl381, %shr382
  store i32 %or383, i32* %B, align 4
  %tmp353 = load i32, i32* %C, align 4
  %tmp354 = load i32, i32* %B, align 4
  %add384 = add i32 %tmp354, %tmp353
  store i32 %add384, i32* %B, align 4
  br label %do.end385

do.end385:                                        ; preds = %do.body373
  br label %do.body386

do.body386:                                       ; preds = %do.end385
  %tmp355 = load i32, i32* %C, align 4
  %tmp356 = load i32, i32* %D, align 4
  %tmp357 = load i32, i32* %B, align 4
  %tmp358 = load i32, i32* %C, align 4
  %xor387 = xor i32 %tmp357, %tmp358
  %and388 = and i32 %tmp356, %xor387
  %xor389 = xor i32 %tmp355, %and388
  %arrayidx390 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 13
  %tmp359 = load i32, i32* %arrayidx390, align 4
  %add391 = add i32 %xor389, %tmp359
  %add392 = add i32 %add391, -1444681467
  %tmp360 = load i32, i32* %A, align 4
  %add393 = add i32 %tmp360, %add392
  store i32 %add393, i32* %A, align 4
  %tmp361 = load i32, i32* %A, align 4
  %shl394 = shl i32 %tmp361, 5
  %tmp362 = load i32, i32* %A, align 4
  %shr395 = lshr i32 %tmp362, 27
  %or396 = or i32 %shl394, %shr395
  store i32 %or396, i32* %A, align 4
  %tmp363 = load i32, i32* %B, align 4
  %tmp364 = load i32, i32* %A, align 4
  %add397 = add i32 %tmp364, %tmp363
  store i32 %add397, i32* %A, align 4
  br label %do.end398

do.end398:                                        ; preds = %do.body386
  br label %do.body399

do.body399:                                       ; preds = %do.end398
  %tmp365 = load i32, i32* %B, align 4
  %tmp366 = load i32, i32* %C, align 4
  %tmp367 = load i32, i32* %A, align 4
  %tmp368 = load i32, i32* %B, align 4
  %xor400 = xor i32 %tmp367, %tmp368
  %and401 = and i32 %tmp366, %xor400
  %xor402 = xor i32 %tmp365, %and401
  %arrayidx403 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 2
  %tmp369 = load i32, i32* %arrayidx403, align 4
  %add404 = add i32 %xor402, %tmp369
  %add405 = add i32 %add404, -51403784
  %tmp370 = load i32, i32* %D, align 4
  %add406 = add i32 %tmp370, %add405
  store i32 %add406, i32* %D, align 4
  %tmp371 = load i32, i32* %D, align 4
  %shl407 = shl i32 %tmp371, 9
  %tmp372 = load i32, i32* %D, align 4
  %shr408 = lshr i32 %tmp372, 23
  %or409 = or i32 %shl407, %shr408
  store i32 %or409, i32* %D, align 4
  %tmp373 = load i32, i32* %A, align 4
  %tmp374 = load i32, i32* %D, align 4
  %add410 = add i32 %tmp374, %tmp373
  store i32 %add410, i32* %D, align 4
  br label %do.end411

do.end411:                                        ; preds = %do.body399
  br label %do.body412

do.body412:                                       ; preds = %do.end411
  %tmp375 = load i32, i32* %A, align 4
  %tmp376 = load i32, i32* %B, align 4
  %tmp377 = load i32, i32* %D, align 4
  %tmp378 = load i32, i32* %A, align 4
  %xor413 = xor i32 %tmp377, %tmp378
  %and414 = and i32 %tmp376, %xor413
  %xor415 = xor i32 %tmp375, %and414
  %arrayidx416 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 7
  %tmp379 = load i32, i32* %arrayidx416, align 4
  %add417 = add i32 %xor415, %tmp379
  %add418 = add i32 %add417, 1735328473
  %tmp380 = load i32, i32* %C, align 4
  %add419 = add i32 %tmp380, %add418
  store i32 %add419, i32* %C, align 4
  %tmp381 = load i32, i32* %C, align 4
  %shl420 = shl i32 %tmp381, 14
  %tmp382 = load i32, i32* %C, align 4
  %shr421 = lshr i32 %tmp382, 18
  %or422 = or i32 %shl420, %shr421
  store i32 %or422, i32* %C, align 4
  %tmp383 = load i32, i32* %D, align 4
  %tmp384 = load i32, i32* %C, align 4
  %add423 = add i32 %tmp384, %tmp383
  store i32 %add423, i32* %C, align 4
  br label %do.end424

do.end424:                                        ; preds = %do.body412
  br label %do.body425

do.body425:                                       ; preds = %do.end424
  %tmp385 = load i32, i32* %D, align 4
  %tmp386 = load i32, i32* %A, align 4
  %tmp387 = load i32, i32* %C, align 4
  %tmp388 = load i32, i32* %D, align 4
  %xor426 = xor i32 %tmp387, %tmp388
  %and427 = and i32 %tmp386, %xor426
  %xor428 = xor i32 %tmp385, %and427
  %arrayidx429 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 12
  %tmp389 = load i32, i32* %arrayidx429, align 4
  %add430 = add i32 %xor428, %tmp389
  %add431 = add i32 %add430, -1926607734
  %tmp390 = load i32, i32* %B, align 4
  %add432 = add i32 %tmp390, %add431
  store i32 %add432, i32* %B, align 4
  %tmp391 = load i32, i32* %B, align 4
  %shl433 = shl i32 %tmp391, 20
  %tmp392 = load i32, i32* %B, align 4
  %shr434 = lshr i32 %tmp392, 12
  %or435 = or i32 %shl433, %shr434
  store i32 %or435, i32* %B, align 4
  %tmp393 = load i32, i32* %C, align 4
  %tmp394 = load i32, i32* %B, align 4
  %add436 = add i32 %tmp394, %tmp393
  store i32 %add436, i32* %B, align 4
  br label %do.end437

do.end437:                                        ; preds = %do.body425
  br label %do.body438

do.body438:                                       ; preds = %do.end437
  %tmp395 = load i32, i32* %B, align 4
  %tmp396 = load i32, i32* %C, align 4
  %xor439 = xor i32 %tmp395, %tmp396
  %tmp397 = load i32, i32* %D, align 4
  %xor440 = xor i32 %xor439, %tmp397
  %arrayidx441 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 5
  %tmp398 = load i32, i32* %arrayidx441, align 4
  %add442 = add i32 %xor440, %tmp398
  %add443 = add i32 %add442, -378558
  %tmp399 = load i32, i32* %A, align 4
  %add444 = add i32 %tmp399, %add443
  store i32 %add444, i32* %A, align 4
  %tmp400 = load i32, i32* %A, align 4
  %shl445 = shl i32 %tmp400, 4
  %tmp401 = load i32, i32* %A, align 4
  %shr446 = lshr i32 %tmp401, 28
  %or447 = or i32 %shl445, %shr446
  store i32 %or447, i32* %A, align 4
  %tmp402 = load i32, i32* %B, align 4
  %tmp403 = load i32, i32* %A, align 4
  %add448 = add i32 %tmp403, %tmp402
  store i32 %add448, i32* %A, align 4
  br label %do.end449

do.end449:                                        ; preds = %do.body438
  br label %do.body450

do.body450:                                       ; preds = %do.end449
  %tmp404 = load i32, i32* %A, align 4
  %tmp405 = load i32, i32* %B, align 4
  %xor451 = xor i32 %tmp404, %tmp405
  %tmp406 = load i32, i32* %C, align 4
  %xor452 = xor i32 %xor451, %tmp406
  %arrayidx453 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 8
  %tmp407 = load i32, i32* %arrayidx453, align 4
  %add454 = add i32 %xor452, %tmp407
  %add455 = add i32 %add454, -2022574463
  %tmp408 = load i32, i32* %D, align 4
  %add456 = add i32 %tmp408, %add455
  store i32 %add456, i32* %D, align 4
  %tmp409 = load i32, i32* %D, align 4
  %shl457 = shl i32 %tmp409, 11
  %tmp410 = load i32, i32* %D, align 4
  %shr458 = lshr i32 %tmp410, 21
  %or459 = or i32 %shl457, %shr458
  store i32 %or459, i32* %D, align 4
  %tmp411 = load i32, i32* %A, align 4
  %tmp412 = load i32, i32* %D, align 4
  %add460 = add i32 %tmp412, %tmp411
  store i32 %add460, i32* %D, align 4
  br label %do.end461

do.end461:                                        ; preds = %do.body450
  br label %do.body462

do.body462:                                       ; preds = %do.end461
  %tmp413 = load i32, i32* %D, align 4
  %tmp414 = load i32, i32* %A, align 4
  %xor463 = xor i32 %tmp413, %tmp414
  %tmp415 = load i32, i32* %B, align 4
  %xor464 = xor i32 %xor463, %tmp415
  %arrayidx465 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 11
  %tmp416 = load i32, i32* %arrayidx465, align 4
  %add466 = add i32 %xor464, %tmp416
  %add467 = add i32 %add466, 1839030562
  %tmp417 = load i32, i32* %C, align 4
  %add468 = add i32 %tmp417, %add467
  store i32 %add468, i32* %C, align 4
  %tmp418 = load i32, i32* %C, align 4
  %shl469 = shl i32 %tmp418, 16
  %tmp419 = load i32, i32* %C, align 4
  %shr470 = lshr i32 %tmp419, 16
  %or471 = or i32 %shl469, %shr470
  store i32 %or471, i32* %C, align 4
  %tmp420 = load i32, i32* %D, align 4
  %tmp421 = load i32, i32* %C, align 4
  %add472 = add i32 %tmp421, %tmp420
  store i32 %add472, i32* %C, align 4
  br label %do.end473

do.end473:                                        ; preds = %do.body462
  br label %do.body474

do.body474:                                       ; preds = %do.end473
  %tmp422 = load i32, i32* %C, align 4
  %tmp423 = load i32, i32* %D, align 4
  %xor475 = xor i32 %tmp422, %tmp423
  %tmp424 = load i32, i32* %A, align 4
  %xor476 = xor i32 %xor475, %tmp424
  %arrayidx477 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 14
  %tmp425 = load i32, i32* %arrayidx477, align 4
  %add478 = add i32 %xor476, %tmp425
  %add479 = add i32 %add478, -35309556
  %tmp426 = load i32, i32* %B, align 4
  %add480 = add i32 %tmp426, %add479
  store i32 %add480, i32* %B, align 4
  %tmp427 = load i32, i32* %B, align 4
  %shl481 = shl i32 %tmp427, 23
  %tmp428 = load i32, i32* %B, align 4
  %shr482 = lshr i32 %tmp428, 9
  %or483 = or i32 %shl481, %shr482
  store i32 %or483, i32* %B, align 4
  %tmp429 = load i32, i32* %C, align 4
  %tmp430 = load i32, i32* %B, align 4
  %add484 = add i32 %tmp430, %tmp429
  store i32 %add484, i32* %B, align 4
  br label %do.end485

do.end485:                                        ; preds = %do.body474
  br label %do.body486

do.body486:                                       ; preds = %do.end485
  %tmp431 = load i32, i32* %B, align 4
  %tmp432 = load i32, i32* %C, align 4
  %xor487 = xor i32 %tmp431, %tmp432
  %tmp433 = load i32, i32* %D, align 4
  %xor488 = xor i32 %xor487, %tmp433
  %arrayidx489 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 1
  %tmp434 = load i32, i32* %arrayidx489, align 4
  %add490 = add i32 %xor488, %tmp434
  %add491 = add i32 %add490, -1530992060
  %tmp435 = load i32, i32* %A, align 4
  %add492 = add i32 %tmp435, %add491
  store i32 %add492, i32* %A, align 4
  %tmp436 = load i32, i32* %A, align 4
  %shl493 = shl i32 %tmp436, 4
  %tmp437 = load i32, i32* %A, align 4
  %shr494 = lshr i32 %tmp437, 28
  %or495 = or i32 %shl493, %shr494
  store i32 %or495, i32* %A, align 4
  %tmp438 = load i32, i32* %B, align 4
  %tmp439 = load i32, i32* %A, align 4
  %add496 = add i32 %tmp439, %tmp438
  store i32 %add496, i32* %A, align 4
  br label %do.end497

do.end497:                                        ; preds = %do.body486
  br label %do.body498

do.body498:                                       ; preds = %do.end497
  %tmp440 = load i32, i32* %A, align 4
  %tmp441 = load i32, i32* %B, align 4
  %xor499 = xor i32 %tmp440, %tmp441
  %tmp442 = load i32, i32* %C, align 4
  %xor500 = xor i32 %xor499, %tmp442
  %arrayidx501 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 4
  %tmp443 = load i32, i32* %arrayidx501, align 4
  %add502 = add i32 %xor500, %tmp443
  %add503 = add i32 %add502, 1272893353
  %tmp444 = load i32, i32* %D, align 4
  %add504 = add i32 %tmp444, %add503
  store i32 %add504, i32* %D, align 4
  %tmp445 = load i32, i32* %D, align 4
  %shl505 = shl i32 %tmp445, 11
  %tmp446 = load i32, i32* %D, align 4
  %shr506 = lshr i32 %tmp446, 21
  %or507 = or i32 %shl505, %shr506
  store i32 %or507, i32* %D, align 4
  %tmp447 = load i32, i32* %A, align 4
  %tmp448 = load i32, i32* %D, align 4
  %add508 = add i32 %tmp448, %tmp447
  store i32 %add508, i32* %D, align 4
  br label %do.end509

do.end509:                                        ; preds = %do.body498
  br label %do.body510

do.body510:                                       ; preds = %do.end509
  %tmp449 = load i32, i32* %D, align 4
  %tmp450 = load i32, i32* %A, align 4
  %xor511 = xor i32 %tmp449, %tmp450
  %tmp451 = load i32, i32* %B, align 4
  %xor512 = xor i32 %xor511, %tmp451
  %arrayidx513 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 7
  %tmp452 = load i32, i32* %arrayidx513, align 4
  %add514 = add i32 %xor512, %tmp452
  %add515 = add i32 %add514, -155497632
  %tmp453 = load i32, i32* %C, align 4
  %add516 = add i32 %tmp453, %add515
  store i32 %add516, i32* %C, align 4
  %tmp454 = load i32, i32* %C, align 4
  %shl517 = shl i32 %tmp454, 16
  %tmp455 = load i32, i32* %C, align 4
  %shr518 = lshr i32 %tmp455, 16
  %or519 = or i32 %shl517, %shr518
  store i32 %or519, i32* %C, align 4
  %tmp456 = load i32, i32* %D, align 4
  %tmp457 = load i32, i32* %C, align 4
  %add520 = add i32 %tmp457, %tmp456
  store i32 %add520, i32* %C, align 4
  br label %do.end521

do.end521:                                        ; preds = %do.body510
  br label %do.body522

do.body522:                                       ; preds = %do.end521
  %tmp458 = load i32, i32* %C, align 4
  %tmp459 = load i32, i32* %D, align 4
  %xor523 = xor i32 %tmp458, %tmp459
  %tmp460 = load i32, i32* %A, align 4
  %xor524 = xor i32 %xor523, %tmp460
  %arrayidx525 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 10
  %tmp461 = load i32, i32* %arrayidx525, align 4
  %add526 = add i32 %xor524, %tmp461
  %add527 = add i32 %add526, -1094730640
  %tmp462 = load i32, i32* %B, align 4
  %add528 = add i32 %tmp462, %add527
  store i32 %add528, i32* %B, align 4
  %tmp463 = load i32, i32* %B, align 4
  %shl529 = shl i32 %tmp463, 23
  %tmp464 = load i32, i32* %B, align 4
  %shr530 = lshr i32 %tmp464, 9
  %or531 = or i32 %shl529, %shr530
  store i32 %or531, i32* %B, align 4
  %tmp465 = load i32, i32* %C, align 4
  %tmp466 = load i32, i32* %B, align 4
  %add532 = add i32 %tmp466, %tmp465
  store i32 %add532, i32* %B, align 4
  br label %do.end533

do.end533:                                        ; preds = %do.body522
  br label %do.body534

do.body534:                                       ; preds = %do.end533
  %tmp467 = load i32, i32* %B, align 4
  %tmp468 = load i32, i32* %C, align 4
  %xor535 = xor i32 %tmp467, %tmp468
  %tmp469 = load i32, i32* %D, align 4
  %xor536 = xor i32 %xor535, %tmp469
  %arrayidx537 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 13
  %tmp470 = load i32, i32* %arrayidx537, align 4
  %add538 = add i32 %xor536, %tmp470
  %add539 = add i32 %add538, 681279174
  %tmp471 = load i32, i32* %A, align 4
  %add540 = add i32 %tmp471, %add539
  store i32 %add540, i32* %A, align 4
  %tmp472 = load i32, i32* %A, align 4
  %shl541 = shl i32 %tmp472, 4
  %tmp473 = load i32, i32* %A, align 4
  %shr542 = lshr i32 %tmp473, 28
  %or543 = or i32 %shl541, %shr542
  store i32 %or543, i32* %A, align 4
  %tmp474 = load i32, i32* %B, align 4
  %tmp475 = load i32, i32* %A, align 4
  %add544 = add i32 %tmp475, %tmp474
  store i32 %add544, i32* %A, align 4
  br label %do.end545

do.end545:                                        ; preds = %do.body534
  br label %do.body546

do.body546:                                       ; preds = %do.end545
  %tmp476 = load i32, i32* %A, align 4
  %tmp477 = load i32, i32* %B, align 4
  %xor547 = xor i32 %tmp476, %tmp477
  %tmp478 = load i32, i32* %C, align 4
  %xor548 = xor i32 %xor547, %tmp478
  %arrayidx549 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 0
  %tmp479 = load i32, i32* %arrayidx549, align 4
  %add550 = add i32 %xor548, %tmp479
  %add551 = add i32 %add550, -358537222
  %tmp480 = load i32, i32* %D, align 4
  %add552 = add i32 %tmp480, %add551
  store i32 %add552, i32* %D, align 4
  %tmp481 = load i32, i32* %D, align 4
  %shl553 = shl i32 %tmp481, 11
  %tmp482 = load i32, i32* %D, align 4
  %shr554 = lshr i32 %tmp482, 21
  %or555 = or i32 %shl553, %shr554
  store i32 %or555, i32* %D, align 4
  %tmp483 = load i32, i32* %A, align 4
  %tmp484 = load i32, i32* %D, align 4
  %add556 = add i32 %tmp484, %tmp483
  store i32 %add556, i32* %D, align 4
  br label %do.end557

do.end557:                                        ; preds = %do.body546
  br label %do.body558

do.body558:                                       ; preds = %do.end557
  %tmp485 = load i32, i32* %D, align 4
  %tmp486 = load i32, i32* %A, align 4
  %xor559 = xor i32 %tmp485, %tmp486
  %tmp487 = load i32, i32* %B, align 4
  %xor560 = xor i32 %xor559, %tmp487
  %arrayidx561 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 3
  %tmp488 = load i32, i32* %arrayidx561, align 4
  %add562 = add i32 %xor560, %tmp488
  %add563 = add i32 %add562, -722521979
  %tmp489 = load i32, i32* %C, align 4
  %add564 = add i32 %tmp489, %add563
  store i32 %add564, i32* %C, align 4
  %tmp490 = load i32, i32* %C, align 4
  %shl565 = shl i32 %tmp490, 16
  %tmp491 = load i32, i32* %C, align 4
  %shr566 = lshr i32 %tmp491, 16
  %or567 = or i32 %shl565, %shr566
  store i32 %or567, i32* %C, align 4
  %tmp492 = load i32, i32* %D, align 4
  %tmp493 = load i32, i32* %C, align 4
  %add568 = add i32 %tmp493, %tmp492
  store i32 %add568, i32* %C, align 4
  br label %do.end569

do.end569:                                        ; preds = %do.body558
  br label %do.body570

do.body570:                                       ; preds = %do.end569
  %tmp494 = load i32, i32* %C, align 4
  %tmp495 = load i32, i32* %D, align 4
  %xor571 = xor i32 %tmp494, %tmp495
  %tmp496 = load i32, i32* %A, align 4
  %xor572 = xor i32 %xor571, %tmp496
  %arrayidx573 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 6
  %tmp497 = load i32, i32* %arrayidx573, align 4
  %add574 = add i32 %xor572, %tmp497
  %add575 = add i32 %add574, 76029189
  %tmp498 = load i32, i32* %B, align 4
  %add576 = add i32 %tmp498, %add575
  store i32 %add576, i32* %B, align 4
  %tmp499 = load i32, i32* %B, align 4
  %shl577 = shl i32 %tmp499, 23
  %tmp500 = load i32, i32* %B, align 4
  %shr578 = lshr i32 %tmp500, 9
  %or579 = or i32 %shl577, %shr578
  store i32 %or579, i32* %B, align 4
  %tmp501 = load i32, i32* %C, align 4
  %tmp502 = load i32, i32* %B, align 4
  %add580 = add i32 %tmp502, %tmp501
  store i32 %add580, i32* %B, align 4
  br label %do.end581

do.end581:                                        ; preds = %do.body570
  br label %do.body582

do.body582:                                       ; preds = %do.end581
  %tmp503 = load i32, i32* %B, align 4
  %tmp504 = load i32, i32* %C, align 4
  %xor583 = xor i32 %tmp503, %tmp504
  %tmp505 = load i32, i32* %D, align 4
  %xor584 = xor i32 %xor583, %tmp505
  %arrayidx585 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 9
  %tmp506 = load i32, i32* %arrayidx585, align 4
  %add586 = add i32 %xor584, %tmp506
  %add587 = add i32 %add586, -640364487
  %tmp507 = load i32, i32* %A, align 4
  %add588 = add i32 %tmp507, %add587
  store i32 %add588, i32* %A, align 4
  %tmp508 = load i32, i32* %A, align 4
  %shl589 = shl i32 %tmp508, 4
  %tmp509 = load i32, i32* %A, align 4
  %shr590 = lshr i32 %tmp509, 28
  %or591 = or i32 %shl589, %shr590
  store i32 %or591, i32* %A, align 4
  %tmp510 = load i32, i32* %B, align 4
  %tmp511 = load i32, i32* %A, align 4
  %add592 = add i32 %tmp511, %tmp510
  store i32 %add592, i32* %A, align 4
  br label %do.end593

do.end593:                                        ; preds = %do.body582
  br label %do.body594

do.body594:                                       ; preds = %do.end593
  %tmp512 = load i32, i32* %A, align 4
  %tmp513 = load i32, i32* %B, align 4
  %xor595 = xor i32 %tmp512, %tmp513
  %tmp514 = load i32, i32* %C, align 4
  %xor596 = xor i32 %xor595, %tmp514
  %arrayidx597 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 12
  %tmp515 = load i32, i32* %arrayidx597, align 4
  %add598 = add i32 %xor596, %tmp515
  %add599 = add i32 %add598, -421815835
  %tmp516 = load i32, i32* %D, align 4
  %add600 = add i32 %tmp516, %add599
  store i32 %add600, i32* %D, align 4
  %tmp517 = load i32, i32* %D, align 4
  %shl601 = shl i32 %tmp517, 11
  %tmp518 = load i32, i32* %D, align 4
  %shr602 = lshr i32 %tmp518, 21
  %or603 = or i32 %shl601, %shr602
  store i32 %or603, i32* %D, align 4
  %tmp519 = load i32, i32* %A, align 4
  %tmp520 = load i32, i32* %D, align 4
  %add604 = add i32 %tmp520, %tmp519
  store i32 %add604, i32* %D, align 4
  br label %do.end605

do.end605:                                        ; preds = %do.body594
  br label %do.body606

do.body606:                                       ; preds = %do.end605
  %tmp521 = load i32, i32* %D, align 4
  %tmp522 = load i32, i32* %A, align 4
  %xor607 = xor i32 %tmp521, %tmp522
  %tmp523 = load i32, i32* %B, align 4
  %xor608 = xor i32 %xor607, %tmp523
  %arrayidx609 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 15
  %tmp524 = load i32, i32* %arrayidx609, align 4
  %add610 = add i32 %xor608, %tmp524
  %add611 = add i32 %add610, 530742520
  %tmp525 = load i32, i32* %C, align 4
  %add612 = add i32 %tmp525, %add611
  store i32 %add612, i32* %C, align 4
  %tmp526 = load i32, i32* %C, align 4
  %shl613 = shl i32 %tmp526, 16
  %tmp527 = load i32, i32* %C, align 4
  %shr614 = lshr i32 %tmp527, 16
  %or615 = or i32 %shl613, %shr614
  store i32 %or615, i32* %C, align 4
  %tmp528 = load i32, i32* %D, align 4
  %tmp529 = load i32, i32* %C, align 4
  %add616 = add i32 %tmp529, %tmp528
  store i32 %add616, i32* %C, align 4
  br label %do.end617

do.end617:                                        ; preds = %do.body606
  br label %do.body618

do.body618:                                       ; preds = %do.end617
  %tmp530 = load i32, i32* %C, align 4
  %tmp531 = load i32, i32* %D, align 4
  %xor619 = xor i32 %tmp530, %tmp531
  %tmp532 = load i32, i32* %A, align 4
  %xor620 = xor i32 %xor619, %tmp532
  %arrayidx621 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 2
  %tmp533 = load i32, i32* %arrayidx621, align 4
  %add622 = add i32 %xor620, %tmp533
  %add623 = add i32 %add622, -995338651
  %tmp534 = load i32, i32* %B, align 4
  %add624 = add i32 %tmp534, %add623
  store i32 %add624, i32* %B, align 4
  %tmp535 = load i32, i32* %B, align 4
  %shl625 = shl i32 %tmp535, 23
  %tmp536 = load i32, i32* %B, align 4
  %shr626 = lshr i32 %tmp536, 9
  %or627 = or i32 %shl625, %shr626
  store i32 %or627, i32* %B, align 4
  %tmp537 = load i32, i32* %C, align 4
  %tmp538 = load i32, i32* %B, align 4
  %add628 = add i32 %tmp538, %tmp537
  store i32 %add628, i32* %B, align 4
  br label %do.end629

do.end629:                                        ; preds = %do.body618
  br label %do.body630

do.body630:                                       ; preds = %do.end629
  %tmp539 = load i32, i32* %C, align 4
  %tmp540 = load i32, i32* %B, align 4
  %tmp541 = load i32, i32* %D, align 4
  %neg = xor i32 %tmp541, -1
  %or631 = or i32 %tmp540, %neg
  %xor632 = xor i32 %tmp539, %or631
  %arrayidx633 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 0
  %tmp542 = load i32, i32* %arrayidx633, align 4
  %add634 = add i32 %xor632, %tmp542
  %add635 = add i32 %add634, -198630844
  %tmp543 = load i32, i32* %A, align 4
  %add636 = add i32 %tmp543, %add635
  store i32 %add636, i32* %A, align 4
  %tmp544 = load i32, i32* %A, align 4
  %shl637 = shl i32 %tmp544, 6
  %tmp545 = load i32, i32* %A, align 4
  %shr638 = lshr i32 %tmp545, 26
  %or639 = or i32 %shl637, %shr638
  store i32 %or639, i32* %A, align 4
  %tmp546 = load i32, i32* %B, align 4
  %tmp547 = load i32, i32* %A, align 4
  %add640 = add i32 %tmp547, %tmp546
  store i32 %add640, i32* %A, align 4
  br label %do.end641

do.end641:                                        ; preds = %do.body630
  br label %do.body642

do.body642:                                       ; preds = %do.end641
  %tmp548 = load i32, i32* %B, align 4
  %tmp549 = load i32, i32* %A, align 4
  %tmp550 = load i32, i32* %C, align 4
  %neg643 = xor i32 %tmp550, -1
  %or644 = or i32 %tmp549, %neg643
  %xor645 = xor i32 %tmp548, %or644
  %arrayidx646 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 7
  %tmp551 = load i32, i32* %arrayidx646, align 4
  %add647 = add i32 %xor645, %tmp551
  %add648 = add i32 %add647, 1126891415
  %tmp552 = load i32, i32* %D, align 4
  %add649 = add i32 %tmp552, %add648
  store i32 %add649, i32* %D, align 4
  %tmp553 = load i32, i32* %D, align 4
  %shl650 = shl i32 %tmp553, 10
  %tmp554 = load i32, i32* %D, align 4
  %shr651 = lshr i32 %tmp554, 22
  %or652 = or i32 %shl650, %shr651
  store i32 %or652, i32* %D, align 4
  %tmp555 = load i32, i32* %A, align 4
  %tmp556 = load i32, i32* %D, align 4
  %add653 = add i32 %tmp556, %tmp555
  store i32 %add653, i32* %D, align 4
  br label %do.end654

do.end654:                                        ; preds = %do.body642
  br label %do.body655

do.body655:                                       ; preds = %do.end654
  %tmp557 = load i32, i32* %A, align 4
  %tmp558 = load i32, i32* %D, align 4
  %tmp559 = load i32, i32* %B, align 4
  %neg656 = xor i32 %tmp559, -1
  %or657 = or i32 %tmp558, %neg656
  %xor658 = xor i32 %tmp557, %or657
  %arrayidx659 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 14
  %tmp560 = load i32, i32* %arrayidx659, align 4
  %add660 = add i32 %xor658, %tmp560
  %add661 = add i32 %add660, -1416354905
  %tmp561 = load i32, i32* %C, align 4
  %add662 = add i32 %tmp561, %add661
  store i32 %add662, i32* %C, align 4
  %tmp562 = load i32, i32* %C, align 4
  %shl663 = shl i32 %tmp562, 15
  %tmp563 = load i32, i32* %C, align 4
  %shr664 = lshr i32 %tmp563, 17
  %or665 = or i32 %shl663, %shr664
  store i32 %or665, i32* %C, align 4
  %tmp564 = load i32, i32* %D, align 4
  %tmp565 = load i32, i32* %C, align 4
  %add666 = add i32 %tmp565, %tmp564
  store i32 %add666, i32* %C, align 4
  br label %do.end667

do.end667:                                        ; preds = %do.body655
  br label %do.body668

do.body668:                                       ; preds = %do.end667
  %tmp566 = load i32, i32* %D, align 4
  %tmp567 = load i32, i32* %C, align 4
  %tmp568 = load i32, i32* %A, align 4
  %neg669 = xor i32 %tmp568, -1
  %or670 = or i32 %tmp567, %neg669
  %xor671 = xor i32 %tmp566, %or670
  %arrayidx672 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 5
  %tmp569 = load i32, i32* %arrayidx672, align 4
  %add673 = add i32 %xor671, %tmp569
  %add674 = add i32 %add673, -57434055
  %tmp570 = load i32, i32* %B, align 4
  %add675 = add i32 %tmp570, %add674
  store i32 %add675, i32* %B, align 4
  %tmp571 = load i32, i32* %B, align 4
  %shl676 = shl i32 %tmp571, 21
  %tmp572 = load i32, i32* %B, align 4
  %shr677 = lshr i32 %tmp572, 11
  %or678 = or i32 %shl676, %shr677
  store i32 %or678, i32* %B, align 4
  %tmp573 = load i32, i32* %C, align 4
  %tmp574 = load i32, i32* %B, align 4
  %add679 = add i32 %tmp574, %tmp573
  store i32 %add679, i32* %B, align 4
  br label %do.end680

do.end680:                                        ; preds = %do.body668
  br label %do.body681

do.body681:                                       ; preds = %do.end680
  %tmp575 = load i32, i32* %C, align 4
  %tmp576 = load i32, i32* %B, align 4
  %tmp577 = load i32, i32* %D, align 4
  %neg682 = xor i32 %tmp577, -1
  %or683 = or i32 %tmp576, %neg682
  %xor684 = xor i32 %tmp575, %or683
  %arrayidx685 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 12
  %tmp578 = load i32, i32* %arrayidx685, align 4
  %add686 = add i32 %xor684, %tmp578
  %add687 = add i32 %add686, 1700485571
  %tmp579 = load i32, i32* %A, align 4
  %add688 = add i32 %tmp579, %add687
  store i32 %add688, i32* %A, align 4
  %tmp580 = load i32, i32* %A, align 4
  %shl689 = shl i32 %tmp580, 6
  %tmp581 = load i32, i32* %A, align 4
  %shr690 = lshr i32 %tmp581, 26
  %or691 = or i32 %shl689, %shr690
  store i32 %or691, i32* %A, align 4
  %tmp582 = load i32, i32* %B, align 4
  %tmp583 = load i32, i32* %A, align 4
  %add692 = add i32 %tmp583, %tmp582
  store i32 %add692, i32* %A, align 4
  br label %do.end693

do.end693:                                        ; preds = %do.body681
  br label %do.body694

do.body694:                                       ; preds = %do.end693
  %tmp584 = load i32, i32* %B, align 4
  %tmp585 = load i32, i32* %A, align 4
  %tmp586 = load i32, i32* %C, align 4
  %neg695 = xor i32 %tmp586, -1
  %or696 = or i32 %tmp585, %neg695
  %xor697 = xor i32 %tmp584, %or696
  %arrayidx698 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 3
  %tmp587 = load i32, i32* %arrayidx698, align 4
  %add699 = add i32 %xor697, %tmp587
  %add700 = add i32 %add699, -1894986606
  %tmp588 = load i32, i32* %D, align 4
  %add701 = add i32 %tmp588, %add700
  store i32 %add701, i32* %D, align 4
  %tmp589 = load i32, i32* %D, align 4
  %shl702 = shl i32 %tmp589, 10
  %tmp590 = load i32, i32* %D, align 4
  %shr703 = lshr i32 %tmp590, 22
  %or704 = or i32 %shl702, %shr703
  store i32 %or704, i32* %D, align 4
  %tmp591 = load i32, i32* %A, align 4
  %tmp592 = load i32, i32* %D, align 4
  %add705 = add i32 %tmp592, %tmp591
  store i32 %add705, i32* %D, align 4
  br label %do.end706

do.end706:                                        ; preds = %do.body694
  br label %do.body707

do.body707:                                       ; preds = %do.end706
  %tmp593 = load i32, i32* %A, align 4
  %tmp594 = load i32, i32* %D, align 4
  %tmp595 = load i32, i32* %B, align 4
  %neg708 = xor i32 %tmp595, -1
  %or709 = or i32 %tmp594, %neg708
  %xor710 = xor i32 %tmp593, %or709
  %arrayidx711 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 10
  %tmp596 = load i32, i32* %arrayidx711, align 4
  %add712 = add i32 %xor710, %tmp596
  %add713 = add i32 %add712, -1051523
  %tmp597 = load i32, i32* %C, align 4
  %add714 = add i32 %tmp597, %add713
  store i32 %add714, i32* %C, align 4
  %tmp598 = load i32, i32* %C, align 4
  %shl715 = shl i32 %tmp598, 15
  %tmp599 = load i32, i32* %C, align 4
  %shr716 = lshr i32 %tmp599, 17
  %or717 = or i32 %shl715, %shr716
  store i32 %or717, i32* %C, align 4
  %tmp600 = load i32, i32* %D, align 4
  %tmp601 = load i32, i32* %C, align 4
  %add718 = add i32 %tmp601, %tmp600
  store i32 %add718, i32* %C, align 4
  br label %do.end719

do.end719:                                        ; preds = %do.body707
  br label %do.body720

do.body720:                                       ; preds = %do.end719
  %tmp602 = load i32, i32* %D, align 4
  %tmp603 = load i32, i32* %C, align 4
  %tmp604 = load i32, i32* %A, align 4
  %neg721 = xor i32 %tmp604, -1
  %or722 = or i32 %tmp603, %neg721
  %xor723 = xor i32 %tmp602, %or722
  %arrayidx724 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 1
  %tmp605 = load i32, i32* %arrayidx724, align 4
  %add725 = add i32 %xor723, %tmp605
  %add726 = add i32 %add725, -2054922799
  %tmp606 = load i32, i32* %B, align 4
  %add727 = add i32 %tmp606, %add726
  store i32 %add727, i32* %B, align 4
  %tmp607 = load i32, i32* %B, align 4
  %shl728 = shl i32 %tmp607, 21
  %tmp608 = load i32, i32* %B, align 4
  %shr729 = lshr i32 %tmp608, 11
  %or730 = or i32 %shl728, %shr729
  store i32 %or730, i32* %B, align 4
  %tmp609 = load i32, i32* %C, align 4
  %tmp610 = load i32, i32* %B, align 4
  %add731 = add i32 %tmp610, %tmp609
  store i32 %add731, i32* %B, align 4
  br label %do.end732

do.end732:                                        ; preds = %do.body720
  br label %do.body733

do.body733:                                       ; preds = %do.end732
  %tmp611 = load i32, i32* %C, align 4
  %tmp612 = load i32, i32* %B, align 4
  %tmp613 = load i32, i32* %D, align 4
  %neg734 = xor i32 %tmp613, -1
  %or735 = or i32 %tmp612, %neg734
  %xor736 = xor i32 %tmp611, %or735
  %arrayidx737 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 8
  %tmp614 = load i32, i32* %arrayidx737, align 4
  %add738 = add i32 %xor736, %tmp614
  %add739 = add i32 %add738, 1873313359
  %tmp615 = load i32, i32* %A, align 4
  %add740 = add i32 %tmp615, %add739
  store i32 %add740, i32* %A, align 4
  %tmp616 = load i32, i32* %A, align 4
  %shl741 = shl i32 %tmp616, 6
  %tmp617 = load i32, i32* %A, align 4
  %shr742 = lshr i32 %tmp617, 26
  %or743 = or i32 %shl741, %shr742
  store i32 %or743, i32* %A, align 4
  %tmp618 = load i32, i32* %B, align 4
  %tmp619 = load i32, i32* %A, align 4
  %add744 = add i32 %tmp619, %tmp618
  store i32 %add744, i32* %A, align 4
  br label %do.end745

do.end745:                                        ; preds = %do.body733
  br label %do.body746

do.body746:                                       ; preds = %do.end745
  %tmp620 = load i32, i32* %B, align 4
  %tmp621 = load i32, i32* %A, align 4
  %tmp622 = load i32, i32* %C, align 4
  %neg747 = xor i32 %tmp622, -1
  %or748 = or i32 %tmp621, %neg747
  %xor749 = xor i32 %tmp620, %or748
  %arrayidx750 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 15
  %tmp623 = load i32, i32* %arrayidx750, align 4
  %add751 = add i32 %xor749, %tmp623
  %add752 = add i32 %add751, -30611744
  %tmp624 = load i32, i32* %D, align 4
  %add753 = add i32 %tmp624, %add752
  store i32 %add753, i32* %D, align 4
  %tmp625 = load i32, i32* %D, align 4
  %shl754 = shl i32 %tmp625, 10
  %tmp626 = load i32, i32* %D, align 4
  %shr755 = lshr i32 %tmp626, 22
  %or756 = or i32 %shl754, %shr755
  store i32 %or756, i32* %D, align 4
  %tmp627 = load i32, i32* %A, align 4
  %tmp628 = load i32, i32* %D, align 4
  %add757 = add i32 %tmp628, %tmp627
  store i32 %add757, i32* %D, align 4
  br label %do.end758

do.end758:                                        ; preds = %do.body746
  br label %do.body759

do.body759:                                       ; preds = %do.end758
  %tmp629 = load i32, i32* %A, align 4
  %tmp630 = load i32, i32* %D, align 4
  %tmp631 = load i32, i32* %B, align 4
  %neg760 = xor i32 %tmp631, -1
  %or761 = or i32 %tmp630, %neg760
  %xor762 = xor i32 %tmp629, %or761
  %arrayidx763 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 6
  %tmp632 = load i32, i32* %arrayidx763, align 4
  %add764 = add i32 %xor762, %tmp632
  %add765 = add i32 %add764, -1560198380
  %tmp633 = load i32, i32* %C, align 4
  %add766 = add i32 %tmp633, %add765
  store i32 %add766, i32* %C, align 4
  %tmp634 = load i32, i32* %C, align 4
  %shl767 = shl i32 %tmp634, 15
  %tmp635 = load i32, i32* %C, align 4
  %shr768 = lshr i32 %tmp635, 17
  %or769 = or i32 %shl767, %shr768
  store i32 %or769, i32* %C, align 4
  %tmp636 = load i32, i32* %D, align 4
  %tmp637 = load i32, i32* %C, align 4
  %add770 = add i32 %tmp637, %tmp636
  store i32 %add770, i32* %C, align 4
  br label %do.end771

do.end771:                                        ; preds = %do.body759
  br label %do.body772

do.body772:                                       ; preds = %do.end771
  %tmp638 = load i32, i32* %D, align 4
  %tmp639 = load i32, i32* %C, align 4
  %tmp640 = load i32, i32* %A, align 4
  %neg773 = xor i32 %tmp640, -1
  %or774 = or i32 %tmp639, %neg773
  %xor775 = xor i32 %tmp638, %or774
  %arrayidx776 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 13
  %tmp641 = load i32, i32* %arrayidx776, align 4
  %add777 = add i32 %xor775, %tmp641
  %add778 = add i32 %add777, 1309151649
  %tmp642 = load i32, i32* %B, align 4
  %add779 = add i32 %tmp642, %add778
  store i32 %add779, i32* %B, align 4
  %tmp643 = load i32, i32* %B, align 4
  %shl780 = shl i32 %tmp643, 21
  %tmp644 = load i32, i32* %B, align 4
  %shr781 = lshr i32 %tmp644, 11
  %or782 = or i32 %shl780, %shr781
  store i32 %or782, i32* %B, align 4
  %tmp645 = load i32, i32* %C, align 4
  %tmp646 = load i32, i32* %B, align 4
  %add783 = add i32 %tmp646, %tmp645
  store i32 %add783, i32* %B, align 4
  br label %do.end784

do.end784:                                        ; preds = %do.body772
  br label %do.body785

do.body785:                                       ; preds = %do.end784
  %tmp647 = load i32, i32* %C, align 4
  %tmp648 = load i32, i32* %B, align 4
  %tmp649 = load i32, i32* %D, align 4
  %neg786 = xor i32 %tmp649, -1
  %or787 = or i32 %tmp648, %neg786
  %xor788 = xor i32 %tmp647, %or787
  %arrayidx789 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 4
  %tmp650 = load i32, i32* %arrayidx789, align 4
  %add790 = add i32 %xor788, %tmp650
  %add791 = add i32 %add790, -145523070
  %tmp651 = load i32, i32* %A, align 4
  %add792 = add i32 %tmp651, %add791
  store i32 %add792, i32* %A, align 4
  %tmp652 = load i32, i32* %A, align 4
  %shl793 = shl i32 %tmp652, 6
  %tmp653 = load i32, i32* %A, align 4
  %shr794 = lshr i32 %tmp653, 26
  %or795 = or i32 %shl793, %shr794
  store i32 %or795, i32* %A, align 4
  %tmp654 = load i32, i32* %B, align 4
  %tmp655 = load i32, i32* %A, align 4
  %add796 = add i32 %tmp655, %tmp654
  store i32 %add796, i32* %A, align 4
  br label %do.end797

do.end797:                                        ; preds = %do.body785
  br label %do.body798

do.body798:                                       ; preds = %do.end797
  %tmp656 = load i32, i32* %B, align 4
  %tmp657 = load i32, i32* %A, align 4
  %tmp658 = load i32, i32* %C, align 4
  %neg799 = xor i32 %tmp658, -1
  %or800 = or i32 %tmp657, %neg799
  %xor801 = xor i32 %tmp656, %or800
  %arrayidx802 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 11
  %tmp659 = load i32, i32* %arrayidx802, align 4
  %add803 = add i32 %xor801, %tmp659
  %add804 = add i32 %add803, -1120210379
  %tmp660 = load i32, i32* %D, align 4
  %add805 = add i32 %tmp660, %add804
  store i32 %add805, i32* %D, align 4
  %tmp661 = load i32, i32* %D, align 4
  %shl806 = shl i32 %tmp661, 10
  %tmp662 = load i32, i32* %D, align 4
  %shr807 = lshr i32 %tmp662, 22
  %or808 = or i32 %shl806, %shr807
  store i32 %or808, i32* %D, align 4
  %tmp663 = load i32, i32* %A, align 4
  %tmp664 = load i32, i32* %D, align 4
  %add809 = add i32 %tmp664, %tmp663
  store i32 %add809, i32* %D, align 4
  br label %do.end810

do.end810:                                        ; preds = %do.body798
  br label %do.body811

do.body811:                                       ; preds = %do.end810
  %tmp665 = load i32, i32* %A, align 4
  %tmp666 = load i32, i32* %D, align 4
  %tmp667 = load i32, i32* %B, align 4
  %neg812 = xor i32 %tmp667, -1
  %or813 = or i32 %tmp666, %neg812
  %xor814 = xor i32 %tmp665, %or813
  %arrayidx815 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 2
  %tmp668 = load i32, i32* %arrayidx815, align 4
  %add816 = add i32 %xor814, %tmp668
  %add817 = add i32 %add816, 718787259
  %tmp669 = load i32, i32* %C, align 4
  %add818 = add i32 %tmp669, %add817
  store i32 %add818, i32* %C, align 4
  %tmp670 = load i32, i32* %C, align 4
  %shl819 = shl i32 %tmp670, 15
  %tmp671 = load i32, i32* %C, align 4
  %shr820 = lshr i32 %tmp671, 17
  %or821 = or i32 %shl819, %shr820
  store i32 %or821, i32* %C, align 4
  %tmp672 = load i32, i32* %D, align 4
  %tmp673 = load i32, i32* %C, align 4
  %add822 = add i32 %tmp673, %tmp672
  store i32 %add822, i32* %C, align 4
  br label %do.end823

do.end823:                                        ; preds = %do.body811
  br label %do.body824

do.body824:                                       ; preds = %do.end823
  %tmp674 = load i32, i32* %D, align 4
  %tmp675 = load i32, i32* %C, align 4
  %tmp676 = load i32, i32* %A, align 4
  %neg825 = xor i32 %tmp676, -1
  %or826 = or i32 %tmp675, %neg825
  %xor827 = xor i32 %tmp674, %or826
  %arrayidx828 = getelementptr inbounds [16 x i32], [16 x i32]* %correct_words, i32 0, i64 9
  %tmp677 = load i32, i32* %arrayidx828, align 4
  %add829 = add i32 %xor827, %tmp677
  %add830 = add i32 %add829, -343485551
  %tmp678 = load i32, i32* %B, align 4
  %add831 = add i32 %tmp678, %add830
  store i32 %add831, i32* %B, align 4
  %tmp679 = load i32, i32* %B, align 4
  %shl832 = shl i32 %tmp679, 21
  %tmp680 = load i32, i32* %B, align 4
  %shr833 = lshr i32 %tmp680, 11
  %or834 = or i32 %shl832, %shr833
  store i32 %or834, i32* %B, align 4
  %tmp681 = load i32, i32* %C, align 4
  %tmp682 = load i32, i32* %B, align 4
  %add835 = add i32 %tmp682, %tmp681
  store i32 %add835, i32* %B, align 4
  br label %do.end836

do.end836:                                        ; preds = %do.body824
  %tmp683 = load i32, i32* %A_save, align 4
  %tmp684 = load i32, i32* %A, align 4
  %add837 = add i32 %tmp684, %tmp683
  store i32 %add837, i32* %A, align 4
  %tmp685 = load i32, i32* %B_save, align 4
  %tmp686 = load i32, i32* %B, align 4
  %add838 = add i32 %tmp686, %tmp685
  store i32 %add838, i32* %B, align 4
  %tmp687 = load i32, i32* %C_save, align 4
  %tmp688 = load i32, i32* %C, align 4
  %add839 = add i32 %tmp688, %tmp687
  store i32 %add839, i32* %C, align 4
  %tmp689 = load i32, i32* %D_save, align 4
  %tmp690 = load i32, i32* %D, align 4
  %add840 = add i32 %tmp690, %tmp689
  store i32 %add840, i32* %D, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %tmp691 = load i32, i32* %A, align 4
  %tmp692 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %A841 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp692, i32 0, i32 0
  store i32 %tmp691, i32* %A841, align 4
  %tmp693 = load i32, i32* %B, align 4
  %tmp694 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %B842 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp694, i32 0, i32 1
  store i32 %tmp693, i32* %B842, align 4
  %tmp695 = load i32, i32* %C, align 4
  %tmp696 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %C843 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp696, i32 0, i32 2
  store i32 %tmp695, i32* %C843, align 4
  %tmp697 = load i32, i32* %D, align 4
  %tmp698 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %D844 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp698, i32 0, i32 3
  store i32 %tmp697, i32* %D844, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @md5_stream(%struct._IO_FILE* %stream, i8* %resblock) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %resblock.addr = alloca i8*, align 8
  %ctx = alloca %struct.md5_ctx, align 4
  %buffer = alloca [4168 x i8], align 16
  %sum = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %resblock, i8** %resblock.addr, align 8
  call void @md5_init_ctx(%struct.md5_ctx* %ctx)
  br label %while.body

while.body:                                       ; preds = %if.end6, %entry
  store i64 0, i64* %sum, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %while.body
  %arraydecay = getelementptr inbounds [4168 x i8], [4168 x i8]* %buffer, i32 0, i32 0
  %tmp = load i64, i64* %sum, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %tmp
  %tmp1 = load i64, i64* %sum, align 8
  %sub = sub i64 4096, %tmp1
  %tmp2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i64 @fread(i8* %add.ptr, i64 1, i64 %sub, %struct._IO_FILE* %tmp2)
  store i64 %call, i64* %n, align 8
  %tmp3 = load i64, i64* %n, align 8
  %tmp4 = load i64, i64* %sum, align 8
  %add = add i64 %tmp4, %tmp3
  store i64 %add, i64* %sum, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %tmp5 = load i64, i64* %sum, align 8
  %cmp = icmp ult i64 %tmp5, 4096
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %tmp6 = load i64, i64* %n, align 8
  %cmp1 = icmp ne i64 %tmp6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %tmp7 = phi i1 [ false, %do.cond ], [ %cmp1, %land.rhs ]
  br i1 %tmp7, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %tmp8 = load i64, i64* %n, align 8
  %cmp2 = icmp eq i64 %tmp8, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %tmp9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @ferror(%struct._IO_FILE* %tmp9) #4
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %do.end
  %tmp10 = load i64, i64* %n, align 8
  %cmp4 = icmp eq i64 %tmp10, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %while.end

if.end6:                                          ; preds = %if.end
  %arraydecay7 = getelementptr inbounds [4168 x i8], [4168 x i8]* %buffer, i32 0, i32 0
  call void @md5_process_block(i8* %arraydecay7, i64 4096, %struct.md5_ctx* %ctx)
  br label %while.body

while.end:                                        ; preds = %if.then5
  %tmp11 = load i64, i64* %sum, align 8
  %cmp8 = icmp ugt i64 %tmp11, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %while.end
  %arraydecay10 = getelementptr inbounds [4168 x i8], [4168 x i8]* %buffer, i32 0, i32 0
  %tmp12 = load i64, i64* %sum, align 8
  call void @md5_process_bytes(i8* %arraydecay10, i64 %tmp12, %struct.md5_ctx* %ctx)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %while.end
  %tmp13 = load i8*, i8** %resblock.addr, align 8
  %call12 = call i8* @md5_finish_ctx(%struct.md5_ctx* %ctx, i8* %tmp13)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end11, %if.then
  %tmp14 = load i32, i32* %retval
  ret i32 %tmp14
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @md5_process_bytes(i8* %buffer, i64 %len, %struct.md5_ctx* %ctx) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ctx.addr = alloca %struct.md5_ctx*, align 8
  %left_over = alloca i64, align 8
  %add = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.md5_ctx* %ctx, %struct.md5_ctx** %ctx.addr, align 8
  %tmp = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp, i32 0, i32 5
  %tmp1 = load i32, i32* %buflen, align 4
  %cmp = icmp ne i32 %tmp1, 0
  br i1 %cmp, label %if.then, label %if.end28

if.then:                                          ; preds = %entry
  %tmp2 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen1 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp2, i32 0, i32 5
  %tmp3 = load i32, i32* %buflen1, align 4
  %conv = zext i32 %tmp3 to i64
  store i64 %conv, i64* %left_over, align 8
  %tmp4 = load i64, i64* %left_over, align 8
  %sub = sub i64 128, %tmp4
  %tmp5 = load i64, i64* %len.addr, align 8
  %cmp2 = icmp ugt i64 %sub, %tmp5
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %tmp6 = load i64, i64* %len.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %tmp7 = load i64, i64* %left_over, align 8
  %sub4 = sub i64 128, %tmp7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %tmp6, %cond.true ], [ %sub4, %cond.false ]
  store i64 %cond, i64* %add, align 8
  %tmp8 = load i64, i64* %left_over, align 8
  %tmp9 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer5 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp9, i32 0, i32 6
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %buffer5, i32 0, i64 %tmp8
  %tmp10 = load i8*, i8** %buffer.addr, align 8
  %tmp11 = load i64, i64* %add, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %tmp10, i64 %tmp11, i32 1, i1 false)
  %tmp12 = load i64, i64* %add, align 8
  %tmp13 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen6 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp13, i32 0, i32 5
  %tmp14 = load i32, i32* %buflen6, align 4
  %conv7 = zext i32 %tmp14 to i64
  %add8 = add i64 %conv7, %tmp12
  %conv9 = trunc i64 %add8 to i32
  store i32 %conv9, i32* %buflen6, align 4
  %tmp15 = load i64, i64* %left_over, align 8
  %tmp16 = load i64, i64* %add, align 8
  %add10 = add i64 %tmp15, %tmp16
  %cmp11 = icmp ugt i64 %add10, 64
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %cond.end
  %tmp17 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer14 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp17, i32 0, i32 6
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buffer14, i32 0, i32 0
  %tmp18 = load i64, i64* %left_over, align 8
  %tmp19 = load i64, i64* %add, align 8
  %add15 = add i64 %tmp18, %tmp19
  %and = and i64 %add15, -64
  %tmp20 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  call void @md5_process_block(i8* %arraydecay, i64 %and, %struct.md5_ctx* %tmp20)
  %tmp21 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer16 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp21, i32 0, i32 6
  %tmp22 = bitcast [128 x i8]* %buffer16 to i8*
  %tmp23 = load i64, i64* %left_over, align 8
  %tmp24 = load i64, i64* %add, align 8
  %add17 = add i64 %tmp23, %tmp24
  %and18 = and i64 %add17, -64
  %tmp25 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer19 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp25, i32 0, i32 6
  %arrayidx20 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer19, i32 0, i64 %and18
  %tmp26 = load i64, i64* %left_over, align 8
  %tmp27 = load i64, i64* %add, align 8
  %add21 = add i64 %tmp26, %tmp27
  %and22 = and i64 %add21, 63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp22, i8* %arrayidx20, i64 %and22, i32 1, i1 false)
  %tmp28 = load i64, i64* %left_over, align 8
  %tmp29 = load i64, i64* %add, align 8
  %add23 = add i64 %tmp28, %tmp29
  %and24 = and i64 %add23, 63
  %conv25 = trunc i64 %and24 to i32
  %tmp30 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen26 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp30, i32 0, i32 5
  store i32 %conv25, i32* %buflen26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %cond.end
  %tmp31 = load i8*, i8** %buffer.addr, align 8
  %tmp32 = load i64, i64* %add, align 8
  %add.ptr = getelementptr inbounds i8, i8* %tmp31, i64 %tmp32
  store i8* %add.ptr, i8** %buffer.addr, align 8
  %tmp33 = load i64, i64* %add, align 8
  %tmp34 = load i64, i64* %len.addr, align 8
  %sub27 = sub i64 %tmp34, %tmp33
  store i64 %sub27, i64* %len.addr, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end, %entry
  %tmp35 = load i64, i64* %len.addr, align 8
  %cmp29 = icmp ugt i64 %tmp35, 64
  br i1 %cmp29, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.end28
  %tmp36 = load i8*, i8** %buffer.addr, align 8
  %tmp37 = load i64, i64* %len.addr, align 8
  %and32 = and i64 %tmp37, -64
  %tmp38 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  call void @md5_process_block(i8* %tmp36, i64 %and32, %struct.md5_ctx* %tmp38)
  %tmp39 = load i8*, i8** %buffer.addr, align 8
  %tmp40 = load i64, i64* %len.addr, align 8
  %and33 = and i64 %tmp40, -64
  %add.ptr34 = getelementptr inbounds i8, i8* %tmp39, i64 %and33
  store i8* %add.ptr34, i8** %buffer.addr, align 8
  %tmp41 = load i64, i64* %len.addr, align 8
  %and35 = and i64 %tmp41, 63
  store i64 %and35, i64* %len.addr, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end28
  %tmp42 = load i64, i64* %len.addr, align 8
  %cmp37 = icmp ugt i64 %tmp42, 0
  br i1 %cmp37, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.end36
  %tmp43 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buffer40 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp43, i32 0, i32 6
  %tmp44 = bitcast [128 x i8]* %buffer40 to i8*
  %tmp45 = load i8*, i8** %buffer.addr, align 8
  %tmp46 = load i64, i64* %len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp44, i8* %tmp45, i64 %tmp46, i32 1, i1 false)
  %tmp47 = load i64, i64* %len.addr, align 8
  %conv41 = trunc i64 %tmp47 to i32
  %tmp48 = load %struct.md5_ctx*, %struct.md5_ctx** %ctx.addr, align 8
  %buflen42 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %tmp48, i32 0, i32 5
  store i32 %conv41, i32* %buflen42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end36
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @md5_buffer(i8* %buffer, i64 %len, i8* %resblock) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %resblock.addr = alloca i8*, align 8
  %ctx = alloca %struct.md5_ctx, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %resblock, i8** %resblock.addr, align 8
  call void @md5_init_ctx(%struct.md5_ctx* %ctx)
  %tmp = load i8*, i8** %buffer.addr, align 8
  %tmp1 = load i64, i64* %len.addr, align 8
  call void @md5_process_bytes(i8* %tmp, i64 %tmp1, %struct.md5_ctx* %ctx)
  %tmp2 = load i8*, i8** %resblock.addr, align 8
  %call = call i8* @md5_finish_ctx(%struct.md5_ctx* %ctx, i8* %tmp2)
  ret i8* %call
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.5 (trunk 195335) (llvm/trunk 195334)"}

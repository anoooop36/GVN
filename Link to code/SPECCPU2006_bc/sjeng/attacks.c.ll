; ModuleID = 'attacks.c.bc'
target datalayout = "e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@calc_attackers.rook_o = internal constant [4 x i32] [i32 12, i32 -12, i32 1, i32 -1], align 16
@calc_attackers.bishop_o = internal constant [4 x i32] [i32 11, i32 -11, i32 13, i32 -13], align 16
@calc_attackers.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@board = external global [144 x i32]
@is_attacked.rook_o = internal constant [4 x i32] [i32 12, i32 -12, i32 1, i32 -1], align 16
@is_attacked.bishop_o = internal constant [4 x i32] [i32 11, i32 -11, i32 13, i32 -13], align 16
@is_attacked.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@nk_attacked.rook_o = internal constant [4 x i32] [i32 12, i32 -12, i32 1, i32 -1], align 16
@nk_attacked.bishop_o = internal constant [4 x i32] [i32 11, i32 -11, i32 13, i32 -13], align 16
@nk_attacked.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16

; Function Attrs: nounwind uwtable
define i32 @calc_attackers(i32 %square, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %square.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %a_sq = alloca i32, align 4
  %i = alloca i32, align 4
  %attackers = alloca i32, align 4
  store i32 %square, i32* %square.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %attackers, align 4
  %tmp = load i32* %square.addr, align 4
  %idxprom = sext i32 %tmp to i64
  %arrayidx = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom
  %tmp1 = load i32* %arrayidx, align 4
  %cmp = icmp eq i32 %tmp1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %tmp2 = load i32* %color.addr, align 4
  %rem = srem i32 %tmp2, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then1, label %if.else97

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then1
  %tmp3 = load i32* %i, align 4
  %cmp2 = icmp slt i32 %tmp3, 4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp4 = load i32* %square.addr, align 4
  %tmp5 = load i32* %i, align 4
  %idxprom3 = sext i32 %tmp5 to i64
  %arrayidx4 = getelementptr inbounds [4 x i32]* @calc_attackers.rook_o, i32 0, i64 %idxprom3
  %tmp6 = load i32* %arrayidx4, align 4
  %add = add nsw i32 %tmp4, %tmp6
  store i32 %add, i32* %a_sq, align 4
  %tmp7 = load i32* %a_sq, align 4
  %idxprom5 = sext i32 %tmp7 to i64
  %arrayidx6 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom5
  %tmp8 = load i32* %arrayidx6, align 4
  %cmp7 = icmp eq i32 %tmp8, 5
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  %tmp9 = load i32* %attackers, align 4
  %inc = add nsw i32 %tmp9, 1
  store i32 %inc, i32* %attackers, align 4
  br label %for.end

if.else:                                          ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.else
  %tmp10 = load i32* %a_sq, align 4
  %idxprom9 = sext i32 %tmp10 to i64
  %arrayidx10 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom9
  %tmp11 = load i32* %arrayidx10, align 4
  %cmp11 = icmp ne i32 %tmp11, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %tmp12 = load i32* %a_sq, align 4
  %idxprom12 = sext i32 %tmp12 to i64
  %arrayidx13 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom12
  %tmp13 = load i32* %arrayidx13, align 4
  %cmp14 = icmp eq i32 %tmp13, 7
  br i1 %cmp14, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %tmp14 = load i32* %a_sq, align 4
  %idxprom15 = sext i32 %tmp14 to i64
  %arrayidx16 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom15
  %tmp15 = load i32* %arrayidx16, align 4
  %cmp17 = icmp eq i32 %tmp15, 9
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %lor.lhs.false, %while.body
  %tmp16 = load i32* %attackers, align 4
  %inc19 = add nsw i32 %tmp16, 1
  store i32 %inc19, i32* %attackers, align 4
  br label %while.end

if.else20:                                        ; preds = %lor.lhs.false
  %tmp17 = load i32* %a_sq, align 4
  %idxprom21 = sext i32 %tmp17 to i64
  %arrayidx22 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom21
  %tmp18 = load i32* %arrayidx22, align 4
  %cmp23 = icmp ne i32 %tmp18, 13
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.else20
  br label %while.end

if.end25:                                         ; preds = %if.else20
  br label %if.end26

if.end26:                                         ; preds = %if.end25
  %tmp19 = load i32* %i, align 4
  %idxprom27 = sext i32 %tmp19 to i64
  %arrayidx28 = getelementptr inbounds [4 x i32]* @calc_attackers.rook_o, i32 0, i64 %idxprom27
  %tmp20 = load i32* %arrayidx28, align 4
  %tmp21 = load i32* %a_sq, align 4
  %add29 = add nsw i32 %tmp21, %tmp20
  store i32 %add29, i32* %a_sq, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then24, %if.then18, %while.cond
  br label %if.end30

if.end30:                                         ; preds = %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %tmp22 = load i32* %i, align 4
  %inc31 = add nsw i32 %tmp22, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then8, %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc79, %for.end
  %tmp23 = load i32* %i, align 4
  %cmp33 = icmp slt i32 %tmp23, 4
  br i1 %cmp33, label %for.body34, label %for.end81

for.body34:                                       ; preds = %for.cond32
  %tmp24 = load i32* %square.addr, align 4
  %tmp25 = load i32* %i, align 4
  %idxprom35 = sext i32 %tmp25 to i64
  %arrayidx36 = getelementptr inbounds [4 x i32]* @calc_attackers.bishop_o, i32 0, i64 %idxprom35
  %tmp26 = load i32* %arrayidx36, align 4
  %add37 = add nsw i32 %tmp24, %tmp26
  store i32 %add37, i32* %a_sq, align 4
  %tmp27 = load i32* %a_sq, align 4
  %idxprom38 = sext i32 %tmp27 to i64
  %arrayidx39 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom38
  %tmp28 = load i32* %arrayidx39, align 4
  %cmp40 = icmp eq i32 %tmp28, 1
  br i1 %cmp40, label %land.lhs.true, label %if.else45

land.lhs.true:                                    ; preds = %for.body34
  %tmp29 = load i32* %i, align 4
  %rem41 = srem i32 %tmp29, 2
  %tobool42 = icmp ne i32 %rem41, 0
  br i1 %tobool42, label %if.then43, label %if.else45

if.then43:                                        ; preds = %land.lhs.true
  %tmp30 = load i32* %attackers, align 4
  %inc44 = add nsw i32 %tmp30, 1
  store i32 %inc44, i32* %attackers, align 4
  br label %for.end81

if.else45:                                        ; preds = %land.lhs.true, %for.body34
  %tmp31 = load i32* %a_sq, align 4
  %idxprom46 = sext i32 %tmp31 to i64
  %arrayidx47 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom46
  %tmp32 = load i32* %arrayidx47, align 4
  %cmp48 = icmp eq i32 %tmp32, 5
  br i1 %cmp48, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.else45
  %tmp33 = load i32* %attackers, align 4
  %inc50 = add nsw i32 %tmp33, 1
  store i32 %inc50, i32* %attackers, align 4
  br label %for.end81

if.else51:                                        ; preds = %if.else45
  br label %while.cond52

while.cond52:                                     ; preds = %if.end72, %if.else51
  %tmp34 = load i32* %a_sq, align 4
  %idxprom53 = sext i32 %tmp34 to i64
  %arrayidx54 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom53
  %tmp35 = load i32* %arrayidx54, align 4
  %cmp55 = icmp ne i32 %tmp35, 0
  br i1 %cmp55, label %while.body56, label %while.end76

while.body56:                                     ; preds = %while.cond52
  %tmp36 = load i32* %a_sq, align 4
  %idxprom57 = sext i32 %tmp36 to i64
  %arrayidx58 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom57
  %tmp37 = load i32* %arrayidx58, align 4
  %cmp59 = icmp eq i32 %tmp37, 11
  br i1 %cmp59, label %if.then64, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %while.body56
  %tmp38 = load i32* %a_sq, align 4
  %idxprom61 = sext i32 %tmp38 to i64
  %arrayidx62 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom61
  %tmp39 = load i32* %arrayidx62, align 4
  %cmp63 = icmp eq i32 %tmp39, 9
  br i1 %cmp63, label %if.then64, label %if.else66

if.then64:                                        ; preds = %lor.lhs.false60, %while.body56
  %tmp40 = load i32* %attackers, align 4
  %inc65 = add nsw i32 %tmp40, 1
  store i32 %inc65, i32* %attackers, align 4
  br label %while.end76

if.else66:                                        ; preds = %lor.lhs.false60
  %tmp41 = load i32* %a_sq, align 4
  %idxprom67 = sext i32 %tmp41 to i64
  %arrayidx68 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom67
  %tmp42 = load i32* %arrayidx68, align 4
  %cmp69 = icmp ne i32 %tmp42, 13
  br i1 %cmp69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.else66
  br label %while.end76

if.end71:                                         ; preds = %if.else66
  br label %if.end72

if.end72:                                         ; preds = %if.end71
  %tmp43 = load i32* %i, align 4
  %idxprom73 = sext i32 %tmp43 to i64
  %arrayidx74 = getelementptr inbounds [4 x i32]* @calc_attackers.bishop_o, i32 0, i64 %idxprom73
  %tmp44 = load i32* %arrayidx74, align 4
  %tmp45 = load i32* %a_sq, align 4
  %add75 = add nsw i32 %tmp45, %tmp44
  store i32 %add75, i32* %a_sq, align 4
  br label %while.cond52

while.end76:                                      ; preds = %if.then70, %if.then64, %while.cond52
  br label %if.end77

if.end77:                                         ; preds = %while.end76
  br label %if.end78

if.end78:                                         ; preds = %if.end77
  br label %for.inc79

for.inc79:                                        ; preds = %if.end78
  %tmp46 = load i32* %i, align 4
  %inc80 = add nsw i32 %tmp46, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond32

for.end81:                                        ; preds = %if.then49, %if.then43, %for.cond32
  store i32 0, i32* %i, align 4
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc94, %for.end81
  %tmp47 = load i32* %i, align 4
  %cmp83 = icmp slt i32 %tmp47, 8
  br i1 %cmp83, label %for.body84, label %for.end96

for.body84:                                       ; preds = %for.cond82
  %tmp48 = load i32* %square.addr, align 4
  %tmp49 = load i32* %i, align 4
  %idxprom85 = sext i32 %tmp49 to i64
  %arrayidx86 = getelementptr inbounds [8 x i32]* @calc_attackers.knight_o, i32 0, i64 %idxprom85
  %tmp50 = load i32* %arrayidx86, align 4
  %add87 = add nsw i32 %tmp48, %tmp50
  store i32 %add87, i32* %a_sq, align 4
  %tmp51 = load i32* %a_sq, align 4
  %idxprom88 = sext i32 %tmp51 to i64
  %arrayidx89 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom88
  %tmp52 = load i32* %arrayidx89, align 4
  %cmp90 = icmp eq i32 %tmp52, 3
  br i1 %cmp90, label %if.then91, label %if.end93

if.then91:                                        ; preds = %for.body84
  %tmp53 = load i32* %attackers, align 4
  %inc92 = add nsw i32 %tmp53, 1
  store i32 %inc92, i32* %attackers, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %for.body84
  br label %for.inc94

for.inc94:                                        ; preds = %if.end93
  %tmp54 = load i32* %i, align 4
  %inc95 = add nsw i32 %tmp54, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond82

for.end96:                                        ; preds = %for.cond82
  br label %if.end204

if.else97:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc135, %if.else97
  %tmp55 = load i32* %i, align 4
  %cmp99 = icmp slt i32 %tmp55, 4
  br i1 %cmp99, label %for.body100, label %for.end137

for.body100:                                      ; preds = %for.cond98
  %tmp56 = load i32* %square.addr, align 4
  %tmp57 = load i32* %i, align 4
  %idxprom101 = sext i32 %tmp57 to i64
  %arrayidx102 = getelementptr inbounds [4 x i32]* @calc_attackers.rook_o, i32 0, i64 %idxprom101
  %tmp58 = load i32* %arrayidx102, align 4
  %add103 = add nsw i32 %tmp56, %tmp58
  store i32 %add103, i32* %a_sq, align 4
  %tmp59 = load i32* %a_sq, align 4
  %idxprom104 = sext i32 %tmp59 to i64
  %arrayidx105 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom104
  %tmp60 = load i32* %arrayidx105, align 4
  %cmp106 = icmp eq i32 %tmp60, 6
  br i1 %cmp106, label %if.then107, label %if.else109

if.then107:                                       ; preds = %for.body100
  %tmp61 = load i32* %attackers, align 4
  %inc108 = add nsw i32 %tmp61, 1
  store i32 %inc108, i32* %attackers, align 4
  br label %for.end137

if.else109:                                       ; preds = %for.body100
  br label %while.cond110

while.cond110:                                    ; preds = %if.end129, %if.else109
  %tmp62 = load i32* %a_sq, align 4
  %idxprom111 = sext i32 %tmp62 to i64
  %arrayidx112 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom111
  %tmp63 = load i32* %arrayidx112, align 4
  %cmp113 = icmp ne i32 %tmp63, 0
  br i1 %cmp113, label %while.body114, label %while.end133

while.body114:                                    ; preds = %while.cond110
  %tmp64 = load i32* %a_sq, align 4
  %idxprom115 = sext i32 %tmp64 to i64
  %arrayidx116 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom115
  %tmp65 = load i32* %arrayidx116, align 4
  %cmp117 = icmp eq i32 %tmp65, 8
  br i1 %cmp117, label %if.then122, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %while.body114
  %tmp66 = load i32* %a_sq, align 4
  %idxprom119 = sext i32 %tmp66 to i64
  %arrayidx120 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom119
  %tmp67 = load i32* %arrayidx120, align 4
  %cmp121 = icmp eq i32 %tmp67, 10
  br i1 %cmp121, label %if.then122, label %if.end124

if.then122:                                       ; preds = %lor.lhs.false118, %while.body114
  %tmp68 = load i32* %attackers, align 4
  %inc123 = add nsw i32 %tmp68, 1
  store i32 %inc123, i32* %attackers, align 4
  br label %while.end133

if.end124:                                        ; preds = %lor.lhs.false118
  %tmp69 = load i32* %a_sq, align 4
  %idxprom125 = sext i32 %tmp69 to i64
  %arrayidx126 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom125
  %tmp70 = load i32* %arrayidx126, align 4
  %cmp127 = icmp ne i32 %tmp70, 13
  br i1 %cmp127, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.end124
  br label %while.end133

if.end129:                                        ; preds = %if.end124
  %tmp71 = load i32* %i, align 4
  %idxprom130 = sext i32 %tmp71 to i64
  %arrayidx131 = getelementptr inbounds [4 x i32]* @calc_attackers.rook_o, i32 0, i64 %idxprom130
  %tmp72 = load i32* %arrayidx131, align 4
  %tmp73 = load i32* %a_sq, align 4
  %add132 = add nsw i32 %tmp73, %tmp72
  store i32 %add132, i32* %a_sq, align 4
  br label %while.cond110

while.end133:                                     ; preds = %if.then128, %if.then122, %while.cond110
  br label %if.end134

if.end134:                                        ; preds = %while.end133
  br label %for.inc135

for.inc135:                                       ; preds = %if.end134
  %tmp74 = load i32* %i, align 4
  %inc136 = add nsw i32 %tmp74, 1
  store i32 %inc136, i32* %i, align 4
  br label %for.cond98

for.end137:                                       ; preds = %if.then107, %for.cond98
  store i32 0, i32* %i, align 4
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc186, %for.end137
  %tmp75 = load i32* %i, align 4
  %cmp139 = icmp slt i32 %tmp75, 4
  br i1 %cmp139, label %for.body140, label %for.end188

for.body140:                                      ; preds = %for.cond138
  %tmp76 = load i32* %square.addr, align 4
  %tmp77 = load i32* %i, align 4
  %idxprom141 = sext i32 %tmp77 to i64
  %arrayidx142 = getelementptr inbounds [4 x i32]* @calc_attackers.bishop_o, i32 0, i64 %idxprom141
  %tmp78 = load i32* %arrayidx142, align 4
  %add143 = add nsw i32 %tmp76, %tmp78
  store i32 %add143, i32* %a_sq, align 4
  %tmp79 = load i32* %a_sq, align 4
  %idxprom144 = sext i32 %tmp79 to i64
  %arrayidx145 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom144
  %tmp80 = load i32* %arrayidx145, align 4
  %cmp146 = icmp eq i32 %tmp80, 2
  br i1 %cmp146, label %land.lhs.true147, label %if.else152

land.lhs.true147:                                 ; preds = %for.body140
  %tmp81 = load i32* %i, align 4
  %rem148 = srem i32 %tmp81, 2
  %tobool149 = icmp ne i32 %rem148, 0
  br i1 %tobool149, label %if.else152, label %if.then150

if.then150:                                       ; preds = %land.lhs.true147
  %tmp82 = load i32* %attackers, align 4
  %inc151 = add nsw i32 %tmp82, 1
  store i32 %inc151, i32* %attackers, align 4
  br label %for.end188

if.else152:                                       ; preds = %land.lhs.true147, %for.body140
  %tmp83 = load i32* %a_sq, align 4
  %idxprom153 = sext i32 %tmp83 to i64
  %arrayidx154 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom153
  %tmp84 = load i32* %arrayidx154, align 4
  %cmp155 = icmp eq i32 %tmp84, 6
  br i1 %cmp155, label %if.then156, label %if.else158

if.then156:                                       ; preds = %if.else152
  %tmp85 = load i32* %attackers, align 4
  %inc157 = add nsw i32 %tmp85, 1
  store i32 %inc157, i32* %attackers, align 4
  br label %for.end188

if.else158:                                       ; preds = %if.else152
  br label %while.cond159

while.cond159:                                    ; preds = %if.end179, %if.else158
  %tmp86 = load i32* %a_sq, align 4
  %idxprom160 = sext i32 %tmp86 to i64
  %arrayidx161 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom160
  %tmp87 = load i32* %arrayidx161, align 4
  %cmp162 = icmp ne i32 %tmp87, 0
  br i1 %cmp162, label %while.body163, label %while.end183

while.body163:                                    ; preds = %while.cond159
  %tmp88 = load i32* %a_sq, align 4
  %idxprom164 = sext i32 %tmp88 to i64
  %arrayidx165 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom164
  %tmp89 = load i32* %arrayidx165, align 4
  %cmp166 = icmp eq i32 %tmp89, 12
  br i1 %cmp166, label %if.then171, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %while.body163
  %tmp90 = load i32* %a_sq, align 4
  %idxprom168 = sext i32 %tmp90 to i64
  %arrayidx169 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom168
  %tmp91 = load i32* %arrayidx169, align 4
  %cmp170 = icmp eq i32 %tmp91, 10
  br i1 %cmp170, label %if.then171, label %if.else173

if.then171:                                       ; preds = %lor.lhs.false167, %while.body163
  %tmp92 = load i32* %attackers, align 4
  %inc172 = add nsw i32 %tmp92, 1
  store i32 %inc172, i32* %attackers, align 4
  br label %while.end183

if.else173:                                       ; preds = %lor.lhs.false167
  %tmp93 = load i32* %a_sq, align 4
  %idxprom174 = sext i32 %tmp93 to i64
  %arrayidx175 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom174
  %tmp94 = load i32* %arrayidx175, align 4
  %cmp176 = icmp ne i32 %tmp94, 13
  br i1 %cmp176, label %if.then177, label %if.end178

if.then177:                                       ; preds = %if.else173
  br label %while.end183

if.end178:                                        ; preds = %if.else173
  br label %if.end179

if.end179:                                        ; preds = %if.end178
  %tmp95 = load i32* %i, align 4
  %idxprom180 = sext i32 %tmp95 to i64
  %arrayidx181 = getelementptr inbounds [4 x i32]* @calc_attackers.bishop_o, i32 0, i64 %idxprom180
  %tmp96 = load i32* %arrayidx181, align 4
  %tmp97 = load i32* %a_sq, align 4
  %add182 = add nsw i32 %tmp97, %tmp96
  store i32 %add182, i32* %a_sq, align 4
  br label %while.cond159

while.end183:                                     ; preds = %if.then177, %if.then171, %while.cond159
  br label %if.end184

if.end184:                                        ; preds = %while.end183
  br label %if.end185

if.end185:                                        ; preds = %if.end184
  br label %for.inc186

for.inc186:                                       ; preds = %if.end185
  %tmp98 = load i32* %i, align 4
  %inc187 = add nsw i32 %tmp98, 1
  store i32 %inc187, i32* %i, align 4
  br label %for.cond138

for.end188:                                       ; preds = %if.then156, %if.then150, %for.cond138
  store i32 0, i32* %i, align 4
  br label %for.cond189

for.cond189:                                      ; preds = %for.inc201, %for.end188
  %tmp99 = load i32* %i, align 4
  %cmp190 = icmp slt i32 %tmp99, 8
  br i1 %cmp190, label %for.body191, label %for.end203

for.body191:                                      ; preds = %for.cond189
  %tmp100 = load i32* %square.addr, align 4
  %tmp101 = load i32* %i, align 4
  %idxprom192 = sext i32 %tmp101 to i64
  %arrayidx193 = getelementptr inbounds [8 x i32]* @calc_attackers.knight_o, i32 0, i64 %idxprom192
  %tmp102 = load i32* %arrayidx193, align 4
  %add194 = add nsw i32 %tmp100, %tmp102
  store i32 %add194, i32* %a_sq, align 4
  %tmp103 = load i32* %a_sq, align 4
  %idxprom195 = sext i32 %tmp103 to i64
  %arrayidx196 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom195
  %tmp104 = load i32* %arrayidx196, align 4
  %cmp197 = icmp eq i32 %tmp104, 4
  br i1 %cmp197, label %if.then198, label %if.end200

if.then198:                                       ; preds = %for.body191
  %tmp105 = load i32* %attackers, align 4
  %inc199 = add nsw i32 %tmp105, 1
  store i32 %inc199, i32* %attackers, align 4
  br label %if.end200

if.end200:                                        ; preds = %if.then198, %for.body191
  br label %for.inc201

for.inc201:                                       ; preds = %if.end200
  %tmp106 = load i32* %i, align 4
  %inc202 = add nsw i32 %tmp106, 1
  store i32 %inc202, i32* %i, align 4
  br label %for.cond189

for.end203:                                       ; preds = %for.cond189
  br label %if.end204

if.end204:                                        ; preds = %for.end203, %for.end96
  %tmp107 = load i32* %attackers, align 4
  store i32 %tmp107, i32* %retval
  br label %return

return:                                           ; preds = %if.end204, %if.then
  %tmp108 = load i32* %retval
  ret i32 %tmp108
}

; Function Attrs: nounwind uwtable
define i32 @is_attacked(i32 %square, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %square.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %ndir = alloca i32, align 4
  %a_sq = alloca i32, align 4
  %basq = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %square, i32* %square.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %tmp = load i32* %color.addr, align 4
  %and = and i32 %tmp, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %tmp1 = load i32* %i, align 4
  %cmp = icmp slt i32 %tmp1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp2 = load i32* %i, align 4
  %idxprom = sext i32 %tmp2 to i64
  %arrayidx = getelementptr inbounds [4 x i32]* @is_attacked.bishop_o, i32 0, i64 %idxprom
  %tmp3 = load i32* %arrayidx, align 4
  store i32 %tmp3, i32* %ndir, align 4
  %tmp4 = load i32* %square.addr, align 4
  %tmp5 = load i32* %ndir, align 4
  %add = add nsw i32 %tmp4, %tmp5
  store i32 %add, i32* %a_sq, align 4
  %tmp6 = load i32* %a_sq, align 4
  %idxprom1 = sext i32 %tmp6 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom1
  %tmp7 = load i32* %arrayidx2, align 4
  store i32 %tmp7, i32* %basq, align 4
  %tmp8 = load i32* %basq, align 4
  %cmp3 = icmp eq i32 %tmp8, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %tmp9 = load i32* %i, align 4
  %and4 = and i32 %tmp9, 1
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  %tmp10 = load i32* %basq, align 4
  %cmp7 = icmp eq i32 %tmp10, 5
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end9:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %if.end9
  %tmp11 = load i32* %basq, align 4
  %cmp10 = icmp ne i32 %tmp11, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %tmp12 = load i32* %basq, align 4
  %cmp11 = icmp eq i32 %tmp12, 11
  br i1 %cmp11, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %tmp13 = load i32* %basq, align 4
  %cmp12 = icmp eq i32 %tmp13, 9
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false, %while.body
  store i32 1, i32* %retval
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  %tmp14 = load i32* %basq, align 4
  %cmp15 = icmp ne i32 %tmp14, 13
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  br label %while.end

if.end17:                                         ; preds = %if.end14
  %tmp15 = load i32* %ndir, align 4
  %tmp16 = load i32* %a_sq, align 4
  %add18 = add nsw i32 %tmp16, %tmp15
  store i32 %add18, i32* %a_sq, align 4
  %tmp17 = load i32* %a_sq, align 4
  %idxprom19 = sext i32 %tmp17 to i64
  %arrayidx20 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom19
  %tmp18 = load i32* %arrayidx20, align 4
  store i32 %tmp18, i32* %basq, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then16, %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %tmp19 = load i32* %i, align 4
  %inc = add nsw i32 %tmp19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc32, %for.end
  %tmp20 = load i32* %i, align 4
  %cmp22 = icmp slt i32 %tmp20, 8
  br i1 %cmp22, label %for.body23, label %for.end34

for.body23:                                       ; preds = %for.cond21
  %tmp21 = load i32* %square.addr, align 4
  %tmp22 = load i32* %i, align 4
  %idxprom24 = sext i32 %tmp22 to i64
  %arrayidx25 = getelementptr inbounds [8 x i32]* @is_attacked.knight_o, i32 0, i64 %idxprom24
  %tmp23 = load i32* %arrayidx25, align 4
  %add26 = add nsw i32 %tmp21, %tmp23
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom27
  %tmp24 = load i32* %arrayidx28, align 4
  %cmp29 = icmp eq i32 %tmp24, 3
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %for.body23
  store i32 1, i32* %retval
  br label %return

if.end31:                                         ; preds = %for.body23
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %tmp25 = load i32* %i, align 4
  %inc33 = add nsw i32 %tmp25, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond21

for.end34:                                        ; preds = %for.cond21
  store i32 0, i32* %i, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc61, %for.end34
  %tmp26 = load i32* %i, align 4
  %cmp36 = icmp slt i32 %tmp26, 4
  br i1 %cmp36, label %for.body37, label %for.end63

for.body37:                                       ; preds = %for.cond35
  %tmp27 = load i32* %i, align 4
  %idxprom38 = sext i32 %tmp27 to i64
  %arrayidx39 = getelementptr inbounds [4 x i32]* @is_attacked.rook_o, i32 0, i64 %idxprom38
  %tmp28 = load i32* %arrayidx39, align 4
  store i32 %tmp28, i32* %ndir, align 4
  %tmp29 = load i32* %square.addr, align 4
  %tmp30 = load i32* %ndir, align 4
  %add40 = add nsw i32 %tmp29, %tmp30
  store i32 %add40, i32* %a_sq, align 4
  %tmp31 = load i32* %a_sq, align 4
  %idxprom41 = sext i32 %tmp31 to i64
  %arrayidx42 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom41
  %tmp32 = load i32* %arrayidx42, align 4
  store i32 %tmp32, i32* %basq, align 4
  %tmp33 = load i32* %basq, align 4
  %cmp43 = icmp eq i32 %tmp33, 5
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %for.body37
  store i32 1, i32* %retval
  br label %return

if.end45:                                         ; preds = %for.body37
  br label %while.cond46

while.cond46:                                     ; preds = %if.end56, %if.end45
  %tmp34 = load i32* %basq, align 4
  %cmp47 = icmp ne i32 %tmp34, 0
  br i1 %cmp47, label %while.body48, label %while.end60

while.body48:                                     ; preds = %while.cond46
  %tmp35 = load i32* %basq, align 4
  %cmp49 = icmp eq i32 %tmp35, 7
  br i1 %cmp49, label %if.then52, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %while.body48
  %tmp36 = load i32* %basq, align 4
  %cmp51 = icmp eq i32 %tmp36, 9
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %lor.lhs.false50, %while.body48
  store i32 1, i32* %retval
  br label %return

if.end53:                                         ; preds = %lor.lhs.false50
  %tmp37 = load i32* %basq, align 4
  %cmp54 = icmp ne i32 %tmp37, 13
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end53
  br label %while.end60

if.end56:                                         ; preds = %if.end53
  %tmp38 = load i32* %ndir, align 4
  %tmp39 = load i32* %a_sq, align 4
  %add57 = add nsw i32 %tmp39, %tmp38
  store i32 %add57, i32* %a_sq, align 4
  %tmp40 = load i32* %a_sq, align 4
  %idxprom58 = sext i32 %tmp40 to i64
  %arrayidx59 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom58
  %tmp41 = load i32* %arrayidx59, align 4
  store i32 %tmp41, i32* %basq, align 4
  br label %while.cond46

while.end60:                                      ; preds = %if.then55, %while.cond46
  br label %for.inc61

for.inc61:                                        ; preds = %while.end60
  %tmp42 = load i32* %i, align 4
  %inc62 = add nsw i32 %tmp42, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond35

for.end63:                                        ; preds = %for.cond35
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc96, %if.else
  %tmp43 = load i32* %i, align 4
  %cmp65 = icmp slt i32 %tmp43, 4
  br i1 %cmp65, label %for.body66, label %for.end98

for.body66:                                       ; preds = %for.cond64
  %tmp44 = load i32* %i, align 4
  %idxprom67 = sext i32 %tmp44 to i64
  %arrayidx68 = getelementptr inbounds [4 x i32]* @is_attacked.bishop_o, i32 0, i64 %idxprom67
  %tmp45 = load i32* %arrayidx68, align 4
  store i32 %tmp45, i32* %ndir, align 4
  %tmp46 = load i32* %square.addr, align 4
  %tmp47 = load i32* %ndir, align 4
  %add69 = add nsw i32 %tmp46, %tmp47
  store i32 %add69, i32* %a_sq, align 4
  %tmp48 = load i32* %a_sq, align 4
  %idxprom70 = sext i32 %tmp48 to i64
  %arrayidx71 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom70
  %tmp49 = load i32* %arrayidx71, align 4
  store i32 %tmp49, i32* %basq, align 4
  %tmp50 = load i32* %basq, align 4
  %cmp72 = icmp eq i32 %tmp50, 2
  br i1 %cmp72, label %land.lhs.true73, label %if.end77

land.lhs.true73:                                  ; preds = %for.body66
  %tmp51 = load i32* %i, align 4
  %and74 = and i32 %tmp51, 1
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %land.lhs.true73
  store i32 1, i32* %retval
  br label %return

if.end77:                                         ; preds = %land.lhs.true73, %for.body66
  %tmp52 = load i32* %basq, align 4
  %cmp78 = icmp eq i32 %tmp52, 6
  br i1 %cmp78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end77
  store i32 1, i32* %retval
  br label %return

if.end80:                                         ; preds = %if.end77
  br label %while.cond81

while.cond81:                                     ; preds = %if.end91, %if.end80
  %tmp53 = load i32* %basq, align 4
  %cmp82 = icmp ne i32 %tmp53, 0
  br i1 %cmp82, label %while.body83, label %while.end95

while.body83:                                     ; preds = %while.cond81
  %tmp54 = load i32* %basq, align 4
  %cmp84 = icmp eq i32 %tmp54, 12
  br i1 %cmp84, label %if.then87, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %while.body83
  %tmp55 = load i32* %basq, align 4
  %cmp86 = icmp eq i32 %tmp55, 10
  br i1 %cmp86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %lor.lhs.false85, %while.body83
  store i32 1, i32* %retval
  br label %return

if.end88:                                         ; preds = %lor.lhs.false85
  %tmp56 = load i32* %basq, align 4
  %cmp89 = icmp ne i32 %tmp56, 13
  br i1 %cmp89, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end88
  br label %while.end95

if.end91:                                         ; preds = %if.end88
  %tmp57 = load i32* %ndir, align 4
  %tmp58 = load i32* %a_sq, align 4
  %add92 = add nsw i32 %tmp58, %tmp57
  store i32 %add92, i32* %a_sq, align 4
  %tmp59 = load i32* %a_sq, align 4
  %idxprom93 = sext i32 %tmp59 to i64
  %arrayidx94 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom93
  %tmp60 = load i32* %arrayidx94, align 4
  store i32 %tmp60, i32* %basq, align 4
  br label %while.cond81

while.end95:                                      ; preds = %if.then90, %while.cond81
  br label %for.inc96

for.inc96:                                        ; preds = %while.end95
  %tmp61 = load i32* %i, align 4
  %inc97 = add nsw i32 %tmp61, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond64

for.end98:                                        ; preds = %for.cond64
  store i32 0, i32* %i, align 4
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc110, %for.end98
  %tmp62 = load i32* %i, align 4
  %cmp100 = icmp slt i32 %tmp62, 8
  br i1 %cmp100, label %for.body101, label %for.end112

for.body101:                                      ; preds = %for.cond99
  %tmp63 = load i32* %square.addr, align 4
  %tmp64 = load i32* %i, align 4
  %idxprom102 = sext i32 %tmp64 to i64
  %arrayidx103 = getelementptr inbounds [8 x i32]* @is_attacked.knight_o, i32 0, i64 %idxprom102
  %tmp65 = load i32* %arrayidx103, align 4
  %add104 = add nsw i32 %tmp63, %tmp65
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom105
  %tmp66 = load i32* %arrayidx106, align 4
  %cmp107 = icmp eq i32 %tmp66, 4
  br i1 %cmp107, label %if.then108, label %if.end109

if.then108:                                       ; preds = %for.body101
  store i32 1, i32* %retval
  br label %return

if.end109:                                        ; preds = %for.body101
  br label %for.inc110

for.inc110:                                       ; preds = %if.end109
  %tmp67 = load i32* %i, align 4
  %inc111 = add nsw i32 %tmp67, 1
  store i32 %inc111, i32* %i, align 4
  br label %for.cond99

for.end112:                                       ; preds = %for.cond99
  store i32 0, i32* %i, align 4
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc141, %for.end112
  %tmp68 = load i32* %i, align 4
  %cmp114 = icmp slt i32 %tmp68, 4
  br i1 %cmp114, label %for.body115, label %for.end143

for.body115:                                      ; preds = %for.cond113
  %tmp69 = load i32* %i, align 4
  %idxprom116 = sext i32 %tmp69 to i64
  %arrayidx117 = getelementptr inbounds [4 x i32]* @is_attacked.rook_o, i32 0, i64 %idxprom116
  %tmp70 = load i32* %arrayidx117, align 4
  store i32 %tmp70, i32* %ndir, align 4
  %tmp71 = load i32* %square.addr, align 4
  %tmp72 = load i32* %i, align 4
  %idxprom118 = sext i32 %tmp72 to i64
  %arrayidx119 = getelementptr inbounds [4 x i32]* @is_attacked.rook_o, i32 0, i64 %idxprom118
  %tmp73 = load i32* %arrayidx119, align 4
  %add120 = add nsw i32 %tmp71, %tmp73
  store i32 %add120, i32* %a_sq, align 4
  %tmp74 = load i32* %a_sq, align 4
  %idxprom121 = sext i32 %tmp74 to i64
  %arrayidx122 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom121
  %tmp75 = load i32* %arrayidx122, align 4
  store i32 %tmp75, i32* %basq, align 4
  %tmp76 = load i32* %basq, align 4
  %cmp123 = icmp eq i32 %tmp76, 6
  br i1 %cmp123, label %if.then124, label %if.end125

if.then124:                                       ; preds = %for.body115
  store i32 1, i32* %retval
  br label %return

if.end125:                                        ; preds = %for.body115
  br label %while.cond126

while.cond126:                                    ; preds = %if.end136, %if.end125
  %tmp77 = load i32* %basq, align 4
  %cmp127 = icmp ne i32 %tmp77, 0
  br i1 %cmp127, label %while.body128, label %while.end140

while.body128:                                    ; preds = %while.cond126
  %tmp78 = load i32* %basq, align 4
  %cmp129 = icmp eq i32 %tmp78, 8
  br i1 %cmp129, label %if.then132, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %while.body128
  %tmp79 = load i32* %basq, align 4
  %cmp131 = icmp eq i32 %tmp79, 10
  br i1 %cmp131, label %if.then132, label %if.end133

if.then132:                                       ; preds = %lor.lhs.false130, %while.body128
  store i32 1, i32* %retval
  br label %return

if.end133:                                        ; preds = %lor.lhs.false130
  %tmp80 = load i32* %basq, align 4
  %cmp134 = icmp ne i32 %tmp80, 13
  br i1 %cmp134, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.end133
  br label %while.end140

if.end136:                                        ; preds = %if.end133
  %tmp81 = load i32* %ndir, align 4
  %tmp82 = load i32* %a_sq, align 4
  %add137 = add nsw i32 %tmp82, %tmp81
  store i32 %add137, i32* %a_sq, align 4
  %tmp83 = load i32* %a_sq, align 4
  %idxprom138 = sext i32 %tmp83 to i64
  %arrayidx139 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom138
  %tmp84 = load i32* %arrayidx139, align 4
  store i32 %tmp84, i32* %basq, align 4
  br label %while.cond126

while.end140:                                     ; preds = %if.then135, %while.cond126
  br label %for.inc141

for.inc141:                                       ; preds = %while.end140
  %tmp85 = load i32* %i, align 4
  %inc142 = add nsw i32 %tmp85, 1
  store i32 %inc142, i32* %i, align 4
  br label %for.cond113

for.end143:                                       ; preds = %for.cond113
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end143, %if.then132, %if.then124, %if.then108, %if.then87, %if.then79, %if.then76, %for.end63, %if.then52, %if.then44, %if.then30, %if.then13, %if.then8, %if.then6
  %tmp86 = load i32* %retval
  ret i32 %tmp86
}

; Function Attrs: nounwind uwtable
define i32 @nk_attacked(i32 %square, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %square.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %ndir = alloca i32, align 4
  %a_sq = alloca i32, align 4
  %basq = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %square, i32* %square.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %tmp = load i32* %color.addr, align 4
  %and = and i32 %tmp, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %tmp1 = load i32* %i, align 4
  %cmp = icmp slt i32 %tmp1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp2 = load i32* %i, align 4
  %idxprom = sext i32 %tmp2 to i64
  %arrayidx = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i32 0, i64 %idxprom
  %tmp3 = load i32* %arrayidx, align 4
  store i32 %tmp3, i32* %ndir, align 4
  %tmp4 = load i32* %square.addr, align 4
  %tmp5 = load i32* %ndir, align 4
  %add = add nsw i32 %tmp4, %tmp5
  store i32 %add, i32* %a_sq, align 4
  %tmp6 = load i32* %a_sq, align 4
  %idxprom1 = sext i32 %tmp6 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom1
  %tmp7 = load i32* %arrayidx2, align 4
  store i32 %tmp7, i32* %basq, align 4
  %tmp8 = load i32* %basq, align 4
  %cmp3 = icmp eq i32 %tmp8, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %tmp9 = load i32* %i, align 4
  %and4 = and i32 %tmp9, 1
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %if.end
  %tmp10 = load i32* %basq, align 4
  %cmp7 = icmp ne i32 %tmp10, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %tmp11 = load i32* %basq, align 4
  %cmp8 = icmp eq i32 %tmp11, 11
  br i1 %cmp8, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %tmp12 = load i32* %basq, align 4
  %cmp9 = icmp eq i32 %tmp12, 9
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %while.body
  store i32 1, i32* %retval
  br label %return

if.end11:                                         ; preds = %lor.lhs.false
  %tmp13 = load i32* %basq, align 4
  %cmp12 = icmp ne i32 %tmp13, 13
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  br label %while.end

if.end14:                                         ; preds = %if.end11
  %tmp14 = load i32* %ndir, align 4
  %tmp15 = load i32* %a_sq, align 4
  %add15 = add nsw i32 %tmp15, %tmp14
  store i32 %add15, i32* %a_sq, align 4
  %tmp16 = load i32* %a_sq, align 4
  %idxprom16 = sext i32 %tmp16 to i64
  %arrayidx17 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom16
  %tmp17 = load i32* %arrayidx17, align 4
  store i32 %tmp17, i32* %basq, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then13, %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %tmp18 = load i32* %i, align 4
  %inc = add nsw i32 %tmp18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc29, %for.end
  %tmp19 = load i32* %i, align 4
  %cmp19 = icmp slt i32 %tmp19, 8
  br i1 %cmp19, label %for.body20, label %for.end31

for.body20:                                       ; preds = %for.cond18
  %tmp20 = load i32* %square.addr, align 4
  %tmp21 = load i32* %i, align 4
  %idxprom21 = sext i32 %tmp21 to i64
  %arrayidx22 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i32 0, i64 %idxprom21
  %tmp22 = load i32* %arrayidx22, align 4
  %add23 = add nsw i32 %tmp20, %tmp22
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom24
  %tmp23 = load i32* %arrayidx25, align 4
  %cmp26 = icmp eq i32 %tmp23, 3
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.body20
  store i32 1, i32* %retval
  br label %return

if.end28:                                         ; preds = %for.body20
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %tmp24 = load i32* %i, align 4
  %inc30 = add nsw i32 %tmp24, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond18

for.end31:                                        ; preds = %for.cond18
  store i32 0, i32* %i, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc55, %for.end31
  %tmp25 = load i32* %i, align 4
  %cmp33 = icmp slt i32 %tmp25, 4
  br i1 %cmp33, label %for.body34, label %for.end57

for.body34:                                       ; preds = %for.cond32
  %tmp26 = load i32* %i, align 4
  %idxprom35 = sext i32 %tmp26 to i64
  %arrayidx36 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i32 0, i64 %idxprom35
  %tmp27 = load i32* %arrayidx36, align 4
  store i32 %tmp27, i32* %ndir, align 4
  %tmp28 = load i32* %square.addr, align 4
  %tmp29 = load i32* %ndir, align 4
  %add37 = add nsw i32 %tmp28, %tmp29
  store i32 %add37, i32* %a_sq, align 4
  %tmp30 = load i32* %a_sq, align 4
  %idxprom38 = sext i32 %tmp30 to i64
  %arrayidx39 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom38
  %tmp31 = load i32* %arrayidx39, align 4
  store i32 %tmp31, i32* %basq, align 4
  br label %while.cond40

while.cond40:                                     ; preds = %if.end50, %for.body34
  %tmp32 = load i32* %basq, align 4
  %cmp41 = icmp ne i32 %tmp32, 0
  br i1 %cmp41, label %while.body42, label %while.end54

while.body42:                                     ; preds = %while.cond40
  %tmp33 = load i32* %basq, align 4
  %cmp43 = icmp eq i32 %tmp33, 7
  br i1 %cmp43, label %if.then46, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %while.body42
  %tmp34 = load i32* %basq, align 4
  %cmp45 = icmp eq i32 %tmp34, 9
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %lor.lhs.false44, %while.body42
  store i32 1, i32* %retval
  br label %return

if.end47:                                         ; preds = %lor.lhs.false44
  %tmp35 = load i32* %basq, align 4
  %cmp48 = icmp ne i32 %tmp35, 13
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end47
  br label %while.end54

if.end50:                                         ; preds = %if.end47
  %tmp36 = load i32* %ndir, align 4
  %tmp37 = load i32* %a_sq, align 4
  %add51 = add nsw i32 %tmp37, %tmp36
  store i32 %add51, i32* %a_sq, align 4
  %tmp38 = load i32* %a_sq, align 4
  %idxprom52 = sext i32 %tmp38 to i64
  %arrayidx53 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom52
  %tmp39 = load i32* %arrayidx53, align 4
  store i32 %tmp39, i32* %basq, align 4
  br label %while.cond40

while.end54:                                      ; preds = %if.then49, %while.cond40
  br label %for.inc55

for.inc55:                                        ; preds = %while.end54
  %tmp40 = load i32* %i, align 4
  %inc56 = add nsw i32 %tmp40, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond32

for.end57:                                        ; preds = %for.cond32
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc87, %if.else
  %tmp41 = load i32* %i, align 4
  %cmp59 = icmp slt i32 %tmp41, 4
  br i1 %cmp59, label %for.body60, label %for.end89

for.body60:                                       ; preds = %for.cond58
  %tmp42 = load i32* %i, align 4
  %idxprom61 = sext i32 %tmp42 to i64
  %arrayidx62 = getelementptr inbounds [4 x i32]* @nk_attacked.bishop_o, i32 0, i64 %idxprom61
  %tmp43 = load i32* %arrayidx62, align 4
  store i32 %tmp43, i32* %ndir, align 4
  %tmp44 = load i32* %square.addr, align 4
  %tmp45 = load i32* %ndir, align 4
  %add63 = add nsw i32 %tmp44, %tmp45
  store i32 %add63, i32* %a_sq, align 4
  %tmp46 = load i32* %a_sq, align 4
  %idxprom64 = sext i32 %tmp46 to i64
  %arrayidx65 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom64
  %tmp47 = load i32* %arrayidx65, align 4
  store i32 %tmp47, i32* %basq, align 4
  %tmp48 = load i32* %basq, align 4
  %cmp66 = icmp eq i32 %tmp48, 2
  br i1 %cmp66, label %land.lhs.true67, label %if.end71

land.lhs.true67:                                  ; preds = %for.body60
  %tmp49 = load i32* %i, align 4
  %and68 = and i32 %tmp49, 1
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.end71, label %if.then70

if.then70:                                        ; preds = %land.lhs.true67
  store i32 1, i32* %retval
  br label %return

if.end71:                                         ; preds = %land.lhs.true67, %for.body60
  br label %while.cond72

while.cond72:                                     ; preds = %if.end82, %if.end71
  %tmp50 = load i32* %basq, align 4
  %cmp73 = icmp ne i32 %tmp50, 0
  br i1 %cmp73, label %while.body74, label %while.end86

while.body74:                                     ; preds = %while.cond72
  %tmp51 = load i32* %basq, align 4
  %cmp75 = icmp eq i32 %tmp51, 12
  br i1 %cmp75, label %if.then78, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %while.body74
  %tmp52 = load i32* %basq, align 4
  %cmp77 = icmp eq i32 %tmp52, 10
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %lor.lhs.false76, %while.body74
  store i32 1, i32* %retval
  br label %return

if.end79:                                         ; preds = %lor.lhs.false76
  %tmp53 = load i32* %basq, align 4
  %cmp80 = icmp ne i32 %tmp53, 13
  br i1 %cmp80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end79
  br label %while.end86

if.end82:                                         ; preds = %if.end79
  %tmp54 = load i32* %ndir, align 4
  %tmp55 = load i32* %a_sq, align 4
  %add83 = add nsw i32 %tmp55, %tmp54
  store i32 %add83, i32* %a_sq, align 4
  %tmp56 = load i32* %a_sq, align 4
  %idxprom84 = sext i32 %tmp56 to i64
  %arrayidx85 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom84
  %tmp57 = load i32* %arrayidx85, align 4
  store i32 %tmp57, i32* %basq, align 4
  br label %while.cond72

while.end86:                                      ; preds = %if.then81, %while.cond72
  br label %for.inc87

for.inc87:                                        ; preds = %while.end86
  %tmp58 = load i32* %i, align 4
  %inc88 = add nsw i32 %tmp58, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond58

for.end89:                                        ; preds = %for.cond58
  store i32 0, i32* %i, align 4
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc101, %for.end89
  %tmp59 = load i32* %i, align 4
  %cmp91 = icmp slt i32 %tmp59, 8
  br i1 %cmp91, label %for.body92, label %for.end103

for.body92:                                       ; preds = %for.cond90
  %tmp60 = load i32* %square.addr, align 4
  %tmp61 = load i32* %i, align 4
  %idxprom93 = sext i32 %tmp61 to i64
  %arrayidx94 = getelementptr inbounds [8 x i32]* @nk_attacked.knight_o, i32 0, i64 %idxprom93
  %tmp62 = load i32* %arrayidx94, align 4
  %add95 = add nsw i32 %tmp60, %tmp62
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom96
  %tmp63 = load i32* %arrayidx97, align 4
  %cmp98 = icmp eq i32 %tmp63, 4
  br i1 %cmp98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %for.body92
  store i32 1, i32* %retval
  br label %return

if.end100:                                        ; preds = %for.body92
  br label %for.inc101

for.inc101:                                       ; preds = %if.end100
  %tmp64 = load i32* %i, align 4
  %inc102 = add nsw i32 %tmp64, 1
  store i32 %inc102, i32* %i, align 4
  br label %for.cond90

for.end103:                                       ; preds = %for.cond90
  store i32 0, i32* %i, align 4
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc129, %for.end103
  %tmp65 = load i32* %i, align 4
  %cmp105 = icmp slt i32 %tmp65, 4
  br i1 %cmp105, label %for.body106, label %for.end131

for.body106:                                      ; preds = %for.cond104
  %tmp66 = load i32* %i, align 4
  %idxprom107 = sext i32 %tmp66 to i64
  %arrayidx108 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i32 0, i64 %idxprom107
  %tmp67 = load i32* %arrayidx108, align 4
  store i32 %tmp67, i32* %ndir, align 4
  %tmp68 = load i32* %square.addr, align 4
  %tmp69 = load i32* %i, align 4
  %idxprom109 = sext i32 %tmp69 to i64
  %arrayidx110 = getelementptr inbounds [4 x i32]* @nk_attacked.rook_o, i32 0, i64 %idxprom109
  %tmp70 = load i32* %arrayidx110, align 4
  %add111 = add nsw i32 %tmp68, %tmp70
  store i32 %add111, i32* %a_sq, align 4
  %tmp71 = load i32* %a_sq, align 4
  %idxprom112 = sext i32 %tmp71 to i64
  %arrayidx113 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom112
  %tmp72 = load i32* %arrayidx113, align 4
  store i32 %tmp72, i32* %basq, align 4
  br label %while.cond114

while.cond114:                                    ; preds = %if.end124, %for.body106
  %tmp73 = load i32* %basq, align 4
  %cmp115 = icmp ne i32 %tmp73, 0
  br i1 %cmp115, label %while.body116, label %while.end128

while.body116:                                    ; preds = %while.cond114
  %tmp74 = load i32* %basq, align 4
  %cmp117 = icmp eq i32 %tmp74, 8
  br i1 %cmp117, label %if.then120, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %while.body116
  %tmp75 = load i32* %basq, align 4
  %cmp119 = icmp eq i32 %tmp75, 10
  br i1 %cmp119, label %if.then120, label %if.end121

if.then120:                                       ; preds = %lor.lhs.false118, %while.body116
  store i32 1, i32* %retval
  br label %return

if.end121:                                        ; preds = %lor.lhs.false118
  %tmp76 = load i32* %basq, align 4
  %cmp122 = icmp ne i32 %tmp76, 13
  br i1 %cmp122, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end121
  br label %while.end128

if.end124:                                        ; preds = %if.end121
  %tmp77 = load i32* %ndir, align 4
  %tmp78 = load i32* %a_sq, align 4
  %add125 = add nsw i32 %tmp78, %tmp77
  store i32 %add125, i32* %a_sq, align 4
  %tmp79 = load i32* %a_sq, align 4
  %idxprom126 = sext i32 %tmp79 to i64
  %arrayidx127 = getelementptr inbounds [144 x i32]* @board, i32 0, i64 %idxprom126
  %tmp80 = load i32* %arrayidx127, align 4
  store i32 %tmp80, i32* %basq, align 4
  br label %while.cond114

while.end128:                                     ; preds = %if.then123, %while.cond114
  br label %for.inc129

for.inc129:                                       ; preds = %while.end128
  %tmp81 = load i32* %i, align 4
  %inc130 = add nsw i32 %tmp81, 1
  store i32 %inc130, i32* %i, align 4
  br label %for.cond104

for.end131:                                       ; preds = %for.cond104
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end131, %if.then120, %if.then99, %if.then78, %if.then70, %for.end57, %if.then46, %if.then27, %if.then10, %if.then6
  %tmp82 = load i32* %retval
  ret i32 %tmp82
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.5 (trunk 195335) (llvm/trunk 195334)"}

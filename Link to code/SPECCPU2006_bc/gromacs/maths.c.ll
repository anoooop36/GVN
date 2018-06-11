; ModuleID = 'maths.c.bc'
source_filename = "maths.c.bc"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { float }
%union.anon.0 = type { float }

; Function Attrs: nounwind uwtable
define i32 @gmx_nint(float %a) #0 {
entry:
  %a.addr = alloca float, align 4
  %half = alloca float, align 4
  %result = alloca i32, align 4
  store float %a, float* %a.addr, align 4
  store float 5.000000e-01, float* %half, align 4
  %tmp = load float, float* %a.addr, align 4
  %conv = fpext float %tmp to double
  %cmp = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp1 = load float, float* %a.addr, align 4
  %sub = fsub float %tmp1, 5.000000e-01
  %conv2 = fptosi float %sub to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp2 = load float, float* %a.addr, align 4
  %add = fadd float %tmp2, 5.000000e-01
  %conv3 = fptosi float %add to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv2, %cond.true ], [ %conv3, %cond.false ]
  store i32 %cond, i32* %result, align 4
  %tmp3 = load i32, i32* %result, align 4
  ret i32 %tmp3
}

; Function Attrs: nounwind uwtable
define float @sign(float %x, float %y) #0 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  store float %y, float* %y.addr, align 4
  %tmp = load float, float* %y.addr, align 4
  %cmp = fcmp olt float %tmp, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tmp1 = load float, float* %x.addr, align 4
  %conv = fpext float %tmp1 to double
  %call = call double @fabs(double %conv) #3
  %sub = fsub double -0.000000e+00, %call
  %conv1 = fptrunc double %sub to float
  store float %conv1, float* %retval
  br label %return

if.else:                                          ; preds = %entry
  %tmp2 = load float, float* %x.addr, align 4
  %conv2 = fpext float %tmp2 to double
  %call3 = call double @fabs(double %conv2) #3
  %conv4 = fptrunc double %call3 to float
  store float %conv4, float* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %tmp3 = load float, float* %retval
  ret float %tmp3
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

; Function Attrs: nounwind uwtable
define float @gmx_erf(float %x) #0 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca float, align 4
  %hx = alloca i32, align 4
  %ix = alloca i32, align 4
  %i = alloca i32, align 4
  %R = alloca float, align 4
  %S = alloca float, align 4
  %P = alloca float, align 4
  %Q = alloca float, align 4
  %s = alloca float, align 4
  %y = alloca float, align 4
  %z = alloca float, align 4
  %r = alloca float, align 4
  %conv = alloca %union.anon, align 4
  store float %x, float* %x.addr, align 4
  %tmp = load float, float* %x.addr, align 4
  %f = bitcast %union.anon* %conv to float*
  store float %tmp, float* %f, align 4
  %i1 = bitcast %union.anon* %conv to i32*
  %tmp1 = load i32, i32* %i1, align 4
  store i32 %tmp1, i32* %hx, align 4
  %tmp2 = load i32, i32* %hx, align 4
  %and = and i32 %tmp2, 2147483647
  store i32 %and, i32* %ix, align 4
  %tmp3 = load i32, i32* %ix, align 4
  %cmp = icmp sge i32 %tmp3, 2139095040
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp4 = load i32, i32* %hx, align 4
  %shr = lshr i32 %tmp4, 31
  %shl = shl i32 %shr, 1
  store i32 %shl, i32* %i, align 4
  %tmp5 = load i32, i32* %i, align 4
  %sub = sub nsw i32 1, %tmp5
  %conv3 = sitofp i32 %sub to float
  %tmp6 = load float, float* %x.addr, align 4
  %div = fdiv float 1.000000e+00, %tmp6
  %add = fadd float %conv3, %div
  store float %add, float* %retval
  br label %return

if.end:                                           ; preds = %entry
  %tmp7 = load i32, i32* %ix, align 4
  %cmp4 = icmp slt i32 %tmp7, 1062731776
  br i1 %cmp4, label %if.then6, label %if.end42

if.then6:                                         ; preds = %if.end
  %tmp8 = load i32, i32* %ix, align 4
  %cmp7 = icmp slt i32 %tmp8, 830472192
  br i1 %cmp7, label %if.then9, label %if.end19

if.then9:                                         ; preds = %if.then6
  %tmp9 = load i32, i32* %ix, align 4
  %cmp10 = icmp slt i32 %tmp9, 67108864
  br i1 %cmp10, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.then9
  %tmp10 = load float, float* %x.addr, align 4
  %mul = fmul float 8.000000e+00, %tmp10
  %tmp11 = load float, float* %x.addr, align 4
  %mul13 = fmul float 0x3FF06EBA80000000, %tmp11
  %add14 = fadd float %mul, %mul13
  %mul15 = fmul float 1.250000e-01, %add14
  store float %mul15, float* %retval
  br label %return

if.end16:                                         ; preds = %if.then9
  %tmp12 = load float, float* %x.addr, align 4
  %tmp13 = load float, float* %x.addr, align 4
  %mul17 = fmul float 0x3FC06EBA80000000, %tmp13
  %add18 = fadd float %tmp12, %mul17
  store float %add18, float* %retval
  br label %return

if.end19:                                         ; preds = %if.then6
  %tmp14 = load float, float* %x.addr, align 4
  %tmp15 = load float, float* %x.addr, align 4
  %mul20 = fmul float %tmp14, %tmp15
  store float %mul20, float* %z, align 4
  %tmp16 = load float, float* %z, align 4
  %tmp17 = load float, float* %z, align 4
  %tmp18 = load float, float* %z, align 4
  %tmp19 = load float, float* %z, align 4
  %mul21 = fmul float %tmp19, 0xBEF8EAD620000000
  %add22 = fadd float 0xBF77A29120000000, %mul21
  %mul23 = fmul float %tmp18, %add22
  %add24 = fadd float 0xBF9D2A51E0000000, %mul23
  %mul25 = fmul float %tmp17, %add24
  %add26 = fadd float 0xBFD4CD7D60000000, %mul25
  %mul27 = fmul float %tmp16, %add26
  %add28 = fadd float 0x3FC06EBA80000000, %mul27
  store float %add28, float* %r, align 4
  %tmp20 = load float, float* %z, align 4
  %tmp21 = load float, float* %z, align 4
  %tmp22 = load float, float* %z, align 4
  %tmp23 = load float, float* %z, align 4
  %tmp24 = load float, float* %z, align 4
  %mul29 = fmul float %tmp24, 0xBED09C4340000000
  %add30 = fadd float 0x3F215DC920000000, %mul29
  %mul31 = fmul float %tmp23, %add30
  %add32 = fadd float 0x3F74D022C0000000, %mul31
  %mul33 = fmul float %tmp22, %add32
  %add34 = fadd float 0x3FB0A54C60000000, %mul33
  %mul35 = fmul float %tmp21, %add34
  %add36 = fadd float 0x3FD97779C0000000, %mul35
  %mul37 = fmul float %tmp20, %add36
  %add38 = fadd float 1.000000e+00, %mul37
  store float %add38, float* %s, align 4
  %tmp25 = load float, float* %r, align 4
  %tmp26 = load float, float* %s, align 4
  %div39 = fdiv float %tmp25, %tmp26
  store float %div39, float* %y, align 4
  %tmp27 = load float, float* %x.addr, align 4
  %tmp28 = load float, float* %x.addr, align 4
  %tmp29 = load float, float* %y, align 4
  %mul40 = fmul float %tmp28, %tmp29
  %add41 = fadd float %tmp27, %mul40
  store float %add41, float* %retval
  br label %return

if.end42:                                         ; preds = %if.end
  %tmp30 = load i32, i32* %ix, align 4
  %cmp43 = icmp slt i32 %tmp30, 1067450368
  br i1 %cmp43, label %if.then45, label %if.end80

if.then45:                                        ; preds = %if.end42
  %tmp31 = load float, float* %x.addr, align 4
  %conv46 = fpext float %tmp31 to double
  %call = call double @fabs(double %conv46) #3
  %sub47 = fsub double %call, 1.000000e+00
  %conv48 = fptrunc double %sub47 to float
  store float %conv48, float* %s, align 4
  %tmp32 = load float, float* %s, align 4
  %tmp33 = load float, float* %s, align 4
  %tmp34 = load float, float* %s, align 4
  %tmp35 = load float, float* %s, align 4
  %tmp36 = load float, float* %s, align 4
  %tmp37 = load float, float* %s, align 4
  %mul49 = fmul float %tmp37, 0xBF61BF3800000000
  %add50 = fadd float 0x3FA22A3660000000, %mul49
  %mul51 = fmul float %tmp36, %add50
  %add52 = fadd float 0xBFBC639840000000, %mul51
  %mul53 = fmul float %tmp35, %add52
  %add54 = fadd float 0x3FD45FCA80000000, %mul53
  %mul55 = fmul float %tmp34, %add54
  %add56 = fadd float 0xBFD7D24100000000, %mul55
  %mul57 = fmul float %tmp33, %add56
  %add58 = fadd float 0x3FDA8D00A0000000, %mul57
  %mul59 = fmul float %tmp32, %add58
  %add60 = fadd float 0xBF6359B8C0000000, %mul59
  store float %add60, float* %P, align 4
  %tmp38 = load float, float* %s, align 4
  %tmp39 = load float, float* %s, align 4
  %tmp40 = load float, float* %s, align 4
  %tmp41 = load float, float* %s, align 4
  %tmp42 = load float, float* %s, align 4
  %tmp43 = load float, float* %s, align 4
  %mul61 = fmul float %tmp43, 0x3F888B5460000000
  %add62 = fadd float 0x3F8BEDC260000000, %mul61
  %mul63 = fmul float %tmp42, %add62
  %add64 = fadd float 0x3FC02660E0000000, %mul63
  %mul65 = fmul float %tmp41, %add64
  %add66 = fadd float 0x3FB2635CE0000000, %mul65
  %mul67 = fmul float %tmp40, %add66
  %add68 = fadd float 0x3FE14AF0A0000000, %mul67
  %mul69 = fmul float %tmp39, %add68
  %add70 = fadd float 0x3FBB3E6620000000, %mul69
  %mul71 = fmul float %tmp38, %add70
  %add72 = fadd float 1.000000e+00, %mul71
  store float %add72, float* %Q, align 4
  %tmp44 = load i32, i32* %hx, align 4
  %cmp73 = icmp sge i32 %tmp44, 0
  br i1 %cmp73, label %if.then75, label %if.else

if.then75:                                        ; preds = %if.then45
  %tmp45 = load float, float* %P, align 4
  %tmp46 = load float, float* %Q, align 4
  %div76 = fdiv float %tmp45, %tmp46
  %add77 = fadd float 0x3FEB0AC160000000, %div76
  store float %add77, float* %retval
  br label %return

if.else:                                          ; preds = %if.then45
  %tmp47 = load float, float* %P, align 4
  %tmp48 = load float, float* %Q, align 4
  %div78 = fdiv float %tmp47, %tmp48
  %sub79 = fsub float 0xBFEB0AC160000000, %div78
  store float %sub79, float* %retval
  br label %return

if.end80:                                         ; preds = %if.end42
  %tmp49 = load i32, i32* %ix, align 4
  %cmp81 = icmp sge i32 %tmp49, 1086324736
  br i1 %cmp81, label %if.then83, label %if.end88

if.then83:                                        ; preds = %if.end80
  %tmp50 = load i32, i32* %hx, align 4
  %cmp84 = icmp sge i32 %tmp50, 0
  br i1 %cmp84, label %if.then86, label %if.else87

if.then86:                                        ; preds = %if.then83
  store float 1.000000e+00, float* %retval
  br label %return

if.else87:                                        ; preds = %if.then83
  store float -1.000000e+00, float* %retval
  br label %return

if.end88:                                         ; preds = %if.end80
  %tmp51 = load float, float* %x.addr, align 4
  %conv89 = fpext float %tmp51 to double
  %call90 = call double @fabs(double %conv89) #3
  %conv91 = fptrunc double %call90 to float
  store float %conv91, float* %x.addr, align 4
  %tmp52 = load float, float* %x.addr, align 4
  %tmp53 = load float, float* %x.addr, align 4
  %mul92 = fmul float %tmp52, %tmp53
  %div93 = fdiv float 1.000000e+00, %mul92
  store float %div93, float* %s, align 4
  %tmp54 = load i32, i32* %ix, align 4
  %cmp94 = icmp slt i32 %tmp54, 1077336942
  br i1 %cmp94, label %if.then96, label %if.else127

if.then96:                                        ; preds = %if.end88
  %tmp55 = load float, float* %s, align 4
  %tmp56 = load float, float* %s, align 4
  %tmp57 = load float, float* %s, align 4
  %tmp58 = load float, float* %s, align 4
  %tmp59 = load float, float* %s, align 4
  %tmp60 = load float, float* %s, align 4
  %tmp61 = load float, float* %s, align 4
  %mul97 = fmul float %tmp61, 0xC023A0EFC0000000
  %add98 = fadd float 0xC054526560000000, %mul97
  %mul99 = fmul float %tmp60, %add98
  %add100 = fadd float 0xC067135CE0000000, %mul99
  %mul101 = fmul float %tmp59, %add100
  %add102 = fadd float 0xC0644CB180000000, %mul101
  %mul103 = fmul float %tmp58, %add102
  %add104 = fadd float 0xC04F300AE0000000, %mul103
  %mul105 = fmul float %tmp57, %add104
  %add106 = fadd float 0xC0251E0440000000, %mul105
  %mul107 = fmul float %tmp56, %add106
  %add108 = fadd float 0xBFE63416E0000000, %mul107
  %mul109 = fmul float %tmp55, %add108
  %add110 = fadd float 0xBF84341260000000, %mul109
  store float %add110, float* %R, align 4
  %tmp62 = load float, float* %s, align 4
  %tmp63 = load float, float* %s, align 4
  %tmp64 = load float, float* %s, align 4
  %tmp65 = load float, float* %s, align 4
  %tmp66 = load float, float* %s, align 4
  %tmp67 = load float, float* %s, align 4
  %tmp68 = load float, float* %s, align 4
  %tmp69 = load float, float* %s, align 4
  %mul111 = fmul float %tmp69, 0xBFAEEFF2E0000000
  %add112 = fadd float 0x401A47EF80000000, %mul111
  %mul113 = fmul float %tmp68, %add112
  %add114 = fadd float 0x405B28A3E0000000, %mul113
  %mul115 = fmul float %tmp67, %add114
  %add116 = fadd float 0x407AD02160000000, %mul115
  %mul117 = fmul float %tmp66, %add116
  %add118 = fadd float 0x40842B1920000000, %mul117
  %mul119 = fmul float %tmp65, %add118
  %add120 = fadd float 0x407B290DE0000000, %mul119
  %mul121 = fmul float %tmp64, %add120
  %add122 = fadd float 0x4061350C60000000, %mul121
  %mul123 = fmul float %tmp63, %add122
  %add124 = fadd float 0x4033A6B9C0000000, %mul123
  %mul125 = fmul float %tmp62, %add124
  %add126 = fadd float 1.000000e+00, %mul125
  store float %add126, float* %S, align 4
  br label %if.end154

if.else127:                                       ; preds = %if.end88
  %tmp70 = load float, float* %s, align 4
  %tmp71 = load float, float* %s, align 4
  %tmp72 = load float, float* %s, align 4
  %tmp73 = load float, float* %s, align 4
  %tmp74 = load float, float* %s, align 4
  %tmp75 = load float, float* %s, align 4
  %mul128 = fmul float %tmp75, 0xC07E384EA0000000
  %add129 = fadd float 0xC090046160000000, %mul128
  %mul130 = fmul float %tmp74, %add129
  %add131 = fadd float 0xC083EC8820000000, %mul130
  %mul132 = fmul float %tmp73, %add131
  %add133 = fadd float 0xC064145D40000000, %mul132
  %mul134 = fmul float %tmp72, %add133
  %add135 = fadd float 0xC031C20960000000, %mul134
  %mul136 = fmul float %tmp71, %add135
  %add137 = fadd float 0xBFE993BA80000000, %mul136
  %mul138 = fmul float %tmp70, %add137
  %add139 = fadd float 0xBF84341240000000, %mul138
  store float %add139, float* %R, align 4
  %tmp76 = load float, float* %s, align 4
  %tmp77 = load float, float* %s, align 4
  %tmp78 = load float, float* %s, align 4
  %tmp79 = load float, float* %s, align 4
  %tmp80 = load float, float* %s, align 4
  %tmp81 = load float, float* %s, align 4
  %tmp82 = load float, float* %s, align 4
  %mul140 = fmul float %tmp82, 0xC03670E240000000
  %add141 = fadd float 0x407DA874E0000000, %mul140
  %mul142 = fmul float %tmp81, %add141
  %add143 = fadd float 0x40A3F219C0000000, %mul142
  %mul144 = fmul float %tmp80, %add143
  %add145 = fadd float 0x40A8FFB760000000, %mul144
  %mul146 = fmul float %tmp79, %add145
  %add147 = fadd float 0x409802EB20000000, %mul146
  %mul148 = fmul float %tmp78, %add147
  %add149 = fadd float 0x40745CAE20000000, %mul148
  %mul150 = fmul float %tmp77, %add149
  %add151 = fadd float 0x403E568B20000000, %mul150
  %mul152 = fmul float %tmp76, %add151
  %add153 = fadd float 1.000000e+00, %mul152
  store float %add153, float* %S, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.else127, %if.then96
  %tmp83 = load float, float* %x.addr, align 4
  %f155 = bitcast %union.anon* %conv to float*
  store float %tmp83, float* %f155, align 4
  %i156 = bitcast %union.anon* %conv to i32*
  %tmp84 = load i32, i32* %i156, align 4
  %and157 = and i32 %tmp84, -4096
  %i158 = bitcast %union.anon* %conv to i32*
  store i32 %and157, i32* %i158, align 4
  %f159 = bitcast %union.anon* %conv to float*
  %tmp85 = load float, float* %f159, align 4
  store float %tmp85, float* %z, align 4
  %tmp86 = load float, float* %z, align 4
  %sub160 = fsub float -0.000000e+00, %tmp86
  %tmp87 = load float, float* %z, align 4
  %mul161 = fmul float %sub160, %tmp87
  %sub162 = fsub float %mul161, 5.625000e-01
  %conv163 = fpext float %sub162 to double
  %call164 = call double @exp(double %conv163) #4
  %tmp88 = load float, float* %z, align 4
  %tmp89 = load float, float* %x.addr, align 4
  %sub165 = fsub float %tmp88, %tmp89
  %tmp90 = load float, float* %z, align 4
  %tmp91 = load float, float* %x.addr, align 4
  %add166 = fadd float %tmp90, %tmp91
  %mul167 = fmul float %sub165, %add166
  %tmp92 = load float, float* %R, align 4
  %tmp93 = load float, float* %S, align 4
  %div168 = fdiv float %tmp92, %tmp93
  %add169 = fadd float %mul167, %div168
  %conv170 = fpext float %add169 to double
  %call171 = call double @exp(double %conv170) #4
  %mul172 = fmul double %call164, %call171
  %conv173 = fptrunc double %mul172 to float
  store float %conv173, float* %r, align 4
  %tmp94 = load i32, i32* %hx, align 4
  %cmp174 = icmp sge i32 %tmp94, 0
  br i1 %cmp174, label %if.then176, label %if.else179

if.then176:                                       ; preds = %if.end154
  %tmp95 = load float, float* %r, align 4
  %tmp96 = load float, float* %x.addr, align 4
  %div177 = fdiv float %tmp95, %tmp96
  %sub178 = fsub float 1.000000e+00, %div177
  store float %sub178, float* %retval
  br label %return

if.else179:                                       ; preds = %if.end154
  %tmp97 = load float, float* %r, align 4
  %tmp98 = load float, float* %x.addr, align 4
  %div180 = fdiv float %tmp97, %tmp98
  %sub181 = fsub float %div180, 1.000000e+00
  store float %sub181, float* %retval
  br label %return

return:                                           ; preds = %if.else179, %if.then176, %if.else87, %if.then86, %if.else, %if.then75, %if.end19, %if.end16, %if.then12, %if.then
  %tmp99 = load float, float* %retval
  ret float %tmp99
}

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind uwtable
define float @gmx_erfc(float %x) #0 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca float, align 4
  %hx = alloca i32, align 4
  %ix = alloca i32, align 4
  %R = alloca float, align 4
  %S = alloca float, align 4
  %P = alloca float, align 4
  %Q = alloca float, align 4
  %s = alloca float, align 4
  %y = alloca float, align 4
  %z = alloca float, align 4
  %r = alloca float, align 4
  %conv = alloca %union.anon.0, align 4
  store float %x, float* %x.addr, align 4
  %tmp = load float, float* %x.addr, align 4
  %f = bitcast %union.anon.0* %conv to float*
  store float %tmp, float* %f, align 4
  %i = bitcast %union.anon.0* %conv to i32*
  %tmp1 = load i32, i32* %i, align 4
  store i32 %tmp1, i32* %hx, align 4
  %tmp2 = load i32, i32* %hx, align 4
  %and = and i32 %tmp2, 2147483647
  store i32 %and, i32* %ix, align 4
  %tmp3 = load i32, i32* %ix, align 4
  %cmp = icmp sge i32 %tmp3, 2139095040
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp4 = load i32, i32* %hx, align 4
  %shr = lshr i32 %tmp4, 31
  %shl = shl i32 %shr, 1
  %conv2 = uitofp i32 %shl to float
  %tmp5 = load float, float* %x.addr, align 4
  %div = fdiv float 1.000000e+00, %tmp5
  %add = fadd float %conv2, %div
  store float %add, float* %retval
  br label %return

if.end:                                           ; preds = %entry
  %tmp6 = load i32, i32* %ix, align 4
  %cmp3 = icmp slt i32 %tmp6, 1062731776
  br i1 %cmp3, label %if.then5, label %if.end39

if.then5:                                         ; preds = %if.end
  %tmp7 = load i32, i32* %ix, align 4
  %cmp6 = icmp slt i32 %tmp7, 595591168
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then5
  %tmp8 = load float, float* %x.addr, align 4
  %sub = fsub float 1.000000e+00, %tmp8
  store float %sub, float* %retval
  br label %return

if.end9:                                          ; preds = %if.then5
  %tmp9 = load float, float* %x.addr, align 4
  %tmp10 = load float, float* %x.addr, align 4
  %mul = fmul float %tmp9, %tmp10
  store float %mul, float* %z, align 4
  %tmp11 = load float, float* %z, align 4
  %tmp12 = load float, float* %z, align 4
  %tmp13 = load float, float* %z, align 4
  %tmp14 = load float, float* %z, align 4
  %mul10 = fmul float %tmp14, 0xBEF8EAD620000000
  %add11 = fadd float 0xBF77A29120000000, %mul10
  %mul12 = fmul float %tmp13, %add11
  %add13 = fadd float 0xBF9D2A51E0000000, %mul12
  %mul14 = fmul float %tmp12, %add13
  %add15 = fadd float 0xBFD4CD7D60000000, %mul14
  %mul16 = fmul float %tmp11, %add15
  %add17 = fadd float 0x3FC06EBA80000000, %mul16
  store float %add17, float* %r, align 4
  %tmp15 = load float, float* %z, align 4
  %tmp16 = load float, float* %z, align 4
  %tmp17 = load float, float* %z, align 4
  %tmp18 = load float, float* %z, align 4
  %tmp19 = load float, float* %z, align 4
  %mul18 = fmul float %tmp19, 0xBED09C4340000000
  %add19 = fadd float 0x3F215DC920000000, %mul18
  %mul20 = fmul float %tmp18, %add19
  %add21 = fadd float 0x3F74D022C0000000, %mul20
  %mul22 = fmul float %tmp17, %add21
  %add23 = fadd float 0x3FB0A54C60000000, %mul22
  %mul24 = fmul float %tmp16, %add23
  %add25 = fadd float 0x3FD97779C0000000, %mul24
  %mul26 = fmul float %tmp15, %add25
  %add27 = fadd float 1.000000e+00, %mul26
  store float %add27, float* %s, align 4
  %tmp20 = load float, float* %r, align 4
  %tmp21 = load float, float* %s, align 4
  %div28 = fdiv float %tmp20, %tmp21
  store float %div28, float* %y, align 4
  %tmp22 = load i32, i32* %hx, align 4
  %cmp29 = icmp slt i32 %tmp22, 1048576000
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end9
  %tmp23 = load float, float* %x.addr, align 4
  %tmp24 = load float, float* %x.addr, align 4
  %tmp25 = load float, float* %y, align 4
  %mul32 = fmul float %tmp24, %tmp25
  %add33 = fadd float %tmp23, %mul32
  %sub34 = fsub float 1.000000e+00, %add33
  store float %sub34, float* %retval
  br label %return

if.else:                                          ; preds = %if.end9
  %tmp26 = load float, float* %x.addr, align 4
  %tmp27 = load float, float* %y, align 4
  %mul35 = fmul float %tmp26, %tmp27
  store float %mul35, float* %r, align 4
  %tmp28 = load float, float* %x.addr, align 4
  %sub36 = fsub float %tmp28, 5.000000e-01
  %tmp29 = load float, float* %r, align 4
  %add37 = fadd float %tmp29, %sub36
  store float %add37, float* %r, align 4
  %tmp30 = load float, float* %r, align 4
  %sub38 = fsub float 5.000000e-01, %tmp30
  store float %sub38, float* %retval
  br label %return

if.end39:                                         ; preds = %if.end
  %tmp31 = load i32, i32* %ix, align 4
  %cmp40 = icmp slt i32 %tmp31, 1067450368
  br i1 %cmp40, label %if.then42, label %if.end79

if.then42:                                        ; preds = %if.end39
  %tmp32 = load float, float* %x.addr, align 4
  %conv43 = fpext float %tmp32 to double
  %call = call double @fabs(double %conv43) #3
  %sub44 = fsub double %call, 1.000000e+00
  %conv45 = fptrunc double %sub44 to float
  store float %conv45, float* %s, align 4
  %tmp33 = load float, float* %s, align 4
  %tmp34 = load float, float* %s, align 4
  %tmp35 = load float, float* %s, align 4
  %tmp36 = load float, float* %s, align 4
  %tmp37 = load float, float* %s, align 4
  %tmp38 = load float, float* %s, align 4
  %mul46 = fmul float %tmp38, 0xBF61BF3800000000
  %add47 = fadd float 0x3FA22A3660000000, %mul46
  %mul48 = fmul float %tmp37, %add47
  %add49 = fadd float 0xBFBC639840000000, %mul48
  %mul50 = fmul float %tmp36, %add49
  %add51 = fadd float 0x3FD45FCA80000000, %mul50
  %mul52 = fmul float %tmp35, %add51
  %add53 = fadd float 0xBFD7D24100000000, %mul52
  %mul54 = fmul float %tmp34, %add53
  %add55 = fadd float 0x3FDA8D00A0000000, %mul54
  %mul56 = fmul float %tmp33, %add55
  %add57 = fadd float 0xBF6359B8C0000000, %mul56
  store float %add57, float* %P, align 4
  %tmp39 = load float, float* %s, align 4
  %tmp40 = load float, float* %s, align 4
  %tmp41 = load float, float* %s, align 4
  %tmp42 = load float, float* %s, align 4
  %tmp43 = load float, float* %s, align 4
  %tmp44 = load float, float* %s, align 4
  %mul58 = fmul float %tmp44, 0x3F888B5460000000
  %add59 = fadd float 0x3F8BEDC260000000, %mul58
  %mul60 = fmul float %tmp43, %add59
  %add61 = fadd float 0x3FC02660E0000000, %mul60
  %mul62 = fmul float %tmp42, %add61
  %add63 = fadd float 0x3FB2635CE0000000, %mul62
  %mul64 = fmul float %tmp41, %add63
  %add65 = fadd float 0x3FE14AF0A0000000, %mul64
  %mul66 = fmul float %tmp40, %add65
  %add67 = fadd float 0x3FBB3E6620000000, %mul66
  %mul68 = fmul float %tmp39, %add67
  %add69 = fadd float 1.000000e+00, %mul68
  store float %add69, float* %Q, align 4
  %tmp45 = load i32, i32* %hx, align 4
  %cmp70 = icmp sge i32 %tmp45, 0
  br i1 %cmp70, label %if.then72, label %if.else75

if.then72:                                        ; preds = %if.then42
  store float 0x3FC3D4FA80000000, float* %z, align 4
  %tmp46 = load float, float* %z, align 4
  %tmp47 = load float, float* %P, align 4
  %tmp48 = load float, float* %Q, align 4
  %div73 = fdiv float %tmp47, %tmp48
  %sub74 = fsub float %tmp46, %div73
  store float %sub74, float* %retval
  br label %return

if.else75:                                        ; preds = %if.then42
  %tmp49 = load float, float* %P, align 4
  %tmp50 = load float, float* %Q, align 4
  %div76 = fdiv float %tmp49, %tmp50
  %add77 = fadd float 0x3FEB0AC160000000, %div76
  store float %add77, float* %z, align 4
  %tmp51 = load float, float* %z, align 4
  %add78 = fadd float 1.000000e+00, %tmp51
  store float %add78, float* %retval
  br label %return

if.end79:                                         ; preds = %if.end39
  %tmp52 = load i32, i32* %ix, align 4
  %cmp80 = icmp slt i32 %tmp52, 1105199104
  br i1 %cmp80, label %if.then82, label %if.else181

if.then82:                                        ; preds = %if.end79
  %tmp53 = load float, float* %x.addr, align 4
  %conv83 = fpext float %tmp53 to double
  %call84 = call double @fabs(double %conv83) #3
  %conv85 = fptrunc double %call84 to float
  store float %conv85, float* %x.addr, align 4
  %tmp54 = load float, float* %x.addr, align 4
  %tmp55 = load float, float* %x.addr, align 4
  %mul86 = fmul float %tmp54, %tmp55
  %div87 = fdiv float 1.000000e+00, %mul86
  store float %div87, float* %s, align 4
  %tmp56 = load i32, i32* %ix, align 4
  %cmp88 = icmp slt i32 %tmp56, 1077336941
  br i1 %cmp88, label %if.then90, label %if.else121

if.then90:                                        ; preds = %if.then82
  %tmp57 = load float, float* %s, align 4
  %tmp58 = load float, float* %s, align 4
  %tmp59 = load float, float* %s, align 4
  %tmp60 = load float, float* %s, align 4
  %tmp61 = load float, float* %s, align 4
  %tmp62 = load float, float* %s, align 4
  %tmp63 = load float, float* %s, align 4
  %mul91 = fmul float %tmp63, 0xC023A0EFC0000000
  %add92 = fadd float 0xC054526560000000, %mul91
  %mul93 = fmul float %tmp62, %add92
  %add94 = fadd float 0xC067135CE0000000, %mul93
  %mul95 = fmul float %tmp61, %add94
  %add96 = fadd float 0xC0644CB180000000, %mul95
  %mul97 = fmul float %tmp60, %add96
  %add98 = fadd float 0xC04F300AE0000000, %mul97
  %mul99 = fmul float %tmp59, %add98
  %add100 = fadd float 0xC0251E0440000000, %mul99
  %mul101 = fmul float %tmp58, %add100
  %add102 = fadd float 0xBFE63416E0000000, %mul101
  %mul103 = fmul float %tmp57, %add102
  %add104 = fadd float 0xBF84341260000000, %mul103
  store float %add104, float* %R, align 4
  %tmp64 = load float, float* %s, align 4
  %tmp65 = load float, float* %s, align 4
  %tmp66 = load float, float* %s, align 4
  %tmp67 = load float, float* %s, align 4
  %tmp68 = load float, float* %s, align 4
  %tmp69 = load float, float* %s, align 4
  %tmp70 = load float, float* %s, align 4
  %tmp71 = load float, float* %s, align 4
  %mul105 = fmul float %tmp71, 0xBFAEEFF2E0000000
  %add106 = fadd float 0x401A47EF80000000, %mul105
  %mul107 = fmul float %tmp70, %add106
  %add108 = fadd float 0x405B28A3E0000000, %mul107
  %mul109 = fmul float %tmp69, %add108
  %add110 = fadd float 0x407AD02160000000, %mul109
  %mul111 = fmul float %tmp68, %add110
  %add112 = fadd float 0x40842B1920000000, %mul111
  %mul113 = fmul float %tmp67, %add112
  %add114 = fadd float 0x407B290DE0000000, %mul113
  %mul115 = fmul float %tmp66, %add114
  %add116 = fadd float 0x4061350C60000000, %mul115
  %mul117 = fmul float %tmp65, %add116
  %add118 = fadd float 0x4033A6B9C0000000, %mul117
  %mul119 = fmul float %tmp64, %add118
  %add120 = fadd float 1.000000e+00, %mul119
  store float %add120, float* %S, align 4
  br label %if.end154

if.else121:                                       ; preds = %if.then82
  %tmp72 = load i32, i32* %hx, align 4
  %cmp122 = icmp slt i32 %tmp72, 0
  br i1 %cmp122, label %land.lhs.true, label %if.end127

land.lhs.true:                                    ; preds = %if.else121
  %tmp73 = load i32, i32* %ix, align 4
  %cmp124 = icmp sge i32 %tmp73, 1086324736
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %land.lhs.true
  store float 2.000000e+00, float* %retval
  br label %return

if.end127:                                        ; preds = %land.lhs.true, %if.else121
  %tmp74 = load float, float* %s, align 4
  %tmp75 = load float, float* %s, align 4
  %tmp76 = load float, float* %s, align 4
  %tmp77 = load float, float* %s, align 4
  %tmp78 = load float, float* %s, align 4
  %tmp79 = load float, float* %s, align 4
  %mul128 = fmul float %tmp79, 0xC07E384EA0000000
  %add129 = fadd float 0xC090046160000000, %mul128
  %mul130 = fmul float %tmp78, %add129
  %add131 = fadd float 0xC083EC8820000000, %mul130
  %mul132 = fmul float %tmp77, %add131
  %add133 = fadd float 0xC064145D40000000, %mul132
  %mul134 = fmul float %tmp76, %add133
  %add135 = fadd float 0xC031C20960000000, %mul134
  %mul136 = fmul float %tmp75, %add135
  %add137 = fadd float 0xBFE993BA80000000, %mul136
  %mul138 = fmul float %tmp74, %add137
  %add139 = fadd float 0xBF84341240000000, %mul138
  store float %add139, float* %R, align 4
  %tmp80 = load float, float* %s, align 4
  %tmp81 = load float, float* %s, align 4
  %tmp82 = load float, float* %s, align 4
  %tmp83 = load float, float* %s, align 4
  %tmp84 = load float, float* %s, align 4
  %tmp85 = load float, float* %s, align 4
  %tmp86 = load float, float* %s, align 4
  %mul140 = fmul float %tmp86, 0xC03670E240000000
  %add141 = fadd float 0x407DA874E0000000, %mul140
  %mul142 = fmul float %tmp85, %add141
  %add143 = fadd float 0x40A3F219C0000000, %mul142
  %mul144 = fmul float %tmp84, %add143
  %add145 = fadd float 0x40A8FFB760000000, %mul144
  %mul146 = fmul float %tmp83, %add145
  %add147 = fadd float 0x409802EB20000000, %mul146
  %mul148 = fmul float %tmp82, %add147
  %add149 = fadd float 0x40745CAE20000000, %mul148
  %mul150 = fmul float %tmp81, %add149
  %add151 = fadd float 0x403E568B20000000, %mul150
  %mul152 = fmul float %tmp80, %add151
  %add153 = fadd float 1.000000e+00, %mul152
  store float %add153, float* %S, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.end127, %if.then90
  %tmp87 = load float, float* %x.addr, align 4
  %f155 = bitcast %union.anon.0* %conv to float*
  store float %tmp87, float* %f155, align 4
  %i156 = bitcast %union.anon.0* %conv to i32*
  %tmp88 = load i32, i32* %i156, align 4
  %and157 = and i32 %tmp88, -4096
  %i158 = bitcast %union.anon.0* %conv to i32*
  store i32 %and157, i32* %i158, align 4
  %f159 = bitcast %union.anon.0* %conv to float*
  %tmp89 = load float, float* %f159, align 4
  store float %tmp89, float* %z, align 4
  %tmp90 = load float, float* %z, align 4
  %sub160 = fsub float -0.000000e+00, %tmp90
  %tmp91 = load float, float* %z, align 4
  %mul161 = fmul float %sub160, %tmp91
  %sub162 = fsub float %mul161, 5.625000e-01
  %conv163 = fpext float %sub162 to double
  %call164 = call double @exp(double %conv163) #4
  %tmp92 = load float, float* %z, align 4
  %tmp93 = load float, float* %x.addr, align 4
  %sub165 = fsub float %tmp92, %tmp93
  %tmp94 = load float, float* %z, align 4
  %tmp95 = load float, float* %x.addr, align 4
  %add166 = fadd float %tmp94, %tmp95
  %mul167 = fmul float %sub165, %add166
  %tmp96 = load float, float* %R, align 4
  %tmp97 = load float, float* %S, align 4
  %div168 = fdiv float %tmp96, %tmp97
  %add169 = fadd float %mul167, %div168
  %conv170 = fpext float %add169 to double
  %call171 = call double @exp(double %conv170) #4
  %mul172 = fmul double %call164, %call171
  %conv173 = fptrunc double %mul172 to float
  store float %conv173, float* %r, align 4
  %tmp98 = load i32, i32* %hx, align 4
  %cmp174 = icmp sgt i32 %tmp98, 0
  br i1 %cmp174, label %if.then176, label %if.else178

if.then176:                                       ; preds = %if.end154
  %tmp99 = load float, float* %r, align 4
  %tmp100 = load float, float* %x.addr, align 4
  %div177 = fdiv float %tmp99, %tmp100
  store float %div177, float* %retval
  br label %return

if.else178:                                       ; preds = %if.end154
  %tmp101 = load float, float* %r, align 4
  %tmp102 = load float, float* %x.addr, align 4
  %div179 = fdiv float %tmp101, %tmp102
  %sub180 = fsub float 2.000000e+00, %div179
  store float %sub180, float* %retval
  br label %return

if.else181:                                       ; preds = %if.end79
  %tmp103 = load i32, i32* %hx, align 4
  %cmp182 = icmp sgt i32 %tmp103, 0
  br i1 %cmp182, label %if.then184, label %if.else185

if.then184:                                       ; preds = %if.else181
  store float 0.000000e+00, float* %retval
  br label %return

if.else185:                                       ; preds = %if.else181
  store float 2.000000e+00, float* %retval
  br label %return

return:                                           ; preds = %if.else185, %if.then184, %if.else178, %if.then176, %if.then126, %if.else75, %if.then72, %if.else, %if.then31, %if.then8, %if.then
  %tmp104 = load float, float* %retval
  ret float %tmp104
}

; Function Attrs: nounwind uwtable
define float @fast_float_erf(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  %t = alloca float, align 4
  %ans = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %tmp = load float, float* %x.addr, align 4
  %conv = fpext float %tmp to double
  %mul = fmul double 5.000000e-01, %conv
  %add = fadd double 1.000000e+00, %mul
  %div = fdiv double 1.000000e+00, %add
  %conv1 = fptrunc double %div to float
  store float %conv1, float* %t, align 4
  %tmp1 = load float, float* %t, align 4
  %conv2 = fpext float %tmp1 to double
  %tmp2 = load float, float* %x.addr, align 4
  %sub = fsub float -0.000000e+00, %tmp2
  %tmp3 = load float, float* %x.addr, align 4
  %mul3 = fmul float %sub, %tmp3
  %conv4 = fpext float %mul3 to double
  %sub5 = fsub double %conv4, 0x3FF43F89C0889BC5
  %tmp4 = load float, float* %t, align 4
  %conv6 = fpext float %tmp4 to double
  %tmp5 = load float, float* %t, align 4
  %conv7 = fpext float %tmp5 to double
  %tmp6 = load float, float* %t, align 4
  %conv8 = fpext float %tmp6 to double
  %tmp7 = load float, float* %t, align 4
  %conv9 = fpext float %tmp7 to double
  %tmp8 = load float, float* %t, align 4
  %conv10 = fpext float %tmp8 to double
  %tmp9 = load float, float* %t, align 4
  %conv11 = fpext float %tmp9 to double
  %tmp10 = load float, float* %t, align 4
  %conv12 = fpext float %tmp10 to double
  %tmp11 = load float, float* %t, align 4
  %conv13 = fpext float %tmp11 to double
  %tmp12 = load float, float* %t, align 4
  %conv14 = fpext float %tmp12 to double
  %mul15 = fmul double %conv14, 0x3FC5DF28AF76A5A4
  %add16 = fadd double 0xBFEA4F123185DEFD, %mul15
  %mul17 = fmul double %conv13, %add16
  %add18 = fadd double 0x3FF7D0F60453A1BE, %mul17
  %mul19 = fmul double %conv12, %add18
  %add20 = fadd double 0xBFF229CBA6063980, %mul19
  %mul21 = fmul double %conv11, %add20
  %add22 = fadd double 0x3FD1D8F976231CE6, %mul21
  %mul23 = fmul double %conv10, %add22
  %add24 = fadd double 0xBFC7D84982AAEAA5, %mul23
  %mul25 = fmul double %conv9, %add24
  %add26 = fadd double 9.678418e-02, %mul25
  %mul27 = fmul double %conv8, %add26
  %add28 = fadd double 0x3FD7F11F677960EA, %mul27
  %mul29 = fmul double %conv7, %add28
  %add30 = fadd double 0x3FF00018D48D3588, %mul29
  %mul31 = fmul double %conv6, %add30
  %add32 = fadd double %sub5, %mul31
  %call = call double @exp(double %add32) #4
  %mul33 = fmul double %conv2, %call
  %conv34 = fptrunc double %mul33 to float
  store float %conv34, float* %ans, align 4
  %tmp13 = load float, float* %ans, align 4
  %conv35 = fpext float %tmp13 to double
  %sub36 = fsub double 1.000000e+00, %conv35
  %conv37 = fptrunc double %sub36 to float
  ret float %conv37
}

; Function Attrs: nounwind uwtable
define float @fast_float_erfc(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  %t = alloca float, align 4
  %ans = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %tmp = load float, float* %x.addr, align 4
  %conv = fpext float %tmp to double
  %mul = fmul double 5.000000e-01, %conv
  %add = fadd double 1.000000e+00, %mul
  %div = fdiv double 1.000000e+00, %add
  %conv1 = fptrunc double %div to float
  store float %conv1, float* %t, align 4
  %tmp1 = load float, float* %t, align 4
  %conv2 = fpext float %tmp1 to double
  %tmp2 = load float, float* %x.addr, align 4
  %sub = fsub float -0.000000e+00, %tmp2
  %tmp3 = load float, float* %x.addr, align 4
  %mul3 = fmul float %sub, %tmp3
  %conv4 = fpext float %mul3 to double
  %sub5 = fsub double %conv4, 0x3FF43F89C0889BC5
  %tmp4 = load float, float* %t, align 4
  %conv6 = fpext float %tmp4 to double
  %tmp5 = load float, float* %t, align 4
  %conv7 = fpext float %tmp5 to double
  %tmp6 = load float, float* %t, align 4
  %conv8 = fpext float %tmp6 to double
  %tmp7 = load float, float* %t, align 4
  %conv9 = fpext float %tmp7 to double
  %tmp8 = load float, float* %t, align 4
  %conv10 = fpext float %tmp8 to double
  %tmp9 = load float, float* %t, align 4
  %conv11 = fpext float %tmp9 to double
  %tmp10 = load float, float* %t, align 4
  %conv12 = fpext float %tmp10 to double
  %tmp11 = load float, float* %t, align 4
  %conv13 = fpext float %tmp11 to double
  %tmp12 = load float, float* %t, align 4
  %conv14 = fpext float %tmp12 to double
  %mul15 = fmul double %conv14, 0x3FC5DF28AF76A5A4
  %add16 = fadd double 0xBFEA4F123185DEFD, %mul15
  %mul17 = fmul double %conv13, %add16
  %add18 = fadd double 0x3FF7D0F60453A1BE, %mul17
  %mul19 = fmul double %conv12, %add18
  %add20 = fadd double 0xBFF229CBA6063980, %mul19
  %mul21 = fmul double %conv11, %add20
  %add22 = fadd double 0x3FD1D8F976231CE6, %mul21
  %mul23 = fmul double %conv10, %add22
  %add24 = fadd double 0xBFC7D84982AAEAA5, %mul23
  %mul25 = fmul double %conv9, %add24
  %add26 = fadd double 9.678418e-02, %mul25
  %mul27 = fmul double %conv8, %add26
  %add28 = fadd double 0x3FD7F11F677960EA, %mul27
  %mul29 = fmul double %conv7, %add28
  %add30 = fadd double 0x3FF00018D48D3588, %mul29
  %mul31 = fmul double %conv6, %add30
  %add32 = fadd double %sub5, %mul31
  %call = call double @exp(double %add32) #4
  %mul33 = fmul double %conv2, %call
  %conv34 = fptrunc double %mul33 to float
  store float %conv34, float* %ans, align 4
  %tmp13 = load float, float* %ans, align 4
  ret float %tmp13
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.5 (trunk 195335) (llvm/trunk 195334)"}

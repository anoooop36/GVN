; ModuleID = 'plan7.c.bc'
source_filename = "plan7.c.bc"
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.plan9_s = type { i32, %struct.basic_state*, %struct.basic_state*, %struct.basic_state*, [20 x float], i8*, i8*, i8*, float*, i32 }
%struct.basic_state = type { [3 x float], [20 x float] }

@.str = private unnamed_addr constant [14 x i8] c"hmmer/plan7.c\00", align 1
@Alphabet_size = external global i32
@.str1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@Alphabet_iupac = external global i32
@.str3 = private unnamed_addr constant [29 x i8] c"Average score:  %10.2f bits\0A\00", align 1
@.str4 = private unnamed_addr constant [29 x i8] c"Minimum score:  %10.2f bits\0A\00", align 1
@.str5 = private unnamed_addr constant [29 x i8] c"Maximum score:  %10.2f bits\0A\00", align 1
@.str6 = private unnamed_addr constant [29 x i8] c"Std. deviation: %10.2f bits\0A\00", align 1
@Degenerate = external global [24 x [20 x i8]]

; Function Attrs: nounwind uwtable
define %struct.plan7_s* @AllocPlan7(i32 %M) #0 {
entry:
  %M.addr = alloca i32, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  store i32 %M, i32* %M.addr, align 4
  %call = call %struct.plan7_s* @AllocPlan7Shell()
  store %struct.plan7_s* %call, %struct.plan7_s** %hmm, align 8
  %tmp = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tmp1 = load i32, i32* %M.addr, align 4
  call void @AllocPlan7Body(%struct.plan7_s* %tmp, i32 %tmp1)
  %tmp2 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  ret %struct.plan7_s* %tmp2
}

; Function Attrs: nounwind uwtable
define %struct.plan7_s* @AllocPlan7Shell() #0 {
entry:
  %hmm = alloca %struct.plan7_s*, align 8
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 54, i64 464)
  %tmp = bitcast i8* %call to %struct.plan7_s*
  store %struct.plan7_s* %tmp, %struct.plan7_s** %hmm, align 8
  %tmp1 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp1, i32 0, i32 20
  store i32 0, i32* %M, align 4
  %tmp2 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %name = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp2, i32 0, i32 0
  store i8* null, i8** %name, align 8
  %tmp3 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %acc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp3, i32 0, i32 1
  store i8* null, i8** %acc, align 8
  %tmp4 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %desc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp4, i32 0, i32 2
  store i8* null, i8** %desc, align 8
  %tmp5 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %rf = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp5, i32 0, i32 3
  store i8* null, i8** %rf, align 8
  %tmp6 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %cs = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp6, i32 0, i32 4
  store i8* null, i8** %cs, align 8
  %tmp7 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ca = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp7, i32 0, i32 5
  store i8* null, i8** %ca, align 8
  %tmp8 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %comlog = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp8, i32 0, i32 6
  store i8* null, i8** %comlog, align 8
  %tmp9 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %nseq = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp9, i32 0, i32 7
  store i32 0, i32* %nseq, align 4
  %tmp10 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ctime = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp10, i32 0, i32 8
  store i8* null, i8** %ctime, align 8
  %tmp11 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %map = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp11, i32 0, i32 9
  store i32* null, i32** %map, align 8
  %tmp12 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %checksum = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp12, i32 0, i32 10
  store i32 0, i32* %checksum, align 4
  %tmp13 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tpri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp13, i32 0, i32 11
  store i32* null, i32** %tpri, align 8
  %tmp14 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %mpri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp14, i32 0, i32 12
  store i32* null, i32** %mpri, align 8
  %tmp15 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ipri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp15, i32 0, i32 13
  store i32* null, i32** %ipri, align 8
  %tmp16 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ga2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp16, i32 0, i32 15
  store float 0.000000e+00, float* %ga2, align 4
  %tmp17 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ga1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp17, i32 0, i32 14
  store float 0.000000e+00, float* %ga1, align 4
  %tmp18 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp18, i32 0, i32 17
  store float 0.000000e+00, float* %tc2, align 4
  %tmp19 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp19, i32 0, i32 16
  store float 0.000000e+00, float* %tc1, align 4
  %tmp20 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %nc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp20, i32 0, i32 19
  store float 0.000000e+00, float* %nc2, align 4
  %tmp21 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %nc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp21, i32 0, i32 18
  store float 0.000000e+00, float* %nc1, align 4
  %tmp22 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp22, i32 0, i32 21
  store float** null, float*** %t, align 8
  %tmp23 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp23, i32 0, i32 22
  store float** null, float*** %mat, align 8
  %tmp24 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp24, i32 0, i32 23
  store float** null, float*** %ins, align 8
  %tmp25 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp25, i32 0, i32 32
  store i32** null, i32*** %isc, align 8
  %tmp26 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp26, i32 0, i32 31
  store i32** null, i32*** %msc, align 8
  %tmp27 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp27, i32 0, i32 30
  store i32** null, i32*** %tsc, align 8
  %tmp28 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %msc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp28, i32 0, i32 37
  store i32* null, i32** %msc_mem, align 8
  %tmp29 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %msc_mem1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp29, i32 0, i32 37
  store i32* null, i32** %msc_mem1, align 8
  %tmp30 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %tsc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp30, i32 0, i32 36
  store i32* null, i32** %tsc_mem, align 8
  %tmp31 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp31, i32 0, i32 26
  store float* null, float** %begin, align 8
  %tmp32 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp32, i32 0, i32 27
  store float* null, float** %end, align 8
  %tmp33 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %bsc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp33, i32 0, i32 39
  store i32* null, i32** %bsc_mem, align 8
  %tmp34 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp34, i32 0, i32 34
  store i32* null, i32** %bsc, align 8
  %tmp35 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %esc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp35, i32 0, i32 40
  store i32* null, i32** %esc_mem, align 8
  %tmp36 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp36, i32 0, i32 35
  store i32* null, i32** %esc, align 8
  %tmp37 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %dnam = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp37, i32 0, i32 41
  store i32** null, i32*** %dnam, align 8
  %tmp38 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %dnai = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp38, i32 0, i32 42
  store i32** null, i32*** %dnai, align 8
  %tmp39 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %dna2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp39, i32 0, i32 43
  store i32 -987654321, i32* %dna2, align 4
  %tmp40 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %dna4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp40, i32 0, i32 44
  store i32 -987654321, i32* %dna4, align 4
  %tmp41 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %mu = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp41, i32 0, i32 45
  store float 0.000000e+00, float* %mu, align 4
  %tmp42 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %lambda = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp42, i32 0, i32 46
  store float 0.000000e+00, float* %lambda, align 4
  %tmp43 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp43, i32 0, i32 47
  store i32 0, i32* %flags, align 4
  %tmp44 = load %struct.plan7_s*, %struct.plan7_s** %hmm, align 8
  ret %struct.plan7_s* %tmp44
}

; Function Attrs: nounwind uwtable
define void @AllocPlan7Body(%struct.plan7_s* %hmm, i32 %M) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %M.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  %tmp = load i32, i32* %M.addr, align 4
  %tmp1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp1, i32 0, i32 20
  store i32 %tmp, i32* %M1, align 4
  %tmp2 = load i32, i32* %M.addr, align 4
  %add = add nsw i32 %tmp2, 2
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 111, i64 %mul)
  %tmp3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %rf = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp3, i32 0, i32 3
  store i8* %call, i8** %rf, align 8
  %tmp4 = load i32, i32* %M.addr, align 4
  %add2 = add nsw i32 %tmp4, 2
  %conv3 = sext i32 %add2 to i64
  %mul4 = mul i64 %conv3, 1
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 112, i64 %mul4)
  %tmp5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %cs = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp5, i32 0, i32 4
  store i8* %call5, i8** %cs, align 8
  %tmp6 = load i32, i32* %M.addr, align 4
  %add6 = add nsw i32 %tmp6, 2
  %conv7 = sext i32 %add6 to i64
  %mul8 = mul i64 %conv7, 1
  %call9 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 113, i64 %mul8)
  %tmp7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ca = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp7, i32 0, i32 5
  store i8* %call9, i8** %ca, align 8
  %tmp8 = load i32, i32* %M.addr, align 4
  %add10 = add nsw i32 %tmp8, 1
  %conv11 = sext i32 %add10 to i64
  %mul12 = mul i64 %conv11, 4
  %call13 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 114, i64 %mul12)
  %tmp9 = bitcast i8* %call13 to i32*
  %tmp10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %map = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp10, i32 0, i32 9
  store i32* %tmp9, i32** %map, align 8
  %tmp11 = load i32, i32* %M.addr, align 4
  %conv14 = sext i32 %tmp11 to i64
  %mul15 = mul i64 %conv14, 8
  %call16 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 116, i64 %mul15)
  %tmp12 = bitcast i8* %call16 to float**
  %tmp13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp13, i32 0, i32 21
  store float** %tmp12, float*** %t, align 8
  %tmp14 = load i32, i32* %M.addr, align 4
  %add17 = add nsw i32 %tmp14, 1
  %conv18 = sext i32 %add17 to i64
  %mul19 = mul i64 %conv18, 8
  %call20 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 117, i64 %mul19)
  %tmp15 = bitcast i8* %call20 to float**
  %tmp16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp16, i32 0, i32 22
  store float** %tmp15, float*** %mat, align 8
  %tmp17 = load i32, i32* %M.addr, align 4
  %conv21 = sext i32 %tmp17 to i64
  %mul22 = mul i64 %conv21, 8
  %call23 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 118, i64 %mul22)
  %tmp18 = bitcast i8* %call23 to float**
  %tmp19 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp19, i32 0, i32 23
  store float** %tmp18, float*** %ins, align 8
  %tmp20 = load i32, i32* %M.addr, align 4
  %mul24 = mul nsw i32 7, %tmp20
  %conv25 = sext i32 %mul24 to i64
  %mul26 = mul i64 %conv25, 4
  %call27 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 119, i64 %mul26)
  %tmp21 = bitcast i8* %call27 to float*
  %tmp22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t28 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp22, i32 0, i32 21
  %tmp23 = load float**, float*** %t28, align 8
  %arrayidx = getelementptr inbounds float*, float** %tmp23, i64 0
  store float* %tmp21, float** %arrayidx, align 8
  %tmp24 = load i32, i32* %M.addr, align 4
  %add29 = add nsw i32 %tmp24, 1
  %mul30 = mul nsw i32 20, %add29
  %conv31 = sext i32 %mul30 to i64
  %mul32 = mul i64 %conv31, 4
  %call33 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 120, i64 %mul32)
  %tmp25 = bitcast i8* %call33 to float*
  %tmp26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat34 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp26, i32 0, i32 22
  %tmp27 = load float**, float*** %mat34, align 8
  %arrayidx35 = getelementptr inbounds float*, float** %tmp27, i64 0
  store float* %tmp25, float** %arrayidx35, align 8
  %tmp28 = load i32, i32* %M.addr, align 4
  %mul36 = mul nsw i32 20, %tmp28
  %conv37 = sext i32 %mul36 to i64
  %mul38 = mul i64 %conv37, 4
  %call39 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 121, i64 %mul38)
  %tmp29 = bitcast i8* %call39 to float*
  %tmp30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins40 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp30, i32 0, i32 23
  %tmp31 = load float**, float*** %ins40, align 8
  %arrayidx41 = getelementptr inbounds float*, float** %tmp31, i64 0
  store float* %tmp29, float** %arrayidx41, align 8
  %call42 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 123, i64 56)
  %tmp32 = bitcast i8* %call42 to i32**
  %tmp33 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp33, i32 0, i32 30
  store i32** %tmp32, i32*** %tsc, align 8
  %call43 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 124, i64 192)
  %tmp34 = bitcast i8* %call43 to i32**
  %tmp35 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp35, i32 0, i32 31
  store i32** %tmp34, i32*** %msc, align 8
  %call44 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 125, i64 192)
  %tmp36 = bitcast i8* %call44 to i32**
  %tmp37 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp37, i32 0, i32 32
  store i32** %tmp36, i32*** %isc, align 8
  %tmp38 = load i32, i32* %M.addr, align 4
  %mul45 = mul nsw i32 7, %tmp38
  %conv46 = sext i32 %mul45 to i64
  %mul47 = mul i64 %conv46, 4
  %call48 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 126, i64 %mul47)
  %tmp39 = bitcast i8* %call48 to i32*
  %tmp40 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp40, i32 0, i32 36
  store i32* %tmp39, i32** %tsc_mem, align 8
  %tmp41 = load i32, i32* %M.addr, align 4
  %add49 = add nsw i32 %tmp41, 1
  %mul50 = mul nsw i32 24, %add49
  %conv51 = sext i32 %mul50 to i64
  %mul52 = mul i64 %conv51, 4
  %call53 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 127, i64 %mul52)
  %tmp42 = bitcast i8* %call53 to i32*
  %tmp43 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp43, i32 0, i32 37
  store i32* %tmp42, i32** %msc_mem, align 8
  %tmp44 = load i32, i32* %M.addr, align 4
  %mul54 = mul nsw i32 24, %tmp44
  %conv55 = sext i32 %mul54 to i64
  %mul56 = mul i64 %conv55, 4
  %call57 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 128, i64 %mul56)
  %tmp45 = bitcast i8* %call57 to i32*
  %tmp46 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp46, i32 0, i32 38
  store i32* %tmp45, i32** %isc_mem, align 8
  %tmp47 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc_mem58 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp47, i32 0, i32 36
  %tmp48 = load i32*, i32** %tsc_mem58, align 8
  %tmp49 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc59 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp49, i32 0, i32 30
  %tmp50 = load i32**, i32*** %tsc59, align 8
  %arrayidx60 = getelementptr inbounds i32*, i32** %tmp50, i64 0
  store i32* %tmp48, i32** %arrayidx60, align 8
  %tmp51 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc_mem61 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp51, i32 0, i32 37
  %tmp52 = load i32*, i32** %msc_mem61, align 8
  %tmp53 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc62 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp53, i32 0, i32 31
  %tmp54 = load i32**, i32*** %msc62, align 8
  %arrayidx63 = getelementptr inbounds i32*, i32** %tmp54, i64 0
  store i32* %tmp52, i32** %arrayidx63, align 8
  %tmp55 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc_mem64 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp55, i32 0, i32 38
  %tmp56 = load i32*, i32** %isc_mem64, align 8
  %tmp57 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc65 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp57, i32 0, i32 32
  %tmp58 = load i32**, i32*** %isc65, align 8
  %arrayidx66 = getelementptr inbounds i32*, i32** %tmp58, i64 0
  store i32* %tmp56, i32** %arrayidx66, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp59 = load i32, i32* %k, align 4
  %tmp60 = load i32, i32* %M.addr, align 4
  %cmp = icmp sle i32 %tmp59, %tmp60
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp61 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat68 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp61, i32 0, i32 22
  %tmp62 = load float**, float*** %mat68, align 8
  %arrayidx69 = getelementptr inbounds float*, float** %tmp62, i64 0
  %tmp63 = load float*, float** %arrayidx69, align 8
  %tmp64 = load i32, i32* %k, align 4
  %mul70 = mul nsw i32 %tmp64, 20
  %idx.ext = sext i32 %mul70 to i64
  %add.ptr = getelementptr inbounds float, float* %tmp63, i64 %idx.ext
  %tmp65 = load i32, i32* %k, align 4
  %idxprom = sext i32 %tmp65 to i64
  %tmp66 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat71 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp66, i32 0, i32 22
  %tmp67 = load float**, float*** %mat71, align 8
  %arrayidx72 = getelementptr inbounds float*, float** %tmp67, i64 %idxprom
  store float* %add.ptr, float** %arrayidx72, align 8
  %tmp68 = load i32, i32* %k, align 4
  %tmp69 = load i32, i32* %M.addr, align 4
  %cmp73 = icmp slt i32 %tmp68, %tmp69
  br i1 %cmp73, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %tmp70 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins75 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp70, i32 0, i32 23
  %tmp71 = load float**, float*** %ins75, align 8
  %arrayidx76 = getelementptr inbounds float*, float** %tmp71, i64 0
  %tmp72 = load float*, float** %arrayidx76, align 8
  %tmp73 = load i32, i32* %k, align 4
  %mul77 = mul nsw i32 %tmp73, 20
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds float, float* %tmp72, i64 %idx.ext78
  %tmp74 = load i32, i32* %k, align 4
  %idxprom80 = sext i32 %tmp74 to i64
  %tmp75 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins81 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp75, i32 0, i32 23
  %tmp76 = load float**, float*** %ins81, align 8
  %arrayidx82 = getelementptr inbounds float*, float** %tmp76, i64 %idxprom80
  store float* %add.ptr79, float** %arrayidx82, align 8
  %tmp77 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t83 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp77, i32 0, i32 21
  %tmp78 = load float**, float*** %t83, align 8
  %arrayidx84 = getelementptr inbounds float*, float** %tmp78, i64 0
  %tmp79 = load float*, float** %arrayidx84, align 8
  %tmp80 = load i32, i32* %k, align 4
  %mul85 = mul nsw i32 %tmp80, 7
  %idx.ext86 = sext i32 %mul85 to i64
  %add.ptr87 = getelementptr inbounds float, float* %tmp79, i64 %idx.ext86
  %tmp81 = load i32, i32* %k, align 4
  %idxprom88 = sext i32 %tmp81 to i64
  %tmp82 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t89 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp82, i32 0, i32 21
  %tmp83 = load float**, float*** %t89, align 8
  %arrayidx90 = getelementptr inbounds float*, float** %tmp83, i64 %idxprom88
  store float* %add.ptr87, float** %arrayidx90, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %tmp84 = load i32, i32* %k, align 4
  %inc = add nsw i32 %tmp84, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %x, align 4
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc112, %for.end
  %tmp85 = load i32, i32* %x, align 4
  %cmp92 = icmp slt i32 %tmp85, 24
  br i1 %cmp92, label %for.body94, label %for.end114

for.body94:                                       ; preds = %for.cond91
  %tmp86 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc95 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp86, i32 0, i32 31
  %tmp87 = load i32**, i32*** %msc95, align 8
  %arrayidx96 = getelementptr inbounds i32*, i32** %tmp87, i64 0
  %tmp88 = load i32*, i32** %arrayidx96, align 8
  %tmp89 = load i32, i32* %x, align 4
  %tmp90 = load i32, i32* %M.addr, align 4
  %add97 = add nsw i32 %tmp90, 1
  %mul98 = mul nsw i32 %tmp89, %add97
  %idx.ext99 = sext i32 %mul98 to i64
  %add.ptr100 = getelementptr inbounds i32, i32* %tmp88, i64 %idx.ext99
  %tmp91 = load i32, i32* %x, align 4
  %idxprom101 = sext i32 %tmp91 to i64
  %tmp92 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc102 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp92, i32 0, i32 31
  %tmp93 = load i32**, i32*** %msc102, align 8
  %arrayidx103 = getelementptr inbounds i32*, i32** %tmp93, i64 %idxprom101
  store i32* %add.ptr100, i32** %arrayidx103, align 8
  %tmp94 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc104 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp94, i32 0, i32 32
  %tmp95 = load i32**, i32*** %isc104, align 8
  %arrayidx105 = getelementptr inbounds i32*, i32** %tmp95, i64 0
  %tmp96 = load i32*, i32** %arrayidx105, align 8
  %tmp97 = load i32, i32* %x, align 4
  %tmp98 = load i32, i32* %M.addr, align 4
  %mul106 = mul nsw i32 %tmp97, %tmp98
  %idx.ext107 = sext i32 %mul106 to i64
  %add.ptr108 = getelementptr inbounds i32, i32* %tmp96, i64 %idx.ext107
  %tmp99 = load i32, i32* %x, align 4
  %idxprom109 = sext i32 %tmp99 to i64
  %tmp100 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc110 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp100, i32 0, i32 32
  %tmp101 = load i32**, i32*** %isc110, align 8
  %arrayidx111 = getelementptr inbounds i32*, i32** %tmp101, i64 %idxprom109
  store i32* %add.ptr108, i32** %arrayidx111, align 8
  br label %for.inc112

for.inc112:                                       ; preds = %for.body94
  %tmp102 = load i32, i32* %x, align 4
  %inc113 = add nsw i32 %tmp102, 1
  store i32 %inc113, i32* %x, align 4
  br label %for.cond91

for.end114:                                       ; preds = %for.cond91
  store i32 0, i32* %x, align 4
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc127, %for.end114
  %tmp103 = load i32, i32* %x, align 4
  %cmp116 = icmp slt i32 %tmp103, 7
  br i1 %cmp116, label %for.body118, label %for.end129

for.body118:                                      ; preds = %for.cond115
  %tmp104 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc119 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp104, i32 0, i32 30
  %tmp105 = load i32**, i32*** %tsc119, align 8
  %arrayidx120 = getelementptr inbounds i32*, i32** %tmp105, i64 0
  %tmp106 = load i32*, i32** %arrayidx120, align 8
  %tmp107 = load i32, i32* %x, align 4
  %tmp108 = load i32, i32* %M.addr, align 4
  %mul121 = mul nsw i32 %tmp107, %tmp108
  %idx.ext122 = sext i32 %mul121 to i64
  %add.ptr123 = getelementptr inbounds i32, i32* %tmp106, i64 %idx.ext122
  %tmp109 = load i32, i32* %x, align 4
  %idxprom124 = sext i32 %tmp109 to i64
  %tmp110 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc125 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp110, i32 0, i32 30
  %tmp111 = load i32**, i32*** %tsc125, align 8
  %arrayidx126 = getelementptr inbounds i32*, i32** %tmp111, i64 %idxprom124
  store i32* %add.ptr123, i32** %arrayidx126, align 8
  br label %for.inc127

for.inc127:                                       ; preds = %for.body118
  %tmp112 = load i32, i32* %x, align 4
  %inc128 = add nsw i32 %tmp112, 1
  store i32 %inc128, i32* %x, align 4
  br label %for.cond115

for.end129:                                       ; preds = %for.cond115
  store i32 0, i32* %x, align 4
  br label %for.cond130

for.cond130:                                      ; preds = %for.inc138, %for.end129
  %tmp113 = load i32, i32* %x, align 4
  %cmp131 = icmp slt i32 %tmp113, 7
  br i1 %cmp131, label %for.body133, label %for.end140

for.body133:                                      ; preds = %for.cond130
  %tmp114 = load i32, i32* %x, align 4
  %idxprom134 = sext i32 %tmp114 to i64
  %tmp115 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc135 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp115, i32 0, i32 30
  %tmp116 = load i32**, i32*** %tsc135, align 8
  %arrayidx136 = getelementptr inbounds i32*, i32** %tmp116, i64 %idxprom134
  %tmp117 = load i32*, i32** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %tmp117, i64 0
  store i32 -987654321, i32* %arrayidx137, align 4
  br label %for.inc138

for.inc138:                                       ; preds = %for.body133
  %tmp118 = load i32, i32* %x, align 4
  %inc139 = add nsw i32 %tmp118, 1
  store i32 %inc139, i32* %x, align 4
  br label %for.cond130

for.end140:                                       ; preds = %for.cond130
  %tmp119 = load i32, i32* %M.addr, align 4
  %add141 = add nsw i32 %tmp119, 1
  %conv142 = sext i32 %add141 to i64
  %mul143 = mul i64 %conv142, 4
  %call144 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 157, i64 %mul143)
  %tmp120 = bitcast i8* %call144 to float*
  %tmp121 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp121, i32 0, i32 26
  store float* %tmp120, float** %begin, align 8
  %tmp122 = load i32, i32* %M.addr, align 4
  %add145 = add nsw i32 %tmp122, 1
  %conv146 = sext i32 %add145 to i64
  %mul147 = mul i64 %conv146, 4
  %call148 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 158, i64 %mul147)
  %tmp123 = bitcast i8* %call148 to float*
  %tmp124 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp124, i32 0, i32 27
  store float* %tmp123, float** %end, align 8
  %tmp125 = load i32, i32* %M.addr, align 4
  %add149 = add nsw i32 %tmp125, 1
  %conv150 = sext i32 %add149 to i64
  %mul151 = mul i64 %conv150, 4
  %call152 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 160, i64 %mul151)
  %tmp126 = bitcast i8* %call152 to i32*
  %tmp127 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp127, i32 0, i32 39
  store i32* %tmp126, i32** %bsc_mem, align 8
  %tmp128 = load i32, i32* %M.addr, align 4
  %add153 = add nsw i32 %tmp128, 1
  %conv154 = sext i32 %add153 to i64
  %mul155 = mul i64 %conv154, 4
  %call156 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 161, i64 %mul155)
  %tmp129 = bitcast i8* %call156 to i32*
  %tmp130 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp130, i32 0, i32 40
  store i32* %tmp129, i32** %esc_mem, align 8
  %tmp131 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc_mem157 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp131, i32 0, i32 39
  %tmp132 = load i32*, i32** %bsc_mem157, align 8
  %tmp133 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp133, i32 0, i32 34
  store i32* %tmp132, i32** %bsc, align 8
  %tmp134 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc_mem158 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp134, i32 0, i32 40
  %tmp135 = load i32*, i32** %esc_mem158, align 8
  %tmp136 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp136, i32 0, i32 35
  store i32* %tmp135, i32** %esc, align 8
  ret void
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define void @FreePlan7(%struct.plan7_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  %tmp = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp, i32 0, i32 0
  %tmp1 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %tmp1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp2, i32 0, i32 0
  %tmp3 = load i8*, i8** %name1, align 8
  call void @free(i8* %tmp3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp4, i32 0, i32 1
  %tmp5 = load i8*, i8** %acc, align 8
  %cmp2 = icmp ne i8* %tmp5, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %tmp6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp6, i32 0, i32 1
  %tmp7 = load i8*, i8** %acc4, align 8
  call void @free(i8* %tmp7) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %tmp8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp8, i32 0, i32 2
  %tmp9 = load i8*, i8** %desc, align 8
  %cmp6 = icmp ne i8* %tmp9, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %tmp10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc8 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp10, i32 0, i32 2
  %tmp11 = load i8*, i8** %desc8, align 8
  call void @free(i8* %tmp11) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %tmp12 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %rf = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp12, i32 0, i32 3
  %tmp13 = load i8*, i8** %rf, align 8
  %cmp10 = icmp ne i8* %tmp13, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %tmp14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %rf12 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp14, i32 0, i32 3
  %tmp15 = load i8*, i8** %rf12, align 8
  call void @free(i8* %tmp15) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %tmp16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %cs = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp16, i32 0, i32 4
  %tmp17 = load i8*, i8** %cs, align 8
  %cmp14 = icmp ne i8* %tmp17, null
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end13
  %tmp18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %cs16 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp18, i32 0, i32 4
  %tmp19 = load i8*, i8** %cs16, align 8
  call void @free(i8* %tmp19) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13
  %tmp20 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ca = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp20, i32 0, i32 5
  %tmp21 = load i8*, i8** %ca, align 8
  %cmp18 = icmp ne i8* %tmp21, null
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %tmp22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ca20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp22, i32 0, i32 5
  %tmp23 = load i8*, i8** %ca20, align 8
  call void @free(i8* %tmp23) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17
  %tmp24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp24, i32 0, i32 6
  %tmp25 = load i8*, i8** %comlog, align 8
  %cmp22 = icmp ne i8* %tmp25, null
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end21
  %tmp26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog24 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp26, i32 0, i32 6
  %tmp27 = load i8*, i8** %comlog24, align 8
  call void @free(i8* %tmp27) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21
  %tmp28 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ctime = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp28, i32 0, i32 8
  %tmp29 = load i8*, i8** %ctime, align 8
  %cmp26 = icmp ne i8* %tmp29, null
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end25
  %tmp30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ctime28 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp30, i32 0, i32 8
  %tmp31 = load i8*, i8** %ctime28, align 8
  call void @free(i8* %tmp31) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25
  %tmp32 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %map = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp32, i32 0, i32 9
  %tmp33 = load i32*, i32** %map, align 8
  %cmp30 = icmp ne i32* %tmp33, null
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end29
  %tmp34 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %map32 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp34, i32 0, i32 9
  %tmp35 = load i32*, i32** %map32, align 8
  %tmp36 = bitcast i32* %tmp35 to i8*
  call void @free(i8* %tmp36) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29
  %tmp37 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tpri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp37, i32 0, i32 11
  %tmp38 = load i32*, i32** %tpri, align 8
  %cmp34 = icmp ne i32* %tmp38, null
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end33
  %tmp39 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tpri36 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp39, i32 0, i32 11
  %tmp40 = load i32*, i32** %tpri36, align 8
  %tmp41 = bitcast i32* %tmp40 to i8*
  call void @free(i8* %tmp41) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33
  %tmp42 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp42, i32 0, i32 12
  %tmp43 = load i32*, i32** %mpri, align 8
  %cmp38 = icmp ne i32* %tmp43, null
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end37
  %tmp44 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mpri40 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp44, i32 0, i32 12
  %tmp45 = load i32*, i32** %mpri40, align 8
  %tmp46 = bitcast i32* %tmp45 to i8*
  call void @free(i8* %tmp46) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37
  %tmp47 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ipri = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp47, i32 0, i32 13
  %tmp48 = load i32*, i32** %ipri, align 8
  %cmp42 = icmp ne i32* %tmp48, null
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end41
  %tmp49 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ipri44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp49, i32 0, i32 13
  %tmp50 = load i32*, i32** %ipri44, align 8
  %tmp51 = bitcast i32* %tmp50 to i8*
  call void @free(i8* %tmp51) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41
  %tmp52 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp52, i32 0, i32 39
  %tmp53 = load i32*, i32** %bsc_mem, align 8
  %cmp46 = icmp ne i32* %tmp53, null
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end45
  %tmp54 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc_mem48 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp54, i32 0, i32 39
  %tmp55 = load i32*, i32** %bsc_mem48, align 8
  %tmp56 = bitcast i32* %tmp55 to i8*
  call void @free(i8* %tmp56) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45
  %tmp57 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp57, i32 0, i32 26
  %tmp58 = load float*, float** %begin, align 8
  %cmp50 = icmp ne float* %tmp58, null
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end49
  %tmp59 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin52 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp59, i32 0, i32 26
  %tmp60 = load float*, float** %begin52, align 8
  %tmp61 = bitcast float* %tmp60 to i8*
  call void @free(i8* %tmp61) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end49
  %tmp62 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp62, i32 0, i32 40
  %tmp63 = load i32*, i32** %esc_mem, align 8
  %cmp54 = icmp ne i32* %tmp63, null
  br i1 %cmp54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end53
  %tmp64 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc_mem56 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp64, i32 0, i32 40
  %tmp65 = load i32*, i32** %esc_mem56, align 8
  %tmp66 = bitcast i32* %tmp65 to i8*
  call void @free(i8* %tmp66) #5
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end53
  %tmp67 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp67, i32 0, i32 27
  %tmp68 = load float*, float** %end, align 8
  %cmp58 = icmp ne float* %tmp68, null
  br i1 %cmp58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end57
  %tmp69 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end60 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp69, i32 0, i32 27
  %tmp70 = load float*, float** %end60, align 8
  %tmp71 = bitcast float* %tmp70 to i8*
  call void @free(i8* %tmp71) #5
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end57
  %tmp72 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp72, i32 0, i32 37
  %tmp73 = load i32*, i32** %msc_mem, align 8
  %cmp62 = icmp ne i32* %tmp73, null
  br i1 %cmp62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end61
  %tmp74 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc_mem64 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp74, i32 0, i32 37
  %tmp75 = load i32*, i32** %msc_mem64, align 8
  %tmp76 = bitcast i32* %tmp75 to i8*
  call void @free(i8* %tmp76) #5
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end61
  %tmp77 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp77, i32 0, i32 38
  %tmp78 = load i32*, i32** %isc_mem, align 8
  %cmp66 = icmp ne i32* %tmp78, null
  br i1 %cmp66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end65
  %tmp79 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc_mem68 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp79, i32 0, i32 38
  %tmp80 = load i32*, i32** %isc_mem68, align 8
  %tmp81 = bitcast i32* %tmp80 to i8*
  call void @free(i8* %tmp81) #5
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end65
  %tmp82 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc_mem = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp82, i32 0, i32 36
  %tmp83 = load i32*, i32** %tsc_mem, align 8
  %cmp70 = icmp ne i32* %tmp83, null
  br i1 %cmp70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end69
  %tmp84 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc_mem72 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp84, i32 0, i32 36
  %tmp85 = load i32*, i32** %tsc_mem72, align 8
  %tmp86 = bitcast i32* %tmp85 to i8*
  call void @free(i8* %tmp86) #5
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end69
  %tmp87 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp87, i32 0, i32 22
  %tmp88 = load float**, float*** %mat, align 8
  %cmp74 = icmp ne float** %tmp88, null
  br i1 %cmp74, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end73
  %tmp89 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat76 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp89, i32 0, i32 22
  %tmp90 = load float**, float*** %mat76, align 8
  %arrayidx = getelementptr inbounds float*, float** %tmp90, i64 0
  %tmp91 = load float*, float** %arrayidx, align 8
  %tmp92 = bitcast float* %tmp91 to i8*
  call void @free(i8* %tmp92) #5
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end73
  %tmp93 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp93, i32 0, i32 23
  %tmp94 = load float**, float*** %ins, align 8
  %cmp78 = icmp ne float** %tmp94, null
  br i1 %cmp78, label %if.then79, label %if.end82

if.then79:                                        ; preds = %if.end77
  %tmp95 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins80 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp95, i32 0, i32 23
  %tmp96 = load float**, float*** %ins80, align 8
  %arrayidx81 = getelementptr inbounds float*, float** %tmp96, i64 0
  %tmp97 = load float*, float** %arrayidx81, align 8
  %tmp98 = bitcast float* %tmp97 to i8*
  call void @free(i8* %tmp98) #5
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end77
  %tmp99 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp99, i32 0, i32 21
  %tmp100 = load float**, float*** %t, align 8
  %cmp83 = icmp ne float** %tmp100, null
  br i1 %cmp83, label %if.then84, label %if.end87

if.then84:                                        ; preds = %if.end82
  %tmp101 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t85 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp101, i32 0, i32 21
  %tmp102 = load float**, float*** %t85, align 8
  %arrayidx86 = getelementptr inbounds float*, float** %tmp102, i64 0
  %tmp103 = load float*, float** %arrayidx86, align 8
  %tmp104 = bitcast float* %tmp103 to i8*
  call void @free(i8* %tmp104) #5
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end82
  %tmp105 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp105, i32 0, i32 31
  %tmp106 = load i32**, i32*** %msc, align 8
  %cmp88 = icmp ne i32** %tmp106, null
  br i1 %cmp88, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.end87
  %tmp107 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc90 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp107, i32 0, i32 31
  %tmp108 = load i32**, i32*** %msc90, align 8
  %tmp109 = bitcast i32** %tmp108 to i8*
  call void @free(i8* %tmp109) #5
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end87
  %tmp110 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp110, i32 0, i32 32
  %tmp111 = load i32**, i32*** %isc, align 8
  %cmp92 = icmp ne i32** %tmp111, null
  br i1 %cmp92, label %if.then93, label %if.end95

if.then93:                                        ; preds = %if.end91
  %tmp112 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc94 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp112, i32 0, i32 32
  %tmp113 = load i32**, i32*** %isc94, align 8
  %tmp114 = bitcast i32** %tmp113 to i8*
  call void @free(i8* %tmp114) #5
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end91
  %tmp115 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp115, i32 0, i32 30
  %tmp116 = load i32**, i32*** %tsc, align 8
  %cmp96 = icmp ne i32** %tmp116, null
  br i1 %cmp96, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.end95
  %tmp117 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc98 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp117, i32 0, i32 30
  %tmp118 = load i32**, i32*** %tsc98, align 8
  %tmp119 = bitcast i32** %tmp118 to i8*
  call void @free(i8* %tmp119) #5
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end95
  %tmp120 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat100 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp120, i32 0, i32 22
  %tmp121 = load float**, float*** %mat100, align 8
  %cmp101 = icmp ne float** %tmp121, null
  br i1 %cmp101, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.end99
  %tmp122 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat103 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp122, i32 0, i32 22
  %tmp123 = load float**, float*** %mat103, align 8
  %tmp124 = bitcast float** %tmp123 to i8*
  call void @free(i8* %tmp124) #5
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end99
  %tmp125 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins105 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp125, i32 0, i32 23
  %tmp126 = load float**, float*** %ins105, align 8
  %cmp106 = icmp ne float** %tmp126, null
  br i1 %cmp106, label %if.then107, label %if.end109

if.then107:                                       ; preds = %if.end104
  %tmp127 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins108 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp127, i32 0, i32 23
  %tmp128 = load float**, float*** %ins108, align 8
  %tmp129 = bitcast float** %tmp128 to i8*
  call void @free(i8* %tmp129) #5
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end104
  %tmp130 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t110 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp130, i32 0, i32 21
  %tmp131 = load float**, float*** %t110, align 8
  %cmp111 = icmp ne float** %tmp131, null
  br i1 %cmp111, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.end109
  %tmp132 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t113 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp132, i32 0, i32 21
  %tmp133 = load float**, float*** %t113, align 8
  %tmp134 = bitcast float** %tmp133 to i8*
  call void @free(i8* %tmp134) #5
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end109
  %tmp135 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dnam = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp135, i32 0, i32 41
  %tmp136 = load i32**, i32*** %dnam, align 8
  %cmp115 = icmp ne i32** %tmp136, null
  br i1 %cmp115, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.end114
  %tmp137 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dnam117 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp137, i32 0, i32 41
  %tmp138 = load i32**, i32*** %dnam117, align 8
  %tmp139 = bitcast i32** %tmp138 to i8*
  call void @free(i8* %tmp139) #5
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.end114
  %tmp140 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dnai = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp140, i32 0, i32 42
  %tmp141 = load i32**, i32*** %dnai, align 8
  %cmp119 = icmp ne i32** %tmp141, null
  br i1 %cmp119, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.end118
  %tmp142 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dnai121 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp142, i32 0, i32 42
  %tmp143 = load i32**, i32*** %dnai121, align 8
  %tmp144 = bitcast i32** %tmp143 to i8*
  call void @free(i8* %tmp144) #5
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end118
  %tmp145 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tmp146 = bitcast %struct.plan7_s* %tmp145 to i8*
  call void @free(i8* %tmp146) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @ZeroPlan7(%struct.plan7_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %k = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp = load i32, i32* %k, align 4
  %tmp1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp1, i32 0, i32 20
  %tmp2 = load i32, i32* %M, align 4
  %cmp = icmp slt i32 %tmp, %tmp2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %tmp3 to i64
  %tmp4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp4, i32 0, i32 21
  %tmp5 = load float**, float*** %t, align 8
  %arrayidx = getelementptr inbounds float*, float** %tmp5, i64 %idxprom
  %tmp6 = load float*, float** %arrayidx, align 8
  call void @FSet(float* %tmp6, i32 7, float 0.000000e+00)
  %tmp7 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %tmp7 to i64
  %tmp8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp8, i32 0, i32 22
  %tmp9 = load float**, float*** %mat, align 8
  %arrayidx2 = getelementptr inbounds float*, float** %tmp9, i64 %idxprom1
  %tmp10 = load float*, float** %arrayidx2, align 8
  %tmp11 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %tmp10, i32 %tmp11, float 0.000000e+00)
  %tmp12 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %tmp12 to i64
  %tmp13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp13, i32 0, i32 23
  %tmp14 = load float**, float*** %ins, align 8
  %arrayidx4 = getelementptr inbounds float*, float** %tmp14, i64 %idxprom3
  %tmp15 = load float*, float** %arrayidx4, align 8
  %tmp16 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %tmp15, i32 %tmp16, float 0.000000e+00)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %tmp17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tmp18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M5 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp18, i32 0, i32 20
  %tmp19 = load i32, i32* %M5, align 4
  %idxprom6 = sext i32 %tmp19 to i64
  %tmp20 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat7 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp20, i32 0, i32 22
  %tmp21 = load float**, float*** %mat7, align 8
  %arrayidx8 = getelementptr inbounds float*, float** %tmp21, i64 %idxprom6
  %tmp22 = load float*, float** %arrayidx8, align 8
  %tmp23 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %tmp22, i32 %tmp23, float 0.000000e+00)
  %tmp24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp24, i32 0, i32 24
  store float 0.000000e+00, float* %tbd1, align 4
  %tmp25 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp25, i32 0, i32 26
  %tmp26 = load float*, float** %begin, align 8
  %add.ptr = getelementptr inbounds float, float* %tmp26, i64 1
  %tmp27 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M9 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp27, i32 0, i32 20
  %tmp28 = load i32, i32* %M9, align 4
  call void @FSet(float* %add.ptr, i32 %tmp28, float 0.000000e+00)
  %tmp29 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp29, i32 0, i32 27
  %tmp30 = load float*, float** %end, align 8
  %add.ptr10 = getelementptr inbounds float, float* %tmp30, i64 1
  %tmp31 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp31, i32 0, i32 20
  %tmp32 = load i32, i32* %M11, align 4
  call void @FSet(float* %add.ptr10, i32 %tmp32, float 0.000000e+00)
  store i32 0, i32* %k, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc17, %for.end
  %tmp33 = load i32, i32* %k, align 4
  %cmp13 = icmp slt i32 %tmp33, 4
  br i1 %cmp13, label %for.body14, label %for.end19

for.body14:                                       ; preds = %for.cond12
  %tmp34 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %tmp34 to i64
  %tmp35 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp35, i32 0, i32 25
  %arrayidx16 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 %idxprom15
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %arrayidx16, i32 0, i32 0
  call void @FSet(float* %arraydecay, i32 2, float 0.000000e+00)
  br label %for.inc17

for.inc17:                                        ; preds = %for.body14
  %tmp36 = load i32, i32* %k, align 4
  %inc18 = add nsw i32 %tmp36, 1
  store i32 %inc18, i32* %k, align 4
  br label %for.cond12

for.end19:                                        ; preds = %for.cond12
  %tmp37 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp37, i32 0, i32 47
  %tmp38 = load i32, i32* %flags, align 4
  %and = and i32 %tmp38, -2
  store i32 %and, i32* %flags, align 4
  %tmp39 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp39, i32 0, i32 47
  %tmp40 = load i32, i32* %flags20, align 4
  %and21 = and i32 %tmp40, -33
  store i32 %and21, i32* %flags20, align 4
  ret void
}

declare void @FSet(float*, i32, float) #1

; Function Attrs: nounwind uwtable
define void @Plan7SetName(%struct.plan7_s* %hmm, i8* %name) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %tmp = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp, i32 0, i32 0
  %tmp1 = load i8*, i8** %name1, align 8
  %cmp = icmp ne i8* %tmp1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp2, i32 0, i32 0
  %tmp3 = load i8*, i8** %name2, align 8
  call void @free(i8* %tmp3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp4 = load i8*, i8** %name.addr, align 8
  %call = call i8* @Strdup(i8* %tmp4)
  %tmp5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name3 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp5, i32 0, i32 0
  store i8* %call, i8** %name3, align 8
  %tmp6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp6, i32 0, i32 0
  %tmp7 = load i8*, i8** %name4, align 8
  call void @StringChop(i8* %tmp7)
  ret void
}

declare i8* @Strdup(i8*) #1

declare void @StringChop(i8*) #1

; Function Attrs: nounwind uwtable
define void @Plan7SetAccession(%struct.plan7_s* %hmm, i8* %acc) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %acc.addr = alloca i8*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8* %acc, i8** %acc.addr, align 8
  %tmp = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp, i32 0, i32 1
  %tmp1 = load i8*, i8** %acc1, align 8
  %cmp = icmp ne i8* %tmp1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp2, i32 0, i32 1
  %tmp3 = load i8*, i8** %acc2, align 8
  call void @free(i8* %tmp3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp4 = load i8*, i8** %acc.addr, align 8
  %call = call i8* @Strdup(i8* %tmp4)
  %tmp5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc3 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp5, i32 0, i32 1
  store i8* %call, i8** %acc3, align 8
  %tmp6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp6, i32 0, i32 1
  %tmp7 = load i8*, i8** %acc4, align 8
  call void @StringChop(i8* %tmp7)
  %tmp8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp8, i32 0, i32 47
  %tmp9 = load i32, i32* %flags, align 4
  %or = or i32 %tmp9, 512
  store i32 %or, i32* %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plan7SetDescription(%struct.plan7_s* %hmm, i8* %desc) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %desc.addr = alloca i8*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8* %desc, i8** %desc.addr, align 8
  %tmp = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp, i32 0, i32 2
  %tmp1 = load i8*, i8** %desc1, align 8
  %cmp = icmp ne i8* %tmp1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp2, i32 0, i32 2
  %tmp3 = load i8*, i8** %desc2, align 8
  call void @free(i8* %tmp3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp4 = load i8*, i8** %desc.addr, align 8
  %call = call i8* @Strdup(i8* %tmp4)
  %tmp5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc3 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp5, i32 0, i32 2
  store i8* %call, i8** %desc3, align 8
  %tmp6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp6, i32 0, i32 2
  %tmp7 = load i8*, i8** %desc4, align 8
  call void @StringChop(i8* %tmp7)
  %tmp8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp8, i32 0, i32 47
  %tmp9 = load i32, i32* %flags, align 4
  %or = or i32 %tmp9, 2
  store i32 %or, i32* %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plan7ComlogAppend(%struct.plan7_s* %hmm, i32 %argc, i8** %argv) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %tmp = load i32, i32* %argc.addr, align 4
  store i32 %tmp, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp1 = load i32, i32* %i, align 4
  %tmp2 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %tmp1, %tmp2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %tmp3 to i64
  %tmp4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %tmp4, i64 %idxprom
  %tmp5 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %tmp5) #6
  %tmp6 = load i32, i32* %len, align 4
  %conv = sext i32 %tmp6 to i64
  %add = add i64 %conv, %call
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %tmp7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tmp8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp8, i32 0, i32 6
  %tmp9 = load i8*, i8** %comlog, align 8
  %cmp2 = icmp ne i8* %tmp9, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %tmp10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp10, i32 0, i32 6
  %tmp11 = load i8*, i8** %comlog4, align 8
  %call5 = call i64 @strlen(i8* %tmp11) #6
  %tmp12 = load i32, i32* %len, align 4
  %conv6 = sext i32 %tmp12 to i64
  %add7 = add i64 %conv6, %call5
  %conv8 = trunc i64 %add7 to i32
  store i32 %conv8, i32* %len, align 4
  %tmp13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog9 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp13, i32 0, i32 6
  %tmp14 = load i8*, i8** %comlog9, align 8
  %tmp15 = load i32, i32* %len, align 4
  %add10 = add nsw i32 %tmp15, 1
  %conv11 = sext i32 %add10 to i64
  %mul = mul i64 1, %conv11
  %call12 = call i8* @sre_realloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 296, i8* %tmp14, i64 %mul)
  %tmp16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog13 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp16, i32 0, i32 6
  store i8* %call12, i8** %comlog13, align 8
  br label %if.end

if.else:                                          ; preds = %for.end
  %tmp17 = load i32, i32* %len, align 4
  %add14 = add nsw i32 %tmp17, 1
  %conv15 = sext i32 %add14 to i64
  %mul16 = mul i64 1, %conv15
  %call17 = call i8* @sre_malloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 300, i64 %mul16)
  %tmp18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog18 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp18, i32 0, i32 6
  store i8* %call17, i8** %comlog18, align 8
  %tmp19 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog19 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp19, i32 0, i32 6
  %tmp20 = load i8*, i8** %comlog19, align 8
  store i8 0, i8* %tmp20, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp21 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp21, i32 0, i32 6
  %tmp22 = load i8*, i8** %comlog20, align 8
  %call21 = call i8* @strcat(i8* %tmp22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str1, i32 0, i32 0)) #5
  store i32 0, i32* %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc36, %if.end
  %tmp23 = load i32, i32* %i, align 4
  %tmp24 = load i32, i32* %argc.addr, align 4
  %cmp23 = icmp slt i32 %tmp23, %tmp24
  br i1 %cmp23, label %for.body25, label %for.end38

for.body25:                                       ; preds = %for.cond22
  %tmp25 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog26 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp25, i32 0, i32 6
  %tmp26 = load i8*, i8** %comlog26, align 8
  %tmp27 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %tmp27 to i64
  %tmp28 = load i8**, i8*** %argv.addr, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %tmp28, i64 %idxprom27
  %tmp29 = load i8*, i8** %arrayidx28, align 8
  %call29 = call i8* @strcat(i8* %tmp26, i8* %tmp29) #5
  %tmp30 = load i32, i32* %i, align 4
  %tmp31 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %tmp31, 1
  %cmp30 = icmp slt i32 %tmp30, %sub
  br i1 %cmp30, label %if.then32, label %if.end35

if.then32:                                        ; preds = %for.body25
  %tmp32 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %comlog33 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp32, i32 0, i32 6
  %tmp33 = load i8*, i8** %comlog33, align 8
  %call34 = call i8* @strcat(i8* %tmp33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str2, i32 0, i32 0)) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %for.body25
  br label %for.inc36

for.inc36:                                        ; preds = %if.end35
  %tmp34 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %tmp34, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond22

for.end38:                                        ; preds = %for.cond22
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @Plan7SetCtime(%struct.plan7_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %date = alloca i64, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  %call = call i64 @time(i64* null) #5
  store i64 %call, i64* %date, align 8
  %tmp = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ctime = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp, i32 0, i32 8
  %tmp1 = load i8*, i8** %ctime, align 8
  %cmp = icmp ne i8* %tmp1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ctime1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp2, i32 0, i32 8
  %tmp3 = load i8*, i8** %ctime1, align 8
  call void @free(i8* %tmp3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i8* @ctime(i64* %date) #5
  %call3 = call i8* @Strdup(i8* %call2)
  %tmp4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ctime4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp4, i32 0, i32 8
  store i8* %call3, i8** %ctime4, align 8
  %tmp5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ctime5 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp5, i32 0, i32 8
  %tmp6 = load i8*, i8** %ctime5, align 8
  call void @StringChop(i8* %tmp6)
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare i8* @ctime(i64*) #2

; Function Attrs: nounwind uwtable
define void @Plan7SetNullModel(%struct.plan7_s* %hmm, float* %null, float %p1) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %null.addr = alloca float*, align 8
  %p1.addr = alloca float, align 4
  %x = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store float* %null, float** %null.addr, align 8
  store float %p1, float* %p1.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp = load i32, i32* %x, align 4
  %tmp1 = load i32, i32* @Alphabet_size, align 4
  %cmp = icmp slt i32 %tmp, %tmp1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %tmp2 to i64
  %tmp3 = load float*, float** %null.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %tmp3, i64 %idxprom
  %tmp4 = load float, float* %arrayidx, align 4
  %tmp5 = load i32, i32* %x, align 4
  %idxprom1 = sext i32 %tmp5 to i64
  %tmp6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp6, i32 0, i32 28
  %arrayidx3 = getelementptr inbounds [20 x float], [20 x float]* %null2, i32 0, i64 %idxprom1
  store float %tmp4, float* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp7 = load i32, i32* %x, align 4
  %inc = add nsw i32 %tmp7, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tmp8 = load float, float* %p1.addr, align 4
  %tmp9 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp9, i32 0, i32 29
  store float %tmp8, float* %p14, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @P7Logoddsify(%struct.plan7_s* %hmm, i32 %viterbi_mode) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %viterbi_mode.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %accum = alloca float, align 4
  %tbm = alloca float, align 4
  %tme = alloca float, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32 %viterbi_mode, i32* %viterbi_mode.addr, align 4
  %tmp = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp, i32 0, i32 47
  %tmp1 = load i32, i32* %flags, align 4
  %and = and i32 %tmp1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc59, %if.end
  %tmp2 = load i32, i32* %k, align 4
  %tmp3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp3, i32 0, i32 20
  %tmp4 = load i32, i32* %M, align 4
  %cmp = icmp sle i32 %tmp2, %tmp4
  br i1 %cmp, label %for.body, label %for.end61

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %tmp5 = load i32, i32* %x, align 4
  %tmp6 = load i32, i32* @Alphabet_size, align 4
  %cmp2 = icmp slt i32 %tmp5, %tmp6
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %tmp7 = load i32, i32* %x, align 4
  %idxprom = sext i32 %tmp7 to i64
  %tmp8 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %tmp8 to i64
  %tmp9 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp9, i32 0, i32 22
  %tmp10 = load float**, float*** %mat, align 8
  %arrayidx = getelementptr inbounds float*, float** %tmp10, i64 %idxprom4
  %tmp11 = load float*, float** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds float, float* %tmp11, i64 %idxprom
  %tmp12 = load float, float* %arrayidx5, align 4
  %tmp13 = load i32, i32* %x, align 4
  %idxprom6 = sext i32 %tmp13 to i64
  %tmp14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp14, i32 0, i32 28
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %null, i32 0, i64 %idxprom6
  %tmp15 = load float, float* %arrayidx7, align 4
  %call = call i32 @Prob2Score(float %tmp12, float %tmp15)
  %tmp16 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %tmp16 to i64
  %tmp17 = load i32, i32* %x, align 4
  %idxprom9 = sext i32 %tmp17 to i64
  %tmp18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp18, i32 0, i32 31
  %tmp19 = load i32**, i32*** %msc, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %tmp19, i64 %idxprom9
  %tmp20 = load i32*, i32** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %tmp20, i64 %idxprom8
  store i32 %call, i32* %arrayidx11, align 4
  %tmp21 = load i32, i32* %k, align 4
  %tmp22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M12 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp22, i32 0, i32 20
  %tmp23 = load i32, i32* %M12, align 4
  %cmp13 = icmp slt i32 %tmp21, %tmp23
  br i1 %cmp13, label %if.then14, label %if.end27

if.then14:                                        ; preds = %for.body3
  %tmp24 = load i32, i32* %x, align 4
  %idxprom15 = sext i32 %tmp24 to i64
  %tmp25 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %tmp25 to i64
  %tmp26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp26, i32 0, i32 23
  %tmp27 = load float**, float*** %ins, align 8
  %arrayidx17 = getelementptr inbounds float*, float** %tmp27, i64 %idxprom16
  %tmp28 = load float*, float** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds float, float* %tmp28, i64 %idxprom15
  %tmp29 = load float, float* %arrayidx18, align 4
  %tmp30 = load i32, i32* %x, align 4
  %idxprom19 = sext i32 %tmp30 to i64
  %tmp31 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp31, i32 0, i32 28
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %null20, i32 0, i64 %idxprom19
  %tmp32 = load float, float* %arrayidx21, align 4
  %call22 = call i32 @Prob2Score(float %tmp29, float %tmp32)
  %tmp33 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %tmp33 to i64
  %tmp34 = load i32, i32* %x, align 4
  %idxprom24 = sext i32 %tmp34 to i64
  %tmp35 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp35, i32 0, i32 32
  %tmp36 = load i32**, i32*** %isc, align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %tmp36, i64 %idxprom24
  %tmp37 = load i32*, i32** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %tmp37, i64 %idxprom23
  store i32 %call22, i32* %arrayidx26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then14, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %tmp38 = load i32, i32* %x, align 4
  %inc = add nsw i32 %tmp38, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %tmp39 = load i32, i32* @Alphabet_size, align 4
  store i32 %tmp39, i32* %x, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc56, %for.end
  %tmp40 = load i32, i32* %x, align 4
  %tmp41 = load i32, i32* @Alphabet_iupac, align 4
  %cmp29 = icmp slt i32 %tmp40, %tmp41
  br i1 %cmp29, label %for.body30, label %for.end58

for.body30:                                       ; preds = %for.cond28
  %tmp42 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %tmp42 to i64
  %tmp43 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat32 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp43, i32 0, i32 22
  %tmp44 = load float**, float*** %mat32, align 8
  %arrayidx33 = getelementptr inbounds float*, float** %tmp44, i64 %idxprom31
  %tmp45 = load float*, float** %arrayidx33, align 8
  %tmp46 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null34 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp46, i32 0, i32 28
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %null34, i32 0, i32 0
  %tmp47 = load i32, i32* %x, align 4
  %call35 = call i32 @DegenerateSymbolScore(float* %tmp45, float* %arraydecay, i32 %tmp47)
  %tmp48 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %tmp48 to i64
  %tmp49 = load i32, i32* %x, align 4
  %idxprom37 = sext i32 %tmp49 to i64
  %tmp50 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc38 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp50, i32 0, i32 31
  %tmp51 = load i32**, i32*** %msc38, align 8
  %arrayidx39 = getelementptr inbounds i32*, i32** %tmp51, i64 %idxprom37
  %tmp52 = load i32*, i32** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %tmp52, i64 %idxprom36
  store i32 %call35, i32* %arrayidx40, align 4
  %tmp53 = load i32, i32* %k, align 4
  %tmp54 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M41 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp54, i32 0, i32 20
  %tmp55 = load i32, i32* %M41, align 4
  %cmp42 = icmp slt i32 %tmp53, %tmp55
  br i1 %cmp42, label %if.then43, label %if.end55

if.then43:                                        ; preds = %for.body30
  %tmp56 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %tmp56 to i64
  %tmp57 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins45 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp57, i32 0, i32 23
  %tmp58 = load float**, float*** %ins45, align 8
  %arrayidx46 = getelementptr inbounds float*, float** %tmp58, i64 %idxprom44
  %tmp59 = load float*, float** %arrayidx46, align 8
  %tmp60 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null47 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp60, i32 0, i32 28
  %arraydecay48 = getelementptr inbounds [20 x float], [20 x float]* %null47, i32 0, i32 0
  %tmp61 = load i32, i32* %x, align 4
  %call49 = call i32 @DegenerateSymbolScore(float* %tmp59, float* %arraydecay48, i32 %tmp61)
  %tmp62 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %tmp62 to i64
  %tmp63 = load i32, i32* %x, align 4
  %idxprom51 = sext i32 %tmp63 to i64
  %tmp64 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc52 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp64, i32 0, i32 32
  %tmp65 = load i32**, i32*** %isc52, align 8
  %arrayidx53 = getelementptr inbounds i32*, i32** %tmp65, i64 %idxprom51
  %tmp66 = load i32*, i32** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %tmp66, i64 %idxprom50
  store i32 %call49, i32* %arrayidx54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then43, %for.body30
  br label %for.inc56

for.inc56:                                        ; preds = %if.end55
  %tmp67 = load i32, i32* %x, align 4
  %inc57 = add nsw i32 %tmp67, 1
  store i32 %inc57, i32* %x, align 4
  br label %for.cond28

for.end58:                                        ; preds = %for.cond28
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %tmp68 = load i32, i32* %k, align 4
  %inc60 = add nsw i32 %tmp68, 1
  store i32 %inc60, i32* %k, align 4
  br label %for.cond

for.end61:                                        ; preds = %for.cond
  store i32 1, i32* %k, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc131, %for.end61
  %tmp69 = load i32, i32* %k, align 4
  %tmp70 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M63 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp70, i32 0, i32 20
  %tmp71 = load i32, i32* %M63, align 4
  %cmp64 = icmp slt i32 %tmp69, %tmp71
  br i1 %cmp64, label %for.body65, label %for.end133

for.body65:                                       ; preds = %for.cond62
  %tmp72 = load i32, i32* %k, align 4
  %idxprom66 = sext i32 %tmp72 to i64
  %tmp73 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp73, i32 0, i32 21
  %tmp74 = load float**, float*** %t, align 8
  %arrayidx67 = getelementptr inbounds float*, float** %tmp74, i64 %idxprom66
  %tmp75 = load float*, float** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds float, float* %tmp75, i64 0
  %tmp76 = load float, float* %arrayidx68, align 4
  %tmp77 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp77, i32 0, i32 29
  %tmp78 = load float, float* %p1, align 4
  %call69 = call i32 @Prob2Score(float %tmp76, float %tmp78)
  %tmp79 = load i32, i32* %k, align 4
  %idxprom70 = sext i32 %tmp79 to i64
  %tmp80 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp80, i32 0, i32 30
  %tmp81 = load i32**, i32*** %tsc, align 8
  %arrayidx71 = getelementptr inbounds i32*, i32** %tmp81, i64 0
  %tmp82 = load i32*, i32** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %tmp82, i64 %idxprom70
  store i32 %call69, i32* %arrayidx72, align 4
  %tmp83 = load i32, i32* %k, align 4
  %idxprom73 = sext i32 %tmp83 to i64
  %tmp84 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t74 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp84, i32 0, i32 21
  %tmp85 = load float**, float*** %t74, align 8
  %arrayidx75 = getelementptr inbounds float*, float** %tmp85, i64 %idxprom73
  %tmp86 = load float*, float** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds float, float* %tmp86, i64 1
  %tmp87 = load float, float* %arrayidx76, align 4
  %tmp88 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p177 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp88, i32 0, i32 29
  %tmp89 = load float, float* %p177, align 4
  %call78 = call i32 @Prob2Score(float %tmp87, float %tmp89)
  %tmp90 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %tmp90 to i64
  %tmp91 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc80 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp91, i32 0, i32 30
  %tmp92 = load i32**, i32*** %tsc80, align 8
  %arrayidx81 = getelementptr inbounds i32*, i32** %tmp92, i64 1
  %tmp93 = load i32*, i32** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %tmp93, i64 %idxprom79
  store i32 %call78, i32* %arrayidx82, align 4
  %tmp94 = load i32, i32* %k, align 4
  %idxprom83 = sext i32 %tmp94 to i64
  %tmp95 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t84 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp95, i32 0, i32 21
  %tmp96 = load float**, float*** %t84, align 8
  %arrayidx85 = getelementptr inbounds float*, float** %tmp96, i64 %idxprom83
  %tmp97 = load float*, float** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds float, float* %tmp97, i64 2
  %tmp98 = load float, float* %arrayidx86, align 4
  %call87 = call i32 @Prob2Score(float %tmp98, float 1.000000e+00)
  %tmp99 = load i32, i32* %k, align 4
  %idxprom88 = sext i32 %tmp99 to i64
  %tmp100 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc89 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp100, i32 0, i32 30
  %tmp101 = load i32**, i32*** %tsc89, align 8
  %arrayidx90 = getelementptr inbounds i32*, i32** %tmp101, i64 2
  %tmp102 = load i32*, i32** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %tmp102, i64 %idxprom88
  store i32 %call87, i32* %arrayidx91, align 4
  %tmp103 = load i32, i32* %k, align 4
  %idxprom92 = sext i32 %tmp103 to i64
  %tmp104 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t93 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp104, i32 0, i32 21
  %tmp105 = load float**, float*** %t93, align 8
  %arrayidx94 = getelementptr inbounds float*, float** %tmp105, i64 %idxprom92
  %tmp106 = load float*, float** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds float, float* %tmp106, i64 3
  %tmp107 = load float, float* %arrayidx95, align 4
  %tmp108 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p196 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp108, i32 0, i32 29
  %tmp109 = load float, float* %p196, align 4
  %call97 = call i32 @Prob2Score(float %tmp107, float %tmp109)
  %tmp110 = load i32, i32* %k, align 4
  %idxprom98 = sext i32 %tmp110 to i64
  %tmp111 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc99 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp111, i32 0, i32 30
  %tmp112 = load i32**, i32*** %tsc99, align 8
  %arrayidx100 = getelementptr inbounds i32*, i32** %tmp112, i64 3
  %tmp113 = load i32*, i32** %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %tmp113, i64 %idxprom98
  store i32 %call97, i32* %arrayidx101, align 4
  %tmp114 = load i32, i32* %k, align 4
  %idxprom102 = sext i32 %tmp114 to i64
  %tmp115 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t103 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp115, i32 0, i32 21
  %tmp116 = load float**, float*** %t103, align 8
  %arrayidx104 = getelementptr inbounds float*, float** %tmp116, i64 %idxprom102
  %tmp117 = load float*, float** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds float, float* %tmp117, i64 4
  %tmp118 = load float, float* %arrayidx105, align 4
  %tmp119 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1106 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp119, i32 0, i32 29
  %tmp120 = load float, float* %p1106, align 4
  %call107 = call i32 @Prob2Score(float %tmp118, float %tmp120)
  %tmp121 = load i32, i32* %k, align 4
  %idxprom108 = sext i32 %tmp121 to i64
  %tmp122 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc109 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp122, i32 0, i32 30
  %tmp123 = load i32**, i32*** %tsc109, align 8
  %arrayidx110 = getelementptr inbounds i32*, i32** %tmp123, i64 4
  %tmp124 = load i32*, i32** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %tmp124, i64 %idxprom108
  store i32 %call107, i32* %arrayidx111, align 4
  %tmp125 = load i32, i32* %k, align 4
  %idxprom112 = sext i32 %tmp125 to i64
  %tmp126 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t113 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp126, i32 0, i32 21
  %tmp127 = load float**, float*** %t113, align 8
  %arrayidx114 = getelementptr inbounds float*, float** %tmp127, i64 %idxprom112
  %tmp128 = load float*, float** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds float, float* %tmp128, i64 5
  %tmp129 = load float, float* %arrayidx115, align 4
  %tmp130 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1116 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp130, i32 0, i32 29
  %tmp131 = load float, float* %p1116, align 4
  %call117 = call i32 @Prob2Score(float %tmp129, float %tmp131)
  %tmp132 = load i32, i32* %k, align 4
  %idxprom118 = sext i32 %tmp132 to i64
  %tmp133 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc119 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp133, i32 0, i32 30
  %tmp134 = load i32**, i32*** %tsc119, align 8
  %arrayidx120 = getelementptr inbounds i32*, i32** %tmp134, i64 5
  %tmp135 = load i32*, i32** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %tmp135, i64 %idxprom118
  store i32 %call117, i32* %arrayidx121, align 4
  %tmp136 = load i32, i32* %k, align 4
  %idxprom122 = sext i32 %tmp136 to i64
  %tmp137 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t123 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp137, i32 0, i32 21
  %tmp138 = load float**, float*** %t123, align 8
  %arrayidx124 = getelementptr inbounds float*, float** %tmp138, i64 %idxprom122
  %tmp139 = load float*, float** %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds float, float* %tmp139, i64 6
  %tmp140 = load float, float* %arrayidx125, align 4
  %call126 = call i32 @Prob2Score(float %tmp140, float 1.000000e+00)
  %tmp141 = load i32, i32* %k, align 4
  %idxprom127 = sext i32 %tmp141 to i64
  %tmp142 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc128 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp142, i32 0, i32 30
  %tmp143 = load i32**, i32*** %tsc128, align 8
  %arrayidx129 = getelementptr inbounds i32*, i32** %tmp143, i64 6
  %tmp144 = load i32*, i32** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %tmp144, i64 %idxprom127
  store i32 %call126, i32* %arrayidx130, align 4
  br label %for.inc131

for.inc131:                                       ; preds = %for.body65
  %tmp145 = load i32, i32* %k, align 4
  %inc132 = add nsw i32 %tmp145, 1
  store i32 %inc132, i32* %k, align 4
  br label %for.cond62

for.end133:                                       ; preds = %for.cond62
  %tmp146 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp146, i32 0, i32 24
  %tmp147 = load float, float* %tbd1, align 4
  %conv = fpext float %tmp147 to double
  %cmp134 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp134, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end133
  %tmp148 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1136 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp148, i32 0, i32 24
  %tmp149 = load float, float* %tbd1136, align 4
  %conv137 = fpext float %tmp149 to double
  %call138 = call double @log(double %conv137) #5
  br label %cond.end

cond.false:                                       ; preds = %for.end133
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call138, %cond.true ], [ -9.999000e+03, %cond.false ]
  %conv139 = fptrunc double %cond to float
  store float %conv139, float* %accum, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond140

for.cond140:                                      ; preds = %for.inc257, %cond.end
  %tmp150 = load i32, i32* %k, align 4
  %tmp151 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M141 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp151, i32 0, i32 20
  %tmp152 = load i32, i32* %M141, align 4
  %cmp142 = icmp sle i32 %tmp150, %tmp152
  br i1 %cmp142, label %for.body144, label %for.end259

for.body144:                                      ; preds = %for.cond140
  %tmp153 = load i32, i32* %k, align 4
  %idxprom145 = sext i32 %tmp153 to i64
  %tmp154 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp154, i32 0, i32 26
  %tmp155 = load float*, float** %begin, align 8
  %arrayidx146 = getelementptr inbounds float, float* %tmp155, i64 %idxprom145
  %tmp156 = load float, float* %arrayidx146, align 4
  %conv147 = fpext float %tmp156 to double
  %cmp148 = fcmp ogt double %conv147, 0.000000e+00
  br i1 %cmp148, label %cond.true150, label %cond.false156

cond.true150:                                     ; preds = %for.body144
  %tmp157 = load i32, i32* %k, align 4
  %idxprom151 = sext i32 %tmp157 to i64
  %tmp158 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin152 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp158, i32 0, i32 26
  %tmp159 = load float*, float** %begin152, align 8
  %arrayidx153 = getelementptr inbounds float, float* %tmp159, i64 %idxprom151
  %tmp160 = load float, float* %arrayidx153, align 4
  %conv154 = fpext float %tmp160 to double
  %call155 = call double @log(double %conv154) #5
  br label %cond.end157

cond.false156:                                    ; preds = %for.body144
  br label %cond.end157

cond.end157:                                      ; preds = %cond.false156, %cond.true150
  %cond158 = phi double [ %call155, %cond.true150 ], [ -9.999000e+03, %cond.false156 ]
  %conv159 = fptrunc double %cond158 to float
  store float %conv159, float* %tbm, align 4
  %tmp161 = load i32, i32* %k, align 4
  %cmp160 = icmp sgt i32 %tmp161, 1
  br i1 %cmp160, label %land.lhs.true, label %if.end237

land.lhs.true:                                    ; preds = %cond.end157
  %tmp162 = load float, float* %accum, align 4
  %conv162 = fpext float %tmp162 to double
  %cmp163 = fcmp ogt double %conv162, -9.999000e+03
  br i1 %cmp163, label %if.then165, label %if.end237

if.then165:                                       ; preds = %land.lhs.true
  %tmp163 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %tmp163, 1
  %idxprom166 = sext i32 %sub to i64
  %tmp164 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t167 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp164, i32 0, i32 21
  %tmp165 = load float**, float*** %t167, align 8
  %arrayidx168 = getelementptr inbounds float*, float** %tmp165, i64 %idxprom166
  %tmp166 = load float*, float** %arrayidx168, align 8
  %arrayidx169 = getelementptr inbounds float, float* %tmp166, i64 5
  %tmp167 = load float, float* %arrayidx169, align 4
  %conv170 = fpext float %tmp167 to double
  %cmp171 = fcmp ogt double %conv170, 0.000000e+00
  br i1 %cmp171, label %if.then173, label %if.end214

if.then173:                                       ; preds = %if.then165
  %tmp168 = load i32, i32* %viterbi_mode.addr, align 4
  %tobool174 = icmp ne i32 %tmp168, 0
  br i1 %tobool174, label %if.then175, label %if.else

if.then175:                                       ; preds = %if.then173
  %tmp169 = load float, float* %tbm, align 4
  %conv176 = fpext float %tmp169 to double
  %tmp170 = load float, float* %accum, align 4
  %conv177 = fpext float %tmp170 to double
  %tmp171 = load i32, i32* %k, align 4
  %sub178 = sub nsw i32 %tmp171, 1
  %idxprom179 = sext i32 %sub178 to i64
  %tmp172 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t180 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp172, i32 0, i32 21
  %tmp173 = load float**, float*** %t180, align 8
  %arrayidx181 = getelementptr inbounds float*, float** %tmp173, i64 %idxprom179
  %tmp174 = load float*, float** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds float, float* %tmp174, i64 5
  %tmp175 = load float, float* %arrayidx182, align 4
  %conv183 = fpext float %tmp175 to double
  %call184 = call double @log(double %conv183) #5
  %add = fadd double %conv177, %call184
  %cmp185 = fcmp ogt double %conv176, %add
  br i1 %cmp185, label %cond.true187, label %cond.false189

cond.true187:                                     ; preds = %if.then175
  %tmp176 = load float, float* %tbm, align 4
  %conv188 = fpext float %tmp176 to double
  br label %cond.end199

cond.false189:                                    ; preds = %if.then175
  %tmp177 = load float, float* %accum, align 4
  %conv190 = fpext float %tmp177 to double
  %tmp178 = load i32, i32* %k, align 4
  %sub191 = sub nsw i32 %tmp178, 1
  %idxprom192 = sext i32 %sub191 to i64
  %tmp179 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t193 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp179, i32 0, i32 21
  %tmp180 = load float**, float*** %t193, align 8
  %arrayidx194 = getelementptr inbounds float*, float** %tmp180, i64 %idxprom192
  %tmp181 = load float*, float** %arrayidx194, align 8
  %arrayidx195 = getelementptr inbounds float, float* %tmp181, i64 5
  %tmp182 = load float, float* %arrayidx195, align 4
  %conv196 = fpext float %tmp182 to double
  %call197 = call double @log(double %conv196) #5
  %add198 = fadd double %conv190, %call197
  br label %cond.end199

cond.end199:                                      ; preds = %cond.false189, %cond.true187
  %cond200 = phi double [ %conv188, %cond.true187 ], [ %add198, %cond.false189 ]
  %conv201 = fptrunc double %cond200 to float
  store float %conv201, float* %tbm, align 4
  br label %if.end213

if.else:                                          ; preds = %if.then173
  %tmp183 = load float, float* %tbm, align 4
  %tmp184 = load float, float* %accum, align 4
  %conv202 = fpext float %tmp184 to double
  %tmp185 = load i32, i32* %k, align 4
  %sub203 = sub nsw i32 %tmp185, 1
  %idxprom204 = sext i32 %sub203 to i64
  %tmp186 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t205 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp186, i32 0, i32 21
  %tmp187 = load float**, float*** %t205, align 8
  %arrayidx206 = getelementptr inbounds float*, float** %tmp187, i64 %idxprom204
  %tmp188 = load float*, float** %arrayidx206, align 8
  %arrayidx207 = getelementptr inbounds float, float* %tmp188, i64 5
  %tmp189 = load float, float* %arrayidx207, align 4
  %conv208 = fpext float %tmp189 to double
  %call209 = call double @log(double %conv208) #5
  %add210 = fadd double %conv202, %call209
  %conv211 = fptrunc double %add210 to float
  %call212 = call float @LogSum(float %tmp183, float %conv211)
  store float %call212, float* %tbm, align 4
  br label %if.end213

if.end213:                                        ; preds = %if.else, %cond.end199
  br label %if.end214

if.end214:                                        ; preds = %if.end213, %if.then165
  %tmp190 = load i32, i32* %k, align 4
  %sub215 = sub nsw i32 %tmp190, 1
  %idxprom216 = sext i32 %sub215 to i64
  %tmp191 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t217 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp191, i32 0, i32 21
  %tmp192 = load float**, float*** %t217, align 8
  %arrayidx218 = getelementptr inbounds float*, float** %tmp192, i64 %idxprom216
  %tmp193 = load float*, float** %arrayidx218, align 8
  %arrayidx219 = getelementptr inbounds float, float* %tmp193, i64 6
  %tmp194 = load float, float* %arrayidx219, align 4
  %conv220 = fpext float %tmp194 to double
  %cmp221 = fcmp ogt double %conv220, 0.000000e+00
  br i1 %cmp221, label %cond.true223, label %cond.false233

cond.true223:                                     ; preds = %if.end214
  %tmp195 = load float, float* %accum, align 4
  %conv224 = fpext float %tmp195 to double
  %tmp196 = load i32, i32* %k, align 4
  %sub225 = sub nsw i32 %tmp196, 1
  %idxprom226 = sext i32 %sub225 to i64
  %tmp197 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t227 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp197, i32 0, i32 21
  %tmp198 = load float**, float*** %t227, align 8
  %arrayidx228 = getelementptr inbounds float*, float** %tmp198, i64 %idxprom226
  %tmp199 = load float*, float** %arrayidx228, align 8
  %arrayidx229 = getelementptr inbounds float, float* %tmp199, i64 6
  %tmp200 = load float, float* %arrayidx229, align 4
  %conv230 = fpext float %tmp200 to double
  %call231 = call double @log(double %conv230) #5
  %add232 = fadd double %conv224, %call231
  br label %cond.end234

cond.false233:                                    ; preds = %if.end214
  br label %cond.end234

cond.end234:                                      ; preds = %cond.false233, %cond.true223
  %cond235 = phi double [ %add232, %cond.true223 ], [ -9.999000e+03, %cond.false233 ]
  %conv236 = fptrunc double %cond235 to float
  store float %conv236, float* %accum, align 4
  br label %if.end237

if.end237:                                        ; preds = %cond.end234, %land.lhs.true, %cond.end157
  %tmp201 = load float, float* %tbm, align 4
  %conv238 = fpext float %tmp201 to double
  %cmp239 = fcmp ogt double %conv238, -9.999000e+03
  br i1 %cmp239, label %if.then241, label %if.else252

if.then241:                                       ; preds = %if.end237
  %tmp202 = load float, float* %tbm, align 4
  %conv242 = fpext float %tmp202 to double
  %tmp203 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1243 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp203, i32 0, i32 29
  %tmp204 = load float, float* %p1243, align 4
  %conv244 = fpext float %tmp204 to double
  %call245 = call double @log(double %conv244) #5
  %sub246 = fsub double %conv242, %call245
  %mul = fmul double 0x40968AC7B890D5A6, %sub246
  %add247 = fadd double 5.000000e-01, %mul
  %call248 = call double @floor(double %add247) #7
  %conv249 = fptosi double %call248 to i32
  %tmp205 = load i32, i32* %k, align 4
  %idxprom250 = sext i32 %tmp205 to i64
  %tmp206 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp206, i32 0, i32 34
  %tmp207 = load i32*, i32** %bsc, align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %tmp207, i64 %idxprom250
  store i32 %conv249, i32* %arrayidx251, align 4
  br label %if.end256

if.else252:                                       ; preds = %if.end237
  %tmp208 = load i32, i32* %k, align 4
  %idxprom253 = sext i32 %tmp208 to i64
  %tmp209 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc254 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp209, i32 0, i32 34
  %tmp210 = load i32*, i32** %bsc254, align 8
  %arrayidx255 = getelementptr inbounds i32, i32* %tmp210, i64 %idxprom253
  store i32 -987654321, i32* %arrayidx255, align 4
  br label %if.end256

if.end256:                                        ; preds = %if.else252, %if.then241
  br label %for.inc257

for.inc257:                                       ; preds = %if.end256
  %tmp211 = load i32, i32* %k, align 4
  %inc258 = add nsw i32 %tmp211, 1
  store i32 %inc258, i32* %k, align 4
  br label %for.cond140

for.end259:                                       ; preds = %for.cond140
  %tmp212 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M260 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp212, i32 0, i32 20
  %tmp213 = load i32, i32* %M260, align 4
  %idxprom261 = sext i32 %tmp213 to i64
  %tmp214 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp214, i32 0, i32 35
  %tmp215 = load i32*, i32** %esc, align 8
  %arrayidx262 = getelementptr inbounds i32, i32* %tmp215, i64 %idxprom261
  store i32 0, i32* %arrayidx262, align 4
  store float 0.000000e+00, float* %accum, align 4
  %tmp216 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M263 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp216, i32 0, i32 20
  %tmp217 = load i32, i32* %M263, align 4
  %sub264 = sub nsw i32 %tmp217, 1
  store i32 %sub264, i32* %k, align 4
  br label %for.cond265

for.cond265:                                      ; preds = %for.inc372, %for.end259
  %tmp218 = load i32, i32* %k, align 4
  %cmp266 = icmp sge i32 %tmp218, 1
  br i1 %cmp266, label %for.body268, label %for.end373

for.body268:                                      ; preds = %for.cond265
  %tmp219 = load i32, i32* %k, align 4
  %idxprom269 = sext i32 %tmp219 to i64
  %tmp220 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp220, i32 0, i32 27
  %tmp221 = load float*, float** %end, align 8
  %arrayidx270 = getelementptr inbounds float, float* %tmp221, i64 %idxprom269
  %tmp222 = load float, float* %arrayidx270, align 4
  %conv271 = fpext float %tmp222 to double
  %cmp272 = fcmp ogt double %conv271, 0.000000e+00
  br i1 %cmp272, label %cond.true274, label %cond.false280

cond.true274:                                     ; preds = %for.body268
  %tmp223 = load i32, i32* %k, align 4
  %idxprom275 = sext i32 %tmp223 to i64
  %tmp224 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end276 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp224, i32 0, i32 27
  %tmp225 = load float*, float** %end276, align 8
  %arrayidx277 = getelementptr inbounds float, float* %tmp225, i64 %idxprom275
  %tmp226 = load float, float* %arrayidx277, align 4
  %conv278 = fpext float %tmp226 to double
  %call279 = call double @log(double %conv278) #5
  br label %cond.end281

cond.false280:                                    ; preds = %for.body268
  br label %cond.end281

cond.end281:                                      ; preds = %cond.false280, %cond.true274
  %cond282 = phi double [ %call279, %cond.true274 ], [ -9.999000e+03, %cond.false280 ]
  %conv283 = fptrunc double %cond282 to float
  store float %conv283, float* %tme, align 4
  %tmp227 = load float, float* %accum, align 4
  %conv284 = fpext float %tmp227 to double
  %cmp285 = fcmp ogt double %conv284, -9.999000e+03
  br i1 %cmp285, label %if.then287, label %if.end356

if.then287:                                       ; preds = %cond.end281
  %tmp228 = load i32, i32* %k, align 4
  %idxprom288 = sext i32 %tmp228 to i64
  %tmp229 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t289 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp229, i32 0, i32 21
  %tmp230 = load float**, float*** %t289, align 8
  %arrayidx290 = getelementptr inbounds float*, float** %tmp230, i64 %idxprom288
  %tmp231 = load float*, float** %arrayidx290, align 8
  %arrayidx291 = getelementptr inbounds float, float* %tmp231, i64 2
  %tmp232 = load float, float* %arrayidx291, align 4
  %conv292 = fpext float %tmp232 to double
  %cmp293 = fcmp ogt double %conv292, 0.000000e+00
  br i1 %cmp293, label %if.then295, label %if.end335

if.then295:                                       ; preds = %if.then287
  %tmp233 = load i32, i32* %viterbi_mode.addr, align 4
  %tobool296 = icmp ne i32 %tmp233, 0
  br i1 %tobool296, label %if.then297, label %if.else323

if.then297:                                       ; preds = %if.then295
  %tmp234 = load float, float* %tme, align 4
  %conv298 = fpext float %tmp234 to double
  %tmp235 = load float, float* %accum, align 4
  %conv299 = fpext float %tmp235 to double
  %tmp236 = load i32, i32* %k, align 4
  %idxprom300 = sext i32 %tmp236 to i64
  %tmp237 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t301 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp237, i32 0, i32 21
  %tmp238 = load float**, float*** %t301, align 8
  %arrayidx302 = getelementptr inbounds float*, float** %tmp238, i64 %idxprom300
  %tmp239 = load float*, float** %arrayidx302, align 8
  %arrayidx303 = getelementptr inbounds float, float* %tmp239, i64 2
  %tmp240 = load float, float* %arrayidx303, align 4
  %conv304 = fpext float %tmp240 to double
  %call305 = call double @log(double %conv304) #5
  %add306 = fadd double %conv299, %call305
  %cmp307 = fcmp ogt double %conv298, %add306
  br i1 %cmp307, label %cond.true309, label %cond.false311

cond.true309:                                     ; preds = %if.then297
  %tmp241 = load float, float* %tme, align 4
  %conv310 = fpext float %tmp241 to double
  br label %cond.end320

cond.false311:                                    ; preds = %if.then297
  %tmp242 = load float, float* %accum, align 4
  %conv312 = fpext float %tmp242 to double
  %tmp243 = load i32, i32* %k, align 4
  %idxprom313 = sext i32 %tmp243 to i64
  %tmp244 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t314 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp244, i32 0, i32 21
  %tmp245 = load float**, float*** %t314, align 8
  %arrayidx315 = getelementptr inbounds float*, float** %tmp245, i64 %idxprom313
  %tmp246 = load float*, float** %arrayidx315, align 8
  %arrayidx316 = getelementptr inbounds float, float* %tmp246, i64 2
  %tmp247 = load float, float* %arrayidx316, align 4
  %conv317 = fpext float %tmp247 to double
  %call318 = call double @log(double %conv317) #5
  %add319 = fadd double %conv312, %call318
  br label %cond.end320

cond.end320:                                      ; preds = %cond.false311, %cond.true309
  %cond321 = phi double [ %conv310, %cond.true309 ], [ %add319, %cond.false311 ]
  %conv322 = fptrunc double %cond321 to float
  store float %conv322, float* %tme, align 4
  br label %if.end334

if.else323:                                       ; preds = %if.then295
  %tmp248 = load float, float* %tme, align 4
  %tmp249 = load float, float* %accum, align 4
  %conv324 = fpext float %tmp249 to double
  %tmp250 = load i32, i32* %k, align 4
  %idxprom325 = sext i32 %tmp250 to i64
  %tmp251 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t326 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp251, i32 0, i32 21
  %tmp252 = load float**, float*** %t326, align 8
  %arrayidx327 = getelementptr inbounds float*, float** %tmp252, i64 %idxprom325
  %tmp253 = load float*, float** %arrayidx327, align 8
  %arrayidx328 = getelementptr inbounds float, float* %tmp253, i64 2
  %tmp254 = load float, float* %arrayidx328, align 4
  %conv329 = fpext float %tmp254 to double
  %call330 = call double @log(double %conv329) #5
  %add331 = fadd double %conv324, %call330
  %conv332 = fptrunc double %add331 to float
  %call333 = call float @LogSum(float %tmp248, float %conv332)
  store float %call333, float* %tme, align 4
  br label %if.end334

if.end334:                                        ; preds = %if.else323, %cond.end320
  br label %if.end335

if.end335:                                        ; preds = %if.end334, %if.then287
  %tmp255 = load i32, i32* %k, align 4
  %idxprom336 = sext i32 %tmp255 to i64
  %tmp256 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t337 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp256, i32 0, i32 21
  %tmp257 = load float**, float*** %t337, align 8
  %arrayidx338 = getelementptr inbounds float*, float** %tmp257, i64 %idxprom336
  %tmp258 = load float*, float** %arrayidx338, align 8
  %arrayidx339 = getelementptr inbounds float, float* %tmp258, i64 6
  %tmp259 = load float, float* %arrayidx339, align 4
  %conv340 = fpext float %tmp259 to double
  %cmp341 = fcmp ogt double %conv340, 0.000000e+00
  br i1 %cmp341, label %cond.true343, label %cond.false352

cond.true343:                                     ; preds = %if.end335
  %tmp260 = load float, float* %accum, align 4
  %conv344 = fpext float %tmp260 to double
  %tmp261 = load i32, i32* %k, align 4
  %idxprom345 = sext i32 %tmp261 to i64
  %tmp262 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t346 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp262, i32 0, i32 21
  %tmp263 = load float**, float*** %t346, align 8
  %arrayidx347 = getelementptr inbounds float*, float** %tmp263, i64 %idxprom345
  %tmp264 = load float*, float** %arrayidx347, align 8
  %arrayidx348 = getelementptr inbounds float, float* %tmp264, i64 6
  %tmp265 = load float, float* %arrayidx348, align 4
  %conv349 = fpext float %tmp265 to double
  %call350 = call double @log(double %conv349) #5
  %add351 = fadd double %conv344, %call350
  br label %cond.end353

cond.false352:                                    ; preds = %if.end335
  br label %cond.end353

cond.end353:                                      ; preds = %cond.false352, %cond.true343
  %cond354 = phi double [ %add351, %cond.true343 ], [ -9.999000e+03, %cond.false352 ]
  %conv355 = fptrunc double %cond354 to float
  store float %conv355, float* %accum, align 4
  br label %if.end356

if.end356:                                        ; preds = %cond.end353, %cond.end281
  %tmp266 = load float, float* %tme, align 4
  %conv357 = fpext float %tmp266 to double
  %cmp358 = fcmp ogt double %conv357, -9.999000e+03
  br i1 %cmp358, label %cond.true360, label %cond.false366

cond.true360:                                     ; preds = %if.end356
  %tmp267 = load float, float* %tme, align 4
  %conv361 = fpext float %tmp267 to double
  %mul362 = fmul double 0x40968AC7B890D5A6, %conv361
  %add363 = fadd double 5.000000e-01, %mul362
  %call364 = call double @floor(double %add363) #7
  %conv365 = fptosi double %call364 to i32
  br label %cond.end367

cond.false366:                                    ; preds = %if.end356
  br label %cond.end367

cond.end367:                                      ; preds = %cond.false366, %cond.true360
  %cond368 = phi i32 [ %conv365, %cond.true360 ], [ -987654321, %cond.false366 ]
  %tmp268 = load i32, i32* %k, align 4
  %idxprom369 = sext i32 %tmp268 to i64
  %tmp269 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc370 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp269, i32 0, i32 35
  %tmp270 = load i32*, i32** %esc370, align 8
  %arrayidx371 = getelementptr inbounds i32, i32* %tmp270, i64 %idxprom369
  store i32 %cond368, i32* %arrayidx371, align 4
  br label %for.inc372

for.inc372:                                       ; preds = %cond.end367
  %tmp271 = load i32, i32* %k, align 4
  %dec = add nsw i32 %tmp271, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond265

for.end373:                                       ; preds = %for.cond265
  %tmp272 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp272, i32 0, i32 25
  %arrayidx374 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 0
  %arrayidx375 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx374, i32 0, i64 1
  %tmp273 = load float, float* %arrayidx375, align 4
  %tmp274 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1376 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp274, i32 0, i32 29
  %tmp275 = load float, float* %p1376, align 4
  %call377 = call i32 @Prob2Score(float %tmp273, float %tmp275)
  %tmp276 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp276, i32 0, i32 33
  %arrayidx378 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc, i32 0, i64 0
  %arrayidx379 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx378, i32 0, i64 1
  store i32 %call377, i32* %arrayidx379, align 4
  %tmp277 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt380 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp277, i32 0, i32 25
  %arrayidx381 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt380, i32 0, i64 0
  %arrayidx382 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx381, i32 0, i64 0
  %tmp278 = load float, float* %arrayidx382, align 4
  %call383 = call i32 @Prob2Score(float %tmp278, float 1.000000e+00)
  %tmp279 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc384 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp279, i32 0, i32 33
  %arrayidx385 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc384, i32 0, i64 0
  %arrayidx386 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx385, i32 0, i64 0
  store i32 %call383, i32* %arrayidx386, align 4
  %tmp280 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt387 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp280, i32 0, i32 25
  %arrayidx388 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt387, i32 0, i64 1
  %arrayidx389 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx388, i32 0, i64 1
  %tmp281 = load float, float* %arrayidx389, align 4
  %call390 = call i32 @Prob2Score(float %tmp281, float 1.000000e+00)
  %tmp282 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc391 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp282, i32 0, i32 33
  %arrayidx392 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc391, i32 0, i64 1
  %arrayidx393 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx392, i32 0, i64 1
  store i32 %call390, i32* %arrayidx393, align 4
  %tmp283 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt394 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp283, i32 0, i32 25
  %arrayidx395 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt394, i32 0, i64 1
  %arrayidx396 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx395, i32 0, i64 0
  %tmp284 = load float, float* %arrayidx396, align 4
  %call397 = call i32 @Prob2Score(float %tmp284, float 1.000000e+00)
  %tmp285 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc398 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp285, i32 0, i32 33
  %arrayidx399 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc398, i32 0, i64 1
  %arrayidx400 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx399, i32 0, i64 0
  store i32 %call397, i32* %arrayidx400, align 4
  %tmp286 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt401 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp286, i32 0, i32 25
  %arrayidx402 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt401, i32 0, i64 2
  %arrayidx403 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx402, i32 0, i64 1
  %tmp287 = load float, float* %arrayidx403, align 4
  %tmp288 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1404 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp288, i32 0, i32 29
  %tmp289 = load float, float* %p1404, align 4
  %call405 = call i32 @Prob2Score(float %tmp287, float %tmp289)
  %tmp290 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc406 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp290, i32 0, i32 33
  %arrayidx407 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc406, i32 0, i64 2
  %arrayidx408 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx407, i32 0, i64 1
  store i32 %call405, i32* %arrayidx408, align 4
  %tmp291 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt409 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp291, i32 0, i32 25
  %arrayidx410 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt409, i32 0, i64 2
  %arrayidx411 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx410, i32 0, i64 0
  %tmp292 = load float, float* %arrayidx411, align 4
  %tmp293 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1412 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp293, i32 0, i32 29
  %tmp294 = load float, float* %p1412, align 4
  %conv413 = fpext float %tmp294 to double
  %sub414 = fsub double 1.000000e+00, %conv413
  %conv415 = fptrunc double %sub414 to float
  %call416 = call i32 @Prob2Score(float %tmp292, float %conv415)
  %tmp295 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc417 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp295, i32 0, i32 33
  %arrayidx418 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc417, i32 0, i64 2
  %arrayidx419 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx418, i32 0, i64 0
  store i32 %call416, i32* %arrayidx419, align 4
  %tmp296 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt420 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp296, i32 0, i32 25
  %arrayidx421 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt420, i32 0, i64 3
  %arrayidx422 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx421, i32 0, i64 1
  %tmp297 = load float, float* %arrayidx422, align 4
  %tmp298 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1423 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp298, i32 0, i32 29
  %tmp299 = load float, float* %p1423, align 4
  %call424 = call i32 @Prob2Score(float %tmp297, float %tmp299)
  %tmp300 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc425 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp300, i32 0, i32 33
  %arrayidx426 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc425, i32 0, i64 3
  %arrayidx427 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx426, i32 0, i64 1
  store i32 %call424, i32* %arrayidx427, align 4
  %tmp301 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt428 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp301, i32 0, i32 25
  %arrayidx429 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt428, i32 0, i64 3
  %arrayidx430 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx429, i32 0, i64 0
  %tmp302 = load float, float* %arrayidx430, align 4
  %call431 = call i32 @Prob2Score(float %tmp302, float 1.000000e+00)
  %tmp303 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc432 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp303, i32 0, i32 33
  %arrayidx433 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc432, i32 0, i64 3
  %arrayidx434 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx433, i32 0, i64 0
  store i32 %call431, i32* %arrayidx434, align 4
  %tmp304 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags435 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp304, i32 0, i32 47
  %tmp305 = load i32, i32* %flags435, align 4
  %or = or i32 %tmp305, 1
  store i32 %or, i32* %flags435, align 4
  br label %return

return:                                           ; preds = %for.end373, %if.then
  ret void
}

declare i32 @Prob2Score(float, float) #1

; Function Attrs: nounwind uwtable
define i32 @DegenerateSymbolScore(float* %p, float* %null, i32 %ambig) #0 {
entry:
  %p.addr = alloca float*, align 8
  %null.addr = alloca float*, align 8
  %ambig.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %numer = alloca float, align 4
  %denom = alloca float, align 4
  store float* %p, float** %p.addr, align 8
  store float* %null, float** %null.addr, align 8
  store i32 %ambig, i32* %ambig.addr, align 4
  store float 0.000000e+00, float* %numer, align 4
  store float 0.000000e+00, float* %denom, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp = load i32, i32* %x, align 4
  %tmp1 = load i32, i32* @Alphabet_size, align 4
  %cmp = icmp slt i32 %tmp, %tmp1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %tmp2 to i64
  %tmp3 = load i32, i32* %ambig.addr, align 4
  %idxprom1 = sext i32 %tmp3 to i64
  %arrayidx = getelementptr inbounds [24 x [20 x i8]], [24 x [20 x i8]]* @Degenerate, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx, i32 0, i64 %idxprom
  %tmp4 = load i8, i8* %arrayidx2, align 1
  %tobool = icmp ne i8 %tmp4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %tmp5 = load i32, i32* %x, align 4
  %idxprom3 = sext i32 %tmp5 to i64
  %tmp6 = load float*, float** %null.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %tmp6, i64 %idxprom3
  %tmp7 = load float, float* %arrayidx4, align 4
  %conv = fpext float %tmp7 to double
  %tmp8 = load i32, i32* %x, align 4
  %idxprom5 = sext i32 %tmp8 to i64
  %tmp9 = load float*, float** %p.addr, align 8
  %arrayidx6 = getelementptr inbounds float, float* %tmp9, i64 %idxprom5
  %tmp10 = load float, float* %arrayidx6, align 4
  %tmp11 = load i32, i32* %x, align 4
  %idxprom7 = sext i32 %tmp11 to i64
  %tmp12 = load float*, float** %null.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %tmp12, i64 %idxprom7
  %tmp13 = load float, float* %arrayidx8, align 4
  %div = fdiv float %tmp10, %tmp13
  %cmp9 = fcmp ogt float %div, 0.000000e+00
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %tmp14 = load i32, i32* %x, align 4
  %idxprom11 = sext i32 %tmp14 to i64
  %tmp15 = load float*, float** %p.addr, align 8
  %arrayidx12 = getelementptr inbounds float, float* %tmp15, i64 %idxprom11
  %tmp16 = load float, float* %arrayidx12, align 4
  %tmp17 = load i32, i32* %x, align 4
  %idxprom13 = sext i32 %tmp17 to i64
  %tmp18 = load float*, float** %null.addr, align 8
  %arrayidx14 = getelementptr inbounds float, float* %tmp18, i64 %idxprom13
  %tmp19 = load float, float* %arrayidx14, align 4
  %div15 = fdiv float %tmp16, %tmp19
  %conv16 = fpext float %div15 to double
  %call = call double @log(double %conv16) #5
  %mul = fmul double %call, 0x3FF7154764EE6C2F
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul, %cond.true ], [ -9.999000e+03, %cond.false ]
  %mul17 = fmul double %conv, %cond
  %tmp20 = load float, float* %numer, align 4
  %conv18 = fpext float %tmp20 to double
  %add = fadd double %conv18, %mul17
  %conv19 = fptrunc double %add to float
  store float %conv19, float* %numer, align 4
  %tmp21 = load i32, i32* %x, align 4
  %idxprom20 = sext i32 %tmp21 to i64
  %tmp22 = load float*, float** %null.addr, align 8
  %arrayidx21 = getelementptr inbounds float, float* %tmp22, i64 %idxprom20
  %tmp23 = load float, float* %arrayidx21, align 4
  %tmp24 = load float, float* %denom, align 4
  %add22 = fadd float %tmp24, %tmp23
  store float %add22, float* %denom, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %tmp25 = load i32, i32* %x, align 4
  %inc = add nsw i32 %tmp25, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tmp26 = load float, float* %numer, align 4
  %conv23 = fpext float %tmp26 to double
  %mul24 = fmul double 1.000000e+03, %conv23
  %tmp27 = load float, float* %denom, align 4
  %conv25 = fpext float %tmp27 to double
  %div26 = fdiv double %mul24, %conv25
  %conv27 = fptosi double %div26 to i32
  ret i32 %conv27
}

; Function Attrs: nounwind
declare double @log(double) #2

declare float @LogSum(float, float) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind uwtable
define void @Plan7Renormalize(%struct.plan7_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %k = alloca i32, align 4
  %st = alloca i32, align 4
  %d = alloca float, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp = load i32, i32* %k, align 4
  %tmp1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp1, i32 0, i32 20
  %tmp2 = load i32, i32* %M, align 4
  %cmp = icmp sle i32 %tmp, %tmp2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %tmp3 to i64
  %tmp4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp4, i32 0, i32 22
  %tmp5 = load float**, float*** %mat, align 8
  %arrayidx = getelementptr inbounds float*, float** %tmp5, i64 %idxprom
  %tmp6 = load float*, float** %arrayidx, align 8
  %tmp7 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %tmp6, i32 %tmp7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp8 = load i32, i32* %k, align 4
  %inc = add nsw i32 %tmp8, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %k, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %tmp9 = load i32, i32* %k, align 4
  %tmp10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp10, i32 0, i32 20
  %tmp11 = load i32, i32* %M2, align 4
  %cmp3 = icmp slt i32 %tmp9, %tmp11
  br i1 %cmp3, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond1
  %tmp12 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %tmp12 to i64
  %tmp13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp13, i32 0, i32 23
  %tmp14 = load float**, float*** %ins, align 8
  %arrayidx6 = getelementptr inbounds float*, float** %tmp14, i64 %idxprom5
  %tmp15 = load float*, float** %arrayidx6, align 8
  %tmp16 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %tmp15, i32 %tmp16)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4
  %tmp17 = load i32, i32* %k, align 4
  %inc8 = add nsw i32 %tmp17, 1
  store i32 %inc8, i32* %k, align 4
  br label %for.cond1

for.end9:                                         ; preds = %for.cond1
  %tmp18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp18, i32 0, i32 26
  %tmp19 = load float*, float** %begin, align 8
  %add.ptr = getelementptr inbounds float, float* %tmp19, i64 1
  %tmp20 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M10 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp20, i32 0, i32 20
  %tmp21 = load i32, i32* %M10, align 4
  %call = call float @FSum(float* %add.ptr, i32 %tmp21)
  %tmp22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp22, i32 0, i32 24
  %tmp23 = load float, float* %tbd1, align 4
  %add = fadd float %call, %tmp23
  store float %add, float* %d, align 4
  %tmp24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp24, i32 0, i32 26
  %tmp25 = load float*, float** %begin11, align 8
  %add.ptr12 = getelementptr inbounds float, float* %tmp25, i64 1
  %tmp26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M13 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp26, i32 0, i32 20
  %tmp27 = load i32, i32* %M13, align 4
  %tmp28 = load float, float* %d, align 4
  %conv = fpext float %tmp28 to double
  %div = fdiv double 1.000000e+00, %conv
  %conv14 = fptrunc double %div to float
  call void @FScale(float* %add.ptr12, i32 %tmp27, float %conv14)
  %tmp29 = load float, float* %d, align 4
  %tmp30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd115 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp30, i32 0, i32 24
  %tmp31 = load float, float* %tbd115, align 4
  %div16 = fdiv float %tmp31, %tmp29
  store float %div16, float* %tbd115, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc46, %for.end9
  %tmp32 = load i32, i32* %k, align 4
  %tmp33 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M18 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp33, i32 0, i32 20
  %tmp34 = load i32, i32* %M18, align 4
  %cmp19 = icmp slt i32 %tmp32, %tmp34
  br i1 %cmp19, label %for.body21, label %for.end48

for.body21:                                       ; preds = %for.cond17
  %tmp35 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %tmp35 to i64
  %tmp36 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp36, i32 0, i32 21
  %tmp37 = load float**, float*** %t, align 8
  %arrayidx23 = getelementptr inbounds float*, float** %tmp37, i64 %idxprom22
  %tmp38 = load float*, float** %arrayidx23, align 8
  %call24 = call float @FSum(float* %tmp38, i32 3)
  %tmp39 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %tmp39 to i64
  %tmp40 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp40, i32 0, i32 27
  %tmp41 = load float*, float** %end, align 8
  %arrayidx26 = getelementptr inbounds float, float* %tmp41, i64 %idxprom25
  %tmp42 = load float, float* %arrayidx26, align 4
  %add27 = fadd float %call24, %tmp42
  store float %add27, float* %d, align 4
  %tmp43 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %tmp43 to i64
  %tmp44 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t29 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp44, i32 0, i32 21
  %tmp45 = load float**, float*** %t29, align 8
  %arrayidx30 = getelementptr inbounds float*, float** %tmp45, i64 %idxprom28
  %tmp46 = load float*, float** %arrayidx30, align 8
  %tmp47 = load float, float* %d, align 4
  %conv31 = fpext float %tmp47 to double
  %div32 = fdiv double 1.000000e+00, %conv31
  %conv33 = fptrunc double %div32 to float
  call void @FScale(float* %tmp46, i32 3, float %conv33)
  %tmp48 = load float, float* %d, align 4
  %tmp49 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %tmp49 to i64
  %tmp50 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end35 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp50, i32 0, i32 27
  %tmp51 = load float*, float** %end35, align 8
  %arrayidx36 = getelementptr inbounds float, float* %tmp51, i64 %idxprom34
  %tmp52 = load float, float* %arrayidx36, align 4
  %div37 = fdiv float %tmp52, %tmp48
  store float %div37, float* %arrayidx36, align 4
  %tmp53 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %tmp53 to i64
  %tmp54 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t39 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp54, i32 0, i32 21
  %tmp55 = load float**, float*** %t39, align 8
  %arrayidx40 = getelementptr inbounds float*, float** %tmp55, i64 %idxprom38
  %tmp56 = load float*, float** %arrayidx40, align 8
  %add.ptr41 = getelementptr inbounds float, float* %tmp56, i64 3
  call void @FNorm(float* %add.ptr41, i32 2)
  %tmp57 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %tmp57 to i64
  %tmp58 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t43 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp58, i32 0, i32 21
  %tmp59 = load float**, float*** %t43, align 8
  %arrayidx44 = getelementptr inbounds float*, float** %tmp59, i64 %idxprom42
  %tmp60 = load float*, float** %arrayidx44, align 8
  %add.ptr45 = getelementptr inbounds float, float* %tmp60, i64 5
  call void @FNorm(float* %add.ptr45, i32 2)
  br label %for.inc46

for.inc46:                                        ; preds = %for.body21
  %tmp61 = load i32, i32* %k, align 4
  %inc47 = add nsw i32 %tmp61, 1
  store i32 %inc47, i32* %k, align 4
  br label %for.cond17

for.end48:                                        ; preds = %for.cond17
  %tmp62 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp62, i32 0, i32 28
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %null, i32 0, i32 0
  %tmp63 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %arraydecay, i32 %tmp63)
  store i32 0, i32* %st, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc56, %for.end48
  %tmp64 = load i32, i32* %st, align 4
  %cmp50 = icmp slt i32 %tmp64, 4
  br i1 %cmp50, label %for.body52, label %for.end58

for.body52:                                       ; preds = %for.cond49
  %tmp65 = load i32, i32* %st, align 4
  %idxprom53 = sext i32 %tmp65 to i64
  %tmp66 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp66, i32 0, i32 25
  %arrayidx54 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 %idxprom53
  %arraydecay55 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx54, i32 0, i32 0
  call void @FNorm(float* %arraydecay55, i32 2)
  br label %for.inc56

for.inc56:                                        ; preds = %for.body52
  %tmp67 = load i32, i32* %st, align 4
  %inc57 = add nsw i32 %tmp67, 1
  store i32 %inc57, i32* %st, align 4
  br label %for.cond49

for.end58:                                        ; preds = %for.cond49
  %tmp68 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t59 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp68, i32 0, i32 21
  %tmp69 = load float**, float*** %t59, align 8
  %arrayidx60 = getelementptr inbounds float*, float** %tmp69, i64 0
  %tmp70 = load float*, float** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds float, float* %tmp70, i64 6
  store float 0.000000e+00, float* %arrayidx61, align 4
  %tmp71 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t62 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp71, i32 0, i32 21
  %tmp72 = load float**, float*** %t62, align 8
  %arrayidx63 = getelementptr inbounds float*, float** %tmp72, i64 0
  %tmp73 = load float*, float** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds float, float* %tmp73, i64 5
  store float 0.000000e+00, float* %arrayidx64, align 4
  %tmp74 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp74, i32 0, i32 47
  %tmp75 = load i32, i32* %flags, align 4
  %and = and i32 %tmp75, -2
  store i32 %and, i32* %flags, align 4
  %tmp76 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags65 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp76, i32 0, i32 47
  %tmp77 = load i32, i32* %flags65, align 4
  %or = or i32 %tmp77, 32
  store i32 %or, i32* %flags65, align 4
  ret void
}

declare void @FNorm(float*, i32) #1

declare float @FSum(float*, i32) #1

declare void @FScale(float*, i32, float) #1

; Function Attrs: nounwind uwtable
define void @Plan7RenormalizeExits(%struct.plan7_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %k = alloca i32, align 4
  %d = alloca float, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp = load i32, i32* %k, align 4
  %tmp1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp1, i32 0, i32 20
  %tmp2 = load i32, i32* %M, align 4
  %cmp = icmp slt i32 %tmp, %tmp2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %tmp3 to i64
  %tmp4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp4, i32 0, i32 21
  %tmp5 = load float**, float*** %t, align 8
  %arrayidx = getelementptr inbounds float*, float** %tmp5, i64 %idxprom
  %tmp6 = load float*, float** %arrayidx, align 8
  %call = call float @FSum(float* %tmp6, i32 3)
  store float %call, float* %d, align 4
  %tmp7 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %tmp7 to i64
  %tmp8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp8, i32 0, i32 21
  %tmp9 = load float**, float*** %t2, align 8
  %arrayidx3 = getelementptr inbounds float*, float** %tmp9, i64 %idxprom1
  %tmp10 = load float*, float** %arrayidx3, align 8
  %tmp11 = load float, float* %d, align 4
  %tmp12 = load float, float* %d, align 4
  %tmp13 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %tmp13 to i64
  %tmp14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp14, i32 0, i32 27
  %tmp15 = load float*, float** %end, align 8
  %arrayidx5 = getelementptr inbounds float, float* %tmp15, i64 %idxprom4
  %tmp16 = load float, float* %arrayidx5, align 4
  %mul = fmul float %tmp12, %tmp16
  %add = fadd float %tmp11, %mul
  %conv = fpext float %add to double
  %div = fdiv double 1.000000e+00, %conv
  %conv6 = fptrunc double %div to float
  call void @FScale(float* %tmp10, i32 3, float %conv6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %tmp17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plan7NakedConfig(%struct.plan7_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  %tmp = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx1, align 4
  %tmp1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp1, i32 0, i32 25
  %arrayidx3 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt2, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx3, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx4, align 4
  %tmp2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt5 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp2, i32 0, i32 25
  %arrayidx6 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt5, i32 0, i64 1
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx6, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx7, align 4
  %tmp3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt8 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp3, i32 0, i32 25
  %arrayidx9 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt8, i32 0, i64 1
  %arrayidx10 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx9, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx10, align 4
  %tmp4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp4, i32 0, i32 25
  %arrayidx12 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt11, i32 0, i64 2
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx12, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx13, align 4
  %tmp5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp5, i32 0, i32 25
  %arrayidx15 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt14, i32 0, i64 2
  %arrayidx16 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx15, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx16, align 4
  %tmp6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp6, i32 0, i32 25
  %arrayidx18 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt17, i32 0, i64 3
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx18, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx19, align 4
  %tmp7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp7, i32 0, i32 25
  %arrayidx21 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt20, i32 0, i64 3
  %arrayidx22 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx21, i32 0, i64 1
  store float 1.000000e+00, float* %arrayidx22, align 4
  %tmp8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp8, i32 0, i32 26
  %tmp9 = load float*, float** %begin, align 8
  %add.ptr = getelementptr inbounds float, float* %tmp9, i64 2
  %tmp10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp10, i32 0, i32 20
  %tmp11 = load i32, i32* %M, align 4
  %sub = sub nsw i32 %tmp11, 1
  call void @FSet(float* %add.ptr, i32 %sub, float 0.000000e+00)
  %tmp12 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp12, i32 0, i32 24
  %tmp13 = load float, float* %tbd1, align 4
  %conv = fpext float %tmp13 to double
  %sub23 = fsub double 1.000000e+00, %conv
  %conv24 = fptrunc double %sub23 to float
  %tmp14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin25 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp14, i32 0, i32 26
  %tmp15 = load float*, float** %begin25, align 8
  %arrayidx26 = getelementptr inbounds float, float* %tmp15, i64 1
  store float %conv24, float* %arrayidx26, align 4
  %tmp16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp16, i32 0, i32 27
  %tmp17 = load float*, float** %end, align 8
  %add.ptr27 = getelementptr inbounds float, float* %tmp17, i64 1
  %tmp18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M28 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp18, i32 0, i32 20
  %tmp19 = load i32, i32* %M28, align 4
  %sub29 = sub nsw i32 %tmp19, 1
  call void @FSet(float* %add.ptr27, i32 %sub29, float 0.000000e+00)
  %tmp20 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M30 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp20, i32 0, i32 20
  %tmp21 = load i32, i32* %M30, align 4
  %idxprom = sext i32 %tmp21 to i64
  %tmp22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end31 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp22, i32 0, i32 27
  %tmp23 = load float*, float** %end31, align 8
  %arrayidx32 = getelementptr inbounds float, float* %tmp23, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx32, align 4
  %tmp24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  call void @Plan7RenormalizeExits(%struct.plan7_s* %tmp24)
  %tmp25 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp25, i32 0, i32 47
  %tmp26 = load i32, i32* %flags, align 4
  %and = and i32 %tmp26, -2
  store i32 %and, i32* %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plan7GlobalConfig(%struct.plan7_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  %tmp = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp, i32 0, i32 29
  %tmp1 = load float, float* %p1, align 4
  %conv = fpext float %tmp1 to double
  %sub = fsub double 1.000000e+00, %conv
  %conv1 = fptrunc double %sub to float
  %tmp2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp2, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  store float %conv1, float* %arrayidx2, align 4
  %tmp3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p13 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp3, i32 0, i32 29
  %tmp4 = load float, float* %p13, align 4
  %tmp5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp5, i32 0, i32 25
  %arrayidx5 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt4, i32 0, i64 0
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx5, i32 0, i64 1
  store float %tmp4, float* %arrayidx6, align 4
  %tmp6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt7 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp6, i32 0, i32 25
  %arrayidx8 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt7, i32 0, i64 1
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx8, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx9, align 4
  %tmp7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt10 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp7, i32 0, i32 25
  %arrayidx11 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt10, i32 0, i64 1
  %arrayidx12 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx11, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx12, align 4
  %tmp8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p113 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp8, i32 0, i32 29
  %tmp9 = load float, float* %p113, align 4
  %conv14 = fpext float %tmp9 to double
  %sub15 = fsub double 1.000000e+00, %conv14
  %conv16 = fptrunc double %sub15 to float
  %tmp10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp10, i32 0, i32 25
  %arrayidx18 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt17, i32 0, i64 2
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx18, i32 0, i64 0
  store float %conv16, float* %arrayidx19, align 4
  %tmp11 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p120 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp11, i32 0, i32 29
  %tmp12 = load float, float* %p120, align 4
  %tmp13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp13, i32 0, i32 25
  %arrayidx22 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt21, i32 0, i64 2
  %arrayidx23 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx22, i32 0, i64 1
  store float %tmp12, float* %arrayidx23, align 4
  %tmp14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt24 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp14, i32 0, i32 25
  %arrayidx25 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt24, i32 0, i64 3
  %arrayidx26 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx25, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx26, align 4
  %tmp15 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt27 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp15, i32 0, i32 25
  %arrayidx28 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt27, i32 0, i64 3
  %arrayidx29 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx28, i32 0, i64 1
  store float 1.000000e+00, float* %arrayidx29, align 4
  %tmp16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp16, i32 0, i32 26
  %tmp17 = load float*, float** %begin, align 8
  %add.ptr = getelementptr inbounds float, float* %tmp17, i64 2
  %tmp18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp18, i32 0, i32 20
  %tmp19 = load i32, i32* %M, align 4
  %sub30 = sub nsw i32 %tmp19, 1
  call void @FSet(float* %add.ptr, i32 %sub30, float 0.000000e+00)
  %tmp20 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp20, i32 0, i32 24
  %tmp21 = load float, float* %tbd1, align 4
  %conv31 = fpext float %tmp21 to double
  %sub32 = fsub double 1.000000e+00, %conv31
  %conv33 = fptrunc double %sub32 to float
  %tmp22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin34 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp22, i32 0, i32 26
  %tmp23 = load float*, float** %begin34, align 8
  %arrayidx35 = getelementptr inbounds float, float* %tmp23, i64 1
  store float %conv33, float* %arrayidx35, align 4
  %tmp24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp24, i32 0, i32 27
  %tmp25 = load float*, float** %end, align 8
  %add.ptr36 = getelementptr inbounds float, float* %tmp25, i64 1
  %tmp26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M37 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp26, i32 0, i32 20
  %tmp27 = load i32, i32* %M37, align 4
  %sub38 = sub nsw i32 %tmp27, 1
  call void @FSet(float* %add.ptr36, i32 %sub38, float 0.000000e+00)
  %tmp28 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M39 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp28, i32 0, i32 20
  %tmp29 = load i32, i32* %M39, align 4
  %idxprom = sext i32 %tmp29 to i64
  %tmp30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end40 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp30, i32 0, i32 27
  %tmp31 = load float*, float** %end40, align 8
  %arrayidx41 = getelementptr inbounds float, float* %tmp31, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx41, align 4
  %tmp32 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  call void @Plan7RenormalizeExits(%struct.plan7_s* %tmp32)
  %tmp33 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp33, i32 0, i32 47
  %tmp34 = load i32, i32* %flags, align 4
  %and = and i32 %tmp34, -2
  store i32 %and, i32* %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plan7LSConfig(%struct.plan7_s* %hmm) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  %tmp = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp, i32 0, i32 29
  %tmp1 = load float, float* %p1, align 4
  %conv = fpext float %tmp1 to double
  %sub = fsub double 1.000000e+00, %conv
  %conv1 = fptrunc double %sub to float
  %tmp2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp2, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  store float %conv1, float* %arrayidx2, align 4
  %tmp3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p13 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp3, i32 0, i32 29
  %tmp4 = load float, float* %p13, align 4
  %tmp5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp5, i32 0, i32 25
  %arrayidx5 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt4, i32 0, i64 0
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx5, i32 0, i64 1
  store float %tmp4, float* %arrayidx6, align 4
  %tmp6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt7 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp6, i32 0, i32 25
  %arrayidx8 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt7, i32 0, i64 1
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx8, i32 0, i64 0
  store float 5.000000e-01, float* %arrayidx9, align 4
  %tmp7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt10 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp7, i32 0, i32 25
  %arrayidx11 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt10, i32 0, i64 1
  %arrayidx12 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx11, i32 0, i64 1
  store float 5.000000e-01, float* %arrayidx12, align 4
  %tmp8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p113 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp8, i32 0, i32 29
  %tmp9 = load float, float* %p113, align 4
  %conv14 = fpext float %tmp9 to double
  %sub15 = fsub double 1.000000e+00, %conv14
  %conv16 = fptrunc double %sub15 to float
  %tmp10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp10, i32 0, i32 25
  %arrayidx18 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt17, i32 0, i64 2
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx18, i32 0, i64 0
  store float %conv16, float* %arrayidx19, align 4
  %tmp11 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p120 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp11, i32 0, i32 29
  %tmp12 = load float, float* %p120, align 4
  %tmp13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp13, i32 0, i32 25
  %arrayidx22 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt21, i32 0, i64 2
  %arrayidx23 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx22, i32 0, i64 1
  store float %tmp12, float* %arrayidx23, align 4
  %tmp14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p124 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp14, i32 0, i32 29
  %tmp15 = load float, float* %p124, align 4
  %conv25 = fpext float %tmp15 to double
  %sub26 = fsub double 1.000000e+00, %conv25
  %conv27 = fptrunc double %sub26 to float
  %tmp16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt28 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp16, i32 0, i32 25
  %arrayidx29 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt28, i32 0, i64 3
  %arrayidx30 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx29, i32 0, i64 0
  store float %conv27, float* %arrayidx30, align 4
  %tmp17 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p131 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp17, i32 0, i32 29
  %tmp18 = load float, float* %p131, align 4
  %tmp19 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt32 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp19, i32 0, i32 25
  %arrayidx33 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt32, i32 0, i64 3
  %arrayidx34 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx33, i32 0, i64 1
  store float %tmp18, float* %arrayidx34, align 4
  %tmp20 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp20, i32 0, i32 26
  %tmp21 = load float*, float** %begin, align 8
  %add.ptr = getelementptr inbounds float, float* %tmp21, i64 2
  %tmp22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp22, i32 0, i32 20
  %tmp23 = load i32, i32* %M, align 4
  %sub35 = sub nsw i32 %tmp23, 1
  call void @FSet(float* %add.ptr, i32 %sub35, float 0.000000e+00)
  %tmp24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp24, i32 0, i32 24
  %tmp25 = load float, float* %tbd1, align 4
  %conv36 = fpext float %tmp25 to double
  %sub37 = fsub double 1.000000e+00, %conv36
  %conv38 = fptrunc double %sub37 to float
  %tmp26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin39 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp26, i32 0, i32 26
  %tmp27 = load float*, float** %begin39, align 8
  %arrayidx40 = getelementptr inbounds float, float* %tmp27, i64 1
  store float %conv38, float* %arrayidx40, align 4
  %tmp28 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp28, i32 0, i32 27
  %tmp29 = load float*, float** %end, align 8
  %add.ptr41 = getelementptr inbounds float, float* %tmp29, i64 1
  %tmp30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M42 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp30, i32 0, i32 20
  %tmp31 = load i32, i32* %M42, align 4
  %sub43 = sub nsw i32 %tmp31, 1
  call void @FSet(float* %add.ptr41, i32 %sub43, float 0.000000e+00)
  %tmp32 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp32, i32 0, i32 20
  %tmp33 = load i32, i32* %M44, align 4
  %idxprom = sext i32 %tmp33 to i64
  %tmp34 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end45 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp34, i32 0, i32 27
  %tmp35 = load float*, float** %end45, align 8
  %arrayidx46 = getelementptr inbounds float, float* %tmp35, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx46, align 4
  %tmp36 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  call void @Plan7RenormalizeExits(%struct.plan7_s* %tmp36)
  %tmp37 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp37, i32 0, i32 47
  %tmp38 = load i32, i32* %flags, align 4
  %and = and i32 %tmp38, -2
  store i32 %and, i32* %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plan7SWConfig(%struct.plan7_s* %hmm, float %pentry, float %pexit) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %pentry.addr = alloca float, align 4
  %pexit.addr = alloca float, align 4
  %basep = alloca float, align 4
  %k = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store float %pentry, float* %pentry.addr, align 4
  store float %pexit, float* %pexit.addr, align 4
  %tmp = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp, i32 0, i32 29
  %tmp1 = load float, float* %p1, align 4
  %sub = fsub float 1.000000e+00, %tmp1
  %tmp2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp2, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  store float %sub, float* %arrayidx1, align 4
  %tmp3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p12 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp3, i32 0, i32 29
  %tmp4 = load float, float* %p12, align 4
  %tmp5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt3 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp5, i32 0, i32 25
  %arrayidx4 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt3, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx4, i32 0, i64 1
  store float %tmp4, float* %arrayidx5, align 4
  %tmp6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt6 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp6, i32 0, i32 25
  %arrayidx7 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt6, i32 0, i64 1
  %arrayidx8 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx7, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx8, align 4
  %tmp7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt9 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp7, i32 0, i32 25
  %arrayidx10 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt9, i32 0, i64 1
  %arrayidx11 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx10, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx11, align 4
  %tmp8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p112 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp8, i32 0, i32 29
  %tmp9 = load float, float* %p112, align 4
  %sub13 = fsub float 1.000000e+00, %tmp9
  %tmp10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp10, i32 0, i32 25
  %arrayidx15 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt14, i32 0, i64 2
  %arrayidx16 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx15, i32 0, i64 0
  store float %sub13, float* %arrayidx16, align 4
  %tmp11 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p117 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp11, i32 0, i32 29
  %tmp12 = load float, float* %p117, align 4
  %tmp13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt18 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp13, i32 0, i32 25
  %arrayidx19 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt18, i32 0, i64 2
  %arrayidx20 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx19, i32 0, i64 1
  store float %tmp12, float* %arrayidx20, align 4
  %tmp14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp14, i32 0, i32 25
  %arrayidx22 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt21, i32 0, i64 3
  %arrayidx23 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx22, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx23, align 4
  %tmp15 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt24 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp15, i32 0, i32 25
  %arrayidx25 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt24, i32 0, i64 3
  %arrayidx26 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx25, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx26, align 4
  %tmp16 = load float, float* %pentry.addr, align 4
  %conv = fpext float %tmp16 to double
  %sub27 = fsub double 1.000000e+00, %conv
  %tmp17 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp17, i32 0, i32 24
  %tmp18 = load float, float* %tbd1, align 4
  %conv28 = fpext float %tmp18 to double
  %sub29 = fsub double 1.000000e+00, %conv28
  %mul = fmul double %sub27, %sub29
  %conv30 = fptrunc double %mul to float
  %tmp19 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp19, i32 0, i32 26
  %tmp20 = load float*, float** %begin, align 8
  %arrayidx31 = getelementptr inbounds float, float* %tmp20, i64 1
  store float %conv30, float* %arrayidx31, align 4
  %tmp21 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin32 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp21, i32 0, i32 26
  %tmp22 = load float*, float** %begin32, align 8
  %add.ptr = getelementptr inbounds float, float* %tmp22, i64 2
  %tmp23 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp23, i32 0, i32 20
  %tmp24 = load i32, i32* %M, align 4
  %sub33 = sub nsw i32 %tmp24, 1
  %tmp25 = load float, float* %pentry.addr, align 4
  %conv34 = fpext float %tmp25 to double
  %tmp26 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd135 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp26, i32 0, i32 24
  %tmp27 = load float, float* %tbd135, align 4
  %conv36 = fpext float %tmp27 to double
  %sub37 = fsub double 1.000000e+00, %conv36
  %mul38 = fmul double %conv34, %sub37
  %tmp28 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M39 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp28, i32 0, i32 20
  %tmp29 = load i32, i32* %M39, align 4
  %sub40 = sub nsw i32 %tmp29, 1
  %conv41 = sitofp i32 %sub40 to float
  %conv42 = fpext float %conv41 to double
  %div = fdiv double %mul38, %conv42
  %conv43 = fptrunc double %div to float
  call void @FSet(float* %add.ptr, i32 %sub33, float %conv43)
  %tmp30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp30, i32 0, i32 20
  %tmp31 = load i32, i32* %M44, align 4
  %idxprom = sext i32 %tmp31 to i64
  %tmp32 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp32, i32 0, i32 27
  %tmp33 = load float*, float** %end, align 8
  %arrayidx45 = getelementptr inbounds float, float* %tmp33, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx45, align 4
  %tmp34 = load float, float* %pexit.addr, align 4
  %tmp35 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M46 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp35, i32 0, i32 20
  %tmp36 = load i32, i32* %M46, align 4
  %sub47 = sub nsw i32 %tmp36, 1
  %conv48 = sitofp i32 %sub47 to float
  %div49 = fdiv float %tmp34, %conv48
  store float %div49, float* %basep, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp37 = load i32, i32* %k, align 4
  %tmp38 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M50 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp38, i32 0, i32 20
  %tmp39 = load i32, i32* %M50, align 4
  %cmp = icmp slt i32 %tmp37, %tmp39
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp40 = load float, float* %basep, align 4
  %conv52 = fpext float %tmp40 to double
  %tmp41 = load float, float* %basep, align 4
  %tmp42 = load i32, i32* %k, align 4
  %sub53 = sub nsw i32 %tmp42, 1
  %conv54 = sitofp i32 %sub53 to float
  %mul55 = fmul float %tmp41, %conv54
  %conv56 = fpext float %mul55 to double
  %sub57 = fsub double 1.000000e+00, %conv56
  %div58 = fdiv double %conv52, %sub57
  %conv59 = fptrunc double %div58 to float
  %tmp43 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %tmp43 to i64
  %tmp44 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end61 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp44, i32 0, i32 27
  %tmp45 = load float*, float** %end61, align 8
  %arrayidx62 = getelementptr inbounds float, float* %tmp45, i64 %idxprom60
  store float %conv59, float* %arrayidx62, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp46 = load i32, i32* %k, align 4
  %inc = add nsw i32 %tmp46, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tmp47 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  call void @Plan7RenormalizeExits(%struct.plan7_s* %tmp47)
  %tmp48 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp48, i32 0, i32 47
  %tmp49 = load i32, i32* %flags, align 4
  %and = and i32 %tmp49, -2
  store i32 %and, i32* %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plan7FSConfig(%struct.plan7_s* %hmm, float %pentry, float %pexit) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %pentry.addr = alloca float, align 4
  %pexit.addr = alloca float, align 4
  %basep = alloca float, align 4
  %k = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store float %pentry, float* %pentry.addr, align 4
  store float %pexit, float* %pexit.addr, align 4
  %tmp = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp, i32 0, i32 29
  %tmp1 = load float, float* %p1, align 4
  %sub = fsub float 1.000000e+00, %tmp1
  %tmp2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp2, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  store float %sub, float* %arrayidx1, align 4
  %tmp3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p12 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp3, i32 0, i32 29
  %tmp4 = load float, float* %p12, align 4
  %tmp5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt3 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp5, i32 0, i32 25
  %arrayidx4 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt3, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx4, i32 0, i64 1
  store float %tmp4, float* %arrayidx5, align 4
  %tmp6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt6 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp6, i32 0, i32 25
  %arrayidx7 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt6, i32 0, i64 1
  %arrayidx8 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx7, i32 0, i64 0
  store float 5.000000e-01, float* %arrayidx8, align 4
  %tmp7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt9 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp7, i32 0, i32 25
  %arrayidx10 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt9, i32 0, i64 1
  %arrayidx11 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx10, i32 0, i64 1
  store float 5.000000e-01, float* %arrayidx11, align 4
  %tmp8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p112 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp8, i32 0, i32 29
  %tmp9 = load float, float* %p112, align 4
  %sub13 = fsub float 1.000000e+00, %tmp9
  %tmp10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp10, i32 0, i32 25
  %arrayidx15 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt14, i32 0, i64 2
  %arrayidx16 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx15, i32 0, i64 0
  store float %sub13, float* %arrayidx16, align 4
  %tmp11 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p117 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp11, i32 0, i32 29
  %tmp12 = load float, float* %p117, align 4
  %tmp13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt18 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp13, i32 0, i32 25
  %arrayidx19 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt18, i32 0, i64 2
  %arrayidx20 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx19, i32 0, i64 1
  store float %tmp12, float* %arrayidx20, align 4
  %tmp14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p121 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp14, i32 0, i32 29
  %tmp15 = load float, float* %p121, align 4
  %conv = fpext float %tmp15 to double
  %sub22 = fsub double 1.000000e+00, %conv
  %conv23 = fptrunc double %sub22 to float
  %tmp16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt24 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp16, i32 0, i32 25
  %arrayidx25 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt24, i32 0, i64 3
  %arrayidx26 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx25, i32 0, i64 0
  store float %conv23, float* %arrayidx26, align 4
  %tmp17 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p127 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp17, i32 0, i32 29
  %tmp18 = load float, float* %p127, align 4
  %tmp19 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt28 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp19, i32 0, i32 25
  %arrayidx29 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt28, i32 0, i64 3
  %arrayidx30 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx29, i32 0, i64 1
  store float %tmp18, float* %arrayidx30, align 4
  %tmp20 = load float, float* %pentry.addr, align 4
  %conv31 = fpext float %tmp20 to double
  %sub32 = fsub double 1.000000e+00, %conv31
  %tmp21 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp21, i32 0, i32 24
  %tmp22 = load float, float* %tbd1, align 4
  %conv33 = fpext float %tmp22 to double
  %sub34 = fsub double 1.000000e+00, %conv33
  %mul = fmul double %sub32, %sub34
  %conv35 = fptrunc double %mul to float
  %tmp23 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp23, i32 0, i32 26
  %tmp24 = load float*, float** %begin, align 8
  %arrayidx36 = getelementptr inbounds float, float* %tmp24, i64 1
  store float %conv35, float* %arrayidx36, align 4
  %tmp25 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin37 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp25, i32 0, i32 26
  %tmp26 = load float*, float** %begin37, align 8
  %add.ptr = getelementptr inbounds float, float* %tmp26, i64 2
  %tmp27 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp27, i32 0, i32 20
  %tmp28 = load i32, i32* %M, align 4
  %sub38 = sub nsw i32 %tmp28, 1
  %tmp29 = load float, float* %pentry.addr, align 4
  %conv39 = fpext float %tmp29 to double
  %tmp30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd140 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp30, i32 0, i32 24
  %tmp31 = load float, float* %tbd140, align 4
  %conv41 = fpext float %tmp31 to double
  %sub42 = fsub double 1.000000e+00, %conv41
  %mul43 = fmul double %conv39, %sub42
  %tmp32 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp32, i32 0, i32 20
  %tmp33 = load i32, i32* %M44, align 4
  %sub45 = sub nsw i32 %tmp33, 1
  %conv46 = sitofp i32 %sub45 to float
  %conv47 = fpext float %conv46 to double
  %div = fdiv double %mul43, %conv47
  %conv48 = fptrunc double %div to float
  call void @FSet(float* %add.ptr, i32 %sub38, float %conv48)
  %tmp34 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M49 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp34, i32 0, i32 20
  %tmp35 = load i32, i32* %M49, align 4
  %idxprom = sext i32 %tmp35 to i64
  %tmp36 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp36, i32 0, i32 27
  %tmp37 = load float*, float** %end, align 8
  %arrayidx50 = getelementptr inbounds float, float* %tmp37, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx50, align 4
  %tmp38 = load float, float* %pexit.addr, align 4
  %tmp39 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M51 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp39, i32 0, i32 20
  %tmp40 = load i32, i32* %M51, align 4
  %sub52 = sub nsw i32 %tmp40, 1
  %conv53 = sitofp i32 %sub52 to float
  %div54 = fdiv float %tmp38, %conv53
  store float %div54, float* %basep, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp41 = load i32, i32* %k, align 4
  %tmp42 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M55 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp42, i32 0, i32 20
  %tmp43 = load i32, i32* %M55, align 4
  %cmp = icmp slt i32 %tmp41, %tmp43
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp44 = load float, float* %basep, align 4
  %conv57 = fpext float %tmp44 to double
  %tmp45 = load float, float* %basep, align 4
  %tmp46 = load i32, i32* %k, align 4
  %sub58 = sub nsw i32 %tmp46, 1
  %conv59 = sitofp i32 %sub58 to float
  %mul60 = fmul float %tmp45, %conv59
  %conv61 = fpext float %mul60 to double
  %sub62 = fsub double 1.000000e+00, %conv61
  %div63 = fdiv double %conv57, %sub62
  %conv64 = fptrunc double %div63 to float
  %tmp47 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %tmp47 to i64
  %tmp48 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end66 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp48, i32 0, i32 27
  %tmp49 = load float*, float** %end66, align 8
  %arrayidx67 = getelementptr inbounds float, float* %tmp49, i64 %idxprom65
  store float %conv64, float* %arrayidx67, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp50 = load i32, i32* %k, align 4
  %inc = add nsw i32 %tmp50, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tmp51 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  call void @Plan7RenormalizeExits(%struct.plan7_s* %tmp51)
  %tmp52 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp52, i32 0, i32 47
  %tmp53 = load i32, i32* %flags, align 4
  %and = and i32 %tmp53, -2
  store i32 %and, i32* %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plan7ESTConfig(%struct.plan7_s* %hmm, i32* %aacode, float** %estmodel, float %dna2, float %dna4) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %aacode.addr = alloca i32*, align 8
  %estmodel.addr = alloca float**, align 8
  %dna2.addr = alloca float, align 4
  %dna4.addr = alloca float, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %p = alloca float, align 4
  %tripnull = alloca float*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32* %aacode, i32** %aacode.addr, align 8
  store float** %estmodel, float*** %estmodel.addr, align 8
  store float %dna2, float* %dna2.addr, align 4
  store float %dna4, float* %dna4.addr, align 4
  store float* null, float** %tripnull, align 8
  %tmp = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx, i32 0, i64 0
  store float 0x3F6756CAC0000000, float* %arrayidx1, align 4
  %tmp1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp1, i32 0, i32 25
  %arrayidx3 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt2, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx3, i32 0, i64 1
  store float 0x3FEFE8A940000000, float* %arrayidx4, align 4
  %tmp2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt5 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp2, i32 0, i32 25
  %arrayidx6 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt5, i32 0, i64 1
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx6, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx7, align 4
  %tmp3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt8 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp3, i32 0, i32 25
  %arrayidx9 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt8, i32 0, i64 1
  %arrayidx10 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx9, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx10, align 4
  %tmp4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt11 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp4, i32 0, i32 25
  %arrayidx12 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt11, i32 0, i64 2
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx12, i32 0, i64 0
  store float 0x3F6756CAC0000000, float* %arrayidx13, align 4
  %tmp5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt14 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp5, i32 0, i32 25
  %arrayidx15 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt14, i32 0, i64 2
  %arrayidx16 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx15, i32 0, i64 1
  store float 0x3FEFE8A940000000, float* %arrayidx16, align 4
  %tmp6 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt17 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp6, i32 0, i32 25
  %arrayidx18 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt17, i32 0, i64 3
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx18, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx19, align 4
  %tmp7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt20 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp7, i32 0, i32 25
  %arrayidx21 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt20, i32 0, i64 3
  %arrayidx22 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx21, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx22, align 4
  %tmp8 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp8, i32 0, i32 26
  %tmp9 = load float*, float** %begin, align 8
  %arrayidx23 = getelementptr inbounds float, float* %tmp9, i64 1
  store float 5.000000e-01, float* %arrayidx23, align 4
  %tmp10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin24 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp10, i32 0, i32 26
  %tmp11 = load float*, float** %begin24, align 8
  %add.ptr = getelementptr inbounds float, float* %tmp11, i64 2
  %tmp12 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp12, i32 0, i32 20
  %tmp13 = load i32, i32* %M, align 4
  %sub = sub nsw i32 %tmp13, 1
  %tmp14 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M25 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp14, i32 0, i32 20
  %tmp15 = load i32, i32* %M25, align 4
  %conv = sitofp i32 %tmp15 to float
  %conv26 = fpext float %conv to double
  %sub27 = fsub double %conv26, 1.000000e+00
  %div = fdiv double 5.000000e-01, %sub27
  %conv28 = fptrunc double %div to float
  call void @FSet(float* %add.ptr, i32 %sub, float %conv28)
  %tmp16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M29 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp16, i32 0, i32 20
  %tmp17 = load i32, i32* %M29, align 4
  %idxprom = sext i32 %tmp17 to i64
  %tmp18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp18, i32 0, i32 27
  %tmp19 = load float*, float** %end, align 8
  %arrayidx30 = getelementptr inbounds float, float* %tmp19, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx30, align 4
  %tmp20 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end31 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp20, i32 0, i32 27
  %tmp21 = load float*, float** %end31, align 8
  %tmp22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M32 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp22, i32 0, i32 20
  %tmp23 = load i32, i32* %M32, align 4
  %sub33 = sub nsw i32 %tmp23, 1
  %tmp24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M34 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp24, i32 0, i32 20
  %tmp25 = load i32, i32* %M34, align 4
  %conv35 = sitofp i32 %tmp25 to float
  %conv36 = fpext float %conv35 to double
  %sub37 = fsub double %conv36, 1.000000e+00
  %div38 = fdiv double 5.000000e-01, %sub37
  %conv39 = fptrunc double %div38 to float
  call void @FSet(float* %tmp21, i32 %sub33, float %conv39)
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc106, %entry
  %tmp26 = load i32, i32* %k, align 4
  %tmp27 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M40 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp27, i32 0, i32 20
  %tmp28 = load i32, i32* %M40, align 4
  %cmp = icmp sle i32 %tmp26, %tmp28
  br i1 %cmp, label %for.body, label %for.end108

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body
  %tmp29 = load i32, i32* %x, align 4
  %cmp43 = icmp slt i32 %tmp29, 64
  br i1 %cmp43, label %for.body45, label %for.end

for.body45:                                       ; preds = %for.cond42
  %tmp30 = load i32, i32* %x, align 4
  %idxprom46 = sext i32 %tmp30 to i64
  %tmp31 = load i32*, i32** %aacode.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %tmp31, i64 %idxprom46
  %tmp32 = load i32, i32* %arrayidx47, align 4
  %idxprom48 = sext i32 %tmp32 to i64
  %tmp33 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %tmp33 to i64
  %tmp34 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp34, i32 0, i32 22
  %tmp35 = load float**, float*** %mat, align 8
  %arrayidx50 = getelementptr inbounds float*, float** %tmp35, i64 %idxprom49
  %tmp36 = load float*, float** %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds float, float* %tmp36, i64 %idxprom48
  %tmp37 = load float, float* %arrayidx51, align 4
  %tmp38 = load i32, i32* %x, align 4
  %idxprom52 = sext i32 %tmp38 to i64
  %tmp39 = load i32, i32* %x, align 4
  %idxprom53 = sext i32 %tmp39 to i64
  %tmp40 = load i32*, i32** %aacode.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %tmp40, i64 %idxprom53
  %tmp41 = load i32, i32* %arrayidx54, align 4
  %idxprom55 = sext i32 %tmp41 to i64
  %tmp42 = load float**, float*** %estmodel.addr, align 8
  %arrayidx56 = getelementptr inbounds float*, float** %tmp42, i64 %idxprom55
  %tmp43 = load float*, float** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds float, float* %tmp43, i64 %idxprom52
  %tmp44 = load float, float* %arrayidx57, align 4
  %mul = fmul float %tmp37, %tmp44
  %conv58 = fpext float %mul to double
  %tmp45 = load float, float* %dna2.addr, align 4
  %conv59 = fpext float %tmp45 to double
  %sub60 = fsub double 1.000000e+00, %conv59
  %tmp46 = load float, float* %dna4.addr, align 4
  %conv61 = fpext float %tmp46 to double
  %sub62 = fsub double %sub60, %conv61
  %mul63 = fmul double %conv58, %sub62
  %conv64 = fptrunc double %mul63 to float
  store float %conv64, float* %p, align 4
  %tmp47 = load float, float* %p, align 4
  %tmp48 = load i32, i32* %x, align 4
  %idxprom65 = sext i32 %tmp48 to i64
  %tmp49 = load float*, float** %tripnull, align 8
  %arrayidx66 = getelementptr inbounds float, float* %tmp49, i64 %idxprom65
  %tmp50 = load float, float* %arrayidx66, align 4
  %call = call i32 @Prob2Score(float %tmp47, float %tmp50)
  %tmp51 = load i32, i32* %k, align 4
  %idxprom67 = sext i32 %tmp51 to i64
  %tmp52 = load i32, i32* %x, align 4
  %idxprom68 = sext i32 %tmp52 to i64
  %tmp53 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dnam = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp53, i32 0, i32 41
  %tmp54 = load i32**, i32*** %dnam, align 8
  %arrayidx69 = getelementptr inbounds i32*, i32** %tmp54, i64 %idxprom68
  %tmp55 = load i32*, i32** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %tmp55, i64 %idxprom67
  store i32 %call, i32* %arrayidx70, align 4
  %tmp56 = load i32, i32* %x, align 4
  %idxprom71 = sext i32 %tmp56 to i64
  %tmp57 = load i32*, i32** %aacode.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %tmp57, i64 %idxprom71
  %tmp58 = load i32, i32* %arrayidx72, align 4
  %idxprom73 = sext i32 %tmp58 to i64
  %tmp59 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %tmp59 to i64
  %tmp60 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp60, i32 0, i32 23
  %tmp61 = load float**, float*** %ins, align 8
  %arrayidx75 = getelementptr inbounds float*, float** %tmp61, i64 %idxprom74
  %tmp62 = load float*, float** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds float, float* %tmp62, i64 %idxprom73
  %tmp63 = load float, float* %arrayidx76, align 4
  %tmp64 = load i32, i32* %x, align 4
  %idxprom77 = sext i32 %tmp64 to i64
  %tmp65 = load i32, i32* %x, align 4
  %idxprom78 = sext i32 %tmp65 to i64
  %tmp66 = load i32*, i32** %aacode.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %tmp66, i64 %idxprom78
  %tmp67 = load i32, i32* %arrayidx79, align 4
  %idxprom80 = sext i32 %tmp67 to i64
  %tmp68 = load float**, float*** %estmodel.addr, align 8
  %arrayidx81 = getelementptr inbounds float*, float** %tmp68, i64 %idxprom80
  %tmp69 = load float*, float** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds float, float* %tmp69, i64 %idxprom77
  %tmp70 = load float, float* %arrayidx82, align 4
  %mul83 = fmul float %tmp63, %tmp70
  %conv84 = fpext float %mul83 to double
  %tmp71 = load float, float* %dna2.addr, align 4
  %conv85 = fpext float %tmp71 to double
  %sub86 = fsub double 1.000000e+00, %conv85
  %tmp72 = load float, float* %dna4.addr, align 4
  %conv87 = fpext float %tmp72 to double
  %sub88 = fsub double %sub86, %conv87
  %mul89 = fmul double %conv84, %sub88
  %conv90 = fptrunc double %mul89 to float
  store float %conv90, float* %p, align 4
  %tmp73 = load float, float* %p, align 4
  %tmp74 = load i32, i32* %x, align 4
  %idxprom91 = sext i32 %tmp74 to i64
  %tmp75 = load float*, float** %tripnull, align 8
  %arrayidx92 = getelementptr inbounds float, float* %tmp75, i64 %idxprom91
  %tmp76 = load float, float* %arrayidx92, align 4
  %call93 = call i32 @Prob2Score(float %tmp73, float %tmp76)
  %tmp77 = load i32, i32* %k, align 4
  %idxprom94 = sext i32 %tmp77 to i64
  %tmp78 = load i32, i32* %x, align 4
  %idxprom95 = sext i32 %tmp78 to i64
  %tmp79 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dnai = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp79, i32 0, i32 42
  %tmp80 = load i32**, i32*** %dnai, align 8
  %arrayidx96 = getelementptr inbounds i32*, i32** %tmp80, i64 %idxprom95
  %tmp81 = load i32*, i32** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %tmp81, i64 %idxprom94
  store i32 %call93, i32* %arrayidx97, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %tmp82 = load i32, i32* %x, align 4
  %inc = add nsw i32 %tmp82, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond42

for.end:                                          ; preds = %for.cond42
  %tmp83 = load i32, i32* %k, align 4
  %idxprom98 = sext i32 %tmp83 to i64
  %tmp84 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dnam99 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp84, i32 0, i32 41
  %tmp85 = load i32**, i32*** %dnam99, align 8
  %arrayidx100 = getelementptr inbounds i32*, i32** %tmp85, i64 64
  %tmp86 = load i32*, i32** %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %tmp86, i64 %idxprom98
  store i32 0, i32* %arrayidx101, align 4
  %tmp87 = load float, float* %dna2.addr, align 4
  %call102 = call i32 @Prob2Score(float %tmp87, float 1.000000e+00)
  %tmp88 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dna2103 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp88, i32 0, i32 43
  store i32 %call102, i32* %dna2103, align 4
  %tmp89 = load float, float* %dna4.addr, align 4
  %call104 = call i32 @Prob2Score(float %tmp89, float 1.000000e+00)
  %tmp90 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dna4105 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp90, i32 0, i32 44
  store i32 %call104, i32* %dna4105, align 4
  br label %for.inc106

for.inc106:                                       ; preds = %for.end
  %tmp91 = load i32, i32* %k, align 4
  %inc107 = add nsw i32 %tmp91, 1
  store i32 %inc107, i32* %k, align 4
  br label %for.cond

for.end108:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @PrintPlan7Stats(%struct._IO_FILE* %fp, %struct.plan7_s* %hmm, i8** %dsq, i32 %nseq, %struct.p7trace_s** %tr) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %dsq.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %tr.addr = alloca %struct.p7trace_s**, align 8
  %idx = alloca i32, align 4
  %score = alloca float, align 4
  %total = alloca float, align 4
  %best = alloca float, align 4
  %worst = alloca float, align 4
  %sqsum = alloca float, align 4
  %stddev = alloca float, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8** %dsq, i8*** %dsq.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store %struct.p7trace_s** %tr, %struct.p7trace_s*** %tr.addr, align 8
  %tmp = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  call void @P7Logoddsify(%struct.plan7_s* %tmp, i32 1)
  %tmp1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tmp2 = load i8**, i8*** %dsq.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %tmp2, i64 0
  %tmp3 = load i8*, i8** %arrayidx, align 8
  %tmp4 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %tmp4, i64 0
  %tmp5 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx1, align 8
  %call = call float @P7TraceScore(%struct.plan7_s* %tmp1, i8* %tmp3, %struct.p7trace_s* %tmp5)
  store float %call, float* %score, align 4
  %tmp6 = load float, float* %score, align 4
  store float %tmp6, float* %worst, align 4
  store float %tmp6, float* %best, align 4
  store float %tmp6, float* %total, align 4
  %tmp7 = load float, float* %score, align 4
  %tmp8 = load float, float* %score, align 4
  %mul = fmul float %tmp7, %tmp8
  store float %mul, float* %sqsum, align 4
  store i32 1, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp9 = load i32, i32* %idx, align 4
  %tmp10 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %tmp9, %tmp10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp11 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tmp12 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %tmp12 to i64
  %tmp13 = load i8**, i8*** %dsq.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %tmp13, i64 %idxprom
  %tmp14 = load i8*, i8** %arrayidx2, align 8
  %tmp15 = load i32, i32* %idx, align 4
  %idxprom3 = sext i32 %tmp15 to i64
  %tmp16 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %tmp16, i64 %idxprom3
  %tmp17 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx4, align 8
  %call5 = call float @P7TraceScore(%struct.plan7_s* %tmp11, i8* %tmp14, %struct.p7trace_s* %tmp17)
  store float %call5, float* %score, align 4
  %tmp18 = load float, float* %score, align 4
  %tmp19 = load float, float* %total, align 4
  %add = fadd float %tmp19, %tmp18
  store float %add, float* %total, align 4
  %tmp20 = load float, float* %score, align 4
  %tmp21 = load float, float* %score, align 4
  %mul6 = fmul float %tmp20, %tmp21
  %tmp22 = load float, float* %sqsum, align 4
  %add7 = fadd float %tmp22, %mul6
  store float %add7, float* %sqsum, align 4
  %tmp23 = load float, float* %score, align 4
  %tmp24 = load float, float* %best, align 4
  %cmp8 = fcmp ogt float %tmp23, %tmp24
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %tmp25 = load float, float* %score, align 4
  store float %tmp25, float* %best, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %tmp26 = load float, float* %score, align 4
  %tmp27 = load float, float* %worst, align 4
  %cmp9 = fcmp olt float %tmp26, %tmp27
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %tmp28 = load float, float* %score, align 4
  store float %tmp28, float* %worst, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %tmp29 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %tmp29, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tmp30 = load i32, i32* %nseq.addr, align 4
  %cmp12 = icmp sgt i32 %tmp30, 1
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %for.end
  %tmp31 = load float, float* %sqsum, align 4
  %tmp32 = load float, float* %total, align 4
  %tmp33 = load float, float* %total, align 4
  %mul14 = fmul float %tmp32, %tmp33
  %tmp34 = load i32, i32* %nseq.addr, align 4
  %conv = sitofp i32 %tmp34 to float
  %div = fdiv float %mul14, %conv
  %sub = fsub float %tmp31, %div
  %conv15 = fpext float %sub to double
  %tmp35 = load i32, i32* %nseq.addr, align 4
  %conv16 = sitofp i32 %tmp35 to float
  %conv17 = fpext float %conv16 to double
  %sub18 = fsub double %conv17, 1.000000e+00
  %div19 = fdiv double %conv15, %sub18
  %conv20 = fptrunc double %div19 to float
  store float %conv20, float* %stddev, align 4
  %tmp36 = load float, float* %stddev, align 4
  %cmp21 = fcmp ogt float %tmp36, 0.000000e+00
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then13
  %tmp37 = load float, float* %stddev, align 4
  %conv23 = fpext float %tmp37 to double
  %call24 = call double @sqrt(double %conv23) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call24, %cond.true ], [ 0.000000e+00, %cond.false ]
  %conv25 = fptrunc double %cond to float
  store float %conv25, float* %stddev, align 4
  br label %if.end26

if.else:                                          ; preds = %for.end
  store float 0.000000e+00, float* %stddev, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %cond.end
  %tmp38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %tmp39 = load float, float* %total, align 4
  %tmp40 = load i32, i32* %nseq.addr, align 4
  %conv27 = sitofp i32 %tmp40 to float
  %div28 = fdiv float %tmp39, %conv27
  %conv29 = fpext float %div28 to double
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str3, i32 0, i32 0), double %conv29)
  %tmp41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %tmp42 = load float, float* %worst, align 4
  %conv31 = fpext float %tmp42 to double
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str4, i32 0, i32 0), double %conv31)
  %tmp43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %tmp44 = load float, float* %best, align 4
  %conv33 = fpext float %tmp44 to double
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str5, i32 0, i32 0), double %conv33)
  %tmp45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %tmp46 = load float, float* %stddev, align 4
  %conv35 = fpext float %tmp46 to double
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str6, i32 0, i32 0), double %conv35)
  ret void
}

declare float @P7TraceScore(%struct.plan7_s*, i8*, %struct.p7trace_s*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @Plan9toPlan7(%struct.plan9_s* %hmm, %struct.plan7_s** %ret_plan7) #0 {
entry:
  %hmm.addr = alloca %struct.plan9_s*, align 8
  %ret_plan7.addr = alloca %struct.plan7_s**, align 8
  %plan7 = alloca %struct.plan7_s*, align 8
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  store %struct.plan9_s* %hmm, %struct.plan9_s** %hmm.addr, align 8
  store %struct.plan7_s** %ret_plan7, %struct.plan7_s*** %ret_plan7.addr, align 8
  %tmp = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp, i32 0, i32 0
  %tmp1 = load i32, i32* %M, align 4
  %call = call %struct.plan7_s* @AllocPlan7(i32 %tmp1)
  store %struct.plan7_s* %call, %struct.plan7_s** %plan7, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp2 = load i32, i32* %k, align 4
  %tmp3 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %M1 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp3, i32 0, i32 0
  %tmp4 = load i32, i32* %M1, align 4
  %cmp = icmp slt i32 %tmp2, %tmp4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp5 = load i32, i32* %k, align 4
  %idxprom = sext i32 %tmp5 to i64
  %tmp6 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp6, i32 0, i32 2
  %tmp7 = load %struct.basic_state*, %struct.basic_state** %mat, align 8
  %arrayidx = getelementptr inbounds %struct.basic_state, %struct.basic_state* %tmp7, i64 %idxprom
  %t = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x float], [3 x float]* %t, i32 0, i64 0
  %tmp8 = load float, float* %arrayidx2, align 4
  %tmp9 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %tmp9 to i64
  %tmp10 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %t4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp10, i32 0, i32 21
  %tmp11 = load float**, float*** %t4, align 8
  %arrayidx5 = getelementptr inbounds float*, float** %tmp11, i64 %idxprom3
  %tmp12 = load float*, float** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds float, float* %tmp12, i64 0
  store float %tmp8, float* %arrayidx6, align 4
  %tmp13 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %tmp13 to i64
  %tmp14 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat8 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp14, i32 0, i32 2
  %tmp15 = load %struct.basic_state*, %struct.basic_state** %mat8, align 8
  %arrayidx9 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %tmp15, i64 %idxprom7
  %t10 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x float], [3 x float]* %t10, i32 0, i64 2
  %tmp16 = load float, float* %arrayidx11, align 4
  %tmp17 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %tmp17 to i64
  %tmp18 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %t13 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp18, i32 0, i32 21
  %tmp19 = load float**, float*** %t13, align 8
  %arrayidx14 = getelementptr inbounds float*, float** %tmp19, i64 %idxprom12
  %tmp20 = load float*, float** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds float, float* %tmp20, i64 2
  store float %tmp16, float* %arrayidx15, align 4
  %tmp21 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %tmp21 to i64
  %tmp22 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat17 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp22, i32 0, i32 2
  %tmp23 = load %struct.basic_state*, %struct.basic_state** %mat17, align 8
  %arrayidx18 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %tmp23, i64 %idxprom16
  %t19 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x float], [3 x float]* %t19, i32 0, i64 1
  %tmp24 = load float, float* %arrayidx20, align 4
  %tmp25 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %tmp25 to i64
  %tmp26 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %t22 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp26, i32 0, i32 21
  %tmp27 = load float**, float*** %t22, align 8
  %arrayidx23 = getelementptr inbounds float*, float** %tmp27, i64 %idxprom21
  %tmp28 = load float*, float** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds float, float* %tmp28, i64 1
  store float %tmp24, float* %arrayidx24, align 4
  %tmp29 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %tmp29 to i64
  %tmp30 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %del = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp30, i32 0, i32 3
  %tmp31 = load %struct.basic_state*, %struct.basic_state** %del, align 8
  %arrayidx26 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %tmp31, i64 %idxprom25
  %t27 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx26, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x float], [3 x float]* %t27, i32 0, i64 0
  %tmp32 = load float, float* %arrayidx28, align 4
  %tmp33 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %tmp33 to i64
  %tmp34 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %t30 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp34, i32 0, i32 21
  %tmp35 = load float**, float*** %t30, align 8
  %arrayidx31 = getelementptr inbounds float*, float** %tmp35, i64 %idxprom29
  %tmp36 = load float*, float** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds float, float* %tmp36, i64 5
  store float %tmp32, float* %arrayidx32, align 4
  %tmp37 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %tmp37 to i64
  %tmp38 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %del34 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp38, i32 0, i32 3
  %tmp39 = load %struct.basic_state*, %struct.basic_state** %del34, align 8
  %arrayidx35 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %tmp39, i64 %idxprom33
  %t36 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx35, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x float], [3 x float]* %t36, i32 0, i64 2
  %tmp40 = load float, float* %arrayidx37, align 4
  %tmp41 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %tmp41 to i64
  %tmp42 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %t39 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp42, i32 0, i32 21
  %tmp43 = load float**, float*** %t39, align 8
  %arrayidx40 = getelementptr inbounds float*, float** %tmp43, i64 %idxprom38
  %tmp44 = load float*, float** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds float, float* %tmp44, i64 6
  store float %tmp40, float* %arrayidx41, align 4
  %tmp45 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %tmp45 to i64
  %tmp46 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp46, i32 0, i32 1
  %tmp47 = load %struct.basic_state*, %struct.basic_state** %ins, align 8
  %arrayidx43 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %tmp47, i64 %idxprom42
  %t44 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx43, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [3 x float], [3 x float]* %t44, i32 0, i64 0
  %tmp48 = load float, float* %arrayidx45, align 4
  %tmp49 = load i32, i32* %k, align 4
  %idxprom46 = sext i32 %tmp49 to i64
  %tmp50 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %t47 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp50, i32 0, i32 21
  %tmp51 = load float**, float*** %t47, align 8
  %arrayidx48 = getelementptr inbounds float*, float** %tmp51, i64 %idxprom46
  %tmp52 = load float*, float** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds float, float* %tmp52, i64 3
  store float %tmp48, float* %arrayidx49, align 4
  %tmp53 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %tmp53 to i64
  %tmp54 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %ins51 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp54, i32 0, i32 1
  %tmp55 = load %struct.basic_state*, %struct.basic_state** %ins51, align 8
  %arrayidx52 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %tmp55, i64 %idxprom50
  %t53 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx52, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [3 x float], [3 x float]* %t53, i32 0, i64 1
  %tmp56 = load float, float* %arrayidx54, align 4
  %tmp57 = load i32, i32* %k, align 4
  %idxprom55 = sext i32 %tmp57 to i64
  %tmp58 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %t56 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp58, i32 0, i32 21
  %tmp59 = load float**, float*** %t56, align 8
  %arrayidx57 = getelementptr inbounds float*, float** %tmp59, i64 %idxprom55
  %tmp60 = load float*, float** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds float, float* %tmp60, i64 4
  store float %tmp56, float* %arrayidx58, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp61 = load i32, i32* %k, align 4
  %inc = add nsw i32 %tmp61, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %k, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc79, %for.end
  %tmp62 = load i32, i32* %k, align 4
  %tmp63 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %M60 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp63, i32 0, i32 0
  %tmp64 = load i32, i32* %M60, align 4
  %cmp61 = icmp sle i32 %tmp62, %tmp64
  br i1 %cmp61, label %for.body62, label %for.end81

for.body62:                                       ; preds = %for.cond59
  store i32 0, i32* %x, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc76, %for.body62
  %tmp65 = load i32, i32* %x, align 4
  %tmp66 = load i32, i32* @Alphabet_size, align 4
  %cmp64 = icmp slt i32 %tmp65, %tmp66
  br i1 %cmp64, label %for.body65, label %for.end78

for.body65:                                       ; preds = %for.cond63
  %tmp67 = load i32, i32* %x, align 4
  %idxprom66 = sext i32 %tmp67 to i64
  %tmp68 = load i32, i32* %k, align 4
  %idxprom67 = sext i32 %tmp68 to i64
  %tmp69 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat68 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp69, i32 0, i32 2
  %tmp70 = load %struct.basic_state*, %struct.basic_state** %mat68, align 8
  %arrayidx69 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %tmp70, i64 %idxprom67
  %p = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx69, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i64 %idxprom66
  %tmp71 = load float, float* %arrayidx70, align 4
  %tmp72 = load i32, i32* %x, align 4
  %idxprom71 = sext i32 %tmp72 to i64
  %tmp73 = load i32, i32* %k, align 4
  %idxprom72 = sext i32 %tmp73 to i64
  %tmp74 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %mat73 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp74, i32 0, i32 22
  %tmp75 = load float**, float*** %mat73, align 8
  %arrayidx74 = getelementptr inbounds float*, float** %tmp75, i64 %idxprom72
  %tmp76 = load float*, float** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds float, float* %tmp76, i64 %idxprom71
  store float %tmp71, float* %arrayidx75, align 4
  br label %for.inc76

for.inc76:                                        ; preds = %for.body65
  %tmp77 = load i32, i32* %x, align 4
  %inc77 = add nsw i32 %tmp77, 1
  store i32 %inc77, i32* %x, align 4
  br label %for.cond63

for.end78:                                        ; preds = %for.cond63
  br label %for.inc79

for.inc79:                                        ; preds = %for.end78
  %tmp78 = load i32, i32* %k, align 4
  %inc80 = add nsw i32 %tmp78, 1
  store i32 %inc80, i32* %k, align 4
  br label %for.cond59

for.end81:                                        ; preds = %for.cond59
  store i32 1, i32* %k, align 4
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc103, %for.end81
  %tmp79 = load i32, i32* %k, align 4
  %tmp80 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %M83 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp80, i32 0, i32 0
  %tmp81 = load i32, i32* %M83, align 4
  %cmp84 = icmp slt i32 %tmp79, %tmp81
  br i1 %cmp84, label %for.body85, label %for.end105

for.body85:                                       ; preds = %for.cond82
  store i32 0, i32* %x, align 4
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc100, %for.body85
  %tmp82 = load i32, i32* %x, align 4
  %tmp83 = load i32, i32* @Alphabet_size, align 4
  %cmp87 = icmp slt i32 %tmp82, %tmp83
  br i1 %cmp87, label %for.body88, label %for.end102

for.body88:                                       ; preds = %for.cond86
  %tmp84 = load i32, i32* %x, align 4
  %idxprom89 = sext i32 %tmp84 to i64
  %tmp85 = load i32, i32* %k, align 4
  %idxprom90 = sext i32 %tmp85 to i64
  %tmp86 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %ins91 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp86, i32 0, i32 1
  %tmp87 = load %struct.basic_state*, %struct.basic_state** %ins91, align 8
  %arrayidx92 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %tmp87, i64 %idxprom90
  %p93 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx92, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [20 x float], [20 x float]* %p93, i32 0, i64 %idxprom89
  %tmp88 = load float, float* %arrayidx94, align 4
  %tmp89 = load i32, i32* %x, align 4
  %idxprom95 = sext i32 %tmp89 to i64
  %tmp90 = load i32, i32* %k, align 4
  %idxprom96 = sext i32 %tmp90 to i64
  %tmp91 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %ins97 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp91, i32 0, i32 23
  %tmp92 = load float**, float*** %ins97, align 8
  %arrayidx98 = getelementptr inbounds float*, float** %tmp92, i64 %idxprom96
  %tmp93 = load float*, float** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds float, float* %tmp93, i64 %idxprom95
  store float %tmp88, float* %arrayidx99, align 4
  br label %for.inc100

for.inc100:                                       ; preds = %for.body88
  %tmp94 = load i32, i32* %x, align 4
  %inc101 = add nsw i32 %tmp94, 1
  store i32 %inc101, i32* %x, align 4
  br label %for.cond86

for.end102:                                       ; preds = %for.cond86
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %tmp95 = load i32, i32* %k, align 4
  %inc104 = add nsw i32 %tmp95, 1
  store i32 %inc104, i32* %k, align 4
  br label %for.cond82

for.end105:                                       ; preds = %for.cond82
  %tmp96 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat106 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp96, i32 0, i32 2
  %tmp97 = load %struct.basic_state*, %struct.basic_state** %mat106, align 8
  %arrayidx107 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %tmp97, i64 0
  %t108 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx107, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [3 x float], [3 x float]* %t108, i32 0, i64 2
  %tmp98 = load float, float* %arrayidx109, align 4
  %tmp99 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat110 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp99, i32 0, i32 2
  %tmp100 = load %struct.basic_state*, %struct.basic_state** %mat110, align 8
  %arrayidx111 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %tmp100, i64 0
  %t112 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [3 x float], [3 x float]* %t112, i32 0, i64 2
  %tmp101 = load float, float* %arrayidx113, align 4
  %tmp102 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %mat114 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp102, i32 0, i32 2
  %tmp103 = load %struct.basic_state*, %struct.basic_state** %mat114, align 8
  %arrayidx115 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %tmp103, i64 0
  %t116 = getelementptr inbounds %struct.basic_state, %struct.basic_state* %arrayidx115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [3 x float], [3 x float]* %t116, i32 0, i64 0
  %tmp104 = load float, float* %arrayidx117, align 4
  %add = fadd float %tmp101, %tmp104
  %div = fdiv float %tmp98, %add
  %tmp105 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp105, i32 0, i32 24
  store float %div, float* %tbd1, align 4
  %tmp106 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %null = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp106, i32 0, i32 28
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %null, i32 0, i32 0
  %tmp107 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp107, i32 0, i32 29
  call void @P7DefaultNullModel(float* %arraydecay, float* %p1)
  store i32 0, i32* %x, align 4
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc127, %for.end105
  %tmp108 = load i32, i32* %x, align 4
  %tmp109 = load i32, i32* @Alphabet_size, align 4
  %cmp119 = icmp slt i32 %tmp108, %tmp109
  br i1 %cmp119, label %for.body120, label %for.end129

for.body120:                                      ; preds = %for.cond118
  %tmp110 = load i32, i32* %x, align 4
  %idxprom121 = sext i32 %tmp110 to i64
  %tmp111 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %null122 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp111, i32 0, i32 4
  %arrayidx123 = getelementptr inbounds [20 x float], [20 x float]* %null122, i32 0, i64 %idxprom121
  %tmp112 = load float, float* %arrayidx123, align 4
  %tmp113 = load i32, i32* %x, align 4
  %idxprom124 = sext i32 %tmp113 to i64
  %tmp114 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %null125 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp114, i32 0, i32 28
  %arrayidx126 = getelementptr inbounds [20 x float], [20 x float]* %null125, i32 0, i64 %idxprom124
  store float %tmp112, float* %arrayidx126, align 4
  br label %for.inc127

for.inc127:                                       ; preds = %for.body120
  %tmp115 = load i32, i32* %x, align 4
  %inc128 = add nsw i32 %tmp115, 1
  store i32 %inc128, i32* %x, align 4
  br label %for.cond118

for.end129:                                       ; preds = %for.cond118
  %tmp116 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %name = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp116, i32 0, i32 5
  %tmp117 = load i8*, i8** %name, align 8
  %cmp130 = icmp ne i8* %tmp117, null
  br i1 %cmp130, label %if.then, label %if.end

if.then:                                          ; preds = %for.end129
  %tmp118 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %tmp119 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %name131 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp119, i32 0, i32 5
  %tmp120 = load i8*, i8** %name131, align 8
  call void @Plan7SetName(%struct.plan7_s* %tmp118, i8* %tmp120)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end129
  %tmp121 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp121, i32 0, i32 9
  %tmp122 = load i32, i32* %flags, align 4
  %and = and i32 %tmp122, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then132, label %if.end135

if.then132:                                       ; preds = %if.end
  %tmp123 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %rf = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp123, i32 0, i32 3
  %tmp124 = load i8*, i8** %rf, align 8
  %tmp125 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %ref = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp125, i32 0, i32 6
  %tmp126 = load i8*, i8** %ref, align 8
  %call133 = call i8* @strcpy(i8* %tmp124, i8* %tmp126) #5
  %tmp127 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %flags134 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp127, i32 0, i32 47
  %tmp128 = load i32, i32* %flags134, align 4
  %or = or i32 %tmp128, 4
  store i32 %or, i32* %flags134, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then132, %if.end
  %tmp129 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %flags136 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp129, i32 0, i32 9
  %tmp130 = load i32, i32* %flags136, align 4
  %and137 = and i32 %tmp130, 2
  %tobool138 = icmp ne i32 %and137, 0
  br i1 %tobool138, label %if.then139, label %if.end144

if.then139:                                       ; preds = %if.end135
  %tmp131 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %cs = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp131, i32 0, i32 4
  %tmp132 = load i8*, i8** %cs, align 8
  %tmp133 = load %struct.plan9_s*, %struct.plan9_s** %hmm.addr, align 8
  %cs140 = getelementptr inbounds %struct.plan9_s, %struct.plan9_s* %tmp133, i32 0, i32 7
  %tmp134 = load i8*, i8** %cs140, align 8
  %call141 = call i8* @strcpy(i8* %tmp132, i8* %tmp134) #5
  %tmp135 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %flags142 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp135, i32 0, i32 47
  %tmp136 = load i32, i32* %flags142, align 4
  %or143 = or i32 %tmp136, 8
  store i32 %or143, i32* %flags142, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then139, %if.end135
  %tmp137 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  call void @Plan7LSConfig(%struct.plan7_s* %tmp137)
  %tmp138 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  call void @Plan7Renormalize(%struct.plan7_s* %tmp138)
  %tmp139 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %flags145 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp139, i32 0, i32 47
  %tmp140 = load i32, i32* %flags145, align 4
  %or146 = or i32 %tmp140, 32
  store i32 %or146, i32* %flags145, align 4
  %tmp141 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %flags147 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %tmp141, i32 0, i32 47
  %tmp142 = load i32, i32* %flags147, align 4
  %and148 = and i32 %tmp142, -2
  store i32 %and148, i32* %flags147, align 4
  %tmp143 = load %struct.plan7_s*, %struct.plan7_s** %plan7, align 8
  %tmp144 = load %struct.plan7_s**, %struct.plan7_s*** %ret_plan7.addr, align 8
  store %struct.plan7_s* %tmp143, %struct.plan7_s** %tmp144, align 8
  ret void
}

declare void @P7DefaultNullModel(float*, float*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.5 (trunk 195335) (llvm/trunk 195334)"}

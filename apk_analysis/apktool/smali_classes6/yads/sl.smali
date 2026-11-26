.class public abstract Lyads/sl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    invoke-static {v0}, Lyads/u56;->c(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lyads/sl;->a:[B

    return-void
.end method

.method public static a(Lyads/os4;)I
    .locals 3

    .line 3267
    invoke-virtual {p0}, Lyads/os4;->k()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 3268
    invoke-virtual {p0}, Lyads/os4;->k()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static a(Lyads/os4;II)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p0

    .line 2961
    iget v1, v0, Lyads/os4;->b:I

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_10

    .line 2962
    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    .line 2963
    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v6

    .line 2964
    :goto_1
    const-string v8, "childAtomSize must be positive"

    invoke-static {v8, v7}, Lyads/at2;->a(Ljava/lang/String;Z)V

    .line 2965
    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v12, v6

    move v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    sub-int v13, v7, v1

    const/4 v14, 0x4

    if-ge v13, v2, :cond_4

    .line 2966
    invoke-virtual {v0, v7}, Lyads/os4;->e(I)V

    .line 2967
    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v13

    .line 2968
    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v15

    const/16 v16, 0x0

    const v3, 0x66726d61

    if-ne v15, v3, :cond_1

    .line 2969
    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v15, v3, :cond_2

    .line 2970
    iget v3, v0, Lyads/os4;->b:I

    add-int/2addr v3, v14

    invoke-virtual {v0, v3}, Lyads/os4;->e(I)V

    .line 2971
    sget-object v3, Lyads/az;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v14, v3}, Lyads/os4;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v15, v3, :cond_3

    move v9, v7

    move v12, v13

    :cond_3
    :goto_3
    add-int/2addr v7, v13

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    .line 2972
    const-string v3, "cenc"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2973
    const-string v3, "cbc1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2974
    const-string v3, "cens"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2975
    const-string v3, "cbcs"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v3, v16

    goto/16 :goto_c

    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    move v3, v6

    .line 2976
    :goto_5
    const-string v7, "frma atom is mandatory"

    invoke-static {v7, v3}, Lyads/at2;->a(Ljava/lang/String;Z)V

    if-eq v9, v8, :cond_8

    move v3, v5

    goto :goto_6

    :cond_8
    move v3, v6

    .line 2977
    :goto_6
    const-string v7, "schi atom is mandatory"

    invoke-static {v7, v3}, Lyads/at2;->a(Ljava/lang/String;Z)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v12, :cond_d

    .line 2978
    invoke-virtual {v0, v3}, Lyads/os4;->e(I)V

    .line 2979
    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v7

    .line 2980
    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v8

    const v13, 0x74656e63

    if-ne v8, v13, :cond_c

    .line 2981
    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 2982
    iget v7, v0, Lyads/os4;->b:I

    add-int/2addr v7, v5

    invoke-virtual {v0, v7}, Lyads/os4;->e(I)V

    if-nez v3, :cond_9

    .line 2983
    iget v3, v0, Lyads/os4;->b:I

    add-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lyads/os4;->e(I)V

    move v14, v6

    move v15, v14

    goto :goto_8

    .line 2984
    :cond_9
    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v14

    and-int/lit8 v3, v3, 0xf

    move v15, v3

    move v14, v7

    .line 2985
    :goto_8
    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v3

    if-ne v3, v5, :cond_a

    move-object v3, v10

    move v10, v5

    goto :goto_9

    :cond_a
    move-object v3, v10

    move v10, v6

    .line 2986
    :goto_9
    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v12

    const/16 v7, 0x10

    .line 2987
    new-array v13, v7, [B

    .line 2988
    invoke-virtual {v0, v13, v6, v7}, Lyads/os4;->a([BII)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 2989
    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v7

    .line 2990
    new-array v8, v7, [B

    .line 2991
    invoke-virtual {v0, v8, v6, v7}, Lyads/os4;->a([BII)V

    move-object/from16 v16, v8

    .line 2992
    :cond_b
    new-instance v9, Lyads/d06;

    move-object v8, v3

    invoke-direct/range {v9 .. v16}, Lyads/d06;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v9

    goto :goto_a

    :cond_c
    move-object v8, v10

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v10

    move-object/from16 v3, v16

    :goto_a
    if-eqz v3, :cond_e

    goto :goto_b

    :cond_e
    move v5, v6

    .line 2993
    :goto_b
    const-string v6, "tenc atom is mandatory"

    invoke-static {v6, v5}, Lyads/at2;->a(Ljava/lang/String;Z)V

    .line 2994
    sget v5, Lyads/u56;->a:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_c
    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_10
    const/16 v16, 0x0

    return-object v16
.end method

.method public static a(Lyads/jl;Lyads/f23;JLyads/ql2;ZZLyads/v13;)Ljava/util/ArrayList;
    .locals 48

    move-object/from16 v0, p0

    .line 2995
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 2996
    :goto_0
    iget-object v5, v0, Lyads/jl;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_50

    .line 2997
    iget-object v5, v0, Lyads/jl;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/jl;

    .line 2998
    iget v6, v5, Lyads/ll;->a:I

    const v7, 0x7472616b

    if-eq v6, v7, :cond_0

    move-object v0, v2

    move/from16 v33, v4

    :goto_1
    const/16 v32, 0x0

    goto/16 :goto_44

    :cond_0
    const v6, 0x6d766864

    .line 2999
    invoke-virtual {v0, v6}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v6

    .line 3000
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0x6d646961

    .line 3001
    invoke-virtual {v5, v7}, Lyads/jl;->b(I)Lyads/jl;

    move-result-object v8

    .line 3002
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v9, 0x68646c72    # 4.3148E24f

    .line 3003
    invoke-virtual {v8, v9}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v9

    .line 3004
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3005
    iget-object v9, v9, Lyads/kl;->b:Lyads/os4;

    const/16 v10, 0x10

    .line 3006
    invoke-virtual {v9, v10}, Lyads/os4;->e(I)V

    .line 3007
    invoke-virtual {v9}, Lyads/os4;->a()I

    move-result v9

    const v11, 0x736f756e

    const/4 v13, -0x1

    if-ne v9, v11, :cond_1

    const/4 v9, 0x1

    goto :goto_3

    :cond_1
    const v11, 0x76696465

    if-ne v9, v11, :cond_2

    const/4 v9, 0x2

    goto :goto_3

    :cond_2
    const v11, 0x74657874

    if-eq v9, v11, :cond_5

    const v11, 0x7362746c

    if-eq v9, v11, :cond_5

    const v11, 0x73756274

    if-eq v9, v11, :cond_5

    const v11, 0x636c6370

    if-ne v9, v11, :cond_3

    goto :goto_2

    :cond_3
    const v11, 0x6d657461

    if-ne v9, v11, :cond_4

    const/4 v9, 0x5

    goto :goto_3

    :cond_4
    move v9, v13

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v9, 0x3

    :goto_3
    const-string v11, ""

    move/from16 v16, v10

    const/16 v30, 0x2

    const/16 v31, 0x4

    move/from16 v33, v4

    const/16 v34, 0x0

    if-ne v9, v13, :cond_6

    const-wide/16 v35, 0x0

    goto/16 :goto_15

    :cond_6
    const v12, 0x746b6864

    .line 3008
    invoke-virtual {v5, v12}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v12

    .line 3009
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3010
    iget-object v12, v12, Lyads/kl;->b:Lyads/os4;

    const-wide/16 v35, 0x0

    const/16 v3, 0x8

    .line 3011
    invoke-virtual {v12, v3}, Lyads/os4;->e(I)V

    .line 3012
    invoke-virtual {v12}, Lyads/os4;->a()I

    move-result v4

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    if-nez v4, :cond_7

    move/from16 v17, v3

    goto :goto_4

    :cond_7
    move/from16 v17, v16

    .line 3013
    :goto_4
    iget v7, v12, Lyads/os4;->b:I

    add-int v7, v7, v17

    invoke-virtual {v12, v7}, Lyads/os4;->e(I)V

    .line 3014
    invoke-virtual {v12}, Lyads/os4;->a()I

    move-result v18

    .line 3015
    iget v7, v12, Lyads/os4;->b:I

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v12, v7}, Lyads/os4;->e(I)V

    .line 3016
    iget v7, v12, Lyads/os4;->b:I

    if-nez v4, :cond_8

    move/from16 v14, v31

    goto :goto_5

    :cond_8
    move v14, v3

    :goto_5
    const/4 v15, 0x0

    :goto_6
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v15, v14, :cond_b

    .line 3017
    iget-object v10, v12, Lyads/os4;->a:[B

    add-int v17, v7, v15

    .line 3018
    aget-byte v10, v10, v17

    if-eq v10, v13, :cond_a

    if-nez v4, :cond_9

    .line 3019
    invoke-virtual {v12}, Lyads/os4;->l()J

    move-result-wide v14

    goto :goto_7

    :cond_9
    invoke-virtual {v12}, Lyads/os4;->o()J

    move-result-wide v14

    :goto_7
    cmp-long v4, v14, v35

    if-nez v4, :cond_c

    goto :goto_8

    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 3020
    :cond_b
    iget v4, v12, Lyads/os4;->b:I

    add-int/2addr v4, v14

    invoke-virtual {v12, v4}, Lyads/os4;->e(I)V

    :goto_8
    move-wide/from16 v14, v19

    .line 3021
    :cond_c
    iget v4, v12, Lyads/os4;->b:I

    add-int/lit8 v4, v4, 0x10

    invoke-virtual {v12, v4}, Lyads/os4;->e(I)V

    .line 3022
    invoke-virtual {v12}, Lyads/os4;->a()I

    move-result v4

    .line 3023
    invoke-virtual {v12}, Lyads/os4;->a()I

    move-result v7

    .line 3024
    iget v10, v12, Lyads/os4;->b:I

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v12, v10}, Lyads/os4;->e(I)V

    .line 3025
    invoke-virtual {v12}, Lyads/os4;->a()I

    move-result v10

    .line 3026
    invoke-virtual {v12}, Lyads/os4;->a()I

    move-result v12

    const/high16 v13, -0x10000

    const/high16 v3, 0x10000

    if-nez v4, :cond_d

    if-ne v7, v3, :cond_d

    if-ne v10, v13, :cond_d

    if-nez v12, :cond_d

    const/16 v3, 0x5a

    :goto_9
    move-wide/from16 v46, v19

    move/from16 v19, v3

    move-wide/from16 v3, v46

    goto :goto_a

    :cond_d
    if-nez v4, :cond_e

    if-ne v7, v13, :cond_e

    if-ne v10, v3, :cond_e

    if-nez v12, :cond_e

    const/16 v3, 0x10e

    goto :goto_9

    :cond_e
    if-ne v4, v13, :cond_f

    if-nez v7, :cond_f

    if-nez v10, :cond_f

    if-ne v12, v13, :cond_f

    const/16 v3, 0xb4

    goto :goto_9

    :cond_f
    move-wide/from16 v3, v19

    const/16 v19, 0x0

    :goto_a
    cmp-long v7, p2, v3

    if-nez v7, :cond_10

    move-wide/from16 v40, v14

    goto :goto_b

    :cond_10
    move-wide/from16 v40, p2

    .line 3027
    :goto_b
    iget-object v6, v6, Lyads/kl;->b:Lyads/os4;

    const/16 v7, 0x8

    .line 3028
    invoke-virtual {v6, v7}, Lyads/os4;->e(I)V

    .line 3029
    invoke-virtual {v6}, Lyads/os4;->a()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_11

    const/16 v7, 0x8

    goto :goto_c

    :cond_11
    move/from16 v7, v16

    .line 3030
    :goto_c
    iget v10, v6, Lyads/os4;->b:I

    add-int/2addr v10, v7

    invoke-virtual {v6, v10}, Lyads/os4;->e(I)V

    .line 3031
    invoke-virtual {v6}, Lyads/os4;->l()J

    move-result-wide v44

    cmp-long v6, v40, v3

    if-nez v6, :cond_12

    :goto_d
    const v6, 0x6d696e66

    goto :goto_e

    :cond_12
    const-wide/32 v42, 0xf4240

    .line 3032
    invoke-static/range {v40 .. v45}, Lyads/u56;->a(JJJ)J

    move-result-wide v3

    goto :goto_d

    .line 3033
    :goto_e
    invoke-virtual {v8, v6}, Lyads/jl;->b(I)Lyads/jl;

    move-result-object v7

    .line 3034
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x7374626c

    .line 3035
    invoke-virtual {v7, v6}, Lyads/jl;->b(I)Lyads/jl;

    move-result-object v7

    .line 3036
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v10, 0x6d646864

    .line 3037
    invoke-virtual {v8, v10}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v8

    .line 3038
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3039
    iget-object v8, v8, Lyads/kl;->b:Lyads/os4;

    const/16 v10, 0x8

    .line 3040
    invoke-virtual {v8, v10}, Lyads/os4;->e(I)V

    .line 3041
    invoke-virtual {v8}, Lyads/os4;->a()I

    move-result v10

    shr-int/lit8 v10, v10, 0x18

    and-int/lit16 v10, v10, 0xff

    if-nez v10, :cond_13

    const/16 v16, 0x8

    .line 3042
    :cond_13
    iget v12, v8, Lyads/os4;->b:I

    add-int v12, v12, v16

    invoke-virtual {v8, v12}, Lyads/os4;->e(I)V

    .line 3043
    invoke-virtual {v8}, Lyads/os4;->l()J

    move-result-wide v12

    if-nez v10, :cond_14

    move/from16 v10, v31

    goto :goto_f

    :cond_14
    const/16 v10, 0x8

    .line 3044
    :goto_f
    iget v14, v8, Lyads/os4;->b:I

    add-int/2addr v14, v10

    invoke-virtual {v8, v14}, Lyads/os4;->e(I)V

    .line 3045
    invoke-virtual {v8}, Lyads/os4;->p()I

    move-result v8

    .line 3046
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v14, v8, 0xa

    and-int/lit8 v14, v14, 0x1f

    add-int/lit8 v14, v14, 0x60

    int-to-char v14, v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v14, v8, 0x5

    and-int/lit8 v14, v14, 0x1f

    add-int/lit8 v14, v14, 0x60

    int-to-char v14, v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v8, v8, 0x1f

    add-int/lit8 v8, v8, 0x60

    int-to-char v8, v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3047
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v10, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    const v10, 0x73747364

    .line 3048
    invoke-virtual {v7, v10}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v7

    .line 3049
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3050
    iget-object v7, v7, Lyads/kl;->b:Lyads/os4;

    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v10

    check-cast v20, Ljava/lang/String;

    move-object/from16 v21, p4

    move/from16 v22, p6

    move-object/from16 v17, v7

    .line 3051
    invoke-static/range {v17 .. v22}, Lyads/sl;->a(Lyads/os4;IILjava/lang/String;Lyads/ql2;Z)Lyads/pl;

    move-result-object v7

    move/from16 v16, v18

    if-nez p5, :cond_1a

    const v10, 0x65647473

    .line 3052
    invoke-virtual {v5, v10}, Lyads/jl;->b(I)Lyads/jl;

    move-result-object v10

    if-eqz v10, :cond_1a

    const v12, 0x656c7374

    .line 3053
    invoke-virtual {v10, v12}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v10

    if-nez v10, :cond_15

    move-wide/from16 v17, v3

    move-object/from16 v0, v34

    goto :goto_13

    .line 3054
    :cond_15
    iget-object v10, v10, Lyads/kl;->b:Lyads/os4;

    const/16 v12, 0x8

    .line 3055
    invoke-virtual {v10, v12}, Lyads/os4;->e(I)V

    .line 3056
    invoke-virtual {v10}, Lyads/os4;->a()I

    move-result v12

    shr-int/lit8 v12, v12, 0x18

    and-int/lit16 v12, v12, 0xff

    .line 3057
    invoke-virtual {v10}, Lyads/os4;->n()I

    move-result v13

    .line 3058
    new-array v14, v13, [J

    .line 3059
    new-array v15, v13, [J

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v13, :cond_19

    const/4 v0, 0x1

    if-ne v12, v0, :cond_16

    .line 3060
    invoke-virtual {v10}, Lyads/os4;->o()J

    move-result-wide v17

    goto :goto_11

    :cond_16
    invoke-virtual {v10}, Lyads/os4;->l()J

    move-result-wide v17

    :goto_11
    aput-wide v17, v14, v6

    if-ne v12, v0, :cond_17

    .line 3061
    invoke-virtual {v10}, Lyads/os4;->g()J

    move-result-wide v17

    move-wide/from16 v46, v17

    move-wide/from16 v17, v3

    move-wide/from16 v3, v46

    goto :goto_12

    :cond_17
    invoke-virtual {v10}, Lyads/os4;->a()I

    move-result v0

    move-wide/from16 v17, v3

    int-to-long v3, v0

    :goto_12
    aput-wide v3, v15, v6

    .line 3062
    invoke-virtual {v10}, Lyads/os4;->i()S

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_18

    .line 3063
    iget v0, v10, Lyads/os4;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v10, v0}, Lyads/os4;->e(I)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v3, v17

    goto :goto_10

    .line 3064
    :cond_18
    const-string v0, "Unsupported media rate."

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v34

    :cond_19
    move-wide/from16 v17, v3

    .line 3065
    invoke-static {v14, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_13
    if-eqz v0, :cond_1b

    .line 3066
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [J

    .line 3067
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v29, v0

    move-object/from16 v28, v3

    goto :goto_14

    :cond_1a
    move-wide/from16 v17, v3

    :cond_1b
    move-object/from16 v28, v34

    move-object/from16 v29, v28

    .line 3068
    :goto_14
    iget-object v0, v7, Lyads/pl;->b:Lyads/vz2;

    if-nez v0, :cond_1c

    :goto_15
    move-object/from16 v15, v34

    const v6, 0x7374626c

    :goto_16
    move-object/from16 v0, p7

    goto :goto_17

    .line 3069
    :cond_1c
    new-instance v15, Lyads/c06;

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 3070
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, v7, Lyads/pl;->b:Lyads/vz2;

    iget v6, v7, Lyads/pl;->d:I

    iget-object v8, v7, Lyads/pl;->a:[Lyads/d06;

    iget v7, v7, Lyads/pl;->c:I

    move-object/from16 v24, v0

    move/from16 v25, v6

    move/from16 v27, v7

    move-object/from16 v26, v8

    move-wide/from16 v22, v17

    move-wide/from16 v20, v44

    const v6, 0x7374626c

    move-wide/from16 v18, v3

    move/from16 v17, v9

    invoke-direct/range {v15 .. v29}, Lyads/c06;-><init>(IIJJJLyads/vz2;I[Lyads/d06;I[J[J)V

    goto :goto_16

    .line 3071
    :goto_17
    invoke-interface {v0, v15}, Lyads/v13;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lyads/c06;

    if-nez v13, :cond_1d

    move-object v0, v2

    goto/16 :goto_1

    :cond_1d
    const v3, 0x6d646961

    .line 3072
    invoke-virtual {v5, v3}, Lyads/jl;->b(I)Lyads/jl;

    move-result-object v3

    .line 3073
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x6d696e66

    .line 3074
    invoke-virtual {v3, v4}, Lyads/jl;->b(I)Lyads/jl;

    move-result-object v3

    .line 3075
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3076
    invoke-virtual {v3, v6}, Lyads/jl;->b(I)Lyads/jl;

    move-result-object v3

    .line 3077
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7374737a

    .line 3078
    invoke-virtual {v3, v4}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 3079
    new-instance v5, Lyads/ql;

    iget-object v6, v13, Lyads/c06;->f:Lyads/vz2;

    invoke-direct {v5, v4, v6}, Lyads/ql;-><init>(Lyads/kl;Lyads/vz2;)V

    goto :goto_18

    :cond_1e
    const v4, 0x73747a32

    .line 3080
    invoke-virtual {v3, v4}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 3081
    new-instance v5, Lyads/rl;

    invoke-direct {v5, v4}, Lyads/rl;-><init>(Lyads/kl;)V

    .line 3082
    :goto_18
    invoke-interface {v5}, Lyads/ol;->b()I

    move-result v4

    if-nez v4, :cond_1f

    .line 3083
    new-instance v12, Lyads/l06;

    const/4 v3, 0x0

    new-array v14, v3, [J

    new-array v15, v3, [I

    new-array v4, v3, [J

    new-array v5, v3, [I

    const/16 v16, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-direct/range {v12 .. v20}, Lyads/l06;-><init>(Lyads/c06;[J[II[J[IJ)V

    move-object v0, v2

    :goto_19
    const/16 v32, 0x0

    goto/16 :goto_43

    :cond_1f
    const v6, 0x7374636f

    .line 3084
    invoke-virtual {v3, v6}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v6

    if-nez v6, :cond_20

    const v6, 0x636f3634

    .line 3085
    invoke-virtual {v3, v6}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v6

    .line 3086
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x1

    goto :goto_1a

    :cond_20
    const/4 v7, 0x0

    .line 3087
    :goto_1a
    iget-object v6, v6, Lyads/kl;->b:Lyads/os4;

    const v8, 0x73747363

    .line 3088
    invoke-virtual {v3, v8}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v8

    .line 3089
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3090
    iget-object v8, v8, Lyads/kl;->b:Lyads/os4;

    const v9, 0x73747473

    .line 3091
    invoke-virtual {v3, v9}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v9

    .line 3092
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3093
    iget-object v9, v9, Lyads/kl;->b:Lyads/os4;

    const v10, 0x73747373

    .line 3094
    invoke-virtual {v3, v10}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v10

    if-eqz v10, :cond_21

    .line 3095
    iget-object v10, v10, Lyads/kl;->b:Lyads/os4;

    goto :goto_1b

    :cond_21
    move-object/from16 v10, v34

    :goto_1b
    const v12, 0x63747473

    .line 3096
    invoke-virtual {v3, v12}, Lyads/jl;->c(I)Lyads/kl;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 3097
    iget-object v3, v3, Lyads/kl;->b:Lyads/os4;

    goto :goto_1c

    :cond_22
    move-object/from16 v3, v34

    .line 3098
    :goto_1c
    new-instance v12, Lyads/ml;

    invoke-direct {v12, v8, v6, v7}, Lyads/ml;-><init>(Lyads/os4;Lyads/os4;Z)V

    const/16 v6, 0xc

    .line 3099
    invoke-virtual {v9, v6}, Lyads/os4;->e(I)V

    .line 3100
    invoke-virtual {v9}, Lyads/os4;->n()I

    move-result v7

    const/16 v38, 0x1

    add-int/lit8 v7, v7, -0x1

    .line 3101
    invoke-virtual {v9}, Lyads/os4;->n()I

    move-result v8

    .line 3102
    invoke-virtual {v9}, Lyads/os4;->n()I

    move-result v14

    if-eqz v3, :cond_23

    .line 3103
    invoke-virtual {v3, v6}, Lyads/os4;->e(I)V

    .line 3104
    invoke-virtual {v3}, Lyads/os4;->n()I

    move-result v15

    goto :goto_1d

    :cond_23
    const/4 v15, 0x0

    :goto_1d
    if-eqz v10, :cond_25

    .line 3105
    invoke-virtual {v10, v6}, Lyads/os4;->e(I)V

    .line 3106
    invoke-virtual {v10}, Lyads/os4;->n()I

    move-result v6

    if-lez v6, :cond_24

    .line 3107
    invoke-virtual {v10}, Lyads/os4;->n()I

    move-result v16

    const/16 v38, 0x1

    add-int/lit8 v16, v16, -0x1

    goto :goto_1f

    :cond_24
    move-object/from16 v10, v34

    :goto_1e
    const/16 v16, -0x1

    goto :goto_1f

    :cond_25
    const/4 v6, 0x0

    goto :goto_1e

    .line 3108
    :goto_1f
    invoke-interface {v5}, Lyads/ol;->a()I

    move-result v0

    move-object/from16 v17, v3

    .line 3109
    iget-object v3, v13, Lyads/c06;->f:Lyads/vz2;

    iget-object v3, v3, Lyads/vz2;->m:Ljava/lang/String;

    move-object/from16 v18, v5

    const/4 v5, -0x1

    if-eq v0, v5, :cond_27

    .line 3110
    const-string v5, "audio/raw"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 3111
    const-string v5, "audio/g711-mlaw"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 3112
    const-string v5, "audio/g711-alaw"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_26
    if-nez v7, :cond_27

    if-nez v15, :cond_27

    if-nez v6, :cond_27

    const/4 v3, 0x1

    goto :goto_20

    :cond_27
    const/4 v3, 0x0

    :goto_20
    if-eqz v3, :cond_2c

    .line 3113
    iget v3, v12, Lyads/ml;->a:I

    new-array v5, v3, [J

    .line 3114
    new-array v6, v3, [I

    .line 3115
    :goto_21
    invoke-virtual {v12}, Lyads/ml;->a()Z

    move-result v7

    if-eqz v7, :cond_28

    .line 3116
    iget v7, v12, Lyads/ml;->b:I

    iget-wide v8, v12, Lyads/ml;->d:J

    aput-wide v8, v5, v7

    .line 3117
    iget v8, v12, Lyads/ml;->c:I

    aput v8, v6, v7

    goto :goto_21

    :cond_28
    int-to-long v7, v14

    const/16 v9, 0x2000

    .line 3118
    div-int/2addr v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_22
    if-ge v10, v3, :cond_29

    .line 3119
    aget v12, v6, v10

    .line 3120
    sget v14, Lyads/u56;->a:I

    add-int/2addr v12, v9

    const/16 v38, 0x1

    add-int/lit8 v12, v12, -0x1

    .line 3121
    div-int/2addr v12, v9

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    .line 3122
    :cond_29
    new-array v10, v11, [J

    .line 3123
    new-array v12, v11, [I

    .line 3124
    new-array v14, v11, [J

    .line 3125
    new-array v11, v11, [I

    move/from16 v19, v0

    const/4 v0, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_23
    if-ge v15, v3, :cond_2b

    .line 3126
    aget v18, v6, v15

    .line 3127
    aget-wide v20, v5, v15

    move/from16 v46, v17

    move/from16 v17, v3

    move/from16 v3, v16

    move/from16 v16, v46

    move/from16 v46, v18

    move-object/from16 v18, v5

    move/from16 v5, v46

    :goto_24
    if-lez v5, :cond_2a

    .line 3128
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 3129
    aput-wide v20, v10, v16

    move/from16 v23, v5

    mul-int v5, v19, v22

    .line 3130
    aput v5, v12, v16

    .line 3131
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v24, v6

    int-to-long v5, v0

    mul-long/2addr v5, v7

    .line 3132
    aput-wide v5, v14, v16

    const/16 v38, 0x1

    .line 3133
    aput v38, v11, v16

    .line 3134
    aget v5, v12, v16

    int-to-long v5, v5

    add-long v20, v20, v5

    add-int v0, v0, v22

    sub-int v5, v23, v22

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v6, v24

    goto :goto_24

    :cond_2a
    move-object/from16 v24, v6

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v16

    move/from16 v16, v3

    move/from16 v3, v17

    move/from16 v17, v5

    move-object/from16 v5, v18

    goto :goto_23

    :cond_2b
    int-to-long v5, v0

    mul-long/2addr v7, v5

    move-object/from16 v23, v2

    move-object/from16 v18, v11

    move-object v0, v14

    move-wide v5, v7

    move-object v15, v12

    move-object v14, v10

    goto/16 :goto_32

    .line 3135
    :cond_2c
    new-array v0, v4, [J

    .line 3136
    new-array v3, v4, [I

    .line 3137
    new-array v5, v4, [J

    move/from16 v19, v6

    .line 3138
    new-array v6, v4, [I

    move/from16 v20, v8

    move v8, v7

    move/from16 v7, v19

    move-object/from16 v19, v9

    move/from16 v9, v16

    move/from16 v16, v15

    move v15, v14

    move/from16 v14, v20

    move-object/from16 v23, v2

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-wide/from16 v24, v35

    move-wide/from16 v26, v24

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v22, 0x0

    const/16 v28, 0x0

    :goto_25
    const-string v1, "AtomParsers"

    if-ge v10, v4, :cond_36

    const/16 v29, 0x1

    :goto_26
    if-nez v22, :cond_2d

    .line 3139
    invoke-virtual {v12}, Lyads/ml;->a()Z

    move-result v29

    if-eqz v29, :cond_2d

    move/from16 v34, v7

    move/from16 v37, v8

    .line 3140
    iget-wide v7, v12, Lyads/ml;->d:J

    move/from16 v39, v4

    .line 3141
    iget v4, v12, Lyads/ml;->c:I

    move/from16 v22, v4

    move-wide/from16 v26, v7

    move/from16 v7, v34

    move/from16 v8, v37

    move/from16 v4, v39

    goto :goto_26

    :cond_2d
    move/from16 v39, v4

    move/from16 v34, v7

    move/from16 v37, v8

    if-nez v29, :cond_2e

    .line 3142
    const-string v4, "Unexpected end of chunk data"

    invoke-static {v1, v4}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3143
    invoke-static {v0, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 3144
    invoke-static {v3, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 3145
    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 3146
    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move v12, v10

    move-object v10, v0

    move-object v0, v4

    move v4, v12

    :goto_27
    move-object v12, v3

    move/from16 v3, v22

    goto/16 :goto_2c

    :cond_2e
    if-eqz v17, :cond_30

    move/from16 v1, v28

    :goto_28
    if-nez v1, :cond_2f

    if-lez v16, :cond_2f

    .line 3147
    invoke-virtual/range {v17 .. v17}, Lyads/os4;->n()I

    move-result v1

    .line 3148
    invoke-virtual/range {v17 .. v17}, Lyads/os4;->a()I

    move-result v11

    add-int/lit8 v16, v16, -0x1

    goto :goto_28

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    move/from16 v28, v1

    .line 3149
    :cond_30
    aput-wide v26, v0, v10

    .line 3150
    invoke-interface/range {v18 .. v18}, Lyads/ol;->c()I

    move-result v1

    aput v1, v3, v10

    if-le v1, v2, :cond_31

    move v2, v1

    :cond_31
    int-to-long v7, v11

    add-long v7, v24, v7

    .line 3151
    aput-wide v7, v5, v10

    if-nez v20, :cond_32

    const/4 v1, 0x1

    goto :goto_29

    :cond_32
    const/4 v1, 0x0

    .line 3152
    :goto_29
    aput v1, v6, v10

    if-ne v10, v9, :cond_34

    const/16 v38, 0x1

    .line 3153
    aput v38, v6, v10

    add-int/lit8 v7, v34, -0x1

    if-lez v7, :cond_33

    .line 3154
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3155
    invoke-virtual/range {v20 .. v20}, Lyads/os4;->n()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object v4, v0

    move v9, v1

    goto :goto_2a

    :cond_33
    move-object v4, v0

    goto :goto_2a

    :cond_34
    move-object v4, v0

    move/from16 v7, v34

    :goto_2a
    int-to-long v0, v15

    add-long v24, v24, v0

    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_35

    if-lez v37, :cond_35

    .line 3156
    invoke-virtual/range {v19 .. v19}, Lyads/os4;->n()I

    move-result v0

    .line 3157
    invoke-virtual/range {v19 .. v19}, Lyads/os4;->a()I

    move-result v1

    add-int/lit8 v8, v37, -0x1

    move v14, v0

    move v15, v1

    goto :goto_2b

    :cond_35
    move/from16 v8, v37

    .line 3158
    :goto_2b
    aget v0, v3, v10

    int-to-long v0, v0

    add-long v26, v26, v0

    add-int/lit8 v22, v22, -0x1

    add-int/lit8 v10, v10, 0x1

    move-object v0, v4

    move/from16 v4, v39

    goto/16 :goto_25

    :cond_36
    move/from16 v39, v4

    move/from16 v34, v7

    move/from16 v37, v8

    move-object v4, v0

    move-object v10, v4

    move-object v0, v5

    move-object v5, v6

    move/from16 v4, v39

    goto/16 :goto_27

    :goto_2c
    int-to-long v6, v11

    add-long v7, v24, v6

    if-eqz v17, :cond_38

    :goto_2d
    if-lez v16, :cond_38

    .line 3159
    invoke-virtual/range {v17 .. v17}, Lyads/os4;->n()I

    move-result v6

    if-eqz v6, :cond_37

    const/4 v6, 0x0

    goto :goto_2e

    .line 3160
    :cond_37
    invoke-virtual/range {v17 .. v17}, Lyads/os4;->a()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_2d

    :cond_38
    const/4 v6, 0x1

    :goto_2e
    if-nez v34, :cond_3a

    if-nez v14, :cond_3a

    if-nez v3, :cond_3a

    if-nez v37, :cond_3a

    if-nez v28, :cond_3a

    if-nez v6, :cond_39

    goto :goto_2f

    :cond_39
    move-object/from16 v16, v0

    move/from16 v17, v2

    goto :goto_31

    .line 3161
    :cond_3a
    :goto_2f
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Inconsistent stbl box for track "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v13, Lyads/c06;->a:I

    const-string v15, ": remainingSynchronizationSamples "

    move-object/from16 v16, v0

    const-string v0, ", remainingSamplesAtTimestampDelta "

    move/from16 v17, v2

    move/from16 v2, v34

    .line 3162
    invoke-static {v9, v11, v15, v2, v0}, Lgg;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 3163
    const-string v0, ", remainingSamplesInChunk "

    const-string v2, ", remainingTimestampDeltaChanges "

    .line 3164
    invoke-static {v9, v14, v0, v3, v2}, Lgg;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    move/from16 v0, v37

    .line 3165
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v6, :cond_3b

    .line 3166
    const-string v11, ", ctts invalid"

    goto :goto_30

    :cond_3b
    move-object/from16 v11, v21

    :goto_30
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3167
    invoke-static {v1, v0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    move-object/from16 v18, v5

    move-object/from16 v0, v16

    move/from16 v16, v17

    move-wide v5, v7

    move-object v14, v10

    move-object v15, v12

    .line 3168
    :goto_32
    iget-wide v9, v13, Lyads/c06;->c:J

    const-wide/32 v7, 0xf4240

    invoke-static/range {v5 .. v10}, Lyads/u56;->a(JJJ)J

    move-result-wide v19

    .line 3169
    iget-object v1, v13, Lyads/c06;->h:[J

    if-nez v1, :cond_3c

    .line 3170
    iget-wide v1, v13, Lyads/c06;->c:J

    invoke-static {v0, v1, v2}, Lyads/u56;->a([JJ)V

    .line 3171
    new-instance v12, Lyads/l06;

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v20}, Lyads/l06;-><init>(Lyads/c06;[J[II[J[IJ)V

    :goto_33
    move-object/from16 v0, v23

    goto/16 :goto_19

    :cond_3c
    move-object v10, v14

    move-object v14, v0

    .line 3172
    array-length v0, v1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3d

    iget v0, v13, Lyads/c06;->b:I

    if-ne v0, v3, :cond_3d

    array-length v0, v14

    move/from16 v1, v30

    if-lt v0, v1, :cond_3d

    .line 3173
    iget-object v0, v13, Lyads/c06;->i:[J

    .line 3174
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    .line 3175
    aget-wide v1, v0, v3

    .line 3176
    iget-object v0, v13, Lyads/c06;->h:[J

    aget-wide v24, v0, v3

    iget-wide v7, v13, Lyads/c06;->c:J

    iget-wide v11, v13, Lyads/c06;->d:J

    move-wide/from16 v26, v7

    move-wide/from16 v28, v11

    .line 3177
    invoke-static/range {v24 .. v29}, Lyads/u56;->a(JJJ)J

    move-result-wide v7

    add-long/2addr v7, v1

    .line 3178
    array-length v0, v14

    const/16 v38, 0x1

    add-int/lit8 v0, v0, -0x1

    move/from16 v9, v31

    .line 3179
    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 3180
    array-length v12, v14

    sub-int/2addr v12, v9

    .line 3181
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3182
    aget-wide v19, v14, v3

    cmp-long v3, v19, v1

    if-gtz v3, :cond_3d

    aget-wide v11, v14, v11

    cmp-long v3, v1, v11

    if-gez v3, :cond_3d

    aget-wide v11, v14, v0

    cmp-long v0, v11, v7

    if-gez v0, :cond_3d

    cmp-long v0, v7, v5

    if-gtz v0, :cond_3d

    sub-long v24, v5, v7

    sub-long v26, v1, v19

    .line 3183
    iget-object v0, v13, Lyads/c06;->f:Lyads/vz2;

    iget v0, v0, Lyads/vz2;->A:I

    int-to-long v0, v0

    iget-wide v2, v13, Lyads/c06;->c:J

    move-wide/from16 v28, v0

    move-wide/from16 v30, v2

    .line 3184
    invoke-static/range {v26 .. v31}, Lyads/u56;->a(JJJ)J

    move-result-wide v0

    .line 3185
    iget-object v2, v13, Lyads/c06;->f:Lyads/vz2;

    iget v2, v2, Lyads/vz2;->A:I

    int-to-long v2, v2

    iget-wide v7, v13, Lyads/c06;->c:J

    move-wide/from16 v26, v2

    move-wide/from16 v28, v7

    .line 3186
    invoke-static/range {v24 .. v29}, Lyads/u56;->a(JJJ)J

    move-result-wide v2

    cmp-long v7, v0, v35

    if-nez v7, :cond_3e

    cmp-long v7, v2, v35

    if-eqz v7, :cond_3d

    goto :goto_34

    :cond_3d
    move-object/from16 v1, p1

    goto :goto_35

    :cond_3e
    :goto_34
    const-wide/32 v7, 0x7fffffff

    cmp-long v9, v0, v7

    if-gtz v9, :cond_3d

    cmp-long v7, v2, v7

    if-gtz v7, :cond_3d

    long-to-int v0, v0

    move-object/from16 v1, p1

    .line 3187
    iput v0, v1, Lyads/f23;->a:I

    long-to-int v0, v2

    .line 3188
    iput v0, v1, Lyads/f23;->b:I

    .line 3189
    iget-wide v2, v13, Lyads/c06;->c:J

    invoke-static {v14, v2, v3}, Lyads/u56;->a([JJ)V

    .line 3190
    iget-object v0, v13, Lyads/c06;->h:[J

    const/16 v32, 0x0

    aget-wide v2, v0, v32

    iget-wide v6, v13, Lyads/c06;->d:J

    const-wide/32 v4, 0xf4240

    .line 3191
    invoke-static/range {v2 .. v7}, Lyads/u56;->a(JJJ)J

    move-result-wide v19

    .line 3192
    new-instance v12, Lyads/l06;

    move-object/from16 v17, v14

    move-object v14, v10

    invoke-direct/range {v12 .. v20}, Lyads/l06;-><init>(Lyads/c06;[J[II[J[IJ)V

    goto/16 :goto_33

    .line 3193
    :goto_35
    iget-object v0, v13, Lyads/c06;->h:[J

    array-length v2, v0

    const/4 v3, 0x1

    const/16 v32, 0x0

    if-ne v2, v3, :cond_40

    aget-wide v2, v0, v32

    cmp-long v2, v2, v35

    if-nez v2, :cond_40

    .line 3194
    iget-object v0, v13, Lyads/c06;->i:[J

    .line 3195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3196
    aget-wide v2, v0, v32

    move/from16 v0, v32

    .line 3197
    :goto_36
    array-length v4, v14

    if-ge v0, v4, :cond_3f

    .line 3198
    aget-wide v7, v14, v0

    sub-long v24, v7, v2

    iget-wide v7, v13, Lyads/c06;->c:J

    const-wide/32 v26, 0xf4240

    move-wide/from16 v28, v7

    .line 3199
    invoke-static/range {v24 .. v29}, Lyads/u56;->a(JJJ)J

    move-result-wide v7

    aput-wide v7, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_3f
    sub-long v24, v5, v2

    .line 3200
    iget-wide v2, v13, Lyads/c06;->c:J

    const-wide/32 v26, 0xf4240

    move-wide/from16 v28, v2

    .line 3201
    invoke-static/range {v24 .. v29}, Lyads/u56;->a(JJJ)J

    move-result-wide v19

    .line 3202
    new-instance v12, Lyads/l06;

    move-object/from16 v17, v14

    move-object v14, v10

    invoke-direct/range {v12 .. v20}, Lyads/l06;-><init>(Lyads/c06;[J[II[J[IJ)V

    :goto_37
    move-object/from16 v0, v23

    goto/16 :goto_43

    :cond_40
    move-object v2, v14

    move-object/from16 v11, v18

    move-object v14, v10

    .line 3203
    iget v3, v13, Lyads/c06;->b:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_41

    const/4 v3, 0x1

    goto :goto_38

    :cond_41
    move/from16 v3, v32

    .line 3204
    :goto_38
    array-length v5, v0

    new-array v5, v5, [I

    .line 3205
    array-length v0, v0

    new-array v0, v0, [I

    .line 3206
    iget-object v6, v13, Lyads/c06;->i:[J

    .line 3207
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v7, v32

    move v8, v7

    move v9, v8

    move v10, v9

    .line 3208
    :goto_39
    iget-object v12, v13, Lyads/c06;->h:[J

    move-object/from16 v17, v0

    array-length v0, v12

    if-ge v7, v0, :cond_45

    .line 3209
    aget-wide v0, v6, v7

    const-wide/16 v18, -0x1

    cmp-long v18, v0, v18

    if-eqz v18, :cond_44

    .line 3210
    aget-wide v24, v12, v7

    move-object v12, v5

    move-object/from16 v18, v6

    iget-wide v5, v13, Lyads/c06;->c:J

    move-wide/from16 v26, v5

    iget-wide v5, v13, Lyads/c06;->d:J

    move-wide/from16 v28, v5

    .line 3211
    invoke-static/range {v24 .. v29}, Lyads/u56;->a(JJJ)J

    move-result-wide v5

    move-wide/from16 v19, v5

    const/4 v5, 0x1

    .line 3212
    invoke-static {v2, v0, v1, v5}, Lyads/u56;->b([JJZ)I

    move-result v6

    aput v6, v12, v7

    add-long v0, v0, v19

    .line 3213
    invoke-static {v2, v0, v1, v3}, Lyads/u56;->a([JJZ)I

    move-result v0

    aput v0, v17, v7

    .line 3214
    :goto_3a
    aget v0, v12, v7

    aget v1, v17, v7

    if-ge v0, v1, :cond_42

    aget v6, v11, v0

    and-int/2addr v6, v5

    if-nez v6, :cond_42

    add-int/lit8 v0, v0, 0x1

    .line 3215
    aput v0, v12, v7

    goto :goto_3a

    :cond_42
    sub-int v6, v1, v0

    add-int/2addr v6, v8

    if-eq v10, v0, :cond_43

    move v0, v5

    goto :goto_3b

    :cond_43
    move/from16 v0, v32

    :goto_3b
    or-int/2addr v0, v9

    move v9, v0

    move v10, v1

    move v8, v6

    goto :goto_3c

    :cond_44
    move-object v12, v5

    move-object/from16 v18, v6

    const/4 v5, 0x1

    :goto_3c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move-object v5, v12

    move-object/from16 v0, v17

    move-object/from16 v6, v18

    goto :goto_39

    :cond_45
    move-object v12, v5

    const/4 v5, 0x1

    if-eq v8, v4, :cond_46

    goto :goto_3d

    :cond_46
    move/from16 v5, v32

    :goto_3d
    or-int v0, v9, v5

    if-eqz v0, :cond_47

    .line 3216
    new-array v1, v8, [J

    goto :goto_3e

    :cond_47
    move-object v1, v14

    :goto_3e
    if-eqz v0, :cond_48

    .line 3217
    new-array v3, v8, [I

    goto :goto_3f

    :cond_48
    move-object v3, v15

    :goto_3f
    if-eqz v0, :cond_49

    move/from16 v16, v32

    :cond_49
    if-eqz v0, :cond_4a

    .line 3218
    new-array v4, v8, [I

    goto :goto_40

    :cond_4a
    move-object v4, v11

    .line 3219
    :goto_40
    new-array v5, v8, [J

    move/from16 v6, v32

    move v7, v6

    move-wide/from16 v24, v35

    .line 3220
    :goto_41
    iget-object v8, v13, Lyads/c06;->h:[J

    array-length v8, v8

    if-ge v6, v8, :cond_4e

    .line 3221
    iget-object v8, v13, Lyads/c06;->i:[J

    aget-wide v9, v8, v6

    .line 3222
    aget v8, v12, v6

    move/from16 v18, v0

    .line 3223
    aget v0, v17, v6

    move-object/from16 v19, v2

    if-eqz v18, :cond_4b

    sub-int v2, v0, v8

    .line 3224
    invoke-static {v14, v8, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3225
    invoke-static {v15, v8, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3226
    invoke-static {v11, v8, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4b
    move/from16 v2, v16

    :goto_42
    if-ge v8, v0, :cond_4d

    move/from16 v21, v0

    move-object/from16 v20, v1

    .line 3227
    iget-wide v0, v13, Lyads/c06;->d:J

    const-wide/32 v26, 0xf4240

    move-wide/from16 v28, v0

    invoke-static/range {v24 .. v29}, Lyads/u56;->a(JJJ)J

    move-result-wide v0

    .line 3228
    aget-wide v26, v19, v8

    move-wide/from16 v28, v0

    sub-long v0, v26, v9

    move-object/from16 v22, v3

    move-object/from16 v30, v4

    move-wide/from16 v3, v35

    .line 3229
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v34

    iget-wide v0, v13, Lyads/c06;->c:J

    const-wide/32 v36, 0xf4240

    move-wide/from16 v38, v0

    .line 3230
    invoke-static/range {v34 .. v39}, Lyads/u56;->a(JJJ)J

    move-result-wide v0

    add-long v0, v28, v0

    .line 3231
    aput-wide v0, v5, v7

    if-eqz v18, :cond_4c

    .line 3232
    aget v0, v22, v7

    if-le v0, v2, :cond_4c

    .line 3233
    aget v2, v15, v8

    :cond_4c
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v35, v3

    move-object/from16 v1, v20

    move/from16 v0, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v30

    goto :goto_42

    :cond_4d
    move-object/from16 v20, v1

    move-object/from16 v22, v3

    move-object/from16 v30, v4

    move-wide/from16 v3, v35

    .line 3234
    iget-object v0, v13, Lyads/c06;->h:[J

    aget-wide v8, v0, v6

    add-long v24, v24, v8

    add-int/lit8 v6, v6, 0x1

    move/from16 v16, v2

    move/from16 v0, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    move-object/from16 v4, v30

    goto/16 :goto_41

    :cond_4e
    move-object/from16 v20, v1

    move-object/from16 v22, v3

    move-object/from16 v30, v4

    .line 3235
    iget-wide v0, v13, Lyads/c06;->d:J

    const-wide/32 v26, 0xf4240

    move-wide/from16 v28, v0

    .line 3236
    invoke-static/range {v24 .. v29}, Lyads/u56;->a(JJJ)J

    move-result-wide v0

    .line 3237
    new-instance v12, Lyads/l06;

    move-object/from16 v17, v5

    move-object/from16 v14, v20

    move-object/from16 v15, v22

    move-object/from16 v18, v30

    move-wide/from16 v19, v0

    invoke-direct/range {v12 .. v20}, Lyads/l06;-><init>(Lyads/c06;[J[II[J[IJ)V

    goto/16 :goto_37

    .line 3238
    :goto_43
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_44
    add-int/lit8 v4, v33, 0x1

    move-object v2, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 3239
    :cond_4f
    const-string v0, "Track has no sample table size information"

    move-object/from16 v1, v34

    .line 3240
    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v1

    :cond_50
    move-object v0, v2

    return-object v0
.end method

.method public static a(ILyads/os4;)Lyads/nl;
    .locals 10

    add-int/lit8 p0, p0, 0xc

    .line 3241
    invoke-virtual {p1, p0}, Lyads/os4;->e(I)V

    .line 3242
    iget p0, p1, Lyads/os4;->b:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lyads/os4;->e(I)V

    .line 3243
    invoke-static {p1}, Lyads/sl;->a(Lyads/os4;)I

    .line 3244
    iget p0, p1, Lyads/os4;->b:I

    add-int/lit8 p0, p0, 0x2

    invoke-virtual {p1, p0}, Lyads/os4;->e(I)V

    .line 3245
    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result p0

    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_0

    .line 3246
    iget v0, p1, Lyads/os4;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lyads/os4;->e(I)V

    :cond_0
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_1

    .line 3247
    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result v0

    .line 3248
    iget v1, p1, Lyads/os4;->b:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lyads/os4;->e(I)V

    :cond_1
    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_2

    .line 3249
    iget p0, p1, Lyads/os4;->b:I

    add-int/lit8 p0, p0, 0x2

    invoke-virtual {p1, p0}, Lyads/os4;->e(I)V

    .line 3250
    :cond_2
    iget p0, p1, Lyads/os4;->b:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lyads/os4;->e(I)V

    .line 3251
    invoke-static {p1}, Lyads/sl;->a(Lyads/os4;)I

    .line 3252
    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result p0

    .line 3253
    invoke-static {p0}, Lyads/z84;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 3254
    const-string p0, "audio/mpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 3255
    const-string p0, "audio/vnd.dts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 3256
    const-string p0, "audio/vnd.dts.hd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    .line 3257
    :cond_3
    iget p0, p1, Lyads/os4;->b:I

    add-int/lit8 p0, p0, 0x4

    invoke-virtual {p1, p0}, Lyads/os4;->e(I)V

    .line 3258
    invoke-virtual {p1}, Lyads/os4;->l()J

    move-result-wide v2

    .line 3259
    invoke-virtual {p1}, Lyads/os4;->l()J

    move-result-wide v4

    .line 3260
    iget p0, p1, Lyads/os4;->b:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lyads/os4;->e(I)V

    .line 3261
    invoke-static {p1}, Lyads/sl;->a(Lyads/os4;)I

    move-result p0

    move-wide v6, v2

    .line 3262
    new-array v2, p0, [B

    const/4 v0, 0x0

    .line 3263
    invoke-virtual {p1, v2, v0, p0}, Lyads/os4;->a([BII)V

    .line 3264
    new-instance v0, Lyads/nl;

    const-wide/16 p0, 0x0

    cmp-long v3, v4, p0

    const-wide/16 v8, -0x1

    if-lez v3, :cond_4

    move-wide v3, v4

    goto :goto_0

    :cond_4
    move-wide v3, v8

    :goto_0
    cmp-long p0, v6, p0

    if-lez p0, :cond_5

    move-wide v5, v6

    goto :goto_1

    :cond_5
    move-wide v5, v8

    .line 3265
    :goto_1
    invoke-direct/range {v0 .. v6}, Lyads/nl;-><init>(Ljava/lang/String;[BJJ)V

    return-object v0

    .line 3266
    :cond_6
    :goto_2
    new-instance v0, Lyads/nl;

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lyads/nl;-><init>(Ljava/lang/String;[BJJ)V

    return-object v0
.end method

.method public static a(Lyads/os4;IILjava/lang/String;Lyads/ql2;Z)Lyads/pl;
    .locals 48

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v3

    new-instance v4, Lyads/pl;

    invoke-direct {v4, v3}, Lyads/pl;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_86

    iget v7, v0, Lyads/os4;->b:I

    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    const-string v11, "childAtomSize must be positive"

    invoke-static {v11, v10}, Lyads/at2;->a(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v10

    const v12, 0x61766331

    const v13, 0x76703038

    const v14, 0x48323633

    const v15, 0x6d317620

    const v9, 0x656e6376

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x6

    const/16 v21, 0x10

    if-eq v10, v12, :cond_1

    const v12, 0x61766333

    if-eq v10, v12, :cond_1

    if-eq v10, v9, :cond_1

    if-eq v10, v15, :cond_1

    const v12, 0x6d703476

    if-eq v10, v12, :cond_1

    const v12, 0x68766331

    if-eq v10, v12, :cond_1

    const v12, 0x68657631

    if-eq v10, v12, :cond_1

    const v12, 0x73323633

    if-eq v10, v12, :cond_1

    if-eq v10, v14, :cond_1

    if-eq v10, v13, :cond_1

    const v12, 0x76703039

    if-eq v10, v12, :cond_1

    const v12, 0x61763031

    if-eq v10, v12, :cond_1

    const v12, 0x64766176

    if-eq v10, v12, :cond_1

    const v12, 0x64766131

    if-eq v10, v12, :cond_1

    const v12, 0x64766865

    if-eq v10, v12, :cond_1

    const v12, 0x64766831

    if-ne v10, v12, :cond_2

    :cond_1
    move/from16 v47, v3

    move/from16 v46, v6

    move/from16 v24, v7

    move/from16 v25, v8

    goto/16 :goto_26

    :cond_2
    const v9, 0x6d703461

    const/16 v23, 0x0

    const v5, 0x61632d34

    const v12, 0x65632d33

    const v13, 0x61632d33

    const v14, 0x656e6361

    const v15, 0x616c6163

    if-eq v10, v9, :cond_d

    if-eq v10, v14, :cond_d

    if-eq v10, v13, :cond_d

    if-eq v10, v12, :cond_d

    if-eq v10, v5, :cond_d

    const v9, 0x6d6c7061

    if-eq v10, v9, :cond_d

    const v9, 0x64747363

    if-eq v10, v9, :cond_d

    const v9, 0x64747365

    if-eq v10, v9, :cond_d

    const v9, 0x64747368

    if-eq v10, v9, :cond_d

    const v9, 0x6474736c

    if-eq v10, v9, :cond_d

    const v9, 0x64747378

    if-eq v10, v9, :cond_d

    const v9, 0x73616d72

    if-eq v10, v9, :cond_d

    const v9, 0x73617762

    if-eq v10, v9, :cond_d

    const v9, 0x6c70636d

    if-eq v10, v9, :cond_d

    const v9, 0x736f7774

    if-eq v10, v9, :cond_d

    const v9, 0x74776f73

    if-eq v10, v9, :cond_d

    const v9, 0x2e6d7032

    if-eq v10, v9, :cond_d

    const v9, 0x2e6d7033

    if-eq v10, v9, :cond_d

    const v9, 0x6d686131

    if-eq v10, v9, :cond_d

    const v9, 0x6d686d31

    if-eq v10, v9, :cond_d

    if-eq v10, v15, :cond_d

    const v9, 0x616c6177

    if-eq v10, v9, :cond_d

    const v9, 0x756c6177

    if-eq v10, v9, :cond_d

    const v9, 0x4f707573

    if-eq v10, v9, :cond_d

    const v9, 0x664c6143

    if-ne v10, v9, :cond_3

    goto/16 :goto_7

    :cond_3
    const v5, 0x54544d4c

    if-eq v10, v5, :cond_7

    const v9, 0x74783367

    if-eq v10, v9, :cond_7

    const v9, 0x77767474

    if-eq v10, v9, :cond_7

    const v9, 0x73747070

    if-eq v10, v9, :cond_7

    const v9, 0x63363038

    if-ne v10, v9, :cond_4

    goto :goto_4

    :cond_4
    const v5, 0x6d657474

    if-ne v10, v5, :cond_6

    add-int/lit8 v5, v7, 0x10

    invoke-virtual {v0, v5}, Lyads/os4;->e(I)V

    const v5, 0x6d657474

    if-ne v10, v5, :cond_5

    invoke-virtual {v0}, Lyads/os4;->h()Ljava/lang/String;

    invoke-virtual {v0}, Lyads/os4;->h()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    new-instance v9, Lyads/uz2;

    invoke-direct {v9}, Lyads/uz2;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lyads/uz2;->a:Ljava/lang/String;

    iput-object v5, v9, Lyads/uz2;->k:Ljava/lang/String;

    new-instance v5, Lyads/vz2;

    invoke-direct {v5, v9}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object v5, v4, Lyads/pl;->b:Lyads/vz2;

    :cond_5
    :goto_2
    move/from16 v2, p2

    move/from16 v47, v3

    move-object v1, v4

    move/from16 v46, v6

    :goto_3
    move/from16 v25, v7

    move/from16 v34, v8

    goto/16 :goto_54

    :cond_6
    const v5, 0x63616d6d

    if-ne v10, v5, :cond_5

    new-instance v5, Lyads/uz2;

    invoke-direct {v5}, Lyads/uz2;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lyads/uz2;->a:Ljava/lang/String;

    const-string v9, "application/x-camera-motion"

    iput-object v9, v5, Lyads/uz2;->k:Ljava/lang/String;

    new-instance v9, Lyads/vz2;

    invoke-direct {v9, v5}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object v9, v4, Lyads/pl;->b:Lyads/vz2;

    goto :goto_2

    :cond_7
    :goto_4
    add-int/lit8 v9, v7, 0x10

    invoke-virtual {v0, v9}, Lyads/os4;->e(I)V

    const-wide v11, 0x7fffffffffffffffL

    if-ne v10, v5, :cond_8

    const-string v5, "application/ttml+xml"

    :goto_5
    move-object v9, v5

    move-object/from16 v5, v23

    goto :goto_6

    :cond_8
    const v5, 0x74783367

    if-ne v10, v5, :cond_9

    add-int/lit8 v5, v8, -0x10

    new-array v9, v5, [B

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10, v5}, Lyads/os4;->a([BII)V

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object v5

    const-string v9, "application/x-quicktime-tx3g"

    goto :goto_6

    :cond_9
    const v5, 0x77767474

    if-ne v10, v5, :cond_a

    const-string v5, "application/x-mp4-vtt"

    goto :goto_5

    :cond_a
    const v5, 0x73747070

    if-ne v10, v5, :cond_b

    const-string v5, "application/ttml+xml"

    const-wide/16 v11, 0x0

    goto :goto_5

    :cond_b
    const v5, 0x63363038

    if-ne v10, v5, :cond_c

    const/4 v5, 0x1

    iput v5, v4, Lyads/pl;->d:I

    const-string v5, "application/x-mp4-cea-608"

    goto :goto_5

    :goto_6
    new-instance v10, Lyads/uz2;

    invoke-direct {v10}, Lyads/uz2;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lyads/uz2;->a:Ljava/lang/String;

    iput-object v9, v10, Lyads/uz2;->k:Ljava/lang/String;

    iput-object v1, v10, Lyads/uz2;->c:Ljava/lang/String;

    iput-wide v11, v10, Lyads/uz2;->o:J

    iput-object v5, v10, Lyads/uz2;->m:Ljava/util/List;

    new-instance v5, Lyads/vz2;

    invoke-direct {v5, v10}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object v5, v4, Lyads/pl;->b:Lyads/vz2;

    goto/16 :goto_2

    :cond_c
    invoke-static {}, Lud;->g()V

    return-object v23

    :cond_d
    :goto_7
    add-int/lit8 v9, v7, 0x10

    invoke-virtual {v0, v9}, Lyads/os4;->e(I)V

    if-eqz p5, :cond_e

    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v9

    iget v15, v0, Lyads/os4;->b:I

    add-int/lit8 v15, v15, 0x6

    invoke-virtual {v0, v15}, Lyads/os4;->e(I)V

    goto :goto_8

    :cond_e
    iget v9, v0, Lyads/os4;->b:I

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v0, v9}, Lyads/os4;->e(I)V

    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_f

    const/4 v15, 0x1

    if-ne v9, v15, :cond_10

    :cond_f
    move/from16 v46, v6

    goto :goto_9

    :cond_10
    const/4 v15, 0x2

    if-ne v9, v15, :cond_11

    iget v9, v0, Lyads/os4;->b:I

    add-int/lit8 v9, v9, 0x10

    invoke-virtual {v0, v9}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->g()J

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v44

    move/from16 v46, v6

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v0}, Lyads/os4;->n()I

    move-result v6

    iget v9, v0, Lyads/os4;->b:I

    add-int/lit8 v9, v9, 0x14

    invoke-virtual {v0, v9}, Lyads/os4;->e(I)V

    const/4 v12, 0x0

    goto :goto_a

    :cond_11
    move/from16 v46, v6

    move/from16 v2, p2

    move/from16 v47, v3

    move-object v1, v4

    goto/16 :goto_3

    :goto_9
    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v6

    iget v5, v0, Lyads/os4;->b:I

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v0, v5}, Lyads/os4;->e(I)V

    iget-object v5, v0, Lyads/os4;->a:[B

    iget v15, v0, Lyads/os4;->b:I

    add-int/lit8 v12, v15, 0x1

    iput v12, v0, Lyads/os4;->b:I

    aget-byte v13, v5, v15

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/lit8 v14, v15, 0x2

    iput v14, v0, Lyads/os4;->b:I

    aget-byte v5, v5, v12

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v13

    add-int/lit8 v12, v15, 0x4

    iput v12, v0, Lyads/os4;->b:I

    invoke-virtual {v0, v15}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v12

    const/4 v15, 0x1

    if-ne v9, v15, :cond_12

    iget v9, v0, Lyads/os4;->b:I

    add-int/lit8 v9, v9, 0x10

    invoke-virtual {v0, v9}, Lyads/os4;->e(I)V

    :cond_12
    :goto_a
    iget v9, v0, Lyads/os4;->b:I

    const v13, 0x656e6361

    if-ne v10, v13, :cond_16

    invoke-static {v0, v7, v8}, Lyads/sl;->a(Lyads/os4;II)Landroid/util/Pair;

    move-result-object v13

    if-eqz v13, :cond_15

    iget-object v10, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v2, :cond_13

    move/from16 v47, v3

    move/from16 v21, v5

    move-object/from16 v15, v23

    goto :goto_b

    :cond_13
    iget-object v14, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lyads/d06;

    iget-object v14, v14, Lyads/d06;->b:Ljava/lang/String;

    iget-object v15, v2, Lyads/ql2;->d:Ljava/lang/String;

    invoke-static {v15, v14}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    move-object v15, v2

    move/from16 v47, v3

    move/from16 v21, v5

    goto :goto_b

    :cond_14
    new-instance v15, Lyads/ql2;

    move/from16 v47, v3

    iget-object v3, v2, Lyads/ql2;->b:[Lyads/pl2;

    move/from16 v21, v5

    const/4 v5, 0x0

    invoke-direct {v15, v14, v5, v3}, Lyads/ql2;-><init>(Ljava/lang/String;Z[Lyads/pl2;)V

    :goto_b
    iget-object v3, v4, Lyads/pl;->a:[Lyads/d06;

    iget-object v5, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lyads/d06;

    aput-object v5, v3, v46

    goto :goto_c

    :cond_15
    move/from16 v47, v3

    move/from16 v21, v5

    move-object v15, v2

    :goto_c
    invoke-virtual {v0, v9}, Lyads/os4;->e(I)V

    :goto_d
    const v3, 0x61632d33

    goto :goto_e

    :cond_16
    move/from16 v47, v3

    move/from16 v21, v5

    move-object v15, v2

    goto :goto_d

    :goto_e
    if-ne v10, v3, :cond_17

    const-string v3, "audio/ac3"

    goto/16 :goto_f

    :cond_17
    const v3, 0x65632d33

    if-ne v10, v3, :cond_18

    const-string v3, "audio/eac3"

    goto/16 :goto_f

    :cond_18
    const v3, 0x61632d34

    if-ne v10, v3, :cond_19

    const-string v3, "audio/ac4"

    goto/16 :goto_f

    :cond_19
    const v3, 0x64747363

    if-ne v10, v3, :cond_1a

    const-string v3, "audio/vnd.dts"

    goto/16 :goto_f

    :cond_1a
    const v3, 0x64747368

    if-eq v10, v3, :cond_2d

    const v3, 0x6474736c

    if-ne v10, v3, :cond_1b

    goto/16 :goto_12

    :cond_1b
    const v3, 0x64747365

    if-ne v10, v3, :cond_1c

    const-string v3, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_f

    :cond_1c
    const v3, 0x64747378

    if-ne v10, v3, :cond_1d

    const-string v3, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_f

    :cond_1d
    const v3, 0x73616d72

    if-ne v10, v3, :cond_1e

    const-string v3, "audio/3gpp"

    goto/16 :goto_f

    :cond_1e
    const v3, 0x73617762

    if-ne v10, v3, :cond_1f

    const-string v3, "audio/amr-wb"

    goto/16 :goto_f

    :cond_1f
    const v3, 0x6c70636d

    if-eq v10, v3, :cond_2c

    const v3, 0x736f7774

    if-ne v10, v3, :cond_20

    goto/16 :goto_11

    :cond_20
    const v3, 0x74776f73

    if-ne v10, v3, :cond_21

    const-string v3, "audio/raw"

    const/high16 v5, 0x10000000

    goto/16 :goto_13

    :cond_21
    const v3, 0x2e6d7032

    if-eq v10, v3, :cond_2b

    const v3, 0x2e6d7033

    if-ne v10, v3, :cond_22

    goto :goto_10

    :cond_22
    const v3, 0x6d686131

    if-ne v10, v3, :cond_23

    const-string v3, "audio/mha1"

    goto :goto_f

    :cond_23
    const v3, 0x6d686d31

    if-ne v10, v3, :cond_24

    const-string v3, "audio/mhm1"

    goto :goto_f

    :cond_24
    const v3, 0x616c6163

    if-ne v10, v3, :cond_25

    const-string v3, "audio/alac"

    goto :goto_f

    :cond_25
    const v3, 0x616c6177

    if-ne v10, v3, :cond_26

    const-string v3, "audio/g711-alaw"

    goto :goto_f

    :cond_26
    const v3, 0x756c6177

    if-ne v10, v3, :cond_27

    const-string v3, "audio/g711-mlaw"

    goto :goto_f

    :cond_27
    const v3, 0x4f707573

    if-ne v10, v3, :cond_28

    const-string v3, "audio/opus"

    goto :goto_f

    :cond_28
    const v3, 0x664c6143

    if-ne v10, v3, :cond_29

    const-string v3, "audio/flac"

    goto :goto_f

    :cond_29
    const v3, 0x6d6c7061

    if-ne v10, v3, :cond_2a

    const-string v3, "audio/true-hd"

    goto :goto_f

    :cond_2a
    move-object/from16 v3, v23

    :goto_f
    const/4 v5, -0x1

    goto :goto_13

    :cond_2b
    :goto_10
    const-string v3, "audio/mpeg"

    goto :goto_f

    :cond_2c
    :goto_11
    const-string v3, "audio/raw"

    const/4 v5, 0x2

    goto :goto_13

    :cond_2d
    :goto_12
    const-string v3, "audio/vnd.dts.hd"

    goto :goto_f

    :goto_13
    move v10, v6

    move/from16 v24, v7

    move/from16 v6, v21

    move-object/from16 v2, v23

    move-object v13, v2

    move-object v14, v13

    :goto_14
    sub-int v7, v9, v24

    if-ge v7, v8, :cond_47

    invoke-virtual {v0, v9}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v7

    move/from16 v25, v8

    if-lez v7, :cond_2e

    const/4 v8, 0x1

    goto :goto_15

    :cond_2e
    const/4 v8, 0x0

    :goto_15
    invoke-static {v11, v8}, Lyads/at2;->a(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v8

    move-object/from16 v21, v13

    const v13, 0x6d686143

    if-ne v8, v13, :cond_2f

    add-int/lit8 v8, v7, -0xd

    new-array v13, v8, [B

    add-int/lit8 v14, v9, 0xd

    invoke-virtual {v0, v14}, Lyads/os4;->e(I)V

    const/4 v14, 0x0

    invoke-virtual {v0, v13, v14, v8}, Lyads/os4;->a([BII)V

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object v8

    move-object/from16 v28, v2

    move/from16 v27, v5

    move-object v14, v8

    :goto_16
    move-object/from16 v13, v21

    const v2, 0x616c6163

    goto/16 :goto_25

    :cond_2f
    const v13, 0x65736473

    if-eq v8, v13, :cond_30

    if-eqz p5, :cond_31

    const v13, 0x77617665

    if-ne v8, v13, :cond_31

    const v13, 0x65736473

    :cond_30
    move-object/from16 v28, v2

    move/from16 v27, v5

    move-object/from16 v26, v14

    const v2, 0x616c6163

    goto/16 :goto_1c

    :cond_31
    const v13, 0x64616333

    if-ne v8, v13, :cond_33

    add-int/lit8 v8, v9, 0x8

    invoke-virtual {v0, v8}, Lyads/os4;->e(I)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v13

    and-int/lit16 v13, v13, 0xc0

    shr-int/lit8 v13, v13, 0x6

    sget-object v26, Lyads/f0;->b:[I

    aget v13, v26, v13

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v26

    sget-object v27, Lyads/f0;->d:[I

    and-int/lit8 v28, v26, 0x38

    shr-int/lit8 v28, v28, 0x3

    aget v27, v27, v28

    and-int/lit8 v26, v26, 0x4

    if-eqz v26, :cond_32

    add-int/lit8 v27, v27, 0x1

    :cond_32
    move-object/from16 v26, v14

    move/from16 v14, v27

    move/from16 v27, v5

    new-instance v5, Lyads/uz2;

    invoke-direct {v5}, Lyads/uz2;-><init>()V

    iput-object v8, v5, Lyads/uz2;->a:Ljava/lang/String;

    const-string v8, "audio/ac3"

    iput-object v8, v5, Lyads/uz2;->k:Ljava/lang/String;

    iput v14, v5, Lyads/uz2;->x:I

    iput v13, v5, Lyads/uz2;->y:I

    iput-object v15, v5, Lyads/uz2;->n:Lyads/ql2;

    iput-object v1, v5, Lyads/uz2;->c:Ljava/lang/String;

    new-instance v8, Lyads/vz2;

    invoke-direct {v8, v5}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object v8, v4, Lyads/pl;->b:Lyads/vz2;

    move-object/from16 v28, v2

    :goto_17
    const v2, 0x616c6163

    goto/16 :goto_24

    :cond_33
    move/from16 v27, v5

    move-object/from16 v26, v14

    const v5, 0x64656333

    if-ne v8, v5, :cond_37

    add-int/lit8 v5, v9, 0x8

    invoke-virtual {v0, v5}, Lyads/os4;->e(I)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget v8, v0, Lyads/os4;->b:I

    const/16 v22, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v0, v8}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v8

    and-int/lit16 v8, v8, 0xc0

    shr-int/lit8 v8, v8, 0x6

    sget-object v13, Lyads/f0;->b:[I

    aget v8, v13, v8

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v13

    sget-object v14, Lyads/f0;->d:[I

    and-int/lit8 v28, v13, 0xe

    const/16 v16, 0x1

    shr-int/lit8 v28, v28, 0x1

    aget v14, v14, v28

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_34

    add-int/lit8 v14, v14, 0x1

    :cond_34
    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v13

    and-int/lit8 v13, v13, 0x1e

    shr-int/lit8 v13, v13, 0x1

    if-lez v13, :cond_35

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v13

    const/16 v22, 0x2

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_35

    add-int/lit8 v14, v14, 0x2

    :cond_35
    iget v13, v0, Lyads/os4;->c:I

    move/from16 v28, v13

    iget v13, v0, Lyads/os4;->b:I

    sub-int v13, v28, v13

    if-lez v13, :cond_36

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v13

    const/16 v16, 0x1

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_36

    const-string v13, "audio/eac3-joc"

    :goto_18
    move-object/from16 v28, v2

    goto :goto_19

    :cond_36
    const-string v13, "audio/eac3"

    goto :goto_18

    :goto_19
    new-instance v2, Lyads/uz2;

    invoke-direct {v2}, Lyads/uz2;-><init>()V

    iput-object v5, v2, Lyads/uz2;->a:Ljava/lang/String;

    iput-object v13, v2, Lyads/uz2;->k:Ljava/lang/String;

    iput v14, v2, Lyads/uz2;->x:I

    iput v8, v2, Lyads/uz2;->y:I

    iput-object v15, v2, Lyads/uz2;->n:Lyads/ql2;

    iput-object v1, v2, Lyads/uz2;->c:Ljava/lang/String;

    new-instance v5, Lyads/vz2;

    invoke-direct {v5, v2}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object v5, v4, Lyads/pl;->b:Lyads/vz2;

    goto/16 :goto_17

    :cond_37
    move-object/from16 v28, v2

    const v2, 0x64616334

    if-ne v8, v2, :cond_39

    add-int/lit8 v2, v9, 0x8

    invoke-virtual {v0, v2}, Lyads/os4;->e(I)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v5, v0, Lyads/os4;->b:I

    const/4 v8, 0x1

    add-int/2addr v5, v8

    invoke-virtual {v0, v5}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    shr-int/lit8 v5, v5, 0x5

    if-ne v5, v8, :cond_38

    const v5, 0xbb80

    goto :goto_1a

    :cond_38
    const v5, 0xac44

    :goto_1a
    new-instance v8, Lyads/uz2;

    invoke-direct {v8}, Lyads/uz2;-><init>()V

    iput-object v2, v8, Lyads/uz2;->a:Ljava/lang/String;

    const-string v2, "audio/ac4"

    iput-object v2, v8, Lyads/uz2;->k:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v8, Lyads/uz2;->x:I

    iput v5, v8, Lyads/uz2;->y:I

    iput-object v15, v8, Lyads/uz2;->n:Lyads/ql2;

    iput-object v1, v8, Lyads/uz2;->c:Ljava/lang/String;

    new-instance v2, Lyads/vz2;

    invoke-direct {v2, v8}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object v2, v4, Lyads/pl;->b:Lyads/vz2;

    goto/16 :goto_17

    :cond_39
    const v2, 0x646d6c70

    if-ne v8, v2, :cond_3b

    if-lez v12, :cond_3a

    move v6, v12

    move-object/from16 v13, v21

    move-object/from16 v14, v26

    const v2, 0x616c6163

    const/4 v10, 0x2

    goto/16 :goto_25

    :cond_3a
    const-string v0, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-static {v12, v0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v1

    :cond_3b
    const v2, 0x64647473

    if-ne v8, v2, :cond_3c

    new-instance v2, Lyads/uz2;

    invoke-direct {v2}, Lyads/uz2;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lyads/uz2;->a:Ljava/lang/String;

    iput-object v3, v2, Lyads/uz2;->k:Ljava/lang/String;

    iput v10, v2, Lyads/uz2;->x:I

    iput v6, v2, Lyads/uz2;->y:I

    iput-object v15, v2, Lyads/uz2;->n:Lyads/ql2;

    iput-object v1, v2, Lyads/uz2;->c:Ljava/lang/String;

    new-instance v5, Lyads/vz2;

    invoke-direct {v5, v2}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object v5, v4, Lyads/pl;->b:Lyads/vz2;

    goto/16 :goto_17

    :cond_3c
    const v2, 0x644f7073

    if-ne v8, v2, :cond_3d

    add-int/lit8 v2, v7, -0x8

    sget-object v5, Lyads/sl;->a:[B

    array-length v8, v5

    add-int/2addr v8, v2

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    add-int/lit8 v13, v9, 0x8

    invoke-virtual {v0, v13}, Lyads/os4;->e(I)V

    array-length v5, v5

    invoke-virtual {v0, v8, v5, v2}, Lyads/os4;->a([BII)V

    invoke-static {v8}, Lyads/wq4;->a([B)Ljava/util/ArrayList;

    move-result-object v2

    :goto_1b
    move-object v14, v2

    goto/16 :goto_16

    :cond_3d
    const v2, 0x64664c61

    if-ne v8, v2, :cond_3e

    add-int/lit8 v2, v7, -0xc

    add-int/lit8 v5, v7, -0x8

    new-array v5, v5, [B

    const/16 v8, 0x66

    const/16 v17, 0x0

    aput-byte v8, v5, v17

    const/16 v8, 0x4c

    const/16 v16, 0x1

    aput-byte v8, v5, v16

    const/16 v8, 0x61

    const/16 v22, 0x2

    aput-byte v8, v5, v22

    const/16 v8, 0x43

    aput-byte v8, v5, v19

    add-int/lit8 v8, v9, 0xc

    invoke-virtual {v0, v8}, Lyads/os4;->e(I)V

    move/from16 v8, v18

    invoke-virtual {v0, v5, v8, v2}, Lyads/os4;->a([BII)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object v2

    goto :goto_1b

    :cond_3e
    const v2, 0x616c6163

    if-ne v8, v2, :cond_46

    add-int/lit8 v5, v7, -0xc

    new-array v6, v5, [B

    add-int/lit8 v8, v9, 0xc

    invoke-virtual {v0, v8}, Lyads/os4;->e(I)V

    const/4 v10, 0x0

    invoke-virtual {v0, v6, v10, v5}, Lyads/os4;->a([BII)V

    new-instance v5, Lyads/os4;

    invoke-direct {v5, v6}, Lyads/os4;-><init>([B)V

    const/16 v8, 0x9

    invoke-virtual {v5, v8}, Lyads/os4;->e(I)V

    invoke-virtual {v5}, Lyads/os4;->k()I

    move-result v8

    const/16 v10, 0x14

    invoke-virtual {v5, v10}, Lyads/os4;->e(I)V

    invoke-virtual {v5}, Lyads/os4;->n()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object v6

    move v10, v5

    move-object v14, v6

    move v6, v8

    move-object/from16 v13, v21

    goto/16 :goto_25

    :goto_1c
    if-ne v8, v13, :cond_3f

    move v5, v9

    :goto_1d
    const/4 v8, -0x1

    goto :goto_22

    :cond_3f
    iget v5, v0, Lyads/os4;->b:I

    if-lt v5, v9, :cond_40

    const/4 v8, 0x1

    :goto_1e
    const/4 v13, 0x0

    goto :goto_1f

    :cond_40
    const/4 v8, 0x0

    goto :goto_1e

    :goto_1f
    invoke-static {v13, v8}, Lyads/at2;->a(Ljava/lang/String;Z)V

    :goto_20
    sub-int v8, v5, v9

    if-ge v8, v7, :cond_43

    invoke-virtual {v0, v5}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v8

    if-lez v8, :cond_41

    const/4 v13, 0x1

    goto :goto_21

    :cond_41
    const/4 v13, 0x0

    :goto_21
    invoke-static {v11, v13}, Lyads/at2;->a(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v13

    const v14, 0x65736473

    if-ne v13, v14, :cond_42

    goto :goto_1d

    :cond_42
    add-int/2addr v5, v8

    goto :goto_20

    :cond_43
    const/4 v5, -0x1

    goto :goto_1d

    :goto_22
    if-eq v5, v8, :cond_46

    invoke-static {v5, v0}, Lyads/sl;->a(ILyads/os4;)Lyads/nl;

    move-result-object v3

    iget-object v5, v3, Lyads/nl;->a:Ljava/lang/String;

    iget-object v8, v3, Lyads/nl;->b:[B

    if-eqz v8, :cond_45

    const-string v13, "audio/mp4a-latm"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_44

    new-instance v6, Lyads/ns4;

    invoke-direct {v6, v8}, Lyads/ns4;-><init>([B)V

    const/4 v10, 0x0

    invoke-static {v6, v10}, Lyads/b;->a(Lyads/ns4;Z)Lyads/a;

    move-result-object v6

    iget v10, v6, Lyads/a;->a:I

    iget v13, v6, Lyads/a;->b:I

    iget-object v6, v6, Lyads/a;->c:Ljava/lang/String;

    move-object/from16 v28, v6

    move v6, v10

    move v10, v13

    :cond_44
    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object v8

    move-object v13, v3

    move-object v3, v5

    move-object v14, v8

    goto :goto_25

    :cond_45
    move-object v13, v3

    move-object v3, v5

    :goto_23
    move-object/from16 v14, v26

    goto :goto_25

    :cond_46
    :goto_24
    move-object/from16 v13, v21

    goto :goto_23

    :goto_25
    add-int/2addr v9, v7

    move/from16 v8, v25

    move/from16 v5, v27

    move-object/from16 v2, v28

    const/16 v18, 0x4

    const/16 v23, 0x0

    goto/16 :goto_14

    :cond_47
    move-object/from16 v28, v2

    move/from16 v27, v5

    move/from16 v25, v8

    move-object/from16 v21, v13

    move-object/from16 v26, v14

    iget-object v2, v4, Lyads/pl;->b:Lyads/vz2;

    if-nez v2, :cond_49

    if-eqz v3, :cond_49

    new-instance v2, Lyads/uz2;

    invoke-direct {v2}, Lyads/uz2;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lyads/uz2;->a:Ljava/lang/String;

    iput-object v3, v2, Lyads/uz2;->k:Ljava/lang/String;

    move-object/from16 v3, v28

    iput-object v3, v2, Lyads/uz2;->h:Ljava/lang/String;

    iput v10, v2, Lyads/uz2;->x:I

    iput v6, v2, Lyads/uz2;->y:I

    move/from16 v5, v27

    iput v5, v2, Lyads/uz2;->z:I

    move-object/from16 v14, v26

    iput-object v14, v2, Lyads/uz2;->m:Ljava/util/List;

    iput-object v15, v2, Lyads/uz2;->n:Lyads/ql2;

    iput-object v1, v2, Lyads/uz2;->c:Ljava/lang/String;

    if-eqz v21, :cond_48

    move-object/from16 v13, v21

    iget-wide v5, v13, Lyads/nl;->c:J

    invoke-static {v5, v6}, Lyads/bq3;->b(J)I

    move-result v3

    iput v3, v2, Lyads/uz2;->f:I

    iget-wide v5, v13, Lyads/nl;->d:J

    invoke-static {v5, v6}, Lyads/bq3;->b(J)I

    move-result v3

    iput v3, v2, Lyads/uz2;->g:I

    :cond_48
    new-instance v3, Lyads/vz2;

    invoke-direct {v3, v2}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object v3, v4, Lyads/pl;->b:Lyads/vz2;

    :cond_49
    move/from16 v2, p2

    move-object v1, v4

    move/from16 v34, v25

    move/from16 v25, v24

    goto/16 :goto_54

    :goto_26
    add-int/lit8 v7, v24, 0x10

    invoke-virtual {v0, v7}, Lyads/os4;->e(I)V

    iget v2, v0, Lyads/os4;->b:I

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v2}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v2

    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v3

    iget v5, v0, Lyads/os4;->b:I

    add-int/lit8 v5, v5, 0x32

    invoke-virtual {v0, v5}, Lyads/os4;->e(I)V

    iget v5, v0, Lyads/os4;->b:I

    if-ne v10, v9, :cond_4d

    move/from16 v6, v24

    move/from16 v7, v25

    invoke-static {v0, v6, v7}, Lyads/sl;->a(Lyads/os4;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_4c

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez p4, :cond_4a

    move-object/from16 v12, p4

    const/4 v13, 0x0

    :goto_27
    const/4 v15, 0x0

    goto :goto_28

    :cond_4a
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lyads/d06;

    iget-object v9, v9, Lyads/d06;->b:Ljava/lang/String;

    move-object/from16 v12, p4

    iget-object v13, v12, Lyads/ql2;->d:Ljava/lang/String;

    invoke-static {v13, v9}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4b

    move-object v13, v12

    goto :goto_27

    :cond_4b
    new-instance v13, Lyads/ql2;

    iget-object v14, v12, Lyads/ql2;->b:[Lyads/pl2;

    const/4 v15, 0x0

    invoke-direct {v13, v9, v15, v14}, Lyads/ql2;-><init>(Ljava/lang/String;Z[Lyads/pl2;)V

    :goto_28
    iget-object v9, v4, Lyads/pl;->a:[Lyads/d06;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lyads/d06;

    aput-object v8, v9, v46

    goto :goto_29

    :cond_4c
    move-object/from16 v12, p4

    const/4 v15, 0x0

    move-object v13, v12

    :goto_29
    invoke-virtual {v0, v5}, Lyads/os4;->e(I)V

    :goto_2a
    const v8, 0x6d317620

    goto :goto_2b

    :cond_4d
    move-object/from16 v12, p4

    move/from16 v6, v24

    move/from16 v7, v25

    const/4 v15, 0x0

    move-object v13, v12

    goto :goto_2a

    :goto_2b
    if-ne v10, v8, :cond_4e

    const-string v8, "video/mpeg"

    goto :goto_2c

    :cond_4e
    const v8, 0x48323633

    if-ne v10, v8, :cond_4f

    const-string v8, "video/3gpp"

    goto :goto_2c

    :cond_4f
    const/4 v8, 0x0

    :goto_2c
    const/high16 v9, 0x3f800000    # 1.0f

    move v1, v5

    move/from16 v25, v6

    move-object v6, v8

    move/from16 v30, v15

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v14, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v31, -0x1

    move v15, v9

    const/4 v9, 0x0

    :goto_2d
    sub-int v12, v1, v25

    if-ge v12, v7, :cond_7f

    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    iget v12, v0, Lyads/os4;->b:I

    move/from16 v32, v1

    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v1

    move-object/from16 v33, v13

    if-nez v1, :cond_50

    iget v13, v0, Lyads/os4;->b:I

    sub-int v13, v13, v25

    if-ne v13, v7, :cond_50

    :goto_2e
    move-object/from16 v37, v4

    move-object/from16 v38, v5

    move/from16 v34, v7

    move-object/from16 v40, v9

    move/from16 v39, v14

    move/from16 v45, v15

    const/4 v7, 0x0

    goto/16 :goto_52

    :cond_50
    if-lez v1, :cond_51

    const/4 v13, 0x1

    goto :goto_2f

    :cond_51
    const/4 v13, 0x0

    :goto_2f
    invoke-static {v11, v13}, Lyads/at2;->a(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v13

    move/from16 v34, v7

    const v7, 0x61766343

    if-ne v13, v7, :cond_54

    if-nez v6, :cond_52

    const/4 v5, 0x1

    :goto_30
    const/4 v13, 0x0

    goto :goto_31

    :cond_52
    const/4 v5, 0x0

    goto :goto_30

    :goto_31
    invoke-static {v13, v5}, Lyads/at2;->a(Ljava/lang/String;Z)V

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Lyads/os4;->e(I)V

    invoke-static {v0}, Lyads/dn;->a(Lyads/os4;)Lyads/dn;

    move-result-object v5

    iget-object v6, v5, Lyads/dn;->a:Ljava/util/ArrayList;

    iget v7, v5, Lyads/dn;->b:I

    iput v7, v4, Lyads/pl;->c:I

    if-nez v30, :cond_53

    iget v15, v5, Lyads/dn;->e:F

    :cond_53
    iget-object v5, v5, Lyads/dn;->f:Ljava/lang/String;

    const-string v7, "video/avc"

    :goto_32
    move-object/from16 v37, v4

    move-object v8, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v40, v9

    move/from16 v35, v10

    move-object/from16 v36, v11

    move/from16 v39, v14

    move/from16 v45, v15

    move/from16 v10, v19

    move/from16 v13, v20

    move/from16 v9, v21

    const/4 v7, 0x0

    const/4 v12, 0x4

    const v14, 0x65736473

    const/4 v15, 0x1

    const/16 v22, 0x2

    const v24, 0x76703038

    goto/16 :goto_51

    :cond_54
    const v7, 0x68766343

    if-ne v13, v7, :cond_57

    if-nez v6, :cond_55

    const/4 v5, 0x1

    :goto_33
    const/4 v13, 0x0

    goto :goto_34

    :cond_55
    const/4 v5, 0x0

    goto :goto_33

    :goto_34
    invoke-static {v13, v5}, Lyads/at2;->a(Ljava/lang/String;Z)V

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Lyads/os4;->e(I)V

    invoke-static {v0}, Lyads/b93;->a(Lyads/os4;)Lyads/b93;

    move-result-object v5

    iget-object v6, v5, Lyads/b93;->a:Ljava/util/List;

    iget v7, v5, Lyads/b93;->b:I

    iput v7, v4, Lyads/pl;->c:I

    if-nez v30, :cond_56

    iget v15, v5, Lyads/b93;->c:F

    :cond_56
    iget-object v5, v5, Lyads/b93;->d:Ljava/lang/String;

    const-string v7, "video/hevc"

    goto :goto_32

    :cond_57
    const v7, 0x64766343

    if-eq v13, v7, :cond_58

    const v7, 0x64767643

    if-ne v13, v7, :cond_59

    :cond_58
    move-object/from16 v37, v4

    move-object/from16 v38, v5

    move-object/from16 v40, v9

    move/from16 v35, v10

    move-object/from16 v36, v11

    move/from16 v39, v14

    move/from16 v45, v15

    move/from16 v10, v19

    move/from16 v13, v20

    move/from16 v9, v21

    const/4 v7, 0x0

    const/4 v12, 0x4

    const v14, 0x65736473

    const/4 v15, 0x1

    const/16 v22, 0x2

    const v24, 0x76703038

    goto/16 :goto_50

    :cond_59
    const v7, 0x76706343

    if-ne v13, v7, :cond_5c

    if-nez v6, :cond_5a

    const/4 v6, 0x1

    :goto_35
    const/4 v7, 0x0

    goto :goto_36

    :cond_5a
    const/4 v6, 0x0

    goto :goto_35

    :goto_36
    invoke-static {v7, v6}, Lyads/at2;->a(Ljava/lang/String;Z)V

    const v6, 0x76703038

    if-ne v10, v6, :cond_5b

    const-string v12, "video/x-vnd.on2.vp8"

    :goto_37
    move-object/from16 v37, v4

    move/from16 v24, v6

    move-object/from16 v40, v9

    move/from16 v35, v10

    move-object/from16 v36, v11

    move-object v6, v12

    move/from16 v39, v14

    move/from16 v45, v15

    move/from16 v10, v19

    move/from16 v13, v20

    move/from16 v9, v21

    :goto_38
    const/4 v12, 0x4

    const v14, 0x65736473

    :goto_39
    const/4 v15, 0x1

    const/16 v22, 0x2

    goto/16 :goto_51

    :cond_5b
    const-string v12, "video/x-vnd.on2.vp9"

    goto :goto_37

    :cond_5c
    const v24, 0x76703038

    const v7, 0x61763143

    if-ne v13, v7, :cond_5e

    if-nez v6, :cond_5d

    const/4 v6, 0x1

    :goto_3a
    const/4 v13, 0x0

    goto :goto_3b

    :cond_5d
    const/4 v6, 0x0

    goto :goto_3a

    :goto_3b
    invoke-static {v13, v6}, Lyads/at2;->a(Ljava/lang/String;Z)V

    const-string v6, "video/av01"

    move-object/from16 v37, v4

    :goto_3c
    move-object/from16 v40, v9

    move/from16 v35, v10

    move-object/from16 v36, v11

    move/from16 v39, v14

    move/from16 v45, v15

    move/from16 v10, v19

    move/from16 v13, v20

    move/from16 v9, v21

    :goto_3d
    const/4 v7, 0x0

    goto :goto_38

    :cond_5e
    const v7, 0x636c6c69

    if-ne v13, v7, :cond_60

    if-nez v26, :cond_5f

    const/16 v7, 0x19

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    goto :goto_3e

    :cond_5f
    move-object/from16 v7, v26

    :goto_3e
    const/16 v12, 0x15

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Lyads/os4;->i()S

    move-result v12

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lyads/os4;->i()S

    move-result v12

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v37, v4

    move-object/from16 v26, v7

    goto :goto_3c

    :cond_60
    const v7, 0x6d646376

    if-ne v13, v7, :cond_62

    if-nez v26, :cond_61

    const/16 v7, 0x19

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    goto :goto_3f

    :cond_61
    move-object/from16 v7, v26

    :goto_3f
    invoke-virtual {v0}, Lyads/os4;->i()S

    move-result v12

    invoke-virtual {v0}, Lyads/os4;->i()S

    move-result v13

    move/from16 v35, v10

    invoke-virtual {v0}, Lyads/os4;->i()S

    move-result v10

    move-object/from16 v36, v11

    invoke-virtual {v0}, Lyads/os4;->i()S

    move-result v11

    move-object/from16 v37, v4

    invoke-virtual {v0}, Lyads/os4;->i()S

    move-result v4

    move-object/from16 v38, v5

    invoke-virtual {v0}, Lyads/os4;->i()S

    move-result v5

    move/from16 v39, v14

    invoke-virtual {v0}, Lyads/os4;->i()S

    move-result v14

    move-object/from16 v40, v9

    invoke-virtual {v0}, Lyads/os4;->i()S

    move-result v9

    invoke-virtual {v0}, Lyads/os4;->l()J

    move-result-wide v41

    invoke-virtual {v0}, Lyads/os4;->l()J

    move-result-wide v43

    move/from16 v45, v15

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x2710

    div-long v4, v41, v4

    long-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x2710

    div-long v4, v43, v4

    long-to-int v4, v4

    int-to-short v4, v4

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v26, v7

    move/from16 v10, v19

    move/from16 v13, v20

    move/from16 v9, v21

    move-object/from16 v5, v38

    goto/16 :goto_3d

    :cond_62
    move-object/from16 v37, v4

    move-object/from16 v38, v5

    move-object/from16 v40, v9

    move/from16 v35, v10

    move-object/from16 v36, v11

    move/from16 v39, v14

    move/from16 v45, v15

    const v4, 0x64323633

    if-ne v13, v4, :cond_64

    if-nez v6, :cond_63

    const/4 v4, 0x1

    :goto_40
    const/4 v7, 0x0

    goto :goto_41

    :cond_63
    const/4 v4, 0x0

    goto :goto_40

    :goto_41
    invoke-static {v7, v4}, Lyads/at2;->a(Ljava/lang/String;Z)V

    const-string v4, "video/3gpp"

    move-object v6, v4

    move/from16 v10, v19

    move/from16 v13, v20

    move/from16 v9, v21

    move-object/from16 v5, v38

    goto/16 :goto_38

    :cond_64
    const/4 v7, 0x0

    const v14, 0x65736473

    if-ne v13, v14, :cond_67

    if-nez v6, :cond_65

    const/4 v4, 0x1

    goto :goto_42

    :cond_65
    const/4 v4, 0x0

    :goto_42
    invoke-static {v7, v4}, Lyads/at2;->a(Ljava/lang/String;Z)V

    invoke-static {v12, v0}, Lyads/sl;->a(ILyads/os4;)Lyads/nl;

    move-result-object v4

    iget-object v5, v4, Lyads/nl;->a:Ljava/lang/String;

    iget-object v6, v4, Lyads/nl;->b:[B

    if-eqz v6, :cond_66

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object v6

    goto :goto_43

    :cond_66
    move-object/from16 v6, v38

    :goto_43
    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    move-object/from16 v27, v4

    move/from16 v10, v19

    move/from16 v13, v20

    move/from16 v9, v21

    :goto_44
    const/4 v12, 0x4

    goto/16 :goto_39

    :cond_67
    const v4, 0x70617370

    if-ne v13, v4, :cond_68

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v0, v12}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->n()I

    move-result v4

    invoke-virtual {v0}, Lyads/os4;->n()I

    move-result v5

    int-to-float v4, v4

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v45, v4

    move/from16 v10, v19

    move/from16 v13, v20

    move/from16 v9, v21

    move-object/from16 v5, v38

    const/4 v12, 0x4

    const/4 v15, 0x1

    const/16 v22, 0x2

    const/16 v30, 0x1

    goto/16 :goto_51

    :cond_68
    const v4, 0x73763364

    if-ne v13, v4, :cond_6b

    add-int/lit8 v4, v12, 0x8

    :goto_45
    sub-int v5, v4, v12

    if-ge v5, v1, :cond_6a

    invoke-virtual {v0, v4}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v5

    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v9

    const v10, 0x70726f6a

    if-ne v9, v10, :cond_69

    iget-object v9, v0, Lyads/os4;->a:[B

    add-int/2addr v5, v4

    invoke-static {v9, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    move-object/from16 v40, v4

    :goto_46
    move/from16 v10, v19

    :goto_47
    move/from16 v13, v20

    move/from16 v9, v21

    move-object/from16 v5, v38

    goto :goto_44

    :cond_69
    add-int/2addr v4, v5

    goto :goto_45

    :cond_6a
    move-object/from16 v40, v7

    goto :goto_46

    :cond_6b
    const v4, 0x73743364

    if-ne v13, v4, :cond_72

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v4

    iget v5, v0, Lyads/os4;->b:I

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v0, v5}, Lyads/os4;->e(I)V

    if-nez v4, :cond_71

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v4

    if-eqz v4, :cond_70

    const/4 v15, 0x1

    if-eq v4, v15, :cond_6f

    const/4 v15, 0x2

    move/from16 v10, v19

    if-eq v4, v15, :cond_6e

    if-eq v4, v10, :cond_6d

    :cond_6c
    :goto_48
    move/from16 v13, v20

    move/from16 v9, v21

    const/4 v12, 0x4

    const/4 v15, 0x1

    const/16 v22, 0x2

    goto/16 :goto_4f

    :cond_6d
    move/from16 v39, v10

    goto :goto_47

    :cond_6e
    move/from16 v13, v20

    move/from16 v9, v21

    move-object/from16 v5, v38

    const/4 v12, 0x4

    const/4 v15, 0x1

    const/16 v22, 0x2

    const/16 v39, 0x2

    goto/16 :goto_51

    :cond_6f
    move/from16 v10, v19

    move/from16 v13, v20

    move/from16 v9, v21

    move-object/from16 v5, v38

    const/4 v12, 0x4

    const/4 v15, 0x1

    const/16 v22, 0x2

    const/16 v39, 0x1

    goto/16 :goto_51

    :cond_70
    move/from16 v10, v19

    move/from16 v13, v20

    move/from16 v9, v21

    move-object/from16 v5, v38

    const/4 v12, 0x4

    const/4 v15, 0x1

    const/16 v22, 0x2

    const/16 v39, 0x0

    goto/16 :goto_51

    :cond_71
    move/from16 v10, v19

    goto :goto_48

    :cond_72
    move/from16 v10, v19

    const v4, 0x636f6c72

    if-ne v13, v4, :cond_6c

    invoke-virtual {v0}, Lyads/os4;->a()I

    move-result v4

    const v5, 0x6e636c78

    if-eq v4, v5, :cond_74

    const v5, 0x6e636c63

    if-ne v4, v5, :cond_73

    goto :goto_49

    :cond_73
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Unsupported color type: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lyads/ll;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AtomParsers"

    invoke-static {v5, v4}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_74
    :goto_49
    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v4

    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v5

    iget v9, v0, Lyads/os4;->b:I

    const/16 v22, 0x2

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {v0, v9}, Lyads/os4;->e(I)V

    const/16 v9, 0x13

    if-ne v1, v9, :cond_75

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v9

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_75

    const/4 v9, 0x1

    goto :goto_4a

    :cond_75
    const/4 v9, 0x0

    :goto_4a
    const/4 v11, 0x7

    const/4 v15, 0x1

    if-eq v4, v15, :cond_78

    const/16 v12, 0x9

    if-eq v4, v12, :cond_77

    const/4 v12, 0x4

    if-eq v4, v12, :cond_76

    const/4 v13, 0x5

    if-eq v4, v13, :cond_76

    move/from16 v13, v20

    if-eq v4, v13, :cond_76

    if-eq v4, v11, :cond_76

    const/4 v4, -0x1

    goto :goto_4b

    :cond_76
    move/from16 v4, v22

    goto :goto_4b

    :cond_77
    const/4 v12, 0x4

    const/4 v4, 0x6

    goto :goto_4b

    :cond_78
    const/4 v12, 0x4

    const/4 v4, 0x1

    :goto_4b
    if-eqz v9, :cond_79

    const/16 v16, 0x1

    :goto_4c
    const/4 v15, 0x1

    goto :goto_4d

    :cond_79
    move/from16 v16, v22

    goto :goto_4c

    :goto_4d
    move/from16 v9, v21

    if-eq v5, v15, :cond_7c

    if-eq v5, v9, :cond_7b

    const/16 v13, 0x12

    if-eq v5, v13, :cond_7a

    const/4 v13, 0x6

    if-eq v5, v13, :cond_7d

    if-eq v5, v11, :cond_7d

    const/4 v11, -0x1

    goto :goto_4e

    :cond_7a
    const/4 v13, 0x6

    goto :goto_4e

    :cond_7b
    const/4 v13, 0x6

    move v11, v13

    goto :goto_4e

    :cond_7c
    const/4 v13, 0x6

    :cond_7d
    move v11, v10

    :goto_4e
    move/from16 v31, v4

    move/from16 v28, v11

    move/from16 v29, v16

    :cond_7e
    :goto_4f
    move-object/from16 v5, v38

    goto :goto_51

    :goto_50
    invoke-static {v0}, Lyads/rj2;->a(Lyads/os4;)Lyads/rj2;

    move-result-object v4

    if-eqz v4, :cond_7e

    iget-object v4, v4, Lyads/rj2;->a:Ljava/lang/String;

    const-string v5, "video/dolby-vision"

    move-object v8, v4

    move-object v6, v5

    goto :goto_4f

    :goto_51
    add-int v1, v32, v1

    move/from16 v21, v9

    move/from16 v19, v10

    move/from16 v20, v13

    move-object/from16 v13, v33

    move/from16 v7, v34

    move/from16 v10, v35

    move-object/from16 v11, v36

    move-object/from16 v4, v37

    move/from16 v14, v39

    move-object/from16 v9, v40

    move/from16 v15, v45

    goto/16 :goto_2d

    :cond_7f
    move-object/from16 v33, v13

    goto/16 :goto_2e

    :goto_52
    if-nez v6, :cond_80

    move/from16 v2, p2

    move-object/from16 v1, v37

    goto/16 :goto_54

    :cond_80
    new-instance v1, Lyads/uz2;

    invoke-direct {v1}, Lyads/uz2;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lyads/uz2;->a:Ljava/lang/String;

    iput-object v6, v1, Lyads/uz2;->k:Ljava/lang/String;

    iput-object v8, v1, Lyads/uz2;->h:Ljava/lang/String;

    iput v2, v1, Lyads/uz2;->p:I

    iput v3, v1, Lyads/uz2;->q:I

    move/from16 v9, v45

    iput v9, v1, Lyads/uz2;->t:F

    move/from16 v2, p2

    iput v2, v1, Lyads/uz2;->s:I

    move-object/from16 v3, v40

    iput-object v3, v1, Lyads/uz2;->u:[B

    move/from16 v3, v39

    iput v3, v1, Lyads/uz2;->v:I

    move-object/from16 v5, v38

    iput-object v5, v1, Lyads/uz2;->m:Ljava/util/List;

    move-object/from16 v12, v33

    iput-object v12, v1, Lyads/uz2;->n:Lyads/ql2;

    move/from16 v3, v31

    const/4 v8, -0x1

    if-ne v3, v8, :cond_81

    move/from16 v4, v29

    move/from16 v5, v28

    if-ne v4, v8, :cond_82

    if-ne v5, v8, :cond_82

    if-eqz v26, :cond_84

    goto :goto_53

    :cond_81
    move/from16 v5, v28

    move/from16 v4, v29

    :cond_82
    :goto_53
    new-instance v6, Lyads/x20;

    if-eqz v26, :cond_83

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    :cond_83
    invoke-direct {v6, v3, v4, v5, v7}, Lyads/x20;-><init>(III[B)V

    iput-object v6, v1, Lyads/uz2;->w:Lyads/x20;

    :cond_84
    if-eqz v27, :cond_85

    move-object/from16 v3, v27

    iget-wide v4, v3, Lyads/nl;->c:J

    invoke-static {v4, v5}, Lyads/bq3;->b(J)I

    move-result v4

    iput v4, v1, Lyads/uz2;->f:I

    iget-wide v3, v3, Lyads/nl;->d:J

    invoke-static {v3, v4}, Lyads/bq3;->b(J)I

    move-result v3

    iput v3, v1, Lyads/uz2;->g:I

    :cond_85
    new-instance v3, Lyads/vz2;

    invoke-direct {v3, v1}, Lyads/vz2;-><init>(Lyads/uz2;)V

    move-object/from16 v1, v37

    iput-object v3, v1, Lyads/pl;->b:Lyads/vz2;

    :goto_54
    add-int v7, v25, v34

    invoke-virtual {v0, v7}, Lyads/os4;->e(I)V

    add-int/lit8 v6, v46, 0x1

    move-object/from16 v2, p4

    move-object v4, v1

    move/from16 v3, v47

    move-object/from16 v1, p3

    goto/16 :goto_0

    :cond_86
    move-object v1, v4

    return-object v1
.end method

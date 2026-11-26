.class public final Lyads/tk6;
.super Lyads/xk5;
.source "SourceFile"


# instance fields
.field public final m:Lyads/os4;

.field public final n:Lyads/lk6;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyads/xk5;-><init>()V

    new-instance v0, Lyads/os4;

    invoke-direct {v0}, Lyads/os4;-><init>()V

    iput-object v0, p0, Lyads/tk6;->m:Lyads/os4;

    new-instance v0, Lyads/lk6;

    invoke-direct {v0}, Lyads/lk6;-><init>()V

    iput-object v0, p0, Lyads/tk6;->n:Lyads/lk6;

    return-void
.end method


# virtual methods
.method public final a([BIZ)Lyads/mt5;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/tk6;->m:Lyads/os4;

    move-object/from16 v2, p1

    iput-object v2, v1, Lyads/os4;->a:[B

    move/from16 v2, p2

    iput v2, v1, Lyads/os4;->c:I

    const/4 v2, 0x0

    iput v2, v1, Lyads/os4;->b:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v3, v0, Lyads/tk6;->m:Lyads/os4;

    invoke-static {v3}, Lyads/uk6;->a(Lyads/os4;)V
    :try_end_0
    .catch Lyads/xs4; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, v0, Lyads/tk6;->m:Lyads/os4;

    invoke-virtual {v3}, Lyads/os4;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_1
    iget-object v4, v0, Lyads/tk6;->m:Lyads/os4;

    const/4 v5, -0x1

    move v7, v2

    move v6, v5

    :goto_2
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v6, v5, :cond_5

    iget v7, v4, Lyads/os4;->b:I

    invoke-virtual {v4}, Lyads/os4;->b()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    const-string v11, "STYLE"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v6, v9

    goto :goto_2

    :cond_3
    const-string v9, "NOTE"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v10

    goto :goto_2

    :cond_4
    const/4 v6, 0x3

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v7}, Lyads/os4;->e(I)V

    if-eqz v6, :cond_3c

    if-ne v6, v10, :cond_6

    iget-object v4, v0, Lyads/tk6;->m:Lyads/os4;

    :goto_3
    invoke-virtual {v4}, Lyads/os4;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_3

    :cond_6
    if-ne v6, v9, :cond_37

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_36

    iget-object v6, v0, Lyads/tk6;->m:Lyads/os4;

    invoke-virtual {v6}, Lyads/os4;->b()Ljava/lang/String;

    iget-object v6, v0, Lyads/tk6;->n:Lyads/lk6;

    iget-object v7, v0, Lyads/tk6;->m:Lyads/os4;

    iget-object v11, v6, Lyads/lk6;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v11, v7, Lyads/os4;->b:I

    :cond_7
    invoke-virtual {v7}, Lyads/os4;->b()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v6, Lyads/lk6;->a:Lyads/os4;

    iget-object v13, v7, Lyads/os4;->a:[B

    iget v7, v7, Lyads/os4;->b:I

    iput-object v13, v12, Lyads/os4;->a:[B

    iput v7, v12, Lyads/os4;->c:I

    iput v2, v12, Lyads/os4;->b:I

    invoke-virtual {v12, v11}, Lyads/os4;->e(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    iget-object v11, v6, Lyads/lk6;->a:Lyads/os4;

    iget-object v12, v6, Lyads/lk6;->b:Ljava/lang/StringBuilder;

    invoke-static {v11}, Lyads/lk6;->a(Lyads/os4;)V

    iget v13, v11, Lyads/os4;->c:I

    iget v14, v11, Lyads/os4;->b:I

    sub-int/2addr v13, v14

    const-string v14, "{"

    const/4 v15, 0x5

    const/16 p1, 0x0

    const-string v4, ""

    if-ge v13, v15, :cond_8

    goto/16 :goto_8

    :cond_8
    sget-object v13, Lyads/az;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v15, v13}, Lyads/os4;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "::cue"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    goto :goto_8

    :cond_9
    iget v13, v11, Lyads/os4;->b:I

    invoke-static {v11, v12}, Lyads/lk6;->b(Lyads/os4;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-virtual {v11, v13}, Lyads/os4;->e(I)V

    move-object v8, v4

    goto :goto_9

    :cond_b
    const-string v13, "("

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    iget v13, v11, Lyads/os4;->b:I

    iget v15, v11, Lyads/os4;->c:I

    :goto_5
    move/from16 v16, v2

    :goto_6
    if-ge v13, v15, :cond_d

    if-nez v16, :cond_d

    iget-object v8, v11, Lyads/os4;->a:[B

    add-int/lit8 v16, v13, 0x1

    aget-byte v8, v8, v13

    int-to-char v8, v8

    const/16 v13, 0x29

    if-ne v8, v13, :cond_c

    move/from16 v13, v16

    move/from16 v16, v10

    goto :goto_6

    :cond_c
    move/from16 v13, v16

    goto :goto_5

    :cond_d
    add-int/lit8 v13, v13, -0x1

    iget v8, v11, Lyads/os4;->b:I

    sub-int/2addr v13, v8

    sget-object v8, Lyads/az;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v13, v8}, Lyads/os4;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_e
    move-object/from16 v8, p1

    :goto_7
    invoke-static {v11, v12}, Lyads/lk6;->b(Lyads/os4;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    :goto_8
    move-object/from16 v8, p1

    :cond_f
    :goto_9
    if-eqz v8, :cond_34

    iget-object v11, v6, Lyads/lk6;->a:Lyads/os4;

    iget-object v12, v6, Lyads/lk6;->b:Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lyads/lk6;->b(Lyads/os4;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    goto/16 :goto_1c

    :cond_10
    new-instance v11, Lyads/mk6;

    invoke-direct {v11}, Lyads/mk6;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    goto :goto_b

    :cond_11
    const/16 v12, 0x5b

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eq v12, v5, :cond_13

    sget-object v13, Lyads/lk6;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v13, v11, Lyads/mk6;->d:Ljava/lang/String;

    :cond_12
    invoke-virtual {v8, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :cond_13
    sget v12, Lyads/u56;->a:I

    const-string v12, "\\."

    invoke-virtual {v8, v12, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    aget-object v12, v8, v2

    const/16 v13, 0x23

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v5, :cond_14

    invoke-virtual {v12, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lyads/mk6;->b:Ljava/lang/String;

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lyads/mk6;->a:Ljava/lang/String;

    goto :goto_a

    :cond_14
    iput-object v12, v11, Lyads/mk6;->b:Ljava/lang/String;

    :goto_a
    array-length v12, v8

    if-le v12, v10, :cond_15

    array-length v12, v8

    invoke-static {v12, v8}, Lyads/u56;->b(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    new-instance v12, Ljava/util/HashSet;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v12, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v12, v11, Lyads/mk6;->c:Ljava/util/Set;

    :cond_15
    :goto_b
    move-object/from16 v12, p1

    move v8, v2

    :goto_c
    const-string v13, "}"

    if-nez v8, :cond_32

    iget-object v8, v6, Lyads/lk6;->a:Lyads/os4;

    iget v12, v8, Lyads/os4;->b:I

    iget-object v14, v6, Lyads/lk6;->b:Ljava/lang/StringBuilder;

    invoke-static {v8, v14}, Lyads/lk6;->b(Lyads/os4;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    goto :goto_d

    :cond_16
    move v14, v2

    goto :goto_e

    :cond_17
    :goto_d
    move v14, v10

    :goto_e
    if-nez v14, :cond_18

    iget-object v15, v6, Lyads/lk6;->a:Lyads/os4;

    invoke-virtual {v15, v12}, Lyads/os4;->e(I)V

    iget-object v12, v6, Lyads/lk6;->a:Lyads/os4;

    iget-object v15, v6, Lyads/lk6;->b:Ljava/lang/StringBuilder;

    invoke-static {v12}, Lyads/lk6;->a(Lyads/os4;)V

    invoke-static {v12, v15}, Lyads/lk6;->a(Lyads/os4;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    :cond_18
    move-object/from16 v17, v6

    move-object/from16 v18, v8

    move v5, v9

    move v6, v10

    goto/16 :goto_1b

    :cond_19
    invoke-static {v12, v15}, Lyads/lk6;->b(Lyads/os4;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    const-string v9, ":"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    move-object/from16 v17, v6

    move-object/from16 v18, v8

    move v6, v10

    :cond_1a
    :goto_f
    const/4 v5, 0x2

    goto/16 :goto_1b

    :cond_1b
    invoke-static {v12}, Lyads/lk6;->a(Lyads/os4;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    :goto_10
    const-string v10, ";"

    if-nez v9, :cond_1f

    move-object/from16 v17, v6

    iget v6, v12, Lyads/os4;->b:I

    move-object/from16 v18, v8

    invoke-static {v12, v15}, Lyads/lk6;->b(Lyads/os4;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1c

    move-object/from16 v5, p1

    goto :goto_12

    :cond_1c
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1e

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    goto :goto_11

    :cond_1d
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v17

    move-object/from16 v8, v18

    goto :goto_10

    :cond_1e
    :goto_11
    invoke-virtual {v12, v6}, Lyads/os4;->e(I)V

    move-object/from16 v6, v17

    move-object/from16 v8, v18

    const/4 v9, 0x1

    goto :goto_10

    :cond_1f
    move-object/from16 v17, v6

    move-object/from16 v18, v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_12
    if-eqz v5, :cond_20

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    :cond_20
    :goto_13
    const/4 v5, 0x2

    :goto_14
    const/4 v6, 0x1

    goto/16 :goto_1b

    :cond_21
    iget v6, v12, Lyads/os4;->b:I

    invoke-static {v12, v15}, Lyads/lk6;->b(Lyads/os4;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    goto :goto_15

    :cond_22
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-virtual {v12, v6}, Lyads/os4;->e(I)V

    :goto_15
    const-string v6, "color"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lyads/z20;->a(Ljava/lang/String;Z)I

    move-result v2

    iput v2, v11, Lyads/mk6;->f:I

    iput-boolean v6, v11, Lyads/mk6;->g:Z

    goto :goto_f

    :cond_23
    const/4 v6, 0x1

    const-string v8, "background-color"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-static {v5, v6}, Lyads/z20;->a(Ljava/lang/String;Z)I

    move-result v2

    iput v2, v11, Lyads/mk6;->h:I

    iput-boolean v6, v11, Lyads/mk6;->i:Z

    goto/16 :goto_f

    :cond_24
    const-string v8, "ruby-position"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    const-string v2, "over"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iput v6, v11, Lyads/mk6;->p:I

    goto/16 :goto_f

    :cond_25
    const-string v2, "under"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x2

    iput v2, v11, Lyads/mk6;->p:I

    move v5, v2

    goto :goto_14

    :cond_26
    const-string v6, "text-combine-upright"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    const-string v2, "all"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "digits"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_16

    :cond_27
    const/4 v2, 0x0

    goto :goto_17

    :cond_28
    :goto_16
    const/4 v2, 0x1

    :goto_17
    iput-boolean v2, v11, Lyads/mk6;->q:Z

    goto :goto_13

    :cond_29
    const-string v6, "text-decoration"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    const-string v2, "underline"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v6, 0x1

    iput v6, v11, Lyads/mk6;->k:I

    goto/16 :goto_f

    :cond_2a
    const-string v6, "font-family"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-static {v5}, Lyads/oj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lyads/mk6;->e:Ljava/lang/String;

    goto/16 :goto_13

    :cond_2b
    const-string v6, "font-weight"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const-string v2, "bold"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v6, 0x1

    iput v6, v11, Lyads/mk6;->l:I

    goto/16 :goto_f

    :cond_2c
    const/4 v6, 0x1

    const-string v8, "font-style"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    const-string v2, "italic"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iput v6, v11, Lyads/mk6;->m:I

    goto/16 :goto_f

    :cond_2d
    const-string v6, "font-size"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Lyads/lk6;->d:Ljava/util/regex/Pattern;

    invoke-static {v5}, Lyads/oj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_2e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Invalid font-size: \'"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "WebvttCssParser"

    invoke-static {v5, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_2e
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_18
    const/4 v6, -0x1

    goto :goto_19

    :sswitch_0
    const-string v5, "px"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    goto :goto_18

    :cond_2f
    const/4 v6, 0x2

    goto :goto_19

    :sswitch_1
    const-string v5, "em"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    goto :goto_18

    :cond_30
    const/4 v6, 0x1

    goto :goto_19

    :sswitch_2
    const-string v5, "%"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    goto :goto_18

    :cond_31
    const/4 v6, 0x0

    :goto_19
    packed-switch v6, :pswitch_data_0

    invoke-static {}, Lud;->g()V

    return-object p1

    :pswitch_0
    const/4 v6, 0x1

    iput v6, v11, Lyads/mk6;->n:I

    const/4 v5, 0x2

    goto :goto_1a

    :pswitch_1
    const/4 v5, 0x2

    const/4 v6, 0x1

    iput v5, v11, Lyads/mk6;->n:I

    goto :goto_1a

    :pswitch_2
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x3

    iput v8, v11, Lyads/mk6;->n:I

    :goto_1a
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v11, Lyads/mk6;->o:F

    :goto_1b
    move v9, v5

    move v10, v6

    move v8, v14

    move-object/from16 v6, v17

    move-object/from16 v12, v18

    const/4 v2, 0x0

    const/4 v5, -0x1

    goto/16 :goto_c

    :cond_32
    move-object/from16 v17, v6

    move v5, v9

    move v6, v10

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    move v9, v5

    move v10, v6

    move-object/from16 v6, v17

    const/4 v2, 0x0

    const/4 v5, -0x1

    goto/16 :goto_4

    :cond_34
    :goto_1c
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_35
    :goto_1d
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_36
    new-instance v0, Lyads/ot5;

    const-string v1, "A style block was found after the first cue."

    invoke-direct {v0, v1}, Lyads/ot5;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    const/16 p1, 0x0

    const/4 v8, 0x3

    if-ne v6, v8, :cond_35

    iget-object v2, v0, Lyads/tk6;->m:Lyads/os4;

    sget-object v4, Lyads/sk6;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Lyads/os4;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_38

    move-object/from16 v7, p1

    goto :goto_1e

    :cond_38
    sget-object v5, Lyads/sk6;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_39

    move-object/from16 v7, p1

    invoke-static {v7, v6, v2, v1}, Lyads/sk6;->a(Ljava/lang/String;Ljava/util/regex/Matcher;Lyads/os4;Ljava/util/ArrayList;)Lyads/nk6;

    move-result-object v4

    goto :goto_1f

    :cond_39
    move-object/from16 v7, p1

    invoke-virtual {v2}, Lyads/os4;->b()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3a

    goto :goto_1e

    :cond_3a
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5, v2, v1}, Lyads/sk6;->a(Ljava/lang/String;Ljava/util/regex/Matcher;Lyads/os4;Ljava/util/ArrayList;)Lyads/nk6;

    move-result-object v4

    goto :goto_1f

    :cond_3b
    :goto_1e
    move-object v4, v7

    :goto_1f
    if-eqz v4, :cond_35

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_3c
    new-instance v0, Lyads/vk6;

    invoke-direct {v0, v3}, Lyads/vk6;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lyads/ot5;

    invoke-direct {v1, v0}, Lyads/ot5;-><init>(Lyads/xs4;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

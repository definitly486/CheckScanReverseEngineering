.class public final Lzq4$a;
.super Ln;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzq4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# virtual methods
.method public final a(Ldq2;Ldq2$a;)Lbk0;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v1, v1, Ldq2$a;->a:Luj0;

    iget v2, v0, Ldq2;->g:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_0

    const/16 p0, 0x0

    goto/16 :goto_9

    :cond_0
    iget v5, v0, Ldq2;->e:I

    iget v6, v0, Ldq2;->c:I

    add-int/2addr v6, v2

    instance-of v2, v1, Le36;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Le36;

    iget-object v2, v2, Le36;->b:Lpq4;

    iget-object v2, v2, Lpq4;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    const/4 v2, 0x0

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_3

    move v2, v8

    goto :goto_0

    :cond_3
    move v2, v7

    :goto_0
    iget-object v9, v0, Ldq2;->a:Ljava/lang/CharSequence;

    invoke-interface {v9, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x2a

    const/16 v12, 0x20

    const/16 v13, 0x9

    if-eq v10, v11, :cond_9

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_9

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    move v11, v5

    move v14, v7

    :goto_1
    if-ge v11, v10, :cond_7

    invoke-interface {v9, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const/16 p0, 0x0

    const/16 v3, 0x29

    if-eq v15, v3, :cond_5

    const/16 v3, 0x2e

    if-eq v15, v3, :cond_5

    packed-switch v15, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int/lit8 v14, v14, 0x1

    if-le v14, v13, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    if-lt v14, v8, :cond_8

    add-int/lit8 v3, v11, 0x1

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v3, v10, :cond_6

    invoke-interface {v9, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v10, v13, :cond_6

    if-eq v10, v12, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v9, v5, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ld06;

    invoke-direct {v11}, Ld06;-><init>()V

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Ld06;->g:I

    iput-char v15, v11, Ld06;->h:C

    new-instance v10, Lzq4$c;

    invoke-direct {v10, v11, v3}, Lzq4$c;-><init>(Lyq4;I)V

    goto :goto_3

    :cond_7
    const/16 p0, 0x0

    :cond_8
    :goto_2
    move-object/from16 v10, p0

    goto :goto_3

    :cond_9
    const/16 p0, 0x0

    add-int/lit8 v3, v5, 0x1

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v3, v11, :cond_a

    invoke-interface {v9, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-eq v11, v13, :cond_a

    if-eq v11, v12, :cond_a

    goto :goto_2

    :cond_a
    new-instance v11, Lfv0;

    invoke-direct {v11}, Lfv0;-><init>()V

    iput-char v10, v11, Lfv0;->g:C

    new-instance v10, Lzq4$c;

    invoke-direct {v10, v11, v3}, Lzq4$c;-><init>(Lyq4;I)V

    :goto_3
    if-nez v10, :cond_b

    :goto_4
    move-object/from16 v2, p0

    goto :goto_8

    :cond_b
    iget-object v3, v10, Lzq4$c;->a:Lyq4;

    iget v10, v10, Lzq4$c;->b:I

    sub-int v5, v10, v5

    add-int/2addr v5, v6

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move v11, v5

    :goto_5
    if-ge v10, v6, :cond_e

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v14, v13, :cond_c

    rem-int/lit8 v14, v11, 0x4

    rsub-int/lit8 v14, v14, 0x4

    add-int/2addr v14, v11

    move v11, v14

    goto :goto_6

    :cond_c
    if-ne v14, v12, :cond_d

    add-int/lit8 v11, v11, 0x1

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_d
    move v6, v8

    goto :goto_7

    :cond_e
    move v6, v7

    :goto_7
    if-eqz v2, :cond_10

    instance-of v2, v3, Ld06;

    if-eqz v2, :cond_f

    move-object v2, v3

    check-cast v2, Ld06;

    iget v2, v2, Ld06;->g:I

    if-eq v2, v8, :cond_f

    goto :goto_4

    :cond_f
    if-nez v6, :cond_10

    goto :goto_4

    :cond_10
    if-eqz v6, :cond_11

    sub-int v2, v11, v5

    if-le v2, v4, :cond_12

    :cond_11
    add-int/lit8 v11, v5, 0x1

    :cond_12
    new-instance v2, Lzq4$b;

    invoke-direct {v2, v3, v11}, Lzq4$b;-><init>(Lyq4;I)V

    :goto_8
    if-nez v2, :cond_13

    :goto_9
    return-object p0

    :cond_13
    iget-object v3, v2, Lzq4$b;->a:Lyq4;

    iget v2, v2, Lzq4$b;->b:I

    new-instance v4, Lir4;

    iget v0, v0, Ldq2;->c:I

    sub-int v0, v2, v0

    invoke-direct {v4, v0}, Lir4;-><init>(I)V

    instance-of v0, v1, Lzq4;

    if-eqz v0, :cond_17

    check-cast v1, Lzq4;

    iget-object v0, v1, Lzq4;->a:Lyq4;

    instance-of v1, v0, Lfv0;

    if-eqz v1, :cond_14

    instance-of v1, v3, Lfv0;

    if-eqz v1, :cond_14

    check-cast v0, Lfv0;

    iget-char v0, v0, Lfv0;->g:C

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    move-object v1, v3

    check-cast v1, Lfv0;

    iget-char v1, v1, Lfv0;->g:C

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a

    :cond_14
    instance-of v1, v0, Ld06;

    if-eqz v1, :cond_15

    instance-of v1, v3, Ld06;

    if-eqz v1, :cond_15

    check-cast v0, Ld06;

    iget-char v0, v0, Ld06;->h:C

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    move-object v1, v3

    check-cast v1, Ld06;

    iget-char v1, v1, Ld06;->h:C

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a

    :cond_15
    move v0, v7

    :goto_a
    if-nez v0, :cond_16

    goto :goto_b

    :cond_16
    new-array v0, v8, [Luj0;

    aput-object v4, v0, v7

    new-instance v1, Lbk0;

    invoke-direct {v1, v0}, Lbk0;-><init>([Luj0;)V

    iput v2, v1, Lbk0;->c:I

    return-object v1

    :cond_17
    :goto_b
    new-instance v0, Lzq4;

    invoke-direct {v0, v3}, Lzq4;-><init>(Lyq4;)V

    iput-boolean v8, v3, Lyq4;->f:Z

    const/4 v1, 0x2

    new-array v1, v1, [Luj0;

    aput-object v0, v1, v7

    aput-object v4, v1, v8

    new-instance v0, Lbk0;

    invoke-direct {v0, v1}, Lbk0;-><init>([Luj0;)V

    iput v2, v0, Lbk0;->c:I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

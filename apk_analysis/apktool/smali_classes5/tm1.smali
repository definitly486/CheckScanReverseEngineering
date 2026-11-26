.class public final Ltm1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lqc0;)Lqi0;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lqc0;->CODE_128:Lqc0;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lsm1;->b:[[I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_16

    const/16 v5, 0x50

    if-gt v2, v5, :cond_16

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0x20

    if-ge v6, v2, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_0

    const/16 v7, 0x7e

    if-le v8, v7, :cond_1

    :cond_0
    packed-switch v8, :pswitch_data_0

    const-string v0, "Bad character in input: "

    invoke-static {v8, v0}, Ld;->c(ILjava/lang/String;)V

    return-object v3

    :cond_1
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v10, v4

    move v6, v5

    move v8, v6

    move v9, v8

    :goto_1
    const/4 v11, 0x2

    if-ge v6, v2, :cond_e

    const/16 v12, 0x63

    if-ne v9, v12, :cond_3

    goto :goto_2

    :cond_3
    const/4 v11, 0x4

    :goto_2
    add-int/2addr v11, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    move v14, v6

    :goto_3
    const/16 v15, 0x64

    if-ge v14, v11, :cond_7

    if-ge v14, v13, :cond_7

    move/from16 p1, v7

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v12, 0x30

    if-lt v7, v12, :cond_4

    const/16 v12, 0x39

    if-le v7, v12, :cond_6

    :cond_4
    const/16 v12, 0xf1

    if-eq v7, v12, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v11, v11, 0x1

    :cond_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, p1

    const/16 v12, 0x63

    goto :goto_3

    :cond_7
    move/from16 p1, v7

    if-gt v11, v13, :cond_8

    const/16 v12, 0x63

    goto :goto_5

    :cond_8
    :goto_4
    move v12, v15

    :goto_5
    if-ne v12, v9, :cond_a

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_1

    if-ne v9, v15, :cond_9

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v15, v7, -0x20

    goto :goto_6

    :cond_9
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :pswitch_1
    const/16 v15, 0x60

    goto :goto_6

    :pswitch_2
    const/16 v15, 0x61

    goto :goto_6

    :pswitch_3
    const/16 v15, 0x66

    :goto_6
    :pswitch_4
    add-int/2addr v6, v4

    goto :goto_9

    :cond_a
    if-nez v9, :cond_c

    if-ne v12, v15, :cond_b

    const/16 v7, 0x68

    :goto_7
    move v15, v7

    goto :goto_8

    :cond_b
    const/16 v7, 0x69

    goto :goto_7

    :cond_c
    move v15, v12

    :goto_8
    move v9, v12

    :goto_9
    aget-object v7, v1, v15

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-int/2addr v15, v10

    add-int/2addr v8, v15

    if-eqz v6, :cond_d

    add-int/lit8 v10, v10, 0x1

    :cond_d
    move/from16 v7, p1

    goto :goto_1

    :cond_e
    rem-int/lit8 v8, v8, 0x67

    aget-object v0, v1, v8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x6a

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v5

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v6, v2

    move v7, v5

    :goto_a
    if-ge v7, v6, :cond_f

    aget v8, v2, v7

    add-int/2addr v1, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_10
    new-array v0, v1, [Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v5

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    array-length v7, v6

    move v10, v3

    move v12, v4

    move v8, v5

    move v9, v8

    :goto_c
    if-ge v8, v7, :cond_12

    aget v13, v6, v8

    move v14, v5

    :goto_d
    if-ge v14, v13, :cond_11

    add-int/lit8 v15, v10, 0x1

    aput-boolean v12, v0, v10

    add-int/lit8 v14, v14, 0x1

    move v10, v15

    goto :goto_d

    :cond_11
    add-int/2addr v9, v13

    xor-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_12
    add-int/2addr v3, v9

    goto :goto_b

    :cond_13
    add-int/lit8 v2, v1, 0xa

    const/16 v3, 0x12c

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v6, 0x32

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int v2, v3, v2

    mul-int v6, v1, v2

    sub-int v6, v3, v6

    div-int/2addr v6, v11

    new-instance v7, Lqi0;

    invoke-direct {v7, v3, v4}, Lqi0;-><init>(II)V

    move v3, v5

    :goto_e
    if-ge v3, v1, :cond_15

    aget-boolean v8, v0, v3

    if-eqz v8, :cond_14

    invoke-virtual {v7, v6, v5, v2, v4}, Lqi0;->e(IIII)V

    :cond_14
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v6, v2

    goto :goto_e

    :cond_15
    return-object v7

    :cond_16
    const-string v0, "Contents length should be between 1 and 80 characters, but got "

    invoke-static {v2, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v3

    :cond_17
    const-string v0, "Found empty contents"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v3

    :cond_18
    const-string v0, "Can only encode CODE_128, but got "

    invoke-static {v1, v0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public static final synthetic b(Landroid/view/View;)Landroid/graphics/Point;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Point;

    aget v0, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v0, v3

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v1, p0

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public static final c(Ljava/lang/String;)Lk49;
    .locals 8

    const/16 v0, 0xa

    invoke-static {v0}, Lga1;->b(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    invoke-static {v3, v4}, Laa4;->f(II)I

    move-result v4

    if-gez v4, :cond_1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_2

    goto :goto_1

    :cond_1
    move v4, v2

    :cond_2
    const v3, 0x71c71c7

    move v5, v3

    :goto_0
    if-ge v4, v1, :cond_7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Character;->digit(II)I

    move-result v6

    if-gez v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v2, v5}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v7

    if-lez v7, :cond_4

    if-ne v5, v3, :cond_5

    const/4 v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v7

    if-lez v7, :cond_4

    goto :goto_1

    :cond_4
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v6, v2

    invoke-static {v6, v2}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v2

    if-gez v2, :cond_6

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_0

    :cond_7
    new-instance p0, Lk49;

    invoke-direct {p0, v2}, Lk49;-><init>(I)V

    return-object p0
.end method

.method public static final d(Ljava/lang/String;)Lp49;
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xa

    invoke-static {v0}, Lga1;->b(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    invoke-static {v3, v4}, Laa4;->f(II)I

    move-result v4

    if-gez v4, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-wide v3, 0x71c71c71c71c71cL

    const-wide/16 v5, 0x0

    move-wide v7, v3

    :goto_0
    if-ge v2, v1, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Character;->digit(II)I

    move-result v9

    if-gez v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v10

    const-wide/16 v11, 0xa

    if-lez v10, :cond_3

    cmp-long v7, v7, v3

    if-nez v7, :cond_4

    const-wide/16 v7, -0x1

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v10

    if-lez v10, :cond_3

    goto :goto_1

    :cond_3
    mul-long/2addr v5, v11

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    add-long/2addr v9, v5

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v5

    if-gez v5, :cond_5

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move-wide v5, v9

    goto :goto_0

    :cond_6
    new-instance p0, Lp49;

    invoke-direct {p0, v5, v6}, Lp49;-><init>(J)V

    return-object p0
.end method

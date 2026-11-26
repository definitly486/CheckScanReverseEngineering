.class public final Loi0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljz3;

.field public b:Lqi0;


# direct methods
.method public constructor <init>(Ljz3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi0;->a:Ljz3;

    return-void
.end method


# virtual methods
.method public final a()Lqi0;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Loi0;->b:Lqi0;

    if-nez v1, :cond_2c

    iget-object v1, v0, Loi0;->a:Ljz3;

    iget-object v2, v1, Ljz3;->d:Lqi0;

    if-eqz v2, :cond_0

    goto/16 :goto_16

    :cond_0
    iget-object v2, v1, Ljz3;->a:Lx86;

    iget v3, v2, Lx86;->a:I

    iget v4, v2, Lx86;->b:I

    const/16 v5, 0x28

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-lt v3, v5, :cond_1b

    if-lt v4, v5, :cond_1b

    invoke-virtual {v2}, Lx86;->a()[B

    move-result-object v2

    shr-int/lit8 v5, v3, 0x3

    and-int/lit8 v9, v3, 0x7

    if-eqz v9, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    shr-int/lit8 v9, v4, 0x3

    and-int/lit8 v10, v4, 0x7

    if-eqz v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    :cond_2
    const/4 v10, 0x2

    new-array v11, v10, [I

    aput v5, v11, v8

    aput v9, v11, v6

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    move v12, v6

    :goto_0
    const/16 v13, 0x8

    if-ge v12, v9, :cond_e

    shl-int/lit8 v14, v12, 0x3

    add-int/lit8 v15, v4, -0x8

    if-le v14, v15, :cond_3

    move v14, v15

    :cond_3
    move v15, v6

    :goto_1
    if-ge v15, v5, :cond_d

    move/from16 v16, v6

    shl-int/lit8 v6, v15, 0x3

    move/from16 v17, v8

    add-int/lit8 v8, v3, -0x8

    if-le v6, v8, :cond_4

    move v6, v8

    :cond_4
    mul-int v8, v14, v3

    add-int/2addr v8, v6

    move/from16 v20, v10

    move/from16 v6, v16

    move/from16 v18, v6

    move/from16 v19, v18

    const/16 v10, 0xff

    :goto_2
    if-ge v6, v13, :cond_b

    move-object/from16 v21, v2

    move/from16 v2, v16

    move/from16 v7, v19

    :goto_3
    if-ge v2, v13, :cond_7

    add-int v19, v8, v2

    aget-byte v13, v21, v19

    move/from16 v19, v2

    const/16 v2, 0xff

    and-int/2addr v13, v2

    add-int v18, v18, v13

    if-ge v13, v10, :cond_5

    move v10, v13

    :cond_5
    if-le v13, v7, :cond_6

    move v7, v13

    :cond_6
    add-int/lit8 v2, v19, 0x1

    const/16 v13, 0x8

    goto :goto_3

    :cond_7
    sub-int v2, v7, v10

    const/16 v13, 0x18

    if-le v2, v13, :cond_a

    add-int/lit8 v6, v6, 0x1

    :goto_4
    add-int/2addr v8, v3

    const/16 v2, 0x8

    if-ge v6, v2, :cond_9

    move/from16 v13, v16

    :goto_5
    if-ge v13, v2, :cond_8

    add-int v2, v8, v13

    aget-byte v2, v21, v2

    move/from16 v19, v6

    const/16 v6, 0xff

    and-int/2addr v2, v6

    add-int v18, v18, v2

    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v19

    const/16 v2, 0x8

    goto :goto_5

    :cond_8
    move/from16 v19, v6

    add-int/lit8 v6, v19, 0x1

    goto :goto_4

    :cond_9
    move/from16 v19, v6

    :cond_a
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v8, v3

    move/from16 v19, v7

    move-object/from16 v2, v21

    const/16 v13, 0x8

    goto :goto_2

    :cond_b
    move-object/from16 v21, v2

    shr-int/lit8 v2, v18, 0x6

    sub-int v6, v19, v10

    const/16 v13, 0x18

    if-gt v6, v13, :cond_c

    div-int/lit8 v2, v10, 0x2

    if-lez v12, :cond_c

    if-lez v15, :cond_c

    add-int/lit8 v6, v12, -0x1

    aget-object v6, v11, v6

    aget v7, v6, v15

    aget-object v8, v11, v12

    add-int/lit8 v13, v15, -0x1

    aget v8, v8, v13

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    aget v6, v6, v13

    add-int/2addr v8, v6

    div-int/lit8 v6, v8, 0x4

    if-ge v10, v6, :cond_c

    move v2, v6

    :cond_c
    aget-object v6, v11, v12

    aput v2, v6, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v16

    move/from16 v8, v17

    move/from16 v10, v20

    move-object/from16 v2, v21

    const/16 v13, 0x8

    goto/16 :goto_1

    :cond_d
    move-object/from16 v21, v2

    move/from16 v16, v6

    move/from16 v17, v8

    move/from16 v20, v10

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_e
    move-object/from16 v21, v2

    move/from16 v16, v6

    move/from16 v20, v10

    new-instance v2, Lqi0;

    invoke-direct {v2, v3, v4}, Lqi0;-><init>(II)V

    :goto_6
    if-ge v6, v9, :cond_1a

    shl-int/lit8 v7, v6, 0x3

    const/16 v22, 0x8

    add-int/lit8 v8, v4, -0x8

    if-le v7, v8, :cond_f

    move v7, v8

    :cond_f
    move/from16 v8, v16

    :goto_7
    if-ge v8, v5, :cond_19

    shl-int/lit8 v10, v8, 0x3

    add-int/lit8 v12, v3, -0x8

    if-le v10, v12, :cond_10

    move v10, v12

    :cond_10
    add-int/lit8 v12, v5, -0x3

    move/from16 v13, v20

    if-ge v8, v13, :cond_11

    move v12, v13

    goto :goto_8

    :cond_11
    if-le v8, v12, :cond_12

    goto :goto_8

    :cond_12
    move v12, v8

    :goto_8
    add-int/lit8 v14, v9, -0x3

    if-ge v6, v13, :cond_13

    move v14, v13

    goto :goto_9

    :cond_13
    if-le v6, v14, :cond_14

    goto :goto_9

    :cond_14
    move v14, v6

    :goto_9
    const/4 v15, -0x2

    move/from16 v17, v16

    :goto_a
    if-gt v15, v13, :cond_15

    add-int v13, v14, v15

    aget-object v13, v11, v13

    add-int/lit8 v18, v12, -0x2

    aget v18, v13, v18

    add-int/lit8 v19, v12, -0x1

    aget v19, v13, v19

    add-int v18, v18, v19

    aget v19, v13, v12

    add-int v18, v18, v19

    add-int/lit8 v19, v12, 0x1

    aget v19, v13, v19

    add-int v18, v18, v19

    const/16 v20, 0x2

    add-int/lit8 v19, v12, 0x2

    aget v13, v13, v19

    add-int v18, v18, v13

    add-int v17, v18, v17

    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v20

    goto :goto_a

    :cond_15
    move/from16 v20, v13

    div-int/lit8 v12, v17, 0x19

    mul-int v13, v7, v3

    add-int/2addr v13, v10

    move/from16 v14, v16

    :goto_b
    const/16 v15, 0x8

    if-ge v14, v15, :cond_18

    move/from16 v18, v5

    move/from16 v5, v16

    :goto_c
    if-ge v5, v15, :cond_17

    add-int v17, v13, v5

    aget-byte v15, v21, v17

    move/from16 v17, v5

    const/16 v5, 0xff

    and-int/2addr v15, v5

    if-gt v15, v12, :cond_16

    add-int v5, v10, v17

    add-int v15, v7, v14

    invoke-virtual {v2, v5, v15}, Lqi0;->d(II)V

    :cond_16
    add-int/lit8 v5, v17, 0x1

    const/16 v15, 0x8

    goto :goto_c

    :cond_17
    add-int/lit8 v14, v14, 0x1

    add-int/2addr v13, v3

    move/from16 v5, v18

    goto :goto_b

    :cond_18
    move/from16 v18, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_19
    move/from16 v18, v5

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_1a
    iput-object v2, v1, Ljz3;->d:Lqi0;

    goto/16 :goto_16

    :cond_1b
    move/from16 v16, v6

    move/from16 v17, v8

    new-instance v5, Lqi0;

    invoke-direct {v5, v3, v4}, Lqi0;-><init>(II)V

    iget-object v6, v1, Ljz3;->b:[B

    array-length v6, v6

    if-ge v6, v3, :cond_1c

    new-array v6, v3, [B

    iput-object v6, v1, Ljz3;->b:[B

    :cond_1c
    move/from16 v6, v16

    :goto_d
    iget-object v7, v1, Ljz3;->c:[I

    const/16 v8, 0x20

    if-ge v6, v8, :cond_1d

    aput v16, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_1d
    move/from16 v6, v17

    :goto_e
    const/4 v8, 0x5

    if-ge v6, v8, :cond_1f

    mul-int v9, v4, v6

    div-int/2addr v9, v8

    iget-object v10, v1, Ljz3;->b:[B

    invoke-virtual {v2, v9, v10}, Lx86;->b(I[B)[B

    move-result-object v9

    mul-int/lit8 v10, v3, 0x4

    div-int/2addr v10, v8

    div-int/lit8 v8, v3, 0x5

    :goto_f
    if-ge v8, v10, :cond_1e

    aget-byte v11, v9, v8

    const/16 v12, 0xff

    and-int/2addr v11, v12

    shr-int/lit8 v11, v11, 0x3

    aget v12, v7, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v7, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_1f
    array-length v6, v7

    move/from16 v8, v16

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_10
    if-ge v8, v6, :cond_22

    aget v12, v7, v8

    if-le v12, v9, :cond_20

    move v11, v8

    move v9, v12

    :cond_20
    if-le v12, v10, :cond_21

    move v10, v12

    :cond_21
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_22
    move/from16 v8, v16

    move v9, v8

    move v12, v9

    :goto_11
    if-ge v8, v6, :cond_24

    sub-int v13, v8, v11

    aget v14, v7, v8

    mul-int/2addr v14, v13

    mul-int/2addr v14, v13

    if-le v14, v12, :cond_23

    move v9, v8

    move v12, v14

    :cond_23
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_24
    if-le v11, v9, :cond_25

    goto :goto_12

    :cond_25
    move/from16 v23, v11

    move v11, v9

    move/from16 v9, v23

    :goto_12
    sub-int v8, v11, v9

    div-int/lit8 v6, v6, 0x10

    if-le v8, v6, :cond_2b

    add-int/lit8 v6, v11, -0x1

    const/4 v8, -0x1

    move v12, v8

    move v8, v6

    :goto_13
    if-le v6, v9, :cond_27

    sub-int v13, v6, v9

    mul-int/2addr v13, v13

    sub-int v14, v11, v6

    mul-int/2addr v14, v13

    aget v13, v7, v6

    sub-int v13, v10, v13

    mul-int/2addr v13, v14

    if-le v13, v12, :cond_26

    move v8, v6

    move v12, v13

    :cond_26
    add-int/lit8 v6, v6, -0x1

    goto :goto_13

    :cond_27
    shl-int/lit8 v6, v8, 0x3

    invoke-virtual {v2}, Lx86;->a()[B

    move-result-object v2

    move/from16 v7, v16

    :goto_14
    if-ge v7, v4, :cond_2a

    mul-int v8, v7, v3

    move/from16 v9, v16

    :goto_15
    if-ge v9, v3, :cond_29

    add-int v10, v8, v9

    aget-byte v10, v2, v10

    const/16 v12, 0xff

    and-int/2addr v10, v12

    if-ge v10, v6, :cond_28

    invoke-virtual {v5, v9, v7}, Lqi0;->d(II)V

    :cond_28
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_29
    const/16 v12, 0xff

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_2a
    iput-object v5, v1, Ljz3;->d:Lqi0;

    move-object v2, v5

    :goto_16
    iput-object v2, v0, Loi0;->b:Lqi0;

    return-object v2

    :cond_2b
    sget-object v0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw v0

    :cond_2c
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Loi0;->a()Lqi0;

    move-result-object p0

    invoke-virtual {p0}, Lqi0;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

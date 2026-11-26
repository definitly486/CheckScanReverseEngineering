.class public final Lkl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lzm5;

    sget-object v1, Lgp3;->h:Lgp3;

    invoke-direct {v0, v1}, Lzm5;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lkl2;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lkl2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lqi0;Ljava/util/Map;)Lvd2;
    .locals 10

    iget v0, p1, Lqi0;->c:I

    new-instance v1, Lri0;

    invoke-direct {v1, p1}, Lri0;-><init>(Lqi0;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, p2}, Lkl2;->b(Lri0;Ljava/util/Map;)Lvd2;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v2

    :goto_0
    :try_start_1
    iget-object v5, v1, Lri0;->c:Lsi3;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    goto :goto_3

    :cond_0
    iget-byte v5, v5, Lsi3;->b:B

    if-ltz v5, :cond_7

    const/4 v7, 0x7

    if-gt v5, v7, :cond_7

    sget-object v7, Lu82;->a:[Lu82;

    aget-object v5, v7, v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v7, v6

    :goto_1
    if-ge v7, v0, :cond_3

    move v8, v6

    :goto_2
    if-ge v8, v0, :cond_2

    invoke-virtual {v5, v7, v8}, Lu82;->a(II)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p1, v8, v7}, Lqi0;->b(II)V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    iput-object v2, v1, Lri0;->b:Luc9;

    iput-object v2, v1, Lri0;->c:Lsi3;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lri0;->d:Z

    invoke-virtual {v1}, Lri0;->c()Luc9;

    invoke-virtual {v1}, Lri0;->b()Lsi3;

    :goto_4
    iget v2, p1, Lqi0;->b:I

    if-ge v6, v2, :cond_6

    add-int/lit8 v2, v6, 0x1

    move v5, v2

    :goto_5
    if-ge v5, v0, :cond_5

    invoke-virtual {p1, v6, v5}, Lqi0;->c(II)Z

    move-result v7

    invoke-virtual {p1, v5, v6}, Lqi0;->c(II)Z

    move-result v8

    if-eq v7, v8, :cond_4

    invoke-virtual {p1, v5, v6}, Lqi0;->b(II)V

    invoke-virtual {p1, v6, v5}, Lqi0;->b(II)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    move v6, v2

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v1, p2}, Lkl2;->b(Lri0;Ljava/util/Map;)Lvd2;

    move-result-object p0

    new-instance p1, Lm00;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lm00;-><init>(I)V

    iput-object p1, p0, Lvd2;->d:Lm00;

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    goto :goto_6

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_6
    if-nez v3, :cond_9

    if-eqz v4, :cond_8

    throw v4

    :cond_8
    throw p0

    :cond_9
    throw v3
.end method

.method public b(Lri0;Ljava/util/Map;)Lvd2;
    .locals 24

    invoke-virtual/range {p1 .. p1}, Lri0;->c()Luc9;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lri0;->b()Lsi3;

    move-result-object v1

    iget-object v1, v1, Lsi3;->a:Lr03;

    invoke-virtual/range {p1 .. p1}, Lri0;->b()Lsi3;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lri0;->c()Luc9;

    move-result-object v3

    iget-byte v2, v2, Lsi3;->b:B

    if-ltz v2, :cond_3f

    const/4 v5, 0x7

    if-gt v2, v5, :cond_3f

    sget-object v6, Lu82;->a:[Lu82;

    aget-object v2, v6, v2

    move-object/from16 v6, p1

    iget-object v6, v6, Lri0;->a:Lqi0;

    iget v7, v6, Lqi0;->c:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_2

    move v10, v8

    :goto_1
    if-ge v10, v7, :cond_1

    invoke-virtual {v2, v9, v10}, Lu82;->a(II)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v6, v10, v9}, Lqi0;->b(II)V

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget v2, v3, Luc9;->a:I

    const/4 v9, 0x4

    mul-int/2addr v2, v9

    add-int/lit8 v10, v2, 0x11

    iget v11, v3, Luc9;->d:I

    new-instance v12, Lqi0;

    invoke-direct {v12, v10, v10}, Lqi0;-><init>(II)V

    const/16 v10, 0x9

    invoke-virtual {v12, v8, v8, v10, v10}, Lqi0;->e(IIII)V

    add-int/lit8 v13, v2, 0x9

    const/16 v14, 0x8

    invoke-virtual {v12, v13, v8, v14, v10}, Lqi0;->e(IIII)V

    invoke-virtual {v12, v8, v13, v10, v14}, Lqi0;->e(IIII)V

    iget-object v13, v3, Luc9;->b:[I

    array-length v15, v13

    move v4, v8

    const/16 v16, 0x0

    :goto_2
    const/4 v5, 0x5

    const/4 v9, 0x2

    if-ge v4, v15, :cond_7

    aget v17, v13, v4

    add-int/lit8 v14, v17, -0x2

    move/from16 v17, v9

    move v9, v8

    :goto_3
    if-ge v9, v15, :cond_6

    if-nez v4, :cond_3

    if-eqz v9, :cond_5

    add-int/lit8 v8, v15, -0x1

    if-eq v9, v8, :cond_5

    :cond_3
    add-int/lit8 v8, v15, -0x1

    if-ne v4, v8, :cond_4

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    aget v8, v13, v9

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v12, v8, v14, v5, v5}, Lqi0;->e(IIII)V

    :cond_5
    :goto_4
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/16 v14, 0x8

    goto :goto_2

    :cond_7
    move/from16 v17, v9

    const/4 v4, 0x6

    const/4 v8, 0x1

    invoke-virtual {v12, v4, v10, v8, v2}, Lqi0;->e(IIII)V

    invoke-virtual {v12, v10, v4, v2, v8}, Lqi0;->e(IIII)V

    iget v3, v3, Luc9;->a:I

    const/4 v9, 0x3

    if-le v3, v4, :cond_8

    add-int/2addr v2, v4

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3, v9, v4}, Lqi0;->e(IIII)V

    invoke-virtual {v12, v3, v2, v4, v9}, Lqi0;->e(IIII)V

    :cond_8
    new-array v2, v11, [B

    add-int/lit8 v3, v7, -0x1

    move v10, v3

    move/from16 v20, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_5
    if-lez v10, :cond_f

    if-ne v10, v4, :cond_9

    add-int/lit8 v10, v10, -0x1

    :cond_9
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v7, :cond_e

    if-eqz v20, :cond_a

    sub-int v21, v3, v4

    move/from16 v5, v21

    goto :goto_7

    :cond_a
    move v5, v4

    :goto_7
    move/from16 v22, v8

    move/from16 v8, v17

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v8, :cond_d

    sub-int v8, v10, v9

    invoke-virtual {v12, v8, v5}, Lqi0;->c(II)Z

    move-result v23

    if-nez v23, :cond_c

    add-int/lit8 v14, v14, 0x1

    shl-int/lit8 v15, v15, 0x1

    invoke-virtual {v6, v8, v5}, Lqi0;->c(II)Z

    move-result v8

    if-eqz v8, :cond_b

    or-int/lit8 v8, v15, 0x1

    move v15, v8

    :cond_b
    const/16 v8, 0x8

    if-ne v14, v8, :cond_c

    add-int/lit8 v8, v13, 0x1

    int-to-byte v14, v15

    aput-byte v14, v2, v13

    move v13, v8

    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_c
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x2

    goto :goto_8

    :cond_d
    add-int/lit8 v4, v4, 0x1

    move/from16 v8, v22

    const/4 v5, 0x5

    const/4 v9, 0x3

    const/16 v17, 0x2

    goto :goto_6

    :cond_e
    move/from16 v22, v8

    xor-int/lit8 v20, v20, 0x1

    add-int/lit8 v10, v10, -0x2

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v9, 0x3

    const/16 v17, 0x2

    goto :goto_5

    :cond_f
    move/from16 v22, v8

    if-ne v13, v11, :cond_3e

    iget v3, v0, Luc9;->d:I

    if-ne v11, v3, :cond_3d

    iget-object v3, v0, Luc9;->c:[Luc9$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, v3, Luc9$b;->b:[Luc9$a;

    iget v3, v3, Luc9$b;->a:I

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v5, :cond_10

    aget-object v8, v4, v7

    iget v8, v8, Luc9$a;->a:I

    add-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_10
    new-array v5, v6, [Ln82;

    array-length v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v7, :cond_12

    aget-object v10, v4, v9

    const/4 v11, 0x0

    :goto_b
    iget v12, v10, Luc9$a;->a:I

    if-ge v11, v12, :cond_11

    iget v12, v10, Luc9$a;->b:I

    add-int v13, v3, v12

    add-int/lit8 v14, v8, 0x1

    new-instance v15, Ln82;

    new-array v13, v13, [B

    invoke-direct {v15, v12, v13}, Ln82;-><init>(I[B)V

    aput-object v15, v5, v8

    add-int/lit8 v11, v11, 0x1

    move v8, v14

    goto :goto_b

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_12
    const/16 v18, 0x0

    aget-object v4, v5, v18

    iget-object v4, v4, Ln82;->b:[B

    array-length v4, v4

    add-int/lit8 v7, v6, -0x1

    :goto_c
    if-ltz v7, :cond_14

    aget-object v9, v5, v7

    iget-object v9, v9, Ln82;->b:[B

    array-length v9, v9

    if-ne v9, v4, :cond_13

    goto :goto_d

    :cond_13
    add-int/lit8 v7, v7, -0x1

    goto :goto_c

    :cond_14
    :goto_d
    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_e
    if-ge v3, v4, :cond_16

    move v10, v9

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v8, :cond_15

    aget-object v11, v5, v9

    iget-object v11, v11, Ln82;->b:[B

    add-int/lit8 v12, v10, 0x1

    aget-byte v10, v2, v10

    aput-byte v10, v11, v3

    add-int/lit8 v9, v9, 0x1

    move v10, v12

    goto :goto_f

    :cond_15
    add-int/lit8 v3, v3, 0x1

    move v9, v10

    goto :goto_e

    :cond_16
    move v3, v7

    :goto_10
    if-ge v3, v8, :cond_17

    aget-object v10, v5, v3

    iget-object v10, v10, Ln82;->b:[B

    add-int/lit8 v11, v9, 0x1

    aget-byte v9, v2, v9

    aput-byte v9, v10, v4

    add-int/lit8 v3, v3, 0x1

    move v9, v11

    goto :goto_10

    :cond_17
    const/16 v18, 0x0

    aget-object v3, v5, v18

    iget-object v3, v3, Ln82;->b:[B

    array-length v3, v3

    :goto_11
    if-ge v4, v3, :cond_1a

    move v10, v9

    move/from16 v9, v18

    :goto_12
    if-ge v9, v8, :cond_19

    if-ge v9, v7, :cond_18

    move v11, v4

    goto :goto_13

    :cond_18
    add-int/lit8 v11, v4, 0x1

    :goto_13
    aget-object v12, v5, v9

    iget-object v12, v12, Ln82;->b:[B

    add-int/lit8 v13, v10, 0x1

    aget-byte v10, v2, v10

    aput-byte v10, v12, v11

    add-int/lit8 v9, v9, 0x1

    move v10, v13

    goto :goto_12

    :cond_19
    add-int/lit8 v4, v4, 0x1

    move v9, v10

    goto :goto_11

    :cond_1a
    move/from16 v2, v18

    move v3, v2

    :goto_14
    if-ge v3, v6, :cond_1b

    aget-object v4, v5, v3

    iget v4, v4, Ln82;->a:I

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1b
    new-array v8, v2, [B

    move/from16 v2, v18

    move v3, v2

    :goto_15
    if-ge v3, v6, :cond_1f

    aget-object v4, v5, v3

    iget-object v7, v4, Ln82;->b:[B

    iget v4, v4, Ln82;->a:I

    array-length v9, v7

    new-array v10, v9, [I

    move/from16 v11, v18

    :goto_16
    if-ge v11, v9, :cond_1c

    aget-byte v12, v7, v11

    and-int/lit16 v12, v12, 0xff

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    :cond_1c
    array-length v9, v7

    sub-int/2addr v9, v4

    move-object/from16 v11, p0

    :try_start_0
    iget-object v12, v11, Lkl2;->b:Ljava/lang/Object;

    check-cast v12, Lzm5;

    invoke-virtual {v12, v9, v10}, Lzm5;->a(I[I)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v9, v18

    :goto_17
    if-ge v9, v4, :cond_1d

    aget v12, v10, v9

    int-to-byte v12, v12

    aput-byte v12, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :cond_1d
    move/from16 v9, v18

    :goto_18
    if-ge v9, v4, :cond_1e

    add-int/lit8 v10, v2, 0x1

    aget-byte v12, v7, v9

    aput-byte v12, v8, v2

    add-int/lit8 v9, v9, 0x1

    move v2, v10

    goto :goto_18

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :catch_0
    invoke-static {}, Lcom/google/zxing/ChecksumException;->a()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_1f
    new-instance v2, Lsi0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v8, v2, Lsi0;->c:Ljava/io/Serializable;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    move/from16 v4, v22

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, -0x1

    move v9, v4

    move v10, v9

    move-object/from16 v5, v16

    move/from16 v11, v18

    :goto_19
    :try_start_1
    invoke-virtual {v2}, Lsi0;->a()I

    move-result v4

    const/4 v7, 0x4

    if-ge v4, v7, :cond_20

    sget-object v4, Lic5;->TERMINATOR:Lic5;

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x5

    const/4 v15, 0x7

    goto :goto_1a

    :cond_20
    invoke-virtual {v2, v7}, Lsi0;->b(I)I

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v12, 0x1

    if-eq v4, v12, :cond_29

    const/4 v12, 0x2

    if-eq v4, v12, :cond_28

    const/4 v13, 0x3

    if-eq v4, v13, :cond_27

    if-eq v4, v7, :cond_26

    const/4 v14, 0x5

    if-eq v4, v14, :cond_25

    const/4 v15, 0x7

    if-eq v4, v15, :cond_24

    const/16 v7, 0x8

    if-eq v4, v7, :cond_23

    const/16 v7, 0x9

    if-eq v4, v7, :cond_22

    const/16 v7, 0xd

    if-ne v4, v7, :cond_21

    sget-object v4, Lic5;->HANZI:Lic5;

    goto :goto_1a

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_22
    sget-object v4, Lic5;->FNC1_SECOND_POSITION:Lic5;

    goto :goto_1a

    :cond_23
    sget-object v4, Lic5;->KANJI:Lic5;

    goto :goto_1a

    :cond_24
    sget-object v4, Lic5;->ECI:Lic5;

    goto :goto_1a

    :cond_25
    const/4 v15, 0x7

    sget-object v4, Lic5;->FNC1_FIRST_POSITION:Lic5;

    goto :goto_1a

    :cond_26
    const/4 v14, 0x5

    const/4 v15, 0x7

    sget-object v4, Lic5;->BYTE:Lic5;

    goto :goto_1a

    :cond_27
    const/4 v14, 0x5

    const/4 v15, 0x7

    sget-object v4, Lic5;->STRUCTURED_APPEND:Lic5;

    goto :goto_1a

    :cond_28
    const/4 v13, 0x3

    const/4 v14, 0x5

    const/4 v15, 0x7

    sget-object v4, Lic5;->ALPHANUMERIC:Lic5;

    goto :goto_1a

    :cond_29
    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x5

    const/4 v15, 0x7

    sget-object v4, Lic5;->NUMERIC:Lic5;

    goto :goto_1a

    :cond_2a
    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x5

    const/4 v15, 0x7

    sget-object v4, Lic5;->TERMINATOR:Lic5;

    :goto_1a
    sget-object v7, Lic5;->TERMINATOR:Lic5;

    if-eq v4, v7, :cond_31

    sget-object v12, Lic5;->FNC1_FIRST_POSITION:Lic5;

    if-eq v4, v12, :cond_2b

    sget-object v12, Lic5;->FNC1_SECOND_POSITION:Lic5;

    if-ne v4, v12, :cond_2c

    :cond_2b
    move-object v13, v4

    move-object v14, v7

    const/4 v12, 0x1

    const/16 v19, 0x9

    goto/16 :goto_1f

    :cond_2c
    sget-object v12, Lic5;->STRUCTURED_APPEND:Lic5;

    const/16 v13, 0x10

    if-ne v4, v12, :cond_2e

    invoke-virtual {v2}, Lsi0;->a()I

    move-result v9

    if-lt v9, v13, :cond_2d

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Lsi0;->b(I)I

    move-result v10

    invoke-virtual {v2, v9}, Lsi0;->b(I)I

    move-result v12

    move-object v13, v4

    move-object v14, v7

    move v9, v10

    move v10, v12

    :goto_1b
    const/4 v12, 0x1

    :goto_1c
    const/16 v19, 0x9

    goto/16 :goto_20

    :cond_2d
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_2e
    sget-object v12, Lic5;->ECI:Lic5;

    if-ne v4, v12, :cond_34

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Lsi0;->b(I)I

    move-result v5

    and-int/lit16 v12, v5, 0x80

    if-nez v12, :cond_2f

    and-int/lit8 v5, v5, 0x7f

    goto :goto_1d

    :cond_2f
    and-int/lit16 v12, v5, 0xc0

    const/16 v14, 0x80

    if-ne v12, v14, :cond_30

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Lsi0;->b(I)I

    move-result v13

    and-int/lit8 v5, v5, 0x3f

    shl-int/2addr v5, v12

    or-int/2addr v5, v13

    goto :goto_1d

    :cond_30
    const/16 v12, 0x8

    and-int/lit16 v14, v5, 0xe0

    const/16 v12, 0xc0

    if-ne v14, v12, :cond_33

    invoke-virtual {v2, v13}, Lsi0;->b(I)I

    move-result v12

    and-int/lit8 v5, v5, 0x1f

    shl-int/2addr v5, v13

    or-int/2addr v5, v12

    :goto_1d
    invoke-static {v5}, Lfa1;->a(I)Lfa1;

    move-result-object v5

    if-eqz v5, :cond_32

    :cond_31
    move-object v13, v4

    move-object v14, v7

    goto :goto_1b

    :cond_32
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_33
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_34
    sget-object v12, Lic5;->HANZI:Lic5;

    if-ne v4, v12, :cond_36

    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Lsi0;->b(I)I

    move-result v13

    invoke-virtual {v4, v0}, Lic5;->d(Luc9;)I

    move-result v14

    invoke-virtual {v2, v14}, Lsi0;->b(I)I

    move-result v14

    const/4 v12, 0x1

    if-ne v13, v12, :cond_35

    invoke-static {v2, v3, v14}, Lsd2;->c(Lsi0;Ljava/lang/StringBuilder;I)V

    :cond_35
    :goto_1e
    move-object v13, v4

    move-object v14, v7

    goto :goto_1c

    :cond_36
    const/4 v12, 0x1

    invoke-virtual {v4, v0}, Lic5;->d(Luc9;)I

    move-result v13

    invoke-virtual {v2, v13}, Lsi0;->b(I)I

    move-result v13

    sget-object v14, Lic5;->NUMERIC:Lic5;

    if-ne v4, v14, :cond_37

    invoke-static {v2, v3, v13}, Lsd2;->e(Lsi0;Ljava/lang/StringBuilder;I)V

    goto :goto_1e

    :cond_37
    sget-object v14, Lic5;->ALPHANUMERIC:Lic5;

    if-ne v4, v14, :cond_38

    invoke-static {v2, v3, v13, v11}, Lsd2;->a(Lsi0;Ljava/lang/StringBuilder;IZ)V

    goto :goto_1e

    :cond_38
    sget-object v14, Lic5;->BYTE:Lic5;

    if-ne v4, v14, :cond_39

    move v14, v13

    move-object v13, v4

    move v4, v14

    move-object v14, v7

    const/16 v19, 0x9

    move-object/from16 v7, p2

    invoke-static/range {v2 .. v7}, Lsd2;->b(Lsi0;Ljava/lang/StringBuilder;ILfa1;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_20

    :cond_39
    move v14, v13

    move-object v13, v4

    move v4, v14

    move-object v14, v7

    const/16 v19, 0x9

    sget-object v7, Lic5;->KANJI:Lic5;

    if-ne v13, v7, :cond_3a

    invoke-static {v2, v3, v4}, Lsd2;->d(Lsi0;Ljava/lang/StringBuilder;I)V

    goto :goto_20

    :cond_3a
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1f
    move v11, v12

    :goto_20
    if-ne v13, v14, :cond_3c

    new-instance v7, Lvd2;

    move v12, v9

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    move-object/from16 v4, v16

    goto :goto_21

    :cond_3b
    move-object v4, v6

    :goto_21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move v13, v10

    move-object v10, v4

    invoke-direct/range {v7 .. v13}, Lvd2;-><init>([BLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)V

    return-object v7

    :cond_3c
    move v13, v10

    goto/16 :goto_19

    :catch_1
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_3d
    invoke-static {}, Lmi2;->b()V

    return-object v16

    :cond_3e
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_3f
    const/16 v16, 0x0

    invoke-static {}, Lmi2;->b()V

    return-object v16
.end method

.method public synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/location/zzcg;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    iget-object p0, p0, Lkl2;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

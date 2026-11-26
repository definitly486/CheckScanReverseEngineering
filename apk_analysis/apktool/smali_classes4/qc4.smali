.class public final Lqc4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxa;


# static fields
.field public static final synthetic b:Lqc4;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lqc4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqc4;->b:Lqc4;

    return-void
.end method

.method public static a(Ljava/lang/String;Lqc0;II)Lqi0;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5f

    sget-object v4, Lqc0;->QR_CODE:Lqc0;

    if-ne v1, v4, :cond_5e

    if-ltz p2, :cond_5d

    if-ltz p3, :cond_5d

    sget-object v1, Lr03;->L:Lr03;

    const-string v4, "Shift_JIS"

    const-string v6, "ISO-8859-1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    sget-object v12, Ltx2;->a:[I

    const/16 v13, 0x60

    const/4 v14, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v5, 0x30

    if-ge v8, v11, :cond_3

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move/from16 p1, v5

    if-lt v11, v5, :cond_0

    const/16 v5, 0x39

    if-gt v11, v5, :cond_0

    move v10, v15

    goto :goto_2

    :cond_0
    if-ge v11, v13, :cond_1

    aget v5, v12, v11

    goto :goto_1

    :cond_1
    move v5, v14

    :goto_1
    if-eq v5, v14, :cond_2

    move v9, v15

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    sget-object v5, Lic5;->BYTE:Lic5;

    goto :goto_3

    :cond_3
    move/from16 p1, v5

    if-eqz v9, :cond_4

    sget-object v5, Lic5;->ALPHANUMERIC:Lic5;

    goto :goto_3

    :cond_4
    if-eqz v10, :cond_5

    sget-object v5, Lic5;->NUMERIC:Lic5;

    goto :goto_3

    :cond_5
    sget-object v5, Lic5;->BYTE:Lic5;

    :goto_3
    new-instance v8, Lpi0;

    invoke-direct {v8}, Lpi0;-><init>()V

    invoke-virtual {v5}, Lic5;->a()I

    move-result v9

    const/4 v10, 0x4

    invoke-virtual {v8, v9, v10}, Lpi0;->c(II)V

    new-instance v9, Lpi0;

    invoke-direct {v9}, Lpi0;-><init>()V

    sget-object v11, Ltx2$a;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v11, v11, v17

    const/4 v13, 0x2

    const/16 v19, 0x8

    const/4 v7, 0x7

    if-eq v11, v15, :cond_13

    if-eq v11, v13, :cond_d

    const/4 v12, 0x3

    if-eq v11, v12, :cond_c

    if-ne v11, v10, :cond_b

    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v6, v4

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v6, :cond_9

    aget-byte v12, v4, v11

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v18, v11, 0x1

    move/from16 v21, v13

    aget-byte v13, v4, v18

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v12, v13

    const v13, 0x8140

    if-lt v12, v13, :cond_6

    move/from16 p1, v13

    const v13, 0x9ffc

    if-gt v12, v13, :cond_6

    sub-int v12, v12, p1

    goto :goto_5

    :cond_6
    const v13, 0xe040

    if-lt v12, v13, :cond_7

    const v13, 0xebbf

    if-gt v12, v13, :cond_7

    const v13, 0xc140

    sub-int/2addr v12, v13

    goto :goto_5

    :cond_7
    move v12, v14

    :goto_5
    if-eq v12, v14, :cond_8

    shr-int/lit8 v13, v12, 0x8

    mul-int/lit16 v13, v13, 0xc0

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v13, v12

    const/16 v12, 0xd

    invoke-virtual {v9, v13, v12}, Lpi0;->c(II)V

    add-int/lit8 v11, v11, 0x2

    move/from16 v13, v21

    goto :goto_4

    :cond_8
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid byte sequence"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move/from16 v21, v13

    :cond_a
    move/from16 v18, v15

    goto/16 :goto_c

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_b
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move/from16 v21, v13

    :try_start_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    array-length v6, v4

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v6, :cond_a

    aget-byte v12, v4, v11

    move/from16 v13, v19

    invoke-virtual {v9, v12, v13}, Lpi0;->c(II)V

    add-int/lit8 v11, v11, 0x1

    const/16 v19, 0x8

    goto :goto_6

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    move/from16 v21, v13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v4, :cond_a

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v13, 0x60

    if-ge v11, v13, :cond_e

    aget v11, v12, v11

    goto :goto_8

    :cond_e
    move v11, v14

    :goto_8
    if-eq v11, v14, :cond_12

    move/from16 v18, v15

    add-int/lit8 v15, v6, 0x1

    if-ge v15, v4, :cond_11

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ge v15, v13, :cond_f

    aget v15, v12, v15

    goto :goto_9

    :cond_f
    move v15, v14

    :goto_9
    if-eq v15, v14, :cond_10

    mul-int/lit8 v11, v11, 0x2d

    add-int/2addr v11, v15

    const/16 v15, 0xb

    invoke-virtual {v9, v11, v15}, Lpi0;->c(II)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_a

    :cond_10
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_11
    const/4 v6, 0x6

    invoke-virtual {v9, v11, v6}, Lpi0;->c(II)V

    move v6, v15

    :goto_a
    move/from16 v15, v18

    goto :goto_7

    :cond_12
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_13
    move/from16 v21, v13

    move/from16 v18, v15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v4, :cond_16

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v11, v11, -0x30

    add-int/lit8 v12, v6, 0x2

    if-ge v12, v4, :cond_14

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v12, v12, -0x30

    mul-int/lit8 v11, v11, 0x64

    const/16 v15, 0xa

    invoke-static {v13, v15, v11, v12}, Lti0;->b(IIII)I

    move-result v11

    invoke-virtual {v9, v11, v15}, Lpi0;->c(II)V

    add-int/lit8 v6, v6, 0x3

    goto :goto_b

    :cond_14
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v4, :cond_15

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    mul-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v6

    invoke-virtual {v9, v11, v7}, Lpi0;->c(II)V

    move v6, v12

    goto :goto_b

    :cond_15
    invoke-virtual {v9, v11, v10}, Lpi0;->c(II)V

    goto :goto_b

    :cond_16
    :goto_c
    iget v4, v8, Lpi0;->c:I

    invoke-static/range {v18 .. v18}, Luc9;->c(I)Luc9;

    move-result-object v6

    invoke-virtual {v5, v6}, Lic5;->d(Luc9;)I

    move-result v6

    add-int/2addr v6, v4

    iget v4, v9, Lpi0;->c:I

    add-int/2addr v6, v4

    invoke-static {v6, v1}, Ltx2;->a(ILr03;)Luc9;

    move-result-object v4

    iget v6, v8, Lpi0;->c:I

    invoke-virtual {v5, v4}, Lic5;->d(Luc9;)I

    move-result v4

    add-int/2addr v4, v6

    iget v6, v9, Lpi0;->c:I

    add-int/2addr v4, v6

    invoke-static {v4, v1}, Ltx2;->a(ILr03;)Luc9;

    move-result-object v4

    iget v6, v4, Luc9;->d:I

    new-instance v11, Lpi0;

    invoke-direct {v11}, Lpi0;-><init>()V

    iget v12, v8, Lpi0;->c:I

    iget v13, v11, Lpi0;->c:I

    add-int/2addr v13, v12

    invoke-virtual {v11, v13}, Lpi0;->d(I)V

    const/4 v13, 0x0

    :goto_d
    if-ge v13, v12, :cond_17

    invoke-virtual {v8, v13}, Lpi0;->e(I)Z

    move-result v15

    invoke-virtual {v11, v15}, Lpi0;->b(Z)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_17
    sget-object v8, Lic5;->BYTE:Lic5;

    if-ne v5, v8, :cond_18

    invoke-virtual {v9}, Lpi0;->h()I

    move-result v0

    goto :goto_e

    :cond_18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_e
    invoke-virtual {v5, v4}, Lic5;->d(Luc9;)I

    move-result v5

    shl-int v8, v18, v5

    if-ge v0, v8, :cond_5c

    invoke-virtual {v11, v0, v5}, Lpi0;->c(II)V

    iget v0, v9, Lpi0;->c:I

    iget v5, v11, Lpi0;->c:I

    add-int/2addr v5, v0

    invoke-virtual {v11, v5}, Lpi0;->d(I)V

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v0, :cond_19

    invoke-virtual {v9, v5}, Lpi0;->e(I)Z

    move-result v8

    invoke-virtual {v11, v8}, Lpi0;->b(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_19
    iget-object v0, v4, Luc9;->c:[Luc9$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v0, v0, v5

    iget v5, v0, Luc9$b;->a:I

    iget-object v0, v0, Luc9$b;->b:[Luc9$a;

    array-length v8, v0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_10
    if-ge v9, v8, :cond_1a

    aget-object v13, v0, v9

    iget v13, v13, Luc9$a;->a:I

    add-int/2addr v12, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_1a
    mul-int/2addr v12, v5

    sub-int v5, v6, v12

    mul-int/lit8 v8, v5, 0x8

    iget v9, v11, Lpi0;->c:I

    if-gt v9, v8, :cond_5b

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v10, :cond_1b

    iget v12, v11, Lpi0;->c:I

    if-ge v12, v8, :cond_1b

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lpi0;->b(Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_1b
    const/4 v12, 0x0

    iget v9, v11, Lpi0;->c:I

    and-int/2addr v7, v9

    if-lez v7, :cond_1c

    :goto_12
    const/16 v13, 0x8

    if-ge v7, v13, :cond_1c

    invoke-virtual {v11, v12}, Lpi0;->b(Z)V

    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x0

    goto :goto_12

    :cond_1c
    invoke-virtual {v11}, Lpi0;->h()I

    move-result v7

    sub-int v7, v5, v7

    const/4 v9, 0x0

    :goto_13
    if-ge v9, v7, :cond_1e

    and-int/lit8 v13, v9, 0x1

    if-nez v13, :cond_1d

    const/16 v12, 0xec

    :goto_14
    const/16 v13, 0x8

    goto :goto_15

    :cond_1d
    const/16 v12, 0x11

    goto :goto_14

    :goto_15
    invoke-virtual {v11, v12, v13}, Lpi0;->c(II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_1e
    iget v7, v11, Lpi0;->c:I

    if-ne v7, v8, :cond_5a

    array-length v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_16
    if-ge v9, v7, :cond_1f

    aget-object v13, v0, v9

    iget v13, v13, Luc9$a;->a:I

    add-int/2addr v8, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_1f
    invoke-virtual {v11}, Lpi0;->h()I

    move-result v0

    if-ne v0, v5, :cond_59

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_17
    if-ge v7, v8, :cond_38

    move/from16 p1, v10

    move/from16 v10, v18

    const/16 p0, 0x11

    new-array v12, v10, [I

    new-array v14, v10, [I

    if-ge v7, v8, :cond_37

    rem-int v10, v6, v8

    move/from16 v22, v10

    sub-int v10, v8, v22

    div-int v23, v6, v8

    add-int/lit8 v24, v23, 0x1

    div-int v25, v5, v8

    add-int/lit8 v26, v25, 0x1

    move-object/from16 v27, v12

    sub-int v12, v23, v25

    move-object/from16 v23, v14

    sub-int v14, v24, v26

    if-ne v12, v14, :cond_36

    move/from16 v24, v12

    add-int v12, v10, v22

    if-ne v8, v12, :cond_35

    add-int v12, v25, v24

    mul-int/2addr v12, v10

    add-int v28, v26, v14

    mul-int v28, v28, v22

    add-int v12, v28, v12

    if-ne v6, v12, :cond_34

    if-ge v7, v10, :cond_20

    const/16 v17, 0x0

    aput v25, v27, v17

    aput v24, v23, v17

    goto :goto_18

    :cond_20
    const/16 v17, 0x0

    aput v26, v27, v17

    aput v14, v23, v17

    :goto_18
    aget v10, v27, v17

    new-array v12, v10, [B

    mul-int/lit8 v14, v9, 0x8

    move/from16 v22, v7

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v10, :cond_23

    move/from16 v24, v7

    move/from16 v25, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1a
    const/16 v3, 0x8

    if-ge v7, v3, :cond_22

    invoke-virtual {v11, v14}, Lpi0;->e(I)Z

    move-result v3

    if-eqz v3, :cond_21

    rsub-int/lit8 v3, v7, 0x7

    const/16 v18, 0x1

    shl-int v3, v18, v3

    or-int/2addr v3, v8

    move v8, v3

    :cond_21
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_22
    int-to-byte v3, v8

    aput-byte v3, v12, v24

    add-int/lit8 v7, v24, 0x1

    move/from16 v8, v25

    goto :goto_19

    :cond_23
    move/from16 v25, v8

    const/16 v17, 0x0

    aget v3, v23, v17

    add-int v7, v10, v3

    new-array v8, v7, [I

    const/4 v14, 0x0

    :goto_1b
    if-ge v14, v10, :cond_24

    move/from16 v23, v7

    aget-byte v7, v12, v14

    and-int/lit16 v7, v7, 0xff

    aput v7, v8, v14

    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v23

    goto :goto_1b

    :cond_24
    move/from16 v23, v7

    sget-object v7, Lgp3;->h:Lgp3;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v11

    new-instance v11, Lhp3;

    const/16 v26, 0x1

    filled-new-array/range {v26 .. v26}, [I

    move-result-object v2

    invoke-direct {v11, v7, v2}, Lhp3;-><init>(Lgp3;[I)V

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_33

    sub-int v2, v23, v3

    if-lez v2, :cond_32

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v3, v11, :cond_26

    move/from16 v11, v26

    invoke-static {v11, v14}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lhp3;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v31, v23

    move-object/from16 v23, v1

    move-object/from16 v1, v31

    :goto_1c
    if-gt v11, v3, :cond_25

    move/from16 v26, v11

    new-instance v11, Lhp3;

    add-int/lit8 v28, v26, -0x1

    move-object/from16 v29, v4

    iget v4, v7, Lgp3;->g:I

    add-int v28, v28, v4

    iget-object v4, v7, Lgp3;->a:[I

    aget v4, v4, v28

    move/from16 v28, v6

    const/4 v6, 0x1

    filled-new-array {v6, v4}, [I

    move-result-object v4

    invoke-direct {v11, v7, v4}, Lhp3;-><init>(Lgp3;[I)V

    invoke-virtual {v1, v11}, Lhp3;->g(Lhp3;)Lhp3;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v26, 0x1

    move/from16 v6, v28

    move-object/from16 v4, v29

    goto :goto_1c

    :cond_25
    :goto_1d
    move-object/from16 v29, v4

    move/from16 v28, v6

    goto :goto_1e

    :cond_26
    move-object/from16 v23, v1

    goto :goto_1d

    :goto_1e
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhp3;

    new-array v4, v2, [I

    const/4 v6, 0x0

    invoke-static {v8, v6, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v2, :cond_31

    const/4 v11, 0x1

    if-le v2, v11, :cond_28

    aget v11, v4, v6

    if-nez v11, :cond_28

    const/4 v6, 0x1

    :goto_1f
    if-ge v6, v2, :cond_27

    aget v11, v4, v6

    if-nez v11, :cond_27

    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_27
    if-ne v6, v2, :cond_29

    const/4 v11, 0x0

    filled-new-array {v11}, [I

    move-result-object v4

    :cond_28
    move/from16 v26, v2

    goto :goto_20

    :cond_29
    const/4 v11, 0x0

    sub-int v14, v2, v6

    move/from16 v26, v2

    new-array v2, v14, [I

    invoke-static {v4, v6, v2, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v2

    :goto_20
    if-ltz v3, :cond_30

    array-length v2, v4

    add-int v6, v2, v3

    new-array v6, v6, [I

    const/4 v11, 0x0

    :goto_21
    if-ge v11, v2, :cond_2a

    aget v14, v4, v11

    move/from16 v30, v2

    const/4 v2, 0x1

    invoke-virtual {v7, v14, v2}, Lgp3;->c(II)I

    move-result v14

    aput v14, v6, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v30

    goto :goto_21

    :cond_2a
    new-instance v2, Lhp3;

    invoke-direct {v2, v7, v6}, Lhp3;-><init>(Lgp3;[I)V

    iget-object v4, v1, Lhp3;->a:Lgp3;

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {v1}, Lhp3;->e()Z

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, v7, Lgp3;->c:Lhp3;

    invoke-virtual {v1}, Lhp3;->d()I

    move-result v6

    invoke-virtual {v1, v6}, Lhp3;->c(I)I

    move-result v6

    invoke-virtual {v7, v6}, Lgp3;->b(I)I

    move-result v6

    :goto_22
    invoke-virtual {v2}, Lhp3;->d()I

    move-result v11

    invoke-virtual {v1}, Lhp3;->d()I

    move-result v14

    if-lt v11, v14, :cond_2b

    invoke-virtual {v2}, Lhp3;->e()Z

    move-result v11

    if-nez v11, :cond_2b

    invoke-virtual {v2}, Lhp3;->d()I

    move-result v11

    invoke-virtual {v1}, Lhp3;->d()I

    move-result v14

    sub-int/2addr v11, v14

    invoke-virtual {v2}, Lhp3;->d()I

    move-result v14

    invoke-virtual {v2, v14}, Lhp3;->c(I)I

    move-result v14

    invoke-virtual {v7, v14, v6}, Lgp3;->c(II)I

    move-result v14

    move/from16 v30, v6

    invoke-virtual {v1, v11, v14}, Lhp3;->h(II)Lhp3;

    move-result-object v6

    invoke-virtual {v7, v11, v14}, Lgp3;->a(II)Lhp3;

    move-result-object v11

    invoke-virtual {v4, v11}, Lhp3;->a(Lhp3;)Lhp3;

    move-result-object v4

    invoke-virtual {v2, v6}, Lhp3;->a(Lhp3;)Lhp3;

    move-result-object v2

    move/from16 v6, v30

    goto :goto_22

    :cond_2b
    filled-new-array {v4, v2}, [Lhp3;

    move-result-object v1

    const/16 v18, 0x1

    aget-object v1, v1, v18

    iget-object v1, v1, Lhp3;->b:[I

    array-length v2, v1

    sub-int v2, v3, v2

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v2, :cond_2c

    add-int v6, v26, v4

    const/4 v11, 0x0

    aput v11, v8, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_2c
    const/4 v11, 0x0

    add-int v2, v26, v2

    array-length v4, v1

    invoke-static {v1, v11, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v3, [B

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v3, :cond_2d

    add-int v4, v10, v2

    aget v4, v8, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_2d
    new-instance v2, Ltj0;

    invoke-direct {v2, v12, v1}, Ltj0;-><init>([B[B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/16 v17, 0x0

    aget v1, v27, v17

    add-int/2addr v9, v1

    add-int/lit8 v7, v22, 0x1

    move/from16 v10, p1

    move-object/from16 v1, v23

    move-object/from16 v11, v24

    move/from16 v8, v25

    move/from16 v6, v28

    move-object/from16 v4, v29

    const/4 v14, -0x1

    const/16 v18, 0x1

    goto/16 :goto_17

    :cond_2e
    const-string v0, "Divide by 0"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16

    :cond_2f
    const-string v0, "GenericGFPolys do not have same GenericGF field"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16

    :cond_30
    invoke-static {}, Lmi2;->b()V

    return-object v16

    :cond_31
    invoke-static {}, Lmi2;->b()V

    return-object v16

    :cond_32
    const-string v0, "No data bytes provided"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16

    :cond_33
    const-string v0, "No error correction bytes"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16

    :cond_34
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    move-object/from16 v23, v1

    move-object/from16 v29, v4

    move/from16 v28, v6

    move/from16 p1, v10

    const/16 p0, 0x11

    if-ne v5, v9, :cond_58

    new-instance v1, Lpi0;

    invoke-direct {v1}, Lpi0;-><init>()V

    const/4 v12, 0x0

    :goto_25
    if-ge v12, v13, :cond_3b

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_39
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltj0;

    iget-object v3, v3, Ltj0;->a:[B

    array-length v4, v3

    if-ge v12, v4, :cond_39

    aget-byte v3, v3, v12

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Lpi0;->c(II)V

    goto :goto_26

    :cond_3a
    add-int/lit8 v12, v12, 0x1

    goto :goto_25

    :cond_3b
    const/4 v12, 0x0

    :goto_27
    if-ge v12, v15, :cond_3e

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3c
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltj0;

    iget-object v3, v3, Ltj0;->b:[B

    array-length v4, v3

    if-ge v12, v4, :cond_3c

    aget-byte v3, v3, v12

    const/16 v13, 0x8

    invoke-virtual {v1, v3, v13}, Lpi0;->c(II)V

    goto :goto_28

    :cond_3d
    add-int/lit8 v12, v12, 0x1

    goto :goto_27

    :cond_3e
    invoke-virtual {v1}, Lpi0;->h()I

    move-result v0

    move/from16 v2, v28

    if-ne v2, v0, :cond_57

    move-object/from16 v0, v29

    iget v2, v0, Luc9;->a:I

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x11

    new-instance v3, Lbx0;

    invoke-direct {v3, v2, v2}, Lbx0;-><init>(II)V

    const v2, 0x7fffffff

    const/4 v12, 0x0

    const/4 v14, -0x1

    :goto_29
    iget v4, v3, Lbx0;->c:I

    iget v5, v3, Lbx0;->b:I

    const/16 v13, 0x8

    if-ge v12, v13, :cond_53

    move-object/from16 v6, v23

    invoke-static {v1, v6, v0, v12, v3}, Lx65;->b(Lpi0;Lr03;Luc9;ILbx0;)V

    const/4 v11, 0x1

    invoke-static {v3, v11}, Llj8;->a(Lbx0;Z)I

    move-result v7

    const/4 v11, 0x0

    invoke-static {v3, v11}, Llj8;->a(Lbx0;Z)I

    move-result v8

    add-int/2addr v8, v7

    move v7, v11

    move v9, v7

    :goto_2a
    add-int/lit8 v10, v4, -0x1

    iget-object v15, v3, Lbx0;->a:[[B

    if-ge v7, v10, :cond_41

    move v10, v11

    :goto_2b
    add-int/lit8 v11, v5, -0x1

    if-ge v10, v11, :cond_40

    aget-object v11, v15, v7

    aget-byte v13, v11, v10

    add-int/lit8 v16, v10, 0x1

    aget-byte v11, v11, v16

    if-ne v13, v11, :cond_3f

    add-int/lit8 v11, v7, 0x1

    aget-object v11, v15, v11

    aget-byte v10, v11, v10

    if-ne v13, v10, :cond_3f

    aget-byte v10, v11, v16

    if-ne v13, v10, :cond_3f

    add-int/lit8 v9, v9, 0x1

    :cond_3f
    move/from16 v10, v16

    const/4 v11, 0x0

    const/16 v13, 0x8

    goto :goto_2b

    :cond_40
    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x0

    const/16 v13, 0x8

    goto :goto_2a

    :cond_41
    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2c
    if-ge v7, v4, :cond_4e

    const/4 v10, 0x0

    :goto_2d
    if-ge v10, v5, :cond_4d

    aget-object v11, v15, v7

    add-int/lit8 v13, v10, 0x6

    move/from16 p0, v8

    if-ge v13, v5, :cond_46

    aget-byte v8, v11, v10

    move/from16 p1, v9

    const/4 v9, 0x1

    if-ne v8, v9, :cond_47

    add-int/lit8 v8, v10, 0x1

    aget-byte v8, v11, v8

    if-nez v8, :cond_47

    add-int/lit8 v8, v10, 0x2

    aget-byte v8, v11, v8

    if-ne v8, v9, :cond_47

    add-int/lit8 v8, v10, 0x3

    aget-byte v8, v11, v8

    if-ne v8, v9, :cond_47

    add-int/lit8 v8, v10, 0x4

    aget-byte v8, v11, v8

    if-ne v8, v9, :cond_47

    add-int/lit8 v8, v10, 0x5

    aget-byte v8, v11, v8

    if-nez v8, :cond_47

    aget-byte v8, v11, v13

    if-ne v8, v9, :cond_47

    add-int/lit8 v8, v10, -0x4

    :goto_2e
    if-ge v8, v10, :cond_45

    if-ltz v8, :cond_44

    array-length v13, v11

    if-ge v8, v13, :cond_44

    aget-byte v13, v11, v8

    if-ne v13, v9, :cond_44

    add-int/lit8 v8, v10, 0x7

    add-int/lit8 v13, v10, 0xb

    :goto_2f
    if-ge v8, v13, :cond_45

    if-ltz v8, :cond_42

    array-length v9, v11

    if-ge v8, v9, :cond_42

    aget-byte v9, v11, v8

    move/from16 v16, v8

    const/4 v8, 0x1

    if-ne v9, v8, :cond_43

    goto :goto_30

    :cond_42
    move/from16 v16, v8

    :cond_43
    add-int/lit8 v8, v16, 0x1

    const/4 v9, 0x1

    goto :goto_2f

    :cond_44
    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    goto :goto_2e

    :cond_45
    add-int/lit8 v8, p0, 0x1

    goto :goto_31

    :cond_46
    move/from16 p1, v9

    :cond_47
    :goto_30
    move/from16 v8, p0

    :goto_31
    add-int/lit8 v9, v7, 0x6

    if-ge v9, v4, :cond_4c

    aget-object v11, v15, v7

    aget-byte v11, v11, v10

    const/4 v13, 0x1

    if-ne v11, v13, :cond_4c

    add-int/lit8 v11, v7, 0x1

    aget-object v11, v15, v11

    aget-byte v11, v11, v10

    if-nez v11, :cond_4c

    add-int/lit8 v11, v7, 0x2

    aget-object v11, v15, v11

    aget-byte v11, v11, v10

    if-ne v11, v13, :cond_4c

    add-int/lit8 v11, v7, 0x3

    aget-object v11, v15, v11

    aget-byte v11, v11, v10

    if-ne v11, v13, :cond_4c

    add-int/lit8 v11, v7, 0x4

    aget-object v11, v15, v11

    aget-byte v11, v11, v10

    if-ne v11, v13, :cond_4c

    add-int/lit8 v11, v7, 0x5

    aget-object v11, v15, v11

    aget-byte v11, v11, v10

    if-nez v11, :cond_4c

    aget-object v9, v15, v9

    aget-byte v9, v9, v10

    if-ne v9, v13, :cond_4c

    add-int/lit8 v9, v7, -0x4

    :goto_32
    if-ge v9, v7, :cond_4a

    if-ltz v9, :cond_4b

    array-length v11, v15

    if-ge v9, v11, :cond_4b

    aget-object v11, v15, v9

    aget-byte v11, v11, v10

    if-ne v11, v13, :cond_4b

    add-int/lit8 v9, v7, 0x7

    add-int/lit8 v11, v7, 0xb

    :goto_33
    if-ge v9, v11, :cond_4a

    if-ltz v9, :cond_48

    array-length v13, v15

    if-ge v9, v13, :cond_48

    aget-object v13, v15, v9

    aget-byte v13, v13, v10

    move/from16 v16, v7

    const/4 v7, 0x1

    if-ne v13, v7, :cond_49

    goto :goto_35

    :cond_48
    move/from16 v16, v7

    :cond_49
    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v16

    goto :goto_33

    :cond_4a
    move/from16 v16, v7

    goto :goto_34

    :cond_4b
    move/from16 v16, v7

    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v16

    const/4 v13, 0x1

    goto :goto_32

    :goto_34
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    :cond_4c
    move/from16 v16, v7

    :goto_35
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, p1

    move/from16 v7, v16

    goto/16 :goto_2d

    :cond_4d
    move/from16 v16, v7

    move/from16 p0, v8

    move/from16 p1, v9

    add-int/lit8 v7, v16, 0x1

    goto/16 :goto_2c

    :cond_4e
    move/from16 p1, v9

    mul-int/lit8 v8, v8, 0x28

    add-int v8, v8, p1

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_36
    if-ge v7, v4, :cond_51

    aget-object v10, v15, v7

    const/4 v11, 0x0

    :goto_37
    if-ge v11, v5, :cond_50

    aget-byte v13, v10, v11

    move/from16 v16, v7

    const/4 v7, 0x1

    if-ne v13, v7, :cond_4f

    add-int/lit8 v9, v9, 0x1

    :cond_4f
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v16

    goto :goto_37

    :cond_50
    move/from16 v16, v7

    add-int/lit8 v7, v16, 0x1

    goto :goto_36

    :cond_51
    mul-int/2addr v4, v5

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v20, 0xa

    mul-int/lit8 v5, v5, 0xa

    div-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v8

    if-ge v5, v2, :cond_52

    move v2, v5

    move v14, v12

    :cond_52
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v23, v6

    goto/16 :goto_29

    :cond_53
    move-object/from16 v6, v23

    invoke-static {v1, v6, v0, v14, v3}, Lx65;->b(Lpi0;Lr03;Luc9;ILbx0;)V

    add-int/lit8 v0, v5, 0x8

    add-int/lit8 v1, v4, 0x8

    move/from16 v2, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v6, p3

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int v0, v2, v0

    div-int v1, v6, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v1, v5, v0

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    mul-int v7, v4, v0

    sub-int v7, v6, v7

    div-int/lit8 v7, v7, 0x2

    new-instance v8, Lqi0;

    invoke-direct {v8, v2, v6}, Lqi0;-><init>(II)V

    const/4 v12, 0x0

    :goto_38
    if-ge v12, v4, :cond_56

    move v6, v1

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v5, :cond_55

    invoke-virtual {v3, v2, v12}, Lbx0;->a(II)B

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_54

    invoke-virtual {v8, v6, v7, v0, v0}, Lqi0;->e(IIII)V

    :cond_54
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v6, v0

    goto :goto_39

    :cond_55
    add-int/lit8 v12, v12, 0x1

    add-int/2addr v7, v0

    goto :goto_38

    :cond_56
    return-object v8

    :cond_57
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v3, "Interleaving error: "

    const-string v4, " and "

    invoke-static {v2, v3, v4}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lpi0;->h()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " differ."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Bits size does not equal capacity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    move-object/from16 v24, v11

    new-instance v0, Lcom/google/zxing/WriterException;

    move-object/from16 v1, v24

    iget v1, v1, Lpi0;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data bits cannot fit in the QR Code"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    new-instance v1, Lcom/google/zxing/WriterException;

    const/16 v18, 0x1

    add-int/lit8 v8, v8, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is bigger than "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5d
    move/from16 v2, p2

    move/from16 v6, p3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Requested dimensions are too small: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    const/16 v16, 0x0

    const-string v0, "Can only encode QR_CODE, but got "

    invoke-static {v1, v0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v16

    :cond_5f
    const/16 v16, 0x0

    const-string v0, "Found empty contents"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16
.end method

.method public static final b(Ljava/util/ArrayList;Lnl3;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final c(Ljava/lang/Object;)Lhl7;
    .locals 1

    sget-object v0, Loe0;->f:Lbh8;

    if-eq p0, v0, :cond_0

    check-cast p0, Lhl7;

    return-object p0

    :cond_0
    const-string p0, "Does not contain segment"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final d(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Loe0;->f:Lbh8;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final e(Lld4;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    sget-object v0, Lrc4;->a:Li54;

    new-instance v0, Lcd4;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcd4;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1, v0}, Lld4;->a(Ljava/lang/String;Loc4;)Loc4;

    return-void
.end method

.method public static final f(Lld4;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lrc4;->a:Li54;

    new-instance v0, Lcd4;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcd4;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1, v0}, Lld4;->a(Ljava/lang/String;Loc4;)Loc4;

    return-void
.end method


# virtual methods
.method public synthetic zza()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzahk;->zzc()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

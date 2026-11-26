.class public final Le92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le92$a;
    }
.end annotation


# instance fields
.field public final a:Lb99;

.field public final b:Lzz5;


# direct methods
.method public constructor <init>(Lb99;Lzz5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le92;->a:Lb99;

    iput-object p2, p0, Le92;->b:Lzz5;

    return-void
.end method


# virtual methods
.method public final a(Lpz2;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Le92;->a:Lb99;

    iget-object v2, v1, Lb99;->a:Ljava/lang/String;

    const-string v3, ";base64,"

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v2, v3, v4, v4, v5}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v3

    const-string v7, "invalid data uri: "

    const/4 v8, -0x1

    if-eq v3, v8, :cond_23

    const/16 v9, 0x3a

    invoke-static {v9, v4, v5, v2}, Lta8;->J(CIILjava/lang/CharSequence;)I

    move-result v9

    if-eq v9, v8, :cond_22

    const/4 v1, 0x1

    add-int/2addr v9, v1

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lxc0;->d:Lxc0$a;

    const/16 v10, 0x8

    add-int/2addr v3, v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v9, Lxc0;->c:Lxc0$b;

    iget-boolean v13, v9, Lxc0;->b:Z

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    sget-object v15, Lu0;->Companion:Lu0$a;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v11, v14}, Lu0$a;->a(III)V

    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lha1;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, v2

    array-length v11, v2

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3, v11}, Lu0$a;->a(III)V

    const/16 v11, 0x3d

    const/4 v14, -0x2

    if-nez v3, :cond_0

    move/from16 p1, v1

    move v1, v4

    move v15, v5

    const/16 v16, 0x0

    goto :goto_4

    :cond_0
    if-eq v3, v1, :cond_21

    if-eqz v13, :cond_4

    move/from16 v16, v3

    move v15, v4

    :goto_0
    move/from16 p1, v1

    if-ge v15, v3, :cond_1

    aget-byte v1, v2, v15

    and-int/lit16 v1, v1, 0xff

    sget-object v17, Lyc0;->a:[I

    aget v1, v17, v1

    if-gez v1, :cond_3

    if-ne v1, v14, :cond_2

    sub-int v1, v3, v15

    sub-int v16, v16, v1

    :cond_1
    :goto_1
    move v15, v5

    move/from16 v1, v16

    :goto_2
    const/16 v16, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v16, v16, -0x1

    :cond_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    goto :goto_0

    :cond_4
    move/from16 p1, v1

    add-int/lit8 v1, v3, -0x1

    aget-byte v1, v2, v1

    if-ne v1, v11, :cond_5

    add-int/lit8 v16, v3, -0x1

    add-int/lit8 v1, v3, -0x2

    aget-byte v1, v2, v1

    if-ne v1, v11, :cond_1

    add-int/lit8 v16, v3, -0x2

    goto :goto_1

    :cond_5
    move v1, v3

    move v15, v5

    goto :goto_2

    :goto_3
    int-to-long v5, v1

    const-wide/16 v17, 0x6

    mul-long v5, v5, v17

    const-wide/16 v17, 0x8

    div-long v5, v5, v17

    long-to-int v1, v5

    :goto_4
    new-array v5, v1, [B

    iget-boolean v6, v9, Lxc0;->a:Z

    if-eqz v6, :cond_6

    sget-object v6, Lyc0;->b:[I

    goto :goto_5

    :cond_6
    sget-object v6, Lyc0;->a:[I

    :goto_5
    const/4 v9, -0x8

    move/from16 v19, v4

    move/from16 v20, v10

    move/from16 v17, v15

    move/from16 v10, v19

    move v15, v10

    move v4, v9

    :goto_6
    const-string v11, ") at index "

    const-string v8, "\'("

    if-ge v15, v3, :cond_17

    if-ne v4, v9, :cond_7

    add-int/lit8 v9, v15, 0x3

    if-ge v9, v3, :cond_7

    add-int/lit8 v21, v15, 0x1

    aget-byte v14, v2, v15

    and-int/lit16 v14, v14, 0xff

    aget v14, v6, v14

    add-int/lit8 v22, v15, 0x2

    move-object/from16 v23, v2

    aget-byte v2, v23, v21

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    move/from16 v21, v2

    aget-byte v2, v23, v22

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    add-int/lit8 v22, v15, 0x4

    aget-byte v9, v23, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v6, v9

    shl-int/lit8 v14, v14, 0x12

    shl-int/lit8 v21, v21, 0xc

    or-int v14, v14, v21

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v14

    or-int/2addr v2, v9

    if-ltz v2, :cond_8

    add-int/lit8 v8, v10, 0x1

    shr-int/lit8 v9, v2, 0x10

    int-to-byte v9, v9

    aput-byte v9, v5, v10

    add-int/lit8 v9, v10, 0x2

    shr-int/lit8 v11, v2, 0x8

    int-to-byte v11, v11

    aput-byte v11, v5, v8

    add-int/lit8 v10, v10, 0x3

    int-to-byte v2, v2

    aput-byte v2, v5, v9

    move/from16 v15, v22

    :goto_7
    move-object/from16 v2, v23

    const/4 v8, -0x1

    const/4 v9, -0x8

    const/4 v14, -0x2

    goto :goto_6

    :cond_7
    move-object/from16 v23, v2

    :cond_8
    aget-byte v2, v23, v15

    and-int/lit16 v2, v2, 0xff

    aget v9, v6, v2

    if-gez v9, :cond_15

    const/4 v14, -0x2

    if-ne v9, v14, :cond_13

    const/4 v9, -0x8

    if-eq v4, v9, :cond_12

    const/4 v2, -0x6

    const-string v6, "The padding option is set to ABSENT, but the input has a pad character at index "

    if-eq v4, v2, :cond_10

    const/4 v2, -0x4

    if-eq v4, v2, :cond_a

    if-ne v4, v14, :cond_9

    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    :cond_9
    const-string v0, "Unreachable"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v16

    :cond_a
    sget-object v2, Lxc0$b;->ABSENT:Lxc0$b;

    if-eq v12, v2, :cond_f

    add-int/lit8 v15, v15, 0x1

    if-nez v13, :cond_b

    goto :goto_a

    :cond_b
    :goto_9
    if-ge v15, v3, :cond_d

    aget-byte v2, v23, v15

    and-int/lit16 v2, v2, 0xff

    sget-object v6, Lyc0;->a:[I

    aget v2, v6, v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_c

    goto :goto_a

    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_d
    :goto_a
    if-eq v15, v3, :cond_e

    aget-byte v2, v23, v15

    const/16 v14, 0x3d

    if-ne v2, v14, :cond_e

    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    :cond_e
    const-string v0, "Missing one pad character at index "

    invoke-static {v15, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16

    :cond_f
    invoke-static {v15, v6}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16

    :cond_10
    sget-object v2, Lxc0$b;->ABSENT:Lxc0$b;

    if-eq v12, v2, :cond_11

    goto :goto_8

    :goto_b
    move/from16 v2, p1

    const/4 v14, -0x2

    goto/16 :goto_d

    :cond_11
    invoke-static {v15, v6}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16

    :cond_12
    const-string v0, "Redundant pad character at index "

    invoke-static {v15, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16

    :cond_13
    const/16 v14, 0x3d

    if-eqz v13, :cond_14

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_7

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    int-to-char v1, v2

    invoke-static/range {v20 .. v20}, Lga1;->b(I)V

    move/from16 v3, v20

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid symbol \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/16 v14, 0x3d

    add-int/lit8 v15, v15, 0x1

    shl-int/lit8 v2, v19, 0x6

    or-int v19, v2, v9

    add-int/lit8 v9, v4, 0x6

    if-ltz v9, :cond_16

    add-int/lit8 v2, v10, 0x1

    ushr-int v8, v19, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v10

    shl-int v8, p1, v9

    add-int/lit8 v8, v8, -0x1

    and-int v19, v19, v8

    add-int/lit8 v4, v4, -0x2

    move v10, v2

    :goto_c
    move-object/from16 v2, v23

    const/4 v8, -0x1

    const/4 v9, -0x8

    const/4 v14, -0x2

    const/16 v20, 0x8

    goto/16 :goto_6

    :cond_16
    move v4, v9

    goto :goto_c

    :cond_17
    move-object/from16 v23, v2

    const/4 v2, 0x0

    :goto_d
    if-eq v4, v14, :cond_20

    const/4 v9, -0x8

    if-eq v4, v9, :cond_19

    if-nez v2, :cond_19

    sget-object v2, Lxc0$b;->PRESENT:Lxc0$b;

    if-eq v12, v2, :cond_18

    goto :goto_e

    :cond_18
    const-string v0, "The padding option is set to PRESENT, but the input is not properly padded"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16

    :cond_19
    :goto_e
    if-nez v19, :cond_1f

    if-nez v13, :cond_1a

    goto :goto_10

    :cond_1a
    :goto_f
    if-ge v15, v3, :cond_1c

    aget-byte v2, v23, v15

    and-int/lit16 v2, v2, 0xff

    sget-object v4, Lyc0;->a:[I

    aget v2, v4, v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_1b

    goto :goto_10

    :cond_1b
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    :cond_1c
    :goto_10
    if-lt v15, v3, :cond_1e

    if-ne v10, v1, :cond_1d

    new-instance v2, Lbu0;

    invoke-direct {v2}, Lbu0;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3, v1}, Lbu0;->write([BII)V

    iget-object v0, v0, Le92;->b:Lzz5;

    iget-object v0, v0, Lzz5;->f:Lw93;

    new-instance v1, La58;

    move-object/from16 v3, v16

    invoke-direct {v1, v2, v0, v3}, La58;-><init>(Lwu0;Lw93;Lh24$a;)V

    sget-object v0, Lz82;->MEMORY:Lz82;

    new-instance v2, Lx48;

    invoke-direct {v2, v1, v7, v0}, Lx48;-><init>(Lh24;Ljava/lang/String;Lz82;)V

    return-object v2

    :cond_1d
    move-object/from16 v3, v16

    const-string v0, "Check failed."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1e
    aget-byte v0, v23, v15

    and-int/lit16 v0, v0, 0xff

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Symbol \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    invoke-static {v3}, Lga1;->b(I)V

    invoke-static {v0, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, -0x1

    const-string v0, " is prohibited after the pad character"

    invoke-static {v1, v0, v15}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    const/16 v16, 0x0

    return-object v16

    :cond_1f
    const-string v0, "The pad bits must be zeros"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16

    :cond_20
    const-string v0, "The last unit of input does not have enough bits"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16

    :cond_21
    const/16 v16, 0x0

    const-string v0, "Input should have at least 2 symbols for Base64 decoding, startIndex: 0, endIndex: "

    invoke-static {v3, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16

    :cond_22
    const/16 v16, 0x0

    invoke-static {v1, v7}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v16

    :cond_23
    const/16 v16, 0x0

    invoke-static {v1, v7}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v16
.end method

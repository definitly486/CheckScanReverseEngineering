.class public final Lyads/zi6;
.super Lyads/fs5;
.source "SourceFile"


# instance fields
.field public n:Lyads/yi6;

.field public o:I

.field public p:Z

.field public q:Lyads/cj6;

.field public r:Lyads/aj6;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/fs5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/os4;)J
    .locals 13

    .line 1001
    iget-object v0, p1, Lyads/os4;->a:[B

    const/4 v1, 0x0

    .line 1002
    aget-byte v2, v0, v1

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 1003
    :cond_0
    iget-object v3, p0, Lyads/zi6;->n:Lyads/yi6;

    if-eqz v3, :cond_4

    .line 1004
    iget v5, v3, Lyads/yi6;->e:I

    shr-int/2addr v2, v4

    const/16 v6, 0x8

    rsub-int/lit8 v5, v5, 0x8

    const/16 v7, 0xff

    ushr-int v5, v7, v5

    and-int/2addr v2, v5

    .line 1005
    iget-object v5, v3, Lyads/yi6;->d:[Lyads/bj6;

    aget-object v2, v5, v2

    iget-boolean v2, v2, Lyads/bj6;->a:Z

    .line 1006
    iget-object v3, v3, Lyads/yi6;->a:Lyads/cj6;

    if-nez v2, :cond_1

    .line 1007
    iget v2, v3, Lyads/cj6;->e:I

    goto :goto_0

    .line 1008
    :cond_1
    iget v2, v3, Lyads/cj6;->f:I

    .line 1009
    :goto_0
    iget-boolean v3, p0, Lyads/zi6;->p:Z

    if-eqz v3, :cond_2

    iget v1, p0, Lyads/zi6;->o:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    :cond_2
    int-to-long v7, v1

    .line 1010
    array-length v1, v0

    .line 1011
    iget v3, p1, Lyads/os4;->c:I

    add-int/lit8 v3, v3, 0x4

    if-ge v1, v3, :cond_3

    .line 1012
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lyads/os4;->a([B)V

    goto :goto_1

    .line 1013
    :cond_3
    invoke-virtual {p1, v3}, Lyads/os4;->d(I)V

    .line 1014
    :goto_1
    iget-object v0, p1, Lyads/os4;->a:[B

    .line 1015
    iget p1, p1, Lyads/os4;->c:I

    add-int/lit8 v1, p1, -0x4

    const-wide/16 v9, 0xff

    and-long v11, v7, v9

    long-to-int v3, v11

    int-to-byte v3, v3

    .line 1016
    aput-byte v3, v0, v1

    add-int/lit8 v1, p1, -0x3

    ushr-long v5, v7, v6

    and-long/2addr v5, v9

    long-to-int v3, v5

    int-to-byte v3, v3

    .line 1017
    aput-byte v3, v0, v1

    add-int/lit8 v1, p1, -0x2

    const/16 v3, 0x10

    ushr-long v5, v7, v3

    and-long/2addr v5, v9

    long-to-int v3, v5

    int-to-byte v3, v3

    .line 1018
    aput-byte v3, v0, v1

    sub-int/2addr p1, v4

    const/16 v1, 0x18

    ushr-long v5, v7, v1

    and-long/2addr v5, v9

    long-to-int v1, v5

    int-to-byte v1, v1

    .line 1019
    aput-byte v1, v0, p1

    .line 1020
    iput-boolean v4, p0, Lyads/zi6;->p:Z

    .line 1021
    iput v2, p0, Lyads/zi6;->o:I

    return-wide v7

    .line 1022
    :cond_4
    invoke-static {}, Lud;->g()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final a(J)V
    .locals 2

    .line 1023
    iput-wide p1, p0, Lyads/fs5;->g:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 1024
    :goto_0
    iput-boolean p1, p0, Lyads/zi6;->p:Z

    .line 1025
    iget-object p1, p0, Lyads/zi6;->q:Lyads/cj6;

    if-eqz p1, :cond_1

    iget p2, p1, Lyads/cj6;->e:I

    :cond_1
    iput p2, p0, Lyads/zi6;->o:I

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 995
    invoke-super {p0, p1}, Lyads/fs5;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 996
    iput-object p1, p0, Lyads/zi6;->n:Lyads/yi6;

    .line 997
    iput-object p1, p0, Lyads/zi6;->q:Lyads/cj6;

    .line 998
    iput-object p1, p0, Lyads/zi6;->r:Lyads/aj6;

    :cond_0
    const/4 p1, 0x0

    .line 999
    iput p1, p0, Lyads/zi6;->o:I

    .line 1000
    iput-boolean p1, p0, Lyads/zi6;->p:Z

    return-void
.end method

.method public final a(Lyads/os4;JLyads/ds5;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Lyads/zi6;->n:Lyads/yi6;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v0, v2, Lyads/ds5;->a:Lyads/vz2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v4

    :cond_0
    iget-object v6, v0, Lyads/zi6;->q:Lyads/cj6;

    const/4 v11, 0x1

    if-nez v6, :cond_1

    invoke-static {v1}, Lyads/dj6;->a(Lyads/os4;)Lyads/cj6;

    move-result-object v1

    iput-object v1, v0, Lyads/zi6;->q:Lyads/cj6;

    :goto_0
    const/4 v3, 0x0

    goto/16 :goto_21

    :cond_1
    iget-object v7, v0, Lyads/zi6;->r:Lyads/aj6;

    if-nez v7, :cond_2

    invoke-static {v1, v11, v11}, Lyads/dj6;->a(Lyads/os4;ZZ)Lyads/aj6;

    move-result-object v1

    iput-object v1, v0, Lyads/zi6;->r:Lyads/aj6;

    goto :goto_0

    :cond_2
    iget v5, v1, Lyads/os4;->c:I

    new-array v8, v5, [B

    iget-object v9, v1, Lyads/os4;->a:[B

    invoke-static {v9, v4, v8, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, v6, Lyads/cj6;->a:I

    const/4 v9, 0x5

    invoke-static {v9, v1, v4}, Lyads/dj6;->a(ILyads/os4;Z)Z

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v10

    add-int/2addr v10, v11

    new-instance v12, Lyads/ti6;

    iget-object v13, v1, Lyads/os4;->a:[B

    invoke-direct {v12, v13}, Lyads/ti6;-><init>([B)V

    iget v1, v1, Lyads/os4;->b:I

    const/16 v13, 0x8

    mul-int/2addr v1, v13

    invoke-virtual {v12, v1}, Lyads/ti6;->b(I)V

    move v1, v4

    :goto_1
    const/16 v14, 0x18

    move/from16 p2, v4

    move/from16 p1, v13

    const/16 v13, 0x10

    if-ge v1, v10, :cond_10

    invoke-virtual {v12, v14}, Lyads/ti6;->a(I)I

    move-result v3

    move/from16 v16, v11

    const v11, 0x564342

    if-ne v3, v11, :cond_f

    invoke-virtual {v12, v13}, Lyads/ti6;->a(I)I

    move-result v3

    invoke-virtual {v12, v14}, Lyads/ti6;->a(I)I

    move-result v11

    new-array v13, v11, [J

    invoke-virtual {v12}, Lyads/ti6;->a()Z

    move-result v14

    const-wide/16 v17, 0x0

    if-nez v14, :cond_7

    invoke-virtual {v12}, Lyads/ti6;->a()Z

    move-result v14

    move/from16 v15, p2

    :goto_2
    if-ge v15, v11, :cond_5

    if-eqz v14, :cond_4

    invoke-virtual {v12}, Lyads/ti6;->a()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-virtual {v12, v9}, Lyads/ti6;->a(I)I

    move-result v19

    add-int/lit8 v4, v19, 0x1

    move/from16 v20, v10

    int-to-long v9, v4

    aput-wide v9, v13, v15

    :goto_3
    const/4 v4, 0x5

    goto :goto_4

    :cond_3
    move/from16 v20, v10

    aput-wide v17, v13, v15

    goto :goto_3

    :cond_4
    move v4, v9

    move/from16 v20, v10

    invoke-virtual {v12, v4}, Lyads/ti6;->a(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    int-to-long v9, v9

    aput-wide v9, v13, v15

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move v9, v4

    move/from16 v10, v20

    goto :goto_2

    :cond_5
    move/from16 v20, v10

    :cond_6
    move-object v15, v6

    move-object/from16 v21, v7

    const/4 v4, 0x4

    goto :goto_8

    :cond_7
    move v4, v9

    move/from16 v20, v10

    invoke-virtual {v12, v4}, Lyads/ti6;->a(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v4, p2

    :goto_5
    if-ge v4, v11, :cond_6

    sub-int v10, v11, v4

    move/from16 v14, p2

    :goto_6
    if-lez v10, :cond_8

    add-int/lit8 v14, v14, 0x1

    ushr-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {v12, v14}, Lyads/ti6;->a(I)I

    move-result v10

    move/from16 v14, p2

    :goto_7
    if-ge v14, v10, :cond_9

    if-ge v4, v11, :cond_9

    move-object v15, v6

    move-object/from16 v21, v7

    int-to-long v6, v9

    aput-wide v6, v13, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object v6, v15

    move-object/from16 v7, v21

    goto :goto_7

    :cond_9
    move-object v15, v6

    move-object/from16 v21, v7

    add-int/lit8 v9, v9, 0x1

    move-object v6, v15

    move-object/from16 v7, v21

    goto :goto_5

    :goto_8
    invoke-virtual {v12, v4}, Lyads/ti6;->a(I)I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_e

    move/from16 v9, v16

    if-eq v6, v9, :cond_a

    if-ne v6, v7, :cond_d

    :cond_a
    const/16 v7, 0x20

    invoke-virtual {v12, v7}, Lyads/ti6;->b(I)V

    invoke-virtual {v12, v7}, Lyads/ti6;->b(I)V

    invoke-virtual {v12, v4}, Lyads/ti6;->a(I)I

    move-result v4

    add-int/2addr v4, v9

    invoke-virtual {v12, v9}, Lyads/ti6;->b(I)V

    if-ne v6, v9, :cond_b

    if-eqz v3, :cond_c

    int-to-long v6, v11

    int-to-long v9, v3

    long-to-double v6, v6

    long-to-double v9, v9

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    div-double/2addr v13, v9

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    move-wide/from16 v17, v6

    goto :goto_9

    :cond_b
    int-to-long v6, v11

    int-to-long v9, v3

    mul-long v17, v6, v9

    :cond_c
    :goto_9
    int-to-long v3, v4

    mul-long v3, v3, v17

    long-to-int v3, v3

    invoke-virtual {v12, v3}, Lyads/ti6;->b(I)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    move/from16 v13, p1

    move/from16 v4, p2

    move-object v6, v15

    move/from16 v10, v20

    move-object/from16 v7, v21

    const/4 v9, 0x5

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_e
    const-string v0, "lookup type greater than 2 not decodable: "

    invoke-static {v6, v0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return p2

    :cond_f
    iget v0, v12, Lyads/ti6;->c:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, v12, Lyads/ti6;->d:I

    add-int/2addr v0, v1

    const-string v1, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-static {v0, v1}, Lu4;->c(ILjava/lang/String;)V

    return p2

    :cond_10
    move-object v15, v6

    move-object/from16 v21, v7

    const/4 v1, 0x6

    invoke-virtual {v12, v1}, Lyads/ti6;->a(I)I

    move-result v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, p2

    :goto_a
    if-ge v4, v3, :cond_12

    invoke-virtual {v12, v13}, Lyads/ti6;->a(I)I

    move-result v6

    if-nez v6, :cond_11

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_11
    const-string v0, "placeholder of time domain transforms not zeroed out"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return p2

    :cond_12
    invoke-virtual {v12, v1}, Lyads/ti6;->a(I)I

    move-result v3

    const/4 v9, 0x1

    add-int/2addr v3, v9

    move/from16 v4, p2

    :goto_b
    const/4 v6, 0x3

    if-ge v4, v3, :cond_1c

    invoke-virtual {v12, v13}, Lyads/ti6;->a(I)I

    move-result v7

    if-eqz v7, :cond_1a

    if-ne v7, v9, :cond_19

    const/4 v9, 0x5

    invoke-virtual {v12, v9}, Lyads/ti6;->a(I)I

    move-result v7

    new-array v9, v7, [I

    const/4 v10, -0x1

    move/from16 v11, p2

    :goto_c
    if-ge v11, v7, :cond_14

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Lyads/ti6;->a(I)I

    move-result v1

    aput v1, v9, v11

    if-le v1, v10, :cond_13

    move v10, v1

    :cond_13
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x6

    const/16 v14, 0x18

    goto :goto_c

    :cond_14
    add-int/lit8 v10, v10, 0x1

    new-array v1, v10, [I

    move/from16 v11, p2

    :goto_d
    if-ge v11, v10, :cond_17

    invoke-virtual {v12, v6}, Lyads/ti6;->a(I)I

    move-result v14

    const/16 v16, 0x1

    add-int/lit8 v14, v14, 0x1

    aput v14, v1, v11

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Lyads/ti6;->a(I)I

    move-result v20

    move/from16 v14, p1

    if-lez v20, :cond_15

    invoke-virtual {v12, v14}, Lyads/ti6;->b(I)V

    :cond_15
    move/from16 v6, p2

    :goto_e
    shl-int v13, v16, v20

    if-ge v6, v13, :cond_16

    invoke-virtual {v12, v14}, Lyads/ti6;->b(I)V

    add-int/lit8 v6, v6, 0x1

    const/16 v14, 0x8

    const/16 v16, 0x1

    goto :goto_e

    :cond_16
    add-int/lit8 v11, v11, 0x1

    const/16 p1, 0x8

    const/4 v6, 0x3

    const/16 v13, 0x10

    goto :goto_d

    :cond_17
    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Lyads/ti6;->b(I)V

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Lyads/ti6;->a(I)I

    move-result v6

    move/from16 v10, p2

    move v11, v10

    move v13, v11

    :goto_f
    if-ge v10, v7, :cond_1b

    aget v14, v9, v10

    aget v14, v1, v14

    add-int/2addr v11, v14

    :goto_10
    if-ge v13, v11, :cond_18

    invoke-virtual {v12, v6}, Lyads/ti6;->b(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_19
    const-string v0, "floor type greater than 1 not decodable: "

    invoke-static {v7, v0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return p2

    :cond_1a
    move/from16 v14, p1

    invoke-virtual {v12, v14}, Lyads/ti6;->b(I)V

    const/16 v1, 0x10

    invoke-virtual {v12, v1}, Lyads/ti6;->b(I)V

    invoke-virtual {v12, v1}, Lyads/ti6;->b(I)V

    const/4 v1, 0x6

    invoke-virtual {v12, v1}, Lyads/ti6;->b(I)V

    invoke-virtual {v12, v14}, Lyads/ti6;->b(I)V

    const/4 v1, 0x4

    invoke-virtual {v12, v1}, Lyads/ti6;->a(I)I

    move-result v6

    const/16 v16, 0x1

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p2

    :goto_11
    if-ge v1, v6, :cond_1b

    invoke-virtual {v12, v14}, Lyads/ti6;->b(I)V

    add-int/lit8 v1, v1, 0x1

    const/16 v14, 0x8

    goto :goto_11

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    const/16 p1, 0x8

    const/4 v1, 0x6

    const/4 v9, 0x1

    const/16 v13, 0x10

    const/16 v14, 0x18

    goto/16 :goto_b

    :cond_1c
    invoke-virtual {v12, v1}, Lyads/ti6;->a(I)I

    move-result v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, p2

    :goto_12
    if-ge v4, v3, :cond_23

    const/16 v6, 0x10

    invoke-virtual {v12, v6}, Lyads/ti6;->a(I)I

    move-result v7

    const/4 v14, 0x2

    if-gt v7, v14, :cond_22

    const/16 v6, 0x18

    invoke-virtual {v12, v6}, Lyads/ti6;->b(I)V

    invoke-virtual {v12, v6}, Lyads/ti6;->b(I)V

    invoke-virtual {v12, v6}, Lyads/ti6;->b(I)V

    invoke-virtual {v12, v1}, Lyads/ti6;->a(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Lyads/ti6;->b(I)V

    new-array v1, v7, [I

    move/from16 v9, p2

    :goto_13
    if-ge v9, v7, :cond_1e

    const/4 v10, 0x3

    invoke-virtual {v12, v10}, Lyads/ti6;->a(I)I

    move-result v11

    invoke-virtual {v12}, Lyads/ti6;->a()Z

    move-result v13

    if-eqz v13, :cond_1d

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Lyads/ti6;->a(I)I

    move-result v17

    goto :goto_14

    :cond_1d
    const/4 v13, 0x5

    move/from16 v17, p2

    :goto_14
    mul-int/lit8 v17, v17, 0x8

    add-int v17, v17, v11

    aput v17, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_1e
    const/4 v10, 0x3

    const/4 v13, 0x5

    move/from16 v9, p2

    :goto_15
    if-ge v9, v7, :cond_21

    move/from16 v11, p2

    :goto_16
    if-ge v11, v14, :cond_20

    aget v17, v1, v9

    const/16 v16, 0x1

    shl-int v19, v16, v11

    and-int v17, v17, v19

    if-eqz v17, :cond_1f

    invoke-virtual {v12, v14}, Lyads/ti6;->b(I)V

    :cond_1f
    add-int/lit8 v11, v11, 0x1

    const/16 v14, 0x8

    goto :goto_16

    :cond_20
    add-int/lit8 v9, v9, 0x1

    const/16 v14, 0x8

    goto :goto_15

    :cond_21
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x6

    const/16 v16, 0x1

    goto :goto_12

    :cond_22
    const-string v0, "residueType greater than 2 is not decodable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return p2

    :cond_23
    invoke-virtual {v12, v1}, Lyads/ti6;->a(I)I

    move-result v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p2

    :goto_17
    if-ge v1, v3, :cond_2c

    const/16 v6, 0x10

    invoke-virtual {v12, v6}, Lyads/ti6;->a(I)I

    move-result v4

    if-eqz v4, :cond_24

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mapping type other than 0 not supported: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "VorbisUtil"

    invoke-static {v6, v4}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    const/4 v14, 0x2

    goto/16 :goto_1e

    :cond_24
    invoke-virtual {v12}, Lyads/ti6;->a()Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Lyads/ti6;->a(I)I

    move-result v4

    const/16 v16, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_25
    const/16 v16, 0x1

    move/from16 v4, v16

    :goto_18
    invoke-virtual {v12}, Lyads/ti6;->a()Z

    move-result v6

    if-eqz v6, :cond_28

    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Lyads/ti6;->a(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v7, p2

    :goto_19
    if-ge v7, v6, :cond_28

    add-int/lit8 v9, v5, -0x1

    move/from16 v11, p2

    move v10, v9

    :goto_1a
    if-lez v10, :cond_26

    add-int/lit8 v11, v11, 0x1

    ushr-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_26
    invoke-virtual {v12, v11}, Lyads/ti6;->b(I)V

    move/from16 v10, p2

    :goto_1b
    if-lez v9, :cond_27

    add-int/lit8 v10, v10, 0x1

    ushr-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_27
    invoke-virtual {v12, v10}, Lyads/ti6;->b(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_28
    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Lyads/ti6;->a(I)I

    move-result v6

    if-nez v6, :cond_2b

    const/4 v9, 0x1

    if-le v4, v9, :cond_29

    move/from16 v6, p2

    :goto_1c
    if-ge v6, v5, :cond_29

    const/4 v7, 0x4

    invoke-virtual {v12, v7}, Lyads/ti6;->b(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_29
    const/4 v7, 0x4

    move/from16 v6, p2

    :goto_1d
    if-ge v6, v4, :cond_2a

    const/16 v9, 0x8

    invoke-virtual {v12, v9}, Lyads/ti6;->b(I)V

    invoke-virtual {v12, v9}, Lyads/ti6;->b(I)V

    invoke-virtual {v12, v9}, Lyads/ti6;->b(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_2a
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_17

    :cond_2b
    const-string v0, "to reserved bits must be zero after mapping coupling steps"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return p2

    :cond_2c
    const/4 v1, 0x6

    invoke-virtual {v12, v1}, Lyads/ti6;->a(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    new-array v9, v3, [Lyads/bj6;

    move/from16 v4, p2

    :goto_1f
    if-ge v4, v3, :cond_2d

    invoke-virtual {v12}, Lyads/ti6;->a()Z

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {v12, v6}, Lyads/ti6;->a(I)I

    invoke-virtual {v12, v6}, Lyads/ti6;->a(I)I

    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Lyads/ti6;->a(I)I

    new-instance v7, Lyads/bj6;

    invoke-direct {v7, v5}, Lyads/bj6;-><init>(Z)V

    aput-object v7, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_2d
    invoke-virtual {v12}, Lyads/ti6;->a()Z

    move-result v3

    if-eqz v3, :cond_30

    move/from16 v10, p2

    :goto_20
    if-lez v1, :cond_2e

    add-int/lit8 v10, v10, 0x1

    ushr-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2e
    new-instance v5, Lyads/yi6;

    move-object v6, v15

    move-object/from16 v7, v21

    invoke-direct/range {v5 .. v10}, Lyads/yi6;-><init>(Lyads/cj6;Lyads/aj6;[B[Lyads/bj6;I)V

    move-object v3, v5

    :goto_21
    iput-object v3, v0, Lyads/zi6;->n:Lyads/yi6;

    if-nez v3, :cond_2f

    const/16 v16, 0x1

    return v16

    :cond_2f
    iget-object v0, v3, Lyads/yi6;->a:Lyads/cj6;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lyads/cj6;->g:[B

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lyads/yi6;->c:[B

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Lyads/yi6;->b:Lyads/aj6;

    iget-object v3, v3, Lyads/aj6;->a:[Ljava/lang/String;

    invoke-static {v3}, Lyads/oe3;->b([Ljava/lang/Object;)Lyads/k55;

    move-result-object v3

    invoke-static {v3}, Lyads/dj6;->a(Ljava/util/List;)Lyads/h84;

    move-result-object v3

    new-instance v4, Lyads/uz2;

    invoke-direct {v4}, Lyads/uz2;-><init>()V

    const-string v5, "audio/vorbis"

    iput-object v5, v4, Lyads/uz2;->k:Ljava/lang/String;

    iget v5, v0, Lyads/cj6;->d:I

    iput v5, v4, Lyads/uz2;->f:I

    iget v5, v0, Lyads/cj6;->c:I

    iput v5, v4, Lyads/uz2;->g:I

    iget v5, v0, Lyads/cj6;->a:I

    iput v5, v4, Lyads/uz2;->x:I

    iget v0, v0, Lyads/cj6;->b:I

    iput v0, v4, Lyads/uz2;->y:I

    iput-object v1, v4, Lyads/uz2;->m:Ljava/util/List;

    iput-object v3, v4, Lyads/uz2;->i:Lyads/h84;

    new-instance v0, Lyads/vz2;

    invoke-direct {v0, v4}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object v0, v2, Lyads/ds5;->a:Lyads/vz2;

    const/16 v16, 0x1

    return v16

    :cond_30
    const-string v0, "framing bit after modes not set as expected"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return p2
.end method

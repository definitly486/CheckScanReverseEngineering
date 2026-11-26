.class public final Lbm2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# virtual methods
.method public a(Lsa3;Lsa3;)F
    .locals 4

    iget v0, p1, Lw57;->a:F

    float-to-int v0, v0

    iget v1, p1, Lw57;->b:F

    float-to-int v1, v1

    iget v2, p2, Lw57;->a:F

    float-to-int v2, v2

    iget v3, p2, Lw57;->b:F

    float-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lbm2;->d(IIII)F

    move-result v0

    iget p2, p2, Lw57;->a:F

    float-to-int p2, p2

    iget p1, p1, Lw57;->a:F

    float-to-int p1, p1

    invoke-virtual {p0, p2, v3, p1, v1}, Lbm2;->d(IIII)F

    move-result p0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    const/high16 p2, 0x40e00000    # 7.0f

    if-eqz p1, :cond_0

    div-float/2addr p0, p2

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_1

    div-float/2addr v0, p2

    return v0

    :cond_1
    add-float/2addr v0, p0

    const/high16 p0, 0x41600000    # 14.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public b(FFII)Lmc;
    .locals 11

    mul-float/2addr p2, p1

    float-to-int p2, p2

    sub-int v0, p3, p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v0, p0, Lbm2;->a:Ljava/lang/Object;

    check-cast v0, Lqi0;

    iget v2, v0, Lqi0;->b:I

    const/4 v10, 0x1

    sub-int/2addr v2, v10

    add-int/2addr p3, p2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    sub-int v6, p3, v4

    int-to-float p3, v6

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v2, p1

    cmpg-float p3, p3, v2

    if-ltz p3, :cond_c

    sub-int p3, p4, p2

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget p3, v0, Lqi0;->c:I

    sub-int/2addr p3, v10

    add-int/2addr p4, p2

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v7, p2, v5

    int-to-float p2, v7

    cmpg-float p2, p2, v2

    if-ltz p2, :cond_b

    new-instance v2, Lnc;

    iget-object p2, p0, Lbm2;->a:Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Lqi0;

    iget-object p0, p0, Lbm2;->b:Ljava/lang/Object;

    move-object v9, p0

    check-cast v9, Lx57;

    move v8, p1

    invoke-direct/range {v2 .. v9}, Lnc;-><init>(Lqi0;IIIIFLx57;)V

    iget p0, v2, Lnc;->e:I

    iget p1, v2, Lnc;->c:I

    add-int/2addr p0, p1

    iget p2, v2, Lnc;->f:I

    div-int/lit8 p3, p2, 0x2

    iget p4, v2, Lnc;->d:I

    add-int/2addr p3, p4

    const/4 p4, 0x3

    new-array p4, p4, [I

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_9

    and-int/lit8 v4, v0, 0x1

    const/4 v5, 0x2

    if-nez v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    div-int/2addr v4, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v0, 0x1

    div-int/2addr v4, v5

    neg-int v4, v4

    :goto_1
    add-int/2addr v4, p3

    aput v1, p4, v1

    aput v1, p4, v10

    aput v1, p4, v5

    move v6, p1

    :goto_2
    if-ge v6, p0, :cond_1

    invoke-virtual {v3, v6, v4}, Lqi0;->c(II)Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    move v7, v1

    :goto_3
    if-ge v6, p0, :cond_7

    invoke-virtual {v3, v6, v4}, Lqi0;->c(II)Z

    move-result v8

    if-eqz v8, :cond_5

    if-ne v7, v10, :cond_2

    aget v8, p4, v7

    add-int/2addr v8, v10

    aput v8, p4, v7

    goto :goto_4

    :cond_2
    if-ne v7, v5, :cond_4

    invoke-virtual {v2, p4}, Lnc;->a([I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, p4, v4, v6}, Lnc;->b([III)Lmc;

    move-result-object v7

    if-eqz v7, :cond_3

    return-object v7

    :cond_3
    aget v7, p4, v5

    aput v7, p4, v1

    aput v10, p4, v10

    aput v1, p4, v5

    move v7, v10

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    aget v8, p4, v7

    add-int/2addr v8, v10

    aput v8, p4, v7

    goto :goto_4

    :cond_5
    if-ne v7, v10, :cond_6

    add-int/lit8 v7, v7, 0x1

    :cond_6
    aget v8, p4, v7

    add-int/2addr v8, v10

    aput v8, p4, v7

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v2, p4}, Lnc;->a([I)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v2, p4, v4, p0}, Lnc;->b([III)Lmc;

    move-result-object v4

    if-eqz v4, :cond_8

    return-object v4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    iget-object p0, v2, Lnc;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmc;

    return-object p0

    :cond_a
    sget-object p0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw p0

    :cond_b
    sget-object p0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw p0

    :cond_c
    sget-object p0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw p0
.end method

.method public c(IIII)F
    .locals 17

    sub-int v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p3, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move/from16 v4, p1

    move/from16 v1, p2

    move/from16 v6, p3

    move/from16 v5, p4

    goto :goto_1

    :cond_1
    move/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    :goto_1
    sub-int v7, v5, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v8, v6, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    neg-int v10, v7

    const/4 v11, 0x2

    div-int/2addr v10, v11

    const/4 v12, -0x1

    if-ge v1, v5, :cond_2

    move v13, v3

    goto :goto_2

    :cond_2
    move v13, v12

    :goto_2
    if-ge v4, v6, :cond_3

    move v12, v3

    :cond_3
    add-int/2addr v5, v13

    move v14, v1

    move v15, v4

    const/4 v2, 0x0

    :goto_3
    if-eq v14, v5, :cond_b

    if-eqz v0, :cond_4

    move v11, v15

    goto :goto_4

    :cond_4
    move v11, v14

    :goto_4
    move/from16 v16, v0

    if-eqz v0, :cond_5

    move v0, v14

    goto :goto_5

    :cond_5
    move v0, v15

    :goto_5
    move/from16 p2, v1

    if-ne v2, v3, :cond_6

    move v1, v3

    move/from16 p3, v4

    move-object/from16 v3, p0

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    move-object/from16 v3, p0

    move/from16 p3, v4

    :goto_6
    iget-object v4, v3, Lbm2;->a:Ljava/lang/Object;

    check-cast v4, Lqi0;

    invoke-virtual {v4, v11, v0}, Lqi0;->c(II)Z

    move-result v0

    if-ne v1, v0, :cond_8

    const/4 v0, 0x2

    if-ne v2, v0, :cond_7

    sub-int v14, v14, p2

    sub-int v15, v15, p3

    mul-int/2addr v14, v14

    mul-int/2addr v15, v15

    add-int/2addr v15, v14

    int-to-double v0, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    :goto_7
    double-to-float v0, v0

    return v0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    :cond_8
    add-int/2addr v10, v9

    if-lez v10, :cond_a

    if-ne v15, v6, :cond_9

    const/4 v0, 0x2

    goto :goto_8

    :cond_9
    add-int/2addr v15, v12

    sub-int/2addr v10, v7

    :cond_a
    add-int/2addr v14, v13

    move/from16 v1, p2

    move/from16 v4, p3

    move/from16 v0, v16

    const/4 v3, 0x1

    const/4 v11, 0x2

    goto :goto_3

    :cond_b
    move/from16 p2, v1

    move v0, v11

    :goto_8
    if-ne v2, v0, :cond_c

    sub-int v5, v5, p2

    mul-int/2addr v5, v5

    mul-int/2addr v8, v8

    add-int/2addr v8, v5

    int-to-double v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_7

    :cond_c
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public d(IIII)F
    .locals 7

    iget-object v0, p0, Lbm2;->a:Ljava/lang/Object;

    check-cast v0, Lqi0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lbm2;->c(IIII)F

    move-result v1

    sub-int/2addr p3, p1

    sub-int p3, p1, p3

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez p3, :cond_0

    int-to-float v4, p1

    sub-int p3, p1, p3

    int-to-float p3, p3

    div-float/2addr v4, p3

    move p3, v2

    goto :goto_0

    :cond_0
    iget v4, v0, Lqi0;->b:I

    if-lt p3, v4, :cond_1

    add-int/lit8 v5, v4, -0x1

    sub-int/2addr v5, p1

    int-to-float v5, v5

    sub-int/2addr p3, p1

    int-to-float p3, p3

    div-float p3, v5, p3

    add-int/lit8 v4, v4, -0x1

    move v6, v4

    move v4, p3

    move p3, v6

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    int-to-float v5, p2

    sub-int/2addr p4, p2

    int-to-float p4, p4

    mul-float/2addr p4, v4

    sub-float p4, v5, p4

    float-to-int p4, p4

    if-gez p4, :cond_2

    sub-int p4, p2, p4

    int-to-float p4, p4

    div-float/2addr v5, p4

    goto :goto_1

    :cond_2
    iget v0, v0, Lqi0;->c:I

    if-lt p4, v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    sub-int/2addr v2, p2

    int-to-float v2, v2

    sub-int/2addr p4, p2

    int-to-float p4, p4

    div-float v5, v2, p4

    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    :cond_3
    move v2, p4

    move v5, v3

    :goto_1
    int-to-float p4, p1

    sub-int/2addr p3, p1

    int-to-float p3, p3

    mul-float/2addr p3, v5

    add-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3, v2}, Lbm2;->c(IIII)F

    move-result p0

    add-float/2addr p0, v1

    sub-float/2addr p0, v3

    return p0
.end method

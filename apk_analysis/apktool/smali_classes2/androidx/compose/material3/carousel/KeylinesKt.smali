.class public final Landroidx/compose/material3/carousel/KeylinesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(FLandroidx/compose/material3/carousel/Arrangement;FLandroidx/compose/material3/carousel/KeylineListScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/carousel/KeylinesKt;->createLeftAlignedKeylineList$lambda$10(FLandroidx/compose/material3/carousel/Arrangement;FLandroidx/compose/material3/carousel/KeylineListScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(FLandroidx/compose/material3/carousel/Arrangement;FLandroidx/compose/material3/carousel/KeylineListScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/carousel/KeylinesKt;->createCenterAlignedKeylineList$lambda$16(FLandroidx/compose/material3/carousel/Arrangement;FLandroidx/compose/material3/carousel/KeylineListScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final calculateMediumChildSize(FFF)F
    .locals 2

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, p2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const v0, 0x3f59999a    # 0.85f

    mul-float/2addr v0, p1

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    const p0, 0x3f99999a    # 1.2f

    mul-float/2addr p2, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    :cond_0
    return p0
.end method

.method public static final createCenterAlignedKeylineList(FFFFLandroidx/compose/material3/carousel/Arrangement;)Landroidx/compose/material3/carousel/KeylineList;
    .locals 2

    sget-object v0, Landroidx/compose/material3/carousel/CarouselAlignment;->Companion:Landroidx/compose/material3/carousel/CarouselAlignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/CarouselAlignment$Companion;->getCenter-NUL3oTo()I

    move-result v0

    new-instance v1, Lbg4;

    invoke-direct {v1, p2, p4, p3}, Lbg4;-><init>(FLandroidx/compose/material3/carousel/Arrangement;F)V

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/material3/carousel/KeylineListKt;->keylineListOf-WNYm7Xg(FFILnl3;)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0
.end method

.method private static final createCenterAlignedKeylineList$lambda$16(FLandroidx/compose/material3/carousel/Arrangement;FLandroidx/compose/material3/carousel/KeylineListScope;)Lj59;
    .locals 6

    const/4 v0, 0x1

    invoke-interface {p3, p0, v0}, Landroidx/compose/material3/carousel/KeylineListScope;->add(FZ)V

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Arrangement;->getSmallCount()I

    move-result p0

    const/4 v1, 0x2

    div-int/2addr p0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, p0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Arrangement;->getSmallSize()F

    move-result v5

    invoke-static {p3, v5, v2, v1, v4}, Landroidx/compose/material3/carousel/KeylineListScope;->add$default(Landroidx/compose/material3/carousel/KeylineListScope;FZILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Arrangement;->getMediumCount()I

    move-result p0

    div-int/2addr p0, v1

    move v3, v2

    :goto_1
    if-ge v3, p0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Arrangement;->getMediumSize()F

    move-result v5

    invoke-static {p3, v5, v2, v1, v4}, Landroidx/compose/material3/carousel/KeylineListScope;->add$default(Landroidx/compose/material3/carousel/KeylineListScope;FZILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Arrangement;->getLargeCount()I

    move-result p0

    move v3, v2

    :goto_2
    if-ge v3, p0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Arrangement;->getLargeSize()F

    move-result v5

    invoke-static {p3, v5, v2, v1, v4}, Landroidx/compose/material3/carousel/KeylineListScope;->add$default(Landroidx/compose/material3/carousel/KeylineListScope;FZILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Arrangement;->getMediumCount()I

    move-result p0

    div-int/2addr p0, v1

    move v3, v2

    :goto_3
    if-ge v3, p0, :cond_3

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Arrangement;->getMediumSize()F

    move-result v5

    invoke-static {p3, v5, v2, v1, v4}, Landroidx/compose/material3/carousel/KeylineListScope;->add$default(Landroidx/compose/material3/carousel/KeylineListScope;FZILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Arrangement;->getSmallCount()I

    move-result p0

    div-int/2addr p0, v1

    move v3, v2

    :goto_4
    if-ge v3, p0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Arrangement;->getSmallSize()F

    move-result v5

    invoke-static {p3, v5, v2, v1, v4}, Landroidx/compose/material3/carousel/KeylineListScope;->add$default(Landroidx/compose/material3/carousel/KeylineListScope;FZILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    invoke-interface {p3, p2, v0}, Landroidx/compose/material3/carousel/KeylineListScope;->add(FZ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final createLeftAlignedKeylineList(FFFFLandroidx/compose/material3/carousel/Arrangement;)Landroidx/compose/material3/carousel/KeylineList;
    .locals 2

    sget-object v0, Landroidx/compose/material3/carousel/CarouselAlignment;->Companion:Landroidx/compose/material3/carousel/CarouselAlignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/CarouselAlignment$Companion;->getStart-NUL3oTo()I

    move-result v0

    new-instance v1, Lag4;

    invoke-direct {v1, p2, p4, p3}, Lag4;-><init>(FLandroidx/compose/material3/carousel/Arrangement;F)V

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/material3/carousel/KeylineListKt;->keylineListOf-WNYm7Xg(FFILnl3;)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0
.end method

.method private static final createLeftAlignedKeylineList$lambda$10(FLandroidx/compose/material3/carousel/Arrangement;FLandroidx/compose/material3/carousel/KeylineListScope;)Lj59;
    .locals 6

    const/4 v0, 0x1

    invoke-interface {p3, p0, v0}, Landroidx/compose/material3/carousel/KeylineListScope;->add(FZ)V

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Arrangement;->getLargeCount()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge v2, p0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Arrangement;->getLargeSize()F

    move-result v5

    invoke-static {p3, v5, v1, v4, v3}, Landroidx/compose/material3/carousel/KeylineListScope;->add$default(Landroidx/compose/material3/carousel/KeylineListScope;FZILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Arrangement;->getMediumCount()I

    move-result p0

    move v2, v1

    :goto_1
    if-ge v2, p0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Arrangement;->getMediumSize()F

    move-result v5

    invoke-static {p3, v5, v1, v4, v3}, Landroidx/compose/material3/carousel/KeylineListScope;->add$default(Landroidx/compose/material3/carousel/KeylineListScope;FZILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Arrangement;->getSmallCount()I

    move-result p0

    move v2, v1

    :goto_2
    if-ge v2, p0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/material3/carousel/Arrangement;->getSmallSize()F

    move-result v5

    invoke-static {p3, v5, v1, v4, v3}, Landroidx/compose/material3/carousel/KeylineListScope;->add$default(Landroidx/compose/material3/carousel/KeylineListScope;FZILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {p3, p2, v0}, Landroidx/compose/material3/carousel/KeylineListScope;->add(FZ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final heroKeylineList(Landroidx/compose/ui/unit/Density;FLjava/lang/Float;FIZFF)Landroidx/compose/material3/carousel/KeylineList;
    .locals 15

    move/from16 v1, p1

    move/from16 v11, p4

    move/from16 v4, p6

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/compose/material3/carousel/KeylineListKt;->emptyKeylineList()Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p5, :cond_1

    const/4 v3, 0x3

    if-lt v11, v3, :cond_1

    move v12, v2

    goto :goto_0

    :cond_1
    move v12, v0

    :goto_0
    new-array v3, v2, [I

    if-eqz v12, :cond_2

    const/4 v5, 0x2

    aput v5, v3, v0

    goto :goto_1

    :cond_2
    aput v2, v3, v0

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v5, 0x40400000    # 3.0f

    div-float v5, v9, v5

    move/from16 v6, p7

    invoke-static {v5, v4, v6}, Lkx6;->d(FFF)F

    move-result v5

    invoke-static {v3}, Lyr;->W([I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    const/high16 v8, 0x3fa00000    # 1.25f

    mul-float/2addr v8, v4

    add-float/2addr v8, v7

    cmpg-float v7, v1, v8

    if-gez v7, :cond_4

    new-array v3, v2, [I

    aput v0, v3, v0

    :cond_4
    invoke-static {v3}, Lyr;->W([I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4, v7, v1, v9}, Lrg;->b(FFFF)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-int v7, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    div-float v8, v1, v9

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v8, v13

    float-to-int v8, v8

    sub-int v7, v8, v7

    add-int/2addr v7, v2

    new-array v10, v7, [I

    move v2, v0

    :goto_3
    if-ge v2, v7, :cond_5

    sub-int v13, v8, v2

    aput v13, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    sget-object v2, Landroidx/compose/material3/carousel/CarouselDefaults;->INSTANCE:Landroidx/compose/material3/carousel/CarouselDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/carousel/CarouselDefaults;->getAnchorSize-D9Ej5fM$material3()F

    move-result v2

    invoke-interface {p0, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    move v2, v0

    sget-object v0, Landroidx/compose/material3/carousel/Arrangement;->Companion:Landroidx/compose/material3/carousel/Arrangement$Companion;

    const/4 v7, 0x0

    filled-new-array {v2}, [I

    move-result-object v8

    move v2, v6

    move-object v6, v3

    move v3, v5

    move v5, v2

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v10}, Landroidx/compose/material3/carousel/Arrangement$Companion;->findLowestCostArrangement(FFFFF[IF[IF[I)Landroidx/compose/material3/carousel/Arrangement;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Landroidx/compose/material3/carousel/KeylineListKt;->emptyKeylineList()Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0

    :cond_6
    if-eqz v12, :cond_7

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/Arrangement;->itemCount()I

    move-result v3

    if-lt v11, v3, :cond_7

    invoke-static {v1, v2, p0, p0, v0}, Landroidx/compose/material3/carousel/KeylinesKt;->createCenterAlignedKeylineList(FFFFLandroidx/compose/material3/carousel/Arrangement;)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {v1, v2, p0, p0, v0}, Landroidx/compose/material3/carousel/KeylinesKt;->createLeftAlignedKeylineList(FFFFLandroidx/compose/material3/carousel/Arrangement;)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic heroKeylineList$default(Landroidx/compose/ui/unit/Density;FLjava/lang/Float;FIZFFILjava/lang/Object;)Landroidx/compose/material3/carousel/KeylineList;
    .locals 8

    move/from16 v0, p8

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    and-int/lit8 p5, v0, 0x40

    if-eqz p5, :cond_1

    sget-object p5, Landroidx/compose/material3/carousel/CarouselDefaults;->INSTANCE:Landroidx/compose/material3/carousel/CarouselDefaults;

    invoke-virtual {p5}, Landroidx/compose/material3/carousel/CarouselDefaults;->getMinSmallItemSize-D9Ej5fM()F

    move-result p5

    invoke-interface {p0, p5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p6

    :cond_1
    move v6, p6

    and-int/lit16 p5, v0, 0x80

    if-eqz p5, :cond_2

    sget-object p5, Landroidx/compose/material3/carousel/CarouselDefaults;->INSTANCE:Landroidx/compose/material3/carousel/CarouselDefaults;

    invoke-virtual {p5}, Landroidx/compose/material3/carousel/CarouselDefaults;->getMaxSmallItemSize-D9Ej5fM()F

    move-result p5

    invoke-interface {p0, p5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p7

    :cond_2
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/carousel/KeylinesKt;->heroKeylineList(Landroidx/compose/ui/unit/Density;FLjava/lang/Float;FIZFF)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0
.end method

.method public static final multiBrowseKeylineList(Landroidx/compose/ui/unit/Density;FFFIFF)Landroidx/compose/material3/carousel/KeylineList;
    .locals 15

    move/from16 v1, p1

    move/from16 v0, p2

    move/from16 v11, p4

    move/from16 v4, p5

    move/from16 v5, p6

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v2, v0, v2

    if-nez v2, :cond_1

    :goto_0
    invoke-static {}, Landroidx/compose/material3/carousel/KeylineListKt;->emptyKeylineList()Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v12, 0x1

    new-array v2, v12, [I

    const/4 v3, 0x0

    aput v12, v2, v3

    filled-new-array {v12, v3}, [I

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v0, 0x40400000    # 3.0f

    div-float v0, v9, v0

    invoke-static {v0, v4, v5}, Lkx6;->d(FFF)F

    move-result v0

    add-float v6, v9, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    mul-float/2addr v7, v4

    cmpg-float v7, v1, v7

    if-gez v7, :cond_2

    new-array v2, v12, [I

    aput v3, v2, v3

    :cond_2
    invoke-static {v8}, Lyr;->W([I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    sub-float v7, v1, v7

    invoke-static {v2}, Lyr;->W([I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v5, v10, v7, v9}, Lrg;->b(FFFF)F

    move-result v7

    float-to-double v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-float v7, v13

    float-to-int v7, v7

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    div-float v10, v1, v9

    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v10, v13

    float-to-int v10, v10

    sub-int v7, v10, v7

    add-int/2addr v7, v12

    move v13, v10

    new-array v10, v7, [I

    :goto_1
    if-ge v3, v7, :cond_3

    sub-int v14, v13, v3

    aput v14, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sget-object v3, Landroidx/compose/material3/carousel/CarouselDefaults;->INSTANCE:Landroidx/compose/material3/carousel/CarouselDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/carousel/CarouselDefaults;->getAnchorSize-D9Ej5fM$material3()F

    move-result v3

    invoke-interface {p0, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    move v3, v0

    sget-object v0, Landroidx/compose/material3/carousel/Arrangement;->Companion:Landroidx/compose/material3/carousel/Arrangement$Companion;

    move v7, v6

    move-object v6, v2

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v10}, Landroidx/compose/material3/carousel/Arrangement$Companion;->findLowestCostArrangement(FFFFF[IF[IF[I)Landroidx/compose/material3/carousel/Arrangement;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/Arrangement;->itemCount()I

    move-result v1

    if-le v1, v11, :cond_7

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/Arrangement;->itemCount()I

    move-result v1

    sub-int/2addr v1, v11

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/Arrangement;->getSmallCount()I

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/Arrangement;->getMediumCount()I

    move-result v0

    :goto_2
    if-lez v1, :cond_6

    if-lez v2, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_4
    if-le v0, v12, :cond_5

    add-int/lit8 v0, v0, -0x1

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    sget-object v1, Landroidx/compose/material3/carousel/Arrangement;->Companion:Landroidx/compose/material3/carousel/Arrangement$Companion;

    filled-new-array {v2}, [I

    move-result-object v6

    filled-new-array {v0}, [I

    move-result-object v8

    move/from16 v2, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v0, v1

    move/from16 v1, p1

    invoke-virtual/range {v0 .. v10}, Landroidx/compose/material3/carousel/Arrangement$Companion;->findLowestCostArrangement(FFFFF[IF[IF[I)Landroidx/compose/material3/carousel/Arrangement;

    move-result-object v0

    goto :goto_4

    :cond_7
    move/from16 v1, p1

    :goto_4
    if-nez v0, :cond_8

    invoke-static {}, Landroidx/compose/material3/carousel/KeylineListKt;->emptyKeylineList()Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0

    :cond_8
    move/from16 v2, p3

    invoke-static {v1, v2, p0, p0, v0}, Landroidx/compose/material3/carousel/KeylinesKt;->createLeftAlignedKeylineList(FFFFLandroidx/compose/material3/carousel/Arrangement;)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic multiBrowseKeylineList$default(Landroidx/compose/ui/unit/Density;FFFIFFILjava/lang/Object;)Landroidx/compose/material3/carousel/KeylineList;
    .locals 7

    and-int/lit8 p8, p7, 0x20

    if-eqz p8, :cond_0

    sget-object p5, Landroidx/compose/material3/carousel/CarouselDefaults;->INSTANCE:Landroidx/compose/material3/carousel/CarouselDefaults;

    invoke-virtual {p5}, Landroidx/compose/material3/carousel/CarouselDefaults;->getMinSmallItemSize-D9Ej5fM()F

    move-result p5

    invoke-interface {p0, p5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p5

    :cond_0
    move v5, p5

    and-int/lit8 p5, p7, 0x40

    if-eqz p5, :cond_1

    sget-object p5, Landroidx/compose/material3/carousel/CarouselDefaults;->INSTANCE:Landroidx/compose/material3/carousel/CarouselDefaults;

    invoke-virtual {p5}, Landroidx/compose/material3/carousel/CarouselDefaults;->getMaxSmallItemSize-D9Ej5fM()F

    move-result p5

    invoke-interface {p0, p5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p6

    :cond_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/carousel/KeylinesKt;->multiBrowseKeylineList(Landroidx/compose/ui/unit/Density;FFFIFF)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0
.end method

.method public static final uncontainedKeylineList(Landroidx/compose/ui/unit/Density;FFF)Landroidx/compose/material3/carousel/KeylineList;
    .locals 10

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v1, p2, v0

    if-nez v1, :cond_1

    :goto_0
    invoke-static {}, Landroidx/compose/material3/carousel/KeylineListKt;->emptyKeylineList()Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0

    :cond_1
    add-float v1, p2, p3

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    div-float v1, p1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v1, v9

    mul-float/2addr v1, v8

    sub-float v1, p1, v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    :goto_1
    move v7, v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    sget-object v0, Landroidx/compose/material3/carousel/CarouselDefaults;->INSTANCE:Landroidx/compose/material3/carousel/CarouselDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/carousel/CarouselDefaults;->getAnchorSize-D9Ej5fM$material3()F

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    invoke-static {p0, v8, v1}, Landroidx/compose/material3/carousel/KeylinesKt;->calculateMediumChildSize(FFF)F

    move-result v6

    new-instance v2, Landroidx/compose/material3/carousel/Arrangement;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v2 .. v9}, Landroidx/compose/material3/carousel/Arrangement;-><init>(IFIFIFI)V

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v6, v0

    invoke-static {p2, v6}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p3, p2, p0, v2}, Landroidx/compose/material3/carousel/KeylinesKt;->createLeftAlignedKeylineList(FFFFLandroidx/compose/material3/carousel/Arrangement;)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0
.end method

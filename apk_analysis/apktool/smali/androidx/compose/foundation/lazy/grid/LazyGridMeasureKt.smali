.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->measureLazyGrid_t1x4au0$lambda$8(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final addAllFromArray(Ljava/util/List;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;[TT;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic b(Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->measureLazyGrid_t1x4au0$lambda$8$0(Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->measureLazyGrid_t1x4au0$lambda$2(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final calculateExtraItems(Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Lnl3;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->spanOf(I)I

    move-result v8

    invoke-virtual {p2, v2, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->childConstraints-JhjzzOo$foundation(II)J

    move-result-wide v9

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object p1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v5, p1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object p1, v5

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0

    :cond_3
    return-object v1
.end method

.method private static final calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p9

    move/from16 v5, p11

    if-eqz p8, :cond_0

    move v8, v3

    :goto_0
    move/from16 v6, p6

    goto :goto_1

    :cond_0
    move v8, v2

    goto :goto_0

    :goto_1
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x0

    move/from16 v9, p5

    if-ge v9, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    move v6, v7

    :goto_2
    if-eqz v6, :cond_3

    if-nez p7, :cond_2

    goto :goto_3

    :cond_2
    const-string v9, "non-zero firstLineScrollOffset"

    invoke-static {v9}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_3
    :goto_3
    move-object v9, p0

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v10

    move v11, v7

    move v12, v11

    :goto_4
    if-ge v11, v10, :cond_4

    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v13

    array-length v13, v13

    add-int/2addr v12, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v6, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    const-string v0, "no items"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v9, v0, [I

    :goto_6
    if-ge v7, v0, :cond_6

    invoke-static {v7, v5, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSize()I

    move-result v1

    aput v1, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_6
    new-array v11, v0, [I

    if-eqz p8, :cond_8

    if-eqz v4, :cond_7

    move-object/from16 v7, p12

    invoke-interface {v4, v7, v8, v9, v11}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    goto :goto_7

    :cond_7
    const-string p0, "null verticalArrangement"

    invoke-static {p0}, Lng;->f(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0

    :cond_8
    move-object/from16 v7, p12

    if-eqz p10, :cond_d

    sget-object v10, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v6, p10

    invoke-interface/range {v6 .. v11}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    :goto_7
    invoke-static {v11}, Lyr;->L([I)Ly74;

    move-result-object v1

    if-eqz v5, :cond_9

    invoke-static {v1}, Lkx6;->l(Ly74;)Lw74;

    move-result-object v1

    :cond_9
    iget v4, v1, Lw74;->b:I

    iget v6, v1, Lw74;->c:I

    iget v1, v1, Lw74;->d:I

    if-lez v1, :cond_a

    if-le v4, v6, :cond_b

    :cond_a
    if-gez v1, :cond_12

    if-gt v6, v4, :cond_12

    :cond_b
    :goto_8
    aget v7, v11, v4

    invoke-static {v4, v5, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v9

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v5, :cond_c

    sub-int v7, v8, v7

    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSize()I

    move-result v10

    sub-int/2addr v7, v10

    :cond_c
    invoke-virtual {v9, v7, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v7

    invoke-static {v13, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->addAllFromArray(Ljava/util/List;[Ljava/lang/Object;)V

    if-eq v4, v6, :cond_12

    add-int/2addr v4, v1

    goto :goto_8

    :cond_d
    const-string p0, "null horizontalArrangement"

    invoke-static {p0}, Lng;->f(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0

    :cond_e
    move-object v4, p1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_10

    move/from16 v5, p7

    :goto_9
    add-int/lit8 v6, v4, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v8

    sub-int/2addr v5, v8

    invoke-virtual {v4, v5, v7, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIII)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez v6, :cond_f

    goto :goto_a

    :cond_f
    move v4, v6

    goto :goto_9

    :cond_10
    :goto_a
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v0

    move/from16 v4, p7

    move v5, v7

    :goto_b
    if-ge v5, v0, :cond_11

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v6, v4, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v8

    invoke-static {v13, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->addAllFromArray(Ljava/util/List;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_11
    move-object p0, v1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    move v0, v7

    :goto_c
    if-ge v0, p0, :cond_12

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    invoke-virtual {v5, v4, v7, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIII)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_12
    return-object v13
.end method

.method private static final calculateItemsOffsets$reverseAware(IZI)I
    .locals 0

    if-nez p1, :cond_0

    return p0

    :cond_0
    sub-int/2addr p2, p0

    add-int/lit8 p2, p2, -0x1

    return p2
.end method

.method public static synthetic d(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->measureLazyGrid_t1x4au0$lambda$7(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object p0

    return-object p0
.end method

.method private static final linesRetainedForLookahead(IILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;ZLjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;",
            "Z",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_8

    if-eqz p5, :cond_8

    invoke-interface {p5}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    invoke-interface {p5}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, -0x1

    if-ge v2, v1, :cond_2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v2

    if-le v2, p0, :cond_1

    if-eqz v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v2

    if-gt v2, p0, :cond_1

    :cond_0
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_1
    invoke-interface {p5}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-static {p4}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    const/4 p5, 0x0

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getIndex()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_3
    move p4, p5

    :goto_2
    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result p0

    invoke-interface {p3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result p3

    add-int/lit8 p1, p1, -0x1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-gt p0, p1, :cond_8

    :goto_3
    if-eqz v0, :cond_6

    move-object p3, v0

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    move v1, p5

    :goto_4
    if-ge v1, p3, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v2

    array-length v3, v2

    move v4, p5

    :goto_5
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v5

    if-ne v5, p0, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-virtual {p2, p4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object p3

    add-int/lit8 p4, p4, 0x1

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    if-eq p0, p1, :cond_8

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_8
    if-nez v0, :cond_9

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0

    :cond_9
    return-object v0
.end method

.method public static final measureLazyGrid-t1x4au0(ILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLandroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;Ly22;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Lnl3;Lnl3;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;Ldm3;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
            "IIIIIIFJZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZZ",
            "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;",
            "Ly22;",
            "Landroidx/compose/runtime/MutableState<",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/graphics/GraphicsContext;",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "Lb36<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;>;>;",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;",
            "Ldm3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lj59;",
            ">;+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;"
        }
    .end annotation

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p3

    move/from16 v13, p4

    move-wide/from16 v14, p10

    move-object/from16 v7, p19

    move-object/from16 v8, p29

    if-ltz v13, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "negative beforeContentPadding"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    if-ltz p5, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "negative afterContentPadding"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_1
    const-wide v31, 0xffffffffL

    const/16 v33, 0x20

    sget-object v0, Lkx2;->b:Lkx2;

    const/4 v9, 0x1

    if-gtz v1, :cond_4

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v18

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v19

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v21

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v17, 0x0

    move-object/from16 v22, p2

    move/from16 v23, p12

    move-object/from16 v16, p17

    move/from16 v25, p18

    move/from16 v26, p20

    move/from16 v24, p21

    move-object/from16 v29, p23

    move-object/from16 v30, p25

    invoke-virtual/range {v16 .. v30}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILy22;Landroidx/compose/ui/graphics/GraphicsContext;)V

    if-nez p21, :cond_2

    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v1

    sget-object v3, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_2

    shr-long v3, v1, v33

    long-to-int v3, v3

    invoke-static {v14, v15, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v18

    and-long v1, v1, v31

    long-to-int v1, v1

    invoke-static {v14, v15, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v19

    :cond_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lty2;

    invoke-direct {v3, v9}, Lty2;-><init>(I)V

    invoke-interface {v8, v1, v2, v3}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    neg-int v14, v13

    add-int v15, v6, p5

    if-eqz p12, :cond_3

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2
    move-object v13, v0

    move-object/from16 v18, v1

    goto :goto_3

    :cond_3
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2

    :goto_3
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v19, p5

    move/from16 v20, p6

    move/from16 v17, p15

    move-object/from16 v9, p16

    move/from16 v10, p18

    move-object/from16 v8, p23

    move-object/from16 v11, p26

    move-object/from16 v12, p27

    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLy22;Landroidx/compose/ui/unit/Density;ILnl3;Lnl3;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v0

    :cond_4
    move-object v10, v0

    invoke-static/range {p9 .. p9}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v3, p8, v0

    const/4 v11, 0x0

    if-nez p7, :cond_5

    if-gez v3, :cond_5

    add-int/2addr v0, v3

    move v3, v11

    :cond_5
    new-instance v4, Lfr;

    invoke-direct {v4}, Lfr;-><init>()V

    neg-int v12, v13

    if-gez p6, :cond_6

    move/from16 v5, p6

    goto :goto_4

    :cond_6
    move v5, v11

    :goto_4
    add-int/2addr v5, v12

    add-int/2addr v3, v5

    move/from16 v22, v9

    move v9, v3

    move/from16 v3, p7

    :goto_5
    if-gez v9, :cond_7

    if-lez v3, :cond_7

    add-int/lit8 v3, v3, -0x1

    move/from16 p8, v0

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v0

    invoke-virtual {v4, v11, v0}, Lfr;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v0

    add-int/2addr v9, v0

    move/from16 v0, p8

    goto :goto_5

    :cond_7
    move/from16 p8, v0

    if-ge v9, v5, :cond_8

    sub-int v0, v5, v9

    sub-int v0, p8, v0

    move v9, v5

    goto :goto_6

    :cond_8
    move/from16 v0, p8

    :goto_6
    sub-int/2addr v9, v5

    add-int v34, v6, p5

    if-gez v34, :cond_9

    :goto_7
    move/from16 p7, v3

    goto :goto_8

    :cond_9
    move/from16 v11, v34

    goto :goto_7

    :goto_8
    neg-int v3, v9

    move/from16 v17, p7

    move v8, v3

    move/from16 v18, v9

    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_9
    invoke-virtual {v4}, Ld1;->size()I

    move-result v9

    if-ge v3, v9, :cond_b

    if-lt v8, v11, :cond_a

    invoke-virtual {v4, v3}, Ld1;->remove(I)Ljava/lang/Object;

    sget-object v9, Lj59;->a:Lj59;

    move/from16 v16, v22

    goto :goto_9

    :cond_a
    add-int/lit8 v17, v17, 0x1

    invoke-virtual {v4, v3}, Lfr;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v9

    add-int/2addr v9, v8

    add-int/lit8 v3, v3, 0x1

    move v8, v9

    goto :goto_9

    :cond_b
    move/from16 v35, v16

    move/from16 v3, v17

    move/from16 v9, v18

    :goto_a
    const/16 v23, 0x0

    if-ge v3, v1, :cond_11

    if-lt v8, v11, :cond_c

    if-lez v8, :cond_c

    invoke-virtual {v4}, Lfr;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_11

    :cond_c
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_d

    goto :goto_c

    :cond_d
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v16

    add-int v8, v16, v8

    move/from16 v16, v3

    if-gt v8, v5, :cond_f

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v17, v5

    array-length v5, v3

    if-eqz v5, :cond_e

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v3

    add-int/lit8 v5, p0, -0x1

    if-eq v3, v5, :cond_10

    add-int/lit8 v3, v16, 0x1

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v1

    sub-int/2addr v9, v1

    sget-object v1, Lj59;->a:Lj59;

    move/from16 v35, v22

    goto :goto_b

    :cond_e
    const-string v0, "Array is empty."

    invoke-static {v0}, Lag;->g(Ljava/lang/String;)V

    return-object v23

    :cond_f
    move/from16 v17, v5

    :cond_10
    invoke-virtual {v4, v1}, Lfr;->addLast(Ljava/lang/Object;)V

    move/from16 v3, p7

    :goto_b
    add-int/lit8 v1, v16, 0x1

    move/from16 p7, v3

    move/from16 v5, v17

    move v3, v1

    move/from16 v1, p0

    goto :goto_a

    :cond_11
    :goto_c
    if-ge v8, v6, :cond_13

    sub-int v1, v6, v8

    sub-int/2addr v9, v1

    add-int/2addr v8, v1

    move/from16 v3, p7

    :goto_d
    if-ge v9, v13, :cond_12

    if-lez v3, :cond_12

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v4, v11, v5}, Lfr;->add(ILjava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v5

    add-int/2addr v9, v5

    goto :goto_d

    :cond_12
    add-int/2addr v1, v0

    if-gez v9, :cond_14

    add-int/2addr v1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x0

    goto :goto_e

    :cond_13
    move v1, v0

    :cond_14
    :goto_e
    invoke-static/range {p9 .. p9}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->signum(I)I

    move-result v5

    if-ne v3, v5, :cond_15

    invoke-static/range {p9 .. p9}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v3, v5, :cond_15

    int-to-float v3, v1

    move v11, v3

    goto :goto_f

    :cond_15
    move/from16 v11, p9

    :goto_f
    sub-float v3, p9, v11

    const/4 v5, 0x0

    if-eqz p21, :cond_16

    if-le v1, v0, :cond_16

    cmpg-float v16, v3, v5

    if-gtz v16, :cond_16

    sub-int/2addr v1, v0

    int-to-float v0, v1

    add-float v5, v0, v3

    :cond_16
    move/from16 v36, v5

    if-ltz v9, :cond_17

    goto :goto_10

    :cond_17
    const-string v0, "negative initial offset"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_10
    neg-int v0, v9

    invoke-virtual {v4}, Lfr;->d()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v24, :cond_19

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    if-eqz v1, :cond_19

    array-length v3, v1

    if-nez v3, :cond_18

    move-object/from16 v1, v23

    goto :goto_11

    :cond_18
    const/4 v3, 0x0

    aget-object v1, v1, v3

    :goto_11
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v1

    goto :goto_12

    :cond_19
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {v4}, Lfr;->j()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v3

    if-eqz v3, :cond_1b

    array-length v5, v3

    if-nez v5, :cond_1a

    move-object/from16 v3, v23

    goto :goto_13

    :cond_1a
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v3, v5

    :goto_13
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v3

    move/from16 v42, v3

    move v3, v0

    move/from16 v0, v42

    goto :goto_14

    :cond_1b
    move v3, v0

    const/4 v0, 0x0

    :goto_14
    move-object/from16 v25, v7

    check-cast v25, Ljava/util/Collection;

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->size()I

    move-result v5

    move/from16 p7, v0

    move-object/from16 v26, v23

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v5, :cond_1e

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move/from16 v27, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ltz v0, :cond_1d

    if-ge v0, v1, :cond_1d

    move/from16 v28, v1

    invoke-virtual {v2, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->spanOf(I)I

    move-result v1

    move/from16 v17, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->childConstraints-JhjzzOo$foundation(II)J

    move-result-wide v20

    const/16 v18, 0x0

    move-object/from16 v16, p2

    move/from16 v19, v1

    invoke-virtual/range {v16 .. v21}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v0

    if-nez v26, :cond_1c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_16

    :cond_1c
    move-object/from16 v1, v26

    :goto_16
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v26, v1

    goto :goto_17

    :cond_1d
    move/from16 v28, v1

    :goto_17
    add-int/lit8 v0, v27, 0x1

    move/from16 v1, v28

    goto :goto_15

    :cond_1e
    move/from16 v28, v1

    if-nez v26, :cond_1f

    move-object/from16 v26, v10

    :cond_1f
    move/from16 v1, p0

    move/from16 v0, p7

    move-object/from16 v5, p22

    move/from16 v16, v3

    move/from16 v37, v28

    move/from16 v3, p21

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->linesRetainedForLookahead(IILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;ZLjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)Ljava/util/List;

    move-result-object v5

    move/from16 v38, v0

    move v0, v1

    move-object v1, v2

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_25

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Number;

    move/from16 p7, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I

    move-result v2

    move/from16 v17, v3

    add-int/lit8 v3, v38, 0x1

    if-gt v3, v2, :cond_24

    if-ge v2, v0, :cond_24

    if-eqz p21, :cond_22

    move-object v3, v5

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v3, :cond_22

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v0

    move/from16 p9, v3

    array-length v3, v0

    move-object/from16 p22, v0

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v3, :cond_21

    aget-object v18, p22, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v0

    if-ne v0, v2, :cond_20

    goto :goto_1c

    :cond_20
    add-int/lit8 v0, v20, 0x1

    goto :goto_1a

    :cond_21
    add-int/lit8 v0, v19, 0x1

    move/from16 v3, p9

    goto :goto_19

    :cond_22
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->spanOf(I)I

    move-result v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->childConstraints-JhjzzOo$foundation(II)J

    move-result-wide v4

    move v1, v2

    const/4 v2, 0x0

    move/from16 v21, v0

    move/from16 v20, v17

    move-object/from16 v0, p2

    move/from16 v17, p7

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    if-nez v23, :cond_23

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1b

    :cond_23
    move-object/from16 v0, v23

    :goto_1b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v23, v0

    goto :goto_1d

    :cond_24
    :goto_1c
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v17

    const/16 v21, 0x0

    move/from16 v17, p7

    :goto_1d
    add-int/lit8 v3, v20, 0x1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v13, p4

    move/from16 v2, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    goto/16 :goto_18

    :cond_25
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    const/16 v21, 0x0

    if-nez v23, :cond_26

    move-object v2, v10

    goto :goto_1e

    :cond_26
    move-object/from16 v2, v23

    :goto_1e
    if-gtz p4, :cond_29

    if-gez p6, :cond_27

    goto :goto_1f

    :cond_27
    move-object/from16 v4, v18

    :cond_28
    move/from16 v27, v9

    move-object/from16 v39, v24

    goto :goto_21

    :cond_29
    :goto_1f
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v0

    move/from16 v1, v21

    :goto_20
    move-object/from16 v4, v18

    if-ge v1, v0, :cond_28

    invoke-virtual {v4, v1}, Lfr;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v3

    if-eqz v9, :cond_28

    if-gt v3, v9, :cond_28

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_28

    sub-int/2addr v9, v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lfr;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-object/from16 v18, v4

    goto :goto_20

    :goto_21
    if-eqz p12, :cond_2a

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    :goto_22
    move/from16 v18, v0

    goto :goto_23

    :cond_2a
    invoke-static {v14, v15, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v0

    goto :goto_22

    :goto_23
    if-eqz p12, :cond_2b

    invoke-static {v14, v15, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v0

    goto :goto_24

    :cond_2b
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    :goto_24
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    :goto_25
    move-object v1, v4

    move v4, v0

    move-object v0, v1

    move-object/from16 v9, p13

    move-object/from16 v10, p14

    move v5, v8

    move v13, v11

    move/from16 v41, v12

    move/from16 v7, v16

    move/from16 v3, v18

    move/from16 v40, v22

    move-object/from16 v1, v26

    move/from16 v8, p12

    move/from16 v11, p15

    move-object/from16 v12, p16

    goto :goto_26

    :cond_2c
    move-object/from16 v5, v19

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5, v4}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_25

    :goto_26
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v20

    move/from16 v18, v3

    move/from16 v19, v4

    move v10, v6

    float-to-int v0, v13

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v21

    move-object/from16 v22, p2

    move/from16 v23, p12

    move-object/from16 v16, p17

    move/from16 v25, p18

    move/from16 v26, p20

    move/from16 v24, p21

    move-object/from16 v29, p23

    move-object/from16 v30, p25

    move/from16 v17, v0

    move/from16 v28, v5

    invoke-virtual/range {v16 .. v30}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILy22;Landroidx/compose/ui/graphics/GraphicsContext;)V

    move-object/from16 v0, v20

    move/from16 v11, v24

    move/from16 v12, v28

    if-nez v11, :cond_30

    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v1

    sget-object v5, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_30

    if-eqz p12, :cond_2d

    move v5, v4

    goto :goto_27

    :cond_2d
    move v5, v3

    :goto_27
    shr-long v6, v1, v33

    long-to-int v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v14, v15, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v18

    and-long v1, v1, v31

    long-to-int v1, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v14, v15, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v1

    if-eqz p12, :cond_2e

    move v2, v1

    goto :goto_28

    :cond_2e
    move/from16 v2, v18

    :goto_28
    if-eq v2, v5, :cond_2f

    move-object/from16 v20, v0

    check-cast v20, Ljava/util/Collection;

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v3, :cond_2f

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    invoke-virtual {v5, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->updateMainAxisLayoutSize(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_2f
    move v8, v1

    move/from16 v7, v18

    goto :goto_2a

    :cond_30
    move v7, v3

    move v8, v4

    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getHeaderIndices()Landroidx/collection/IntList;

    move-result-object v4

    new-instance v9, Lam4;

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    const/4 v14, 0x0

    invoke-direct {v9, v14, v2, v1}, Lam4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v3, v0

    move/from16 v1, v37

    move/from16 v2, v38

    move-object/from16 v0, p28

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;->applyStickyItems(Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;IILjava/util/List;Landroidx/collection/IntList;IIIILnl3;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v4, p0, -0x1

    if-ne v2, v4, :cond_32

    if-le v12, v10, :cond_31

    goto :goto_2b

    :cond_31
    move v9, v14

    goto :goto_2c

    :cond_32
    :goto_2b
    move/from16 v9, v40

    :goto_2c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lbm4;

    move-object/from16 v7, p24

    invoke-direct {v6, v7, v3, v0, v11}, Lbm4;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;Z)V

    move-object/from16 v8, p29

    invoke-interface {v8, v4, v5, v6}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemKt;->updatedVisibleItems(IILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz p12, :cond_33

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2d
    move-object/from16 v18, v1

    move v4, v13

    move-object v13, v0

    goto :goto_2e

    :cond_33
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2d

    :goto_2e
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move/from16 v16, p0

    move/from16 v19, p5

    move/from16 v20, p6

    move/from16 v17, p15

    move/from16 v10, p18

    move-object/from16 v8, p23

    move-object/from16 v11, p26

    move-object/from16 v12, p27

    move v3, v9

    move/from16 v2, v27

    move/from16 v15, v34

    move/from16 v7, v35

    move/from16 v6, v36

    move-object/from16 v1, v39

    move/from16 v14, v41

    move-object/from16 v9, p16

    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLy22;Landroidx/compose/ui/unit/Density;ILnl3;Lnl3;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v0
.end method

.method private static final measureLazyGrid_t1x4au0$lambda$2(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final measureLazyGrid_t1x4au0$lambda$7(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
    .locals 6

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->spanOf(I)I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->childConstraints-JhjzzOo$foundation(II)J

    move-result-wide v4

    const/4 v2, 0x0

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure--hBUhpc(IIIJ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object p0

    return-object p0
.end method

.method private static final measureLazyGrid_t1x4au0$lambda$8(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 1

    new-instance v0, Lzl4;

    invoke-direct {v0, p1, p2, p3}, Lzl4;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    invoke-virtual {p4, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->withMotionFrameOfReferencePlacement(Lnl3;)V

    invoke-static {p0}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->attachToScope-impl(Landroidx/compose/runtime/MutableState;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final measureLazyGrid_t1x4au0$lambda$8$0(Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 4

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    invoke-virtual {v3, p3, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_1
    if-ge v1, p0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    invoke-virtual {v0, p3, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.class public final Landroidx/compose/foundation/lazy/LazyListMeasureKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList_pIk1_oM$lambda$8$0(Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList_pIk1_oM$lambda$7(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList_pIk1_oM$lambda$2(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation

    move v1, p4

    move-object/from16 v2, p9

    move/from16 v3, p11

    if-eqz p8, :cond_0

    move v6, v1

    :goto_0
    move/from16 v4, p6

    goto :goto_1

    :cond_0
    move v6, p3

    goto :goto_0

    :goto_1
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    move/from16 v7, p5

    if-ge v7, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    move v4, v5

    :goto_2
    if-eqz v4, :cond_3

    if-nez p7, :cond_2

    goto :goto_3

    :cond_2
    const-string v7, "non-zero itemsScrollOffset"

    invoke-static {v7}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_3
    :goto_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v8, v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v8

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v4, :cond_d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const-string p1, "no extra items"

    invoke-static {p1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array v7, p1, [I

    :goto_5
    if-ge v5, p1, :cond_5

    invoke-static {v5, v3, p1}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v0

    aput v0, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    new-array v9, p1, [I

    if-eqz p8, :cond_7

    if-eqz v2, :cond_6

    move-object/from16 v5, p12

    invoke-interface {v2, v5, v6, v7, v9}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    goto :goto_6

    :cond_6
    const-string p0, "null verticalArrangement when isVertical == true"

    invoke-static {p0}, Lng;->f(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0

    :cond_7
    move-object/from16 v5, p12

    if-eqz p10, :cond_c

    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v4, p10

    invoke-interface/range {v4 .. v9}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    :goto_6
    invoke-static {v9}, Lyr;->L([I)Ly74;

    move-result-object v0

    if-nez v3, :cond_8

    goto :goto_7

    :cond_8
    invoke-static {v0}, Lkx6;->l(Ly74;)Lw74;

    move-result-object v0

    :goto_7
    iget v2, v0, Lw74;->b:I

    iget v4, v0, Lw74;->c:I

    iget v0, v0, Lw74;->d:I

    if-lez v0, :cond_9

    if-le v2, v4, :cond_a

    :cond_9
    if-gez v0, :cond_10

    if-gt v4, v2, :cond_10

    :cond_a
    :goto_8
    aget v5, v9, v2

    invoke-static {v2, v3, p1}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v7

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v3, :cond_b

    sub-int v5, v6, v5

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v8

    sub-int/2addr v5, v8

    :cond_b
    invoke-virtual {v7, v5, p3, p4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v2, v4, :cond_10

    add-int/2addr v2, v0

    goto :goto_8

    :cond_c
    const-string p0, "null horizontalArrangement when isVertical == false"

    invoke-static {p0}, Lng;->f(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0

    :cond_d
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    move/from16 v4, p7

    move v3, v5

    :goto_9
    if-ge v3, v2, :cond_e

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {v6, v4, p3, p4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    move/from16 v2, p7

    move v3, v5

    :goto_a
    if-ge v3, p1, :cond_f

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v4, v2, p3, p4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_f
    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_b
    if-ge v5, p0, :cond_10

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {p1, v2, p3, p4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result p1

    add-int/2addr v2, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_10
    return-object v10
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

.method private static final createItemsAfterList(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IILjava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v0

    add-int/2addr v0, p3

    add-int/lit8 p2, p2, -0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p0}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    const/4 p3, 0x0

    if-gt p0, p2, :cond_1

    move v1, p0

    :goto_0
    if-nez p3, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move-object p3, p0

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v1, p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    move-object p1, v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p3}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result p0

    if-le p0, p2, :cond_3

    invoke-static {p3}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result p2

    :cond_3
    move-object p0, p4

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p0, :cond_6

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-le v3, p2, :cond_5

    if-nez p3, :cond_4

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v2, v0

    :goto_2
    add-int/lit8 p1, p1, 0x1

    move-object v0, v2

    goto :goto_1

    :cond_6
    if-nez p3, :cond_7

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0

    :cond_7
    return-object p3
.end method

.method private static final createItemsBeforeList(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;ILjava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sub-int p2, p0, p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    if-gt p2, p0, :cond_1

    move v2, p0

    :goto_0
    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v2, p2, :cond_2

    add-int/lit8 v2, v2, -0x1

    move-object p1, v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :cond_2
    move-object p0, p3

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_6

    :goto_1
    add-int/lit8 p1, p0, -0x1

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ge v4, p2, :cond_4

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-gez p1, :cond_5

    goto :goto_2

    :cond_5
    move p0, p1

    goto :goto_1

    :cond_6
    :goto_2
    if-nez v0, :cond_7

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0

    :cond_7
    return-object v0
.end method

.method public static synthetic d(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList_pIk1_oM$lambda$8(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final measureLazyList-pIk1_oM(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLy22;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;ZLdm3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "IIIIIIFJZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZZ",
            "Ly22;",
            "Landroidx/compose/runtime/MutableState<",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/graphics/GraphicsContext;",
            "Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;",
            "Z",
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
            "Landroidx/compose/foundation/lazy/LazyListMeasureResult;"
        }
    .end annotation

    move/from16 v6, p17

    move-object/from16 v7, p18

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "invalid beforeContentPadding"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    if-ltz p4, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "invalid afterContentPadding"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    const-wide v16, 0xffffffffL

    const/16 v18, 0x20

    if-gtz p0, :cond_4

    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x1

    move-object/from16 v6, p1

    move/from16 v7, p11

    move/from16 v10, p19

    move/from16 v8, p20

    move-object/from16 v13, p21

    move-object/from16 v14, p23

    move v15, v0

    move-object/from16 v0, p16

    invoke-virtual/range {v0 .. v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILy22;Landroidx/compose/ui/graphics/GraphicsContext;)V

    if-nez p20, :cond_2

    invoke-virtual/range {p16 .. p16}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v0

    sget-object v4, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_2

    shr-long v2, v0, v18

    long-to-int v2, v2

    move-wide/from16 v13, p9

    invoke-static {v13, v14, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v2

    and-long v0, v0, v16

    long-to-int v0, v0

    invoke-static {v13, v14, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v3

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lpf;

    invoke-direct {v2, v15}, Lpf;-><init>(I)V

    move-object/from16 v8, p26

    invoke-interface {v8, v0, v1, v2}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroidx/compose/ui/layout/MeasureResult;

    move/from16 v5, p3

    neg-int v0, v5

    add-int v33, p2, p4

    if-eqz p11, :cond_3

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2
    move-object/from16 v36, v1

    goto :goto_3

    :cond_3
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getChildConstraints-msEJaDk()J

    move-result-wide v29

    new-instance v19, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    const/16 v34, 0x0

    const/16 v39, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    sget-object v31, Lkx2;->b:Lkx2;

    move/from16 v37, p4

    move/from16 v38, p5

    move/from16 v35, p14

    move-object/from16 v28, p15

    move-object/from16 v27, p21

    move/from16 v32, v0

    invoke-direct/range {v19 .. v39}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLy22;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILjh2;)V

    return-object v19

    :cond_4
    move/from16 v9, p0

    move/from16 v10, p2

    move/from16 v11, p3

    move-wide/from16 v13, p9

    move-object/from16 v8, p26

    move v15, v0

    const/4 v12, 0x0

    move/from16 v0, p6

    if-lt v0, v9, :cond_5

    add-int/lit8 v0, v9, -0x1

    move v1, v12

    goto :goto_4

    :cond_5
    move/from16 v1, p7

    :goto_4
    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_6

    if-gez v1, :cond_6

    add-int/2addr v2, v1

    move v1, v12

    :cond_6
    move/from16 v19, v2

    new-instance v2, Lfr;

    invoke-direct {v2}, Lfr;-><init>()V

    neg-int v3, v11

    if-gez p5, :cond_7

    move/from16 v4, p5

    goto :goto_5

    :cond_7
    move v4, v12

    :goto_5
    add-int/2addr v4, v3

    add-int/2addr v1, v4

    move v5, v12

    :goto_6
    if-gez v1, :cond_8

    if-lez v0, :cond_8

    add-int/lit8 v0, v0, -0x1

    move/from16 v20, v4

    const/4 v4, 0x2

    move/from16 v21, v5

    const/4 v5, 0x0

    move-object/from16 v22, v2

    move/from16 v23, v3

    const-wide/16 v2, 0x0

    move v14, v1

    move/from16 v15, v20

    move/from16 v8, v21

    move-object/from16 v13, v22

    move v1, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v2

    invoke-virtual {v13, v12, v2}, Lfr;->add(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v0

    add-int/2addr v0, v14

    move v2, v1

    move v1, v0

    move v0, v2

    move-object/from16 v8, p26

    move-object v2, v13

    move v4, v15

    move/from16 v3, v23

    const/4 v15, 0x3

    move-wide/from16 v13, p9

    goto :goto_6

    :cond_8
    move v14, v1

    move-object v13, v2

    move/from16 v23, v3

    move v15, v4

    move v8, v5

    if-ge v14, v15, :cond_9

    sub-int v4, v15, v14

    sub-int v19, v19, v4

    move v4, v15

    :goto_7
    move/from16 v14, v19

    goto :goto_8

    :cond_9
    move v4, v14

    goto :goto_7

    :goto_8
    sub-int/2addr v4, v15

    add-int v19, v10, p4

    if-gez v19, :cond_a

    move v1, v12

    goto :goto_9

    :cond_a
    move/from16 v1, v19

    :goto_9
    neg-int v2, v4

    move v5, v0

    move v3, v12

    move/from16 v20, v3

    :goto_a
    invoke-virtual {v13}, Ld1;->size()I

    move-result v12

    const/16 v22, 0x1

    if-ge v3, v12, :cond_c

    if-lt v2, v1, :cond_b

    invoke-virtual {v13, v3}, Ld1;->remove(I)Ljava/lang/Object;

    sget-object v12, Lj59;->a:Lj59;

    move/from16 v20, v22

    goto :goto_a

    :cond_b
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v3}, Lfr;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v12

    add-int/2addr v12, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v12

    goto :goto_a

    :cond_c
    move v12, v8

    move v8, v0

    move v0, v12

    move v12, v2

    move/from16 v25, v20

    move/from16 v20, v4

    :goto_b
    if-ge v5, v9, :cond_d

    if-lt v12, v1, :cond_e

    if-lez v12, :cond_e

    invoke-virtual {v13}, Lfr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_c

    :cond_d
    move/from16 p6, v8

    move v8, v0

    move v0, v5

    goto :goto_e

    :cond_e
    :goto_c
    const/4 v4, 0x2

    move v2, v1

    move v1, v5

    const/4 v5, 0x0

    move/from16 v26, v2

    const-wide/16 v2, 0x0

    move/from16 p6, v8

    move v8, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v2

    move v0, v1

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v1

    add-int/2addr v12, v1

    if-gt v12, v15, :cond_f

    add-int/lit8 v1, v9, -0x1

    if-eq v0, v1, :cond_f

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v1

    sub-int v20, v20, v1

    sget-object v1, Lj59;->a:Lj59;

    move/from16 v25, v22

    goto :goto_d

    :cond_f
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v13, v2}, Lfr;->addLast(Ljava/lang/Object;)V

    move/from16 v5, p6

    move v8, v1

    :goto_d
    add-int/lit8 v0, v0, 0x1

    move v1, v5

    move v5, v0

    move v0, v8

    move v8, v1

    move/from16 v1, v26

    goto :goto_b

    :goto_e
    if-ge v12, v10, :cond_12

    sub-int v15, v10, v12

    sub-int v20, v20, v15

    add-int/2addr v12, v15

    move/from16 v1, p6

    move/from16 v2, v20

    :goto_f
    if-ge v2, v11, :cond_10

    if-lez v1, :cond_10

    add-int/lit8 v1, v1, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move/from16 v20, v2

    const-wide/16 v2, 0x0

    move/from16 p7, v15

    move v15, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v13, v3, v2}, Lfr;->add(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v2

    add-int v2, v2, v20

    move v0, v15

    move/from16 v15, p7

    goto :goto_f

    :cond_10
    move/from16 v20, v2

    move/from16 p7, v15

    const/4 v3, 0x0

    move v15, v0

    move-object/from16 v0, p1

    add-int v2, v14, p7

    if-gez v20, :cond_11

    add-int v2, v2, v20

    add-int v12, v12, v20

    move v4, v3

    move v5, v12

    goto :goto_11

    :cond_11
    move v5, v12

    :goto_10
    move/from16 v4, v20

    goto :goto_11

    :cond_12
    move v15, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p6

    move v5, v12

    move v2, v14

    goto :goto_10

    :goto_11
    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->signum(I)I

    move-result v12

    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    move-result v3

    if-ne v12, v3, :cond_13

    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-lt v3, v12, :cond_13

    int-to-float v3, v2

    goto :goto_12

    :cond_13
    move/from16 v3, p8

    :goto_12
    sub-float v12, p8, v3

    const/16 v20, 0x0

    if-eqz p20, :cond_14

    if-le v2, v14, :cond_14

    cmpg-float v26, v12, v20

    if-gtz v26, :cond_14

    sub-int/2addr v2, v14

    int-to-float v2, v2

    add-float v20, v2, v12

    :cond_14
    if-ltz v4, :cond_15

    goto :goto_13

    :cond_15
    const-string v2, "negative currentFirstItemScrollOffset"

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_13
    neg-int v2, v4

    invoke-virtual {v13}, Lfr;->first()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-gtz v11, :cond_19

    if-gez p5, :cond_16

    goto :goto_14

    :cond_16
    move/from16 v26, v2

    :cond_17
    move/from16 p6, v3

    :cond_18
    move v14, v4

    move-object v2, v12

    goto :goto_16

    :cond_19
    :goto_14
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v14

    move/from16 v26, v2

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v14, :cond_17

    invoke-virtual {v13, v2}, Lfr;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 p6, v3

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v3

    if-eqz v4, :cond_18

    if-gt v3, v4, :cond_18

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v27

    move/from16 p7, v3

    add-int/lit8 v3, v27, -0x1

    if-eq v2, v3, :cond_18

    sub-int v4, v4, p7

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v13, v2}, Lfr;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 v3, p6

    goto :goto_15

    :goto_16
    invoke-static {v1, v0, v6, v7}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsBeforeList(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_1a

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_1a
    invoke-static {v13, v0, v9, v6, v7}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsAfterList(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IILjava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v4, :cond_1b

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_1b
    invoke-virtual {v13}, Lfr;->first()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    move/from16 v27, v22

    goto :goto_19

    :cond_1c
    const/16 v27, 0x0

    :goto_19
    if-eqz p11, :cond_1d

    move v4, v8

    :goto_1a
    move-wide/from16 v6, p9

    goto :goto_1b

    :cond_1d
    move v4, v5

    goto :goto_1a

    :goto_1b
    invoke-static {v6, v7, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v4

    if-eqz p11, :cond_1e

    move v8, v5

    :cond_1e
    invoke-static {v6, v7, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v8

    move-object/from16 v9, p12

    move/from16 v11, p14

    move-object/from16 v12, p15

    move v6, v10

    move-object v0, v13

    move/from16 v7, v26

    const/16 v21, 0x0

    move/from16 v13, p6

    move-object/from16 v10, p13

    move-object/from16 v26, v2

    move-object v2, v3

    move v3, v4

    move v4, v8

    move/from16 v8, p11

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v28, v0

    move v2, v3

    move v3, v4

    sget-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isSkipItemPlacementAnimationFixEnabled:Z

    if-eqz v0, :cond_1f

    if-eqz p25, :cond_20

    :cond_1f
    move-object v4, v1

    goto :goto_1c

    :cond_20
    move-object/from16 v10, p1

    move/from16 v11, p20

    move-object v4, v1

    move v12, v5

    move/from16 v29, v13

    move v13, v14

    goto :goto_1d

    :goto_1c
    float-to-int v1, v13

    move v12, v5

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v5

    const/4 v9, 0x1

    move-object/from16 v6, p1

    move/from16 v7, p11

    move-object/from16 v0, p16

    move/from16 v10, p19

    move/from16 v8, p20

    move/from16 v29, v13

    move v11, v14

    move-object/from16 v13, p21

    move-object/from16 v14, p23

    invoke-virtual/range {v0 .. v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILy22;Landroidx/compose/ui/graphics/GraphicsContext;)V

    move-object v10, v6

    move v13, v11

    move v11, v8

    :goto_1d
    if-nez v11, :cond_24

    invoke-virtual/range {p16 .. p16}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v0

    sget-object v5, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_24

    if-eqz p11, :cond_21

    move v5, v3

    goto :goto_1e

    :cond_21
    move v5, v2

    :goto_1e
    shr-long v6, v0, v18

    long-to-int v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-wide/from16 v6, p9

    invoke-static {v6, v7, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v2

    and-long v0, v0, v16

    long-to-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v6, v7, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v8

    if-eqz p11, :cond_22

    move v0, v8

    goto :goto_1f

    :cond_22
    move v0, v2

    :goto_1f
    if-eq v0, v5, :cond_23

    move-object v1, v4

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move/from16 v3, v21

    :goto_20
    if-ge v3, v1, :cond_23

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v5, v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->updateMainAxisLayoutSize(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_23
    :goto_21
    move v7, v2

    goto :goto_22

    :cond_24
    move v8, v3

    goto :goto_21

    :goto_22
    invoke-virtual/range {v28 .. v28}, Lfr;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v0

    move v1, v0

    goto :goto_23

    :cond_25
    move/from16 v1, v21

    :goto_23
    invoke-virtual/range {v28 .. v28}, Lfr;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v0

    move v2, v0

    :goto_24
    move-object v3, v4

    goto :goto_25

    :cond_26
    move/from16 v2, v21

    goto :goto_24

    :goto_25
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getHeaderIndexes()Landroidx/collection/IntList;

    move-result-object v4

    new-instance v9, Lxs;

    const/4 v0, 0x3

    invoke-direct {v9, v10, v0}, Lxs;-><init>(Ljava/lang/Object;I)V

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v0, p24

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;->applyStickyItems(Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;IILjava/util/List;Landroidx/collection/IntList;IIIILnl3;)Ljava/util/List;

    move-result-object v0

    move-object v4, v3

    const/4 v1, 0x0

    if-eqz v27, :cond_28

    invoke-static {v4}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_26

    :cond_27
    move-object v2, v1

    goto :goto_26

    :cond_28
    invoke-virtual/range {v28 .. v28}, Lfr;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_26
    if-eqz v27, :cond_2a

    invoke-static {v4}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_29
    :goto_27
    move/from16 v9, p0

    goto :goto_28

    :cond_2a
    invoke-virtual/range {v28 .. v28}, Lfr;->j()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_27

    :goto_28
    if-lt v15, v9, :cond_2c

    move/from16 v6, p2

    if-le v12, v6, :cond_2b

    goto :goto_29

    :cond_2b
    move/from16 v3, v21

    goto :goto_2a

    :cond_2c
    :goto_29
    move/from16 v3, v22

    :goto_2a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lkn4;

    move-object/from16 v8, p22

    invoke-direct {v7, v8, v4, v0, v11}, Lkn4;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;Z)V

    move-object/from16 v8, p26

    invoke-interface {v8, v5, v6, v7}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_2b

    :cond_2d
    move/from16 v12, v21

    :goto_2b
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2c

    :cond_2e
    move/from16 v1, v21

    :goto_2c
    invoke-static {v12, v1, v4, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemKt;->updatedVisibleItems(IILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    if-eqz p11, :cond_2f

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2d
    move-object/from16 v17, v0

    goto :goto_2e

    :cond_2f
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2d

    :goto_2e
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getChildConstraints-msEJaDk()J

    move-result-wide v10

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move/from16 v6, v20

    const/16 v20, 0x0

    move/from16 v18, p4

    move/from16 v16, p14

    move-object/from16 v8, p21

    move v15, v9

    move v2, v13

    move/from16 v14, v19

    move/from16 v13, v23

    move/from16 v7, v25

    move-object/from16 v1, v26

    move/from16 v4, v29

    move/from16 v19, p5

    move-object/from16 v9, p15

    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLy22;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILjh2;)V

    return-object v0
.end method

.method private static final measureLazyList_pIk1_oM$lambda$2(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final measureLazyList_pIk1_oM$lambda$7(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .locals 6

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IJILjava/lang/Object;)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object p0

    return-object p0
.end method

.method private static final measureLazyList_pIk1_oM$lambda$8(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 1

    new-instance v0, Ljn4;

    invoke-direct {v0, p1, p2, p3}, Ljn4;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    invoke-virtual {p4, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->withMotionFrameOfReferencePlacement(Lnl3;)V

    invoke-static {p0}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->attachToScope-impl(Landroidx/compose/runtime/MutableState;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final measureLazyList_pIk1_oM$lambda$8$0(Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
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

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v3, p3, p2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V

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

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v0, p3, p2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->place(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

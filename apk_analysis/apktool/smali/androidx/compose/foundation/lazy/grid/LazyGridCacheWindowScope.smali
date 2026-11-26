.class final Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/CacheWindowScope;


# instance fields
.field public layoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

.field public prefetchScope:Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchScope;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lbm3;ILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->schedulePrefetch$lambda$0(Lbm3;ILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final schedulePrefetch$lambda$0(Lbm3;ILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;)Lj59;
    .locals 6

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;->getLineItemCount()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-interface {p2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;->getMainAxisSize(I)I

    move-result v4

    new-array v5, v2, [I

    invoke-static {v4, v5}, Lpp1;->b(I[I)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eq v4, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public getDensity()Landroidx/compose/ui/unit/Density;
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object p0

    instance-of v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getFirstVisibleLineIndex()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLineIndex(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;)I

    move-result p0

    return p0
.end method

.method public getHasVisibleItems()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getLastIndexInLine(I)I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object p0

    instance-of v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, -0x1

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getPrefetchInfoRetriever()Lnl3;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    invoke-static {p0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb36;

    iget-object p1, p1, Lb36;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getLastLineIndex()I
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getTotalItemsCount()I

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getLineIndexProvider()Lnl3;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getTotalItemsCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getLastVisibleLineIndex()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLineIndex(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;)I

    move-result p0

    return p0
.end method

.method public final getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->layoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "layoutInfo"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getLineIndex(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfoKt;->lineIndex(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result p0

    return p0
.end method

.method public getMainAxisExtraSpaceEnd()I
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->sizeOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getMainAxisItemSpacing()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getViewportEndOffset()I

    move-result p0

    sub-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public getMainAxisExtraSpaceStart()I
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getBeforeContentPadding()I

    move-result p0

    add-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public getMainAxisViewportSize()I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfoKt;->getSingleAxisViewportSize(Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)I

    move-result p0

    return p0
.end method

.method public final getPrefetchScope()Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchScope;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->prefetchScope:Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchScope;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "prefetchScope"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getTotalItemsCount()I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getTotalItemsCount()I

    move-result p0

    return p0
.end method

.method public getVisibleItemLine(I)I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getFirstVisibleLineIndex()I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public getVisibleItemSize(I)I
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getFirstVisibleLineIndex()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-virtual {p0, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLineIndex(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;)I

    move-result v6

    if-ne v6, p1, :cond_0

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p1

    move v0, v3

    :goto_1
    if-ge v3, p1, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->sizeOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public getVisibleLineCount()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLastVisibleLineIndex()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getFirstVisibleLineIndex()I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getVisibleLineKey(I)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getFirstVisibleLineIndex()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-virtual {p0, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getLineIndex(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;)I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getKey()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Landroidx/compose/foundation/lazy/layout/CachedItem;->NoKey:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    return-object p0
.end method

.method public schedulePrefetch(ILbm3;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbm3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->getPrefetchScope()Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchScope;

    move-result-object p0

    new-instance v0, Landroidx/compose/foundation/lazy/grid/a;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/lazy/grid/a;-><init>(ILbm3;)V

    invoke-interface {p0, p1, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchScope;->scheduleLinePrefetch(ILnl3;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final setLayoutInfo(Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->layoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    return-void
.end method

.method public final setPrefetchScope(Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridCacheWindowScope;->prefetchScope:Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchScope;

    return-void
.end method

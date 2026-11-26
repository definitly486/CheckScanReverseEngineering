.class public final Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/CacheWindowScope;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field public layoutInfo:Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

.field public prefetchScope:Landroidx/compose/foundation/lazy/LazyListPrefetchScope;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lbm3;Landroidx/compose/foundation/lazy/LazyListPrefetchResultScope;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->schedulePrefetch$lambda$0(Lbm3;Landroidx/compose/foundation/lazy/LazyListPrefetchResultScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final schedulePrefetch$lambda$0(Lbm3;Landroidx/compose/foundation/lazy/LazyListPrefetchResultScope;)Lj59;
    .locals 1

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListPrefetchResultScope;->getIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListPrefetchResultScope;->getMainAxisSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public getDensity()Landroidx/compose/ui/unit/Density;
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    instance-of v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getFirstVisibleLineIndex()I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result p0

    return p0
.end method

.method public getHasVisibleItems()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getLastIndexInLine(I)I
    .locals 0

    return p1
.end method

.method public getLastLineIndex()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getTotalItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getTotalItemsCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getLastVisibleLineIndex()I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result p0

    return p0
.end method

.method public final getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->layoutInfo:Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "layoutInfo"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getMainAxisExtraSpaceEnd()I
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result v1

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getMainAxisItemSpacing()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getViewportEndOffset()I

    move-result p0

    sub-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public getMainAxisExtraSpaceStart()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getBeforeContentPadding()I

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

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt;->getSingleAxisViewportSize(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)I

    move-result p0

    return p0
.end method

.method public final getPrefetchScope()Landroidx/compose/foundation/lazy/LazyListPrefetchScope;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->prefetchScope:Landroidx/compose/foundation/lazy/LazyListPrefetchScope;

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

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getTotalItemsCount()I

    move-result p0

    return p0
.end method

.method public getVisibleItemLine(I)I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result p0

    return p0
.end method

.method public getVisibleItemSize(I)I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    move-result p0

    return p0
.end method

.method public getVisibleLineCount()I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getVisibleLineKey(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public schedulePrefetch(ILbm3;)Ljava/util/List;
    .locals 2
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

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->getPrefetchScope()Landroidx/compose/foundation/lazy/LazyListPrefetchScope;

    move-result-object p0

    new-instance v0, Ldn4;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Ldn4;-><init>(ILbm3;)V

    invoke-interface {p0, p1, v0}, Landroidx/compose/foundation/lazy/LazyListPrefetchScope;->schedulePrefetch(ILnl3;)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    move-result-object p0

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final setLayoutInfo(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->layoutInfo:Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    return-void
.end method

.method public final setPrefetchScope(Landroidx/compose/foundation/lazy/LazyListPrefetchScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->prefetchScope:Landroidx/compose/foundation/lazy/LazyListPrefetchScope;

    return-void
.end method

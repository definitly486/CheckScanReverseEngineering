.class final Landroidx/compose/foundation/pager/PagerCacheWindowScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/CacheWindowScope;


# instance fields
.field private final itemCount:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public layoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

.field public state:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;


# direct methods
.method public constructor <init>(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->itemCount:Lll3;

    return-void
.end method

.method public static synthetic a(Lbm3;Landroidx/compose/foundation/pager/PagerCacheWindowScope;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->schedulePrefetch$lambda$0(Lbm3;Landroidx/compose/foundation/pager/PagerCacheWindowScope;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final schedulePrefetch$lambda$0(Lbm3;Landroidx/compose/foundation/pager/PagerCacheWindowScope;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;)Lj59;
    .locals 0

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;->getIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getPageSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public getDensity()Landroidx/compose/ui/unit/Density;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object p0

    return-object p0
.end method

.method public getFirstVisibleLineIndex()I
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getBeyondViewportPageCount()I

    move-result p0

    int-to-long v2, p0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    move-wide v0, v2

    :cond_1
    long-to-int p0, v0

    return p0
.end method

.method public getHasVisibleItems()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getItemCount()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->itemCount:Lll3;

    return-object p0
.end method

.method public getLastIndexInLine(I)I
    .locals 0

    return p1
.end method

.method public getLastLineIndex()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getTotalItemsCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getLastVisibleLineIndex()I
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getBeyondViewportPageCount()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getTotalItemsCount()I

    move-result p0

    int-to-long v2, p0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    move-wide v0, v2

    :cond_1
    long-to-int p0, v0

    return p0
.end method

.method public final getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->layoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

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

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/MeasuredPage;->getOffset()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getPageSize()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getPageSpacing()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getViewportEndOffset()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public getMainAxisExtraSpaceStart()I
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/MeasuredPage;->getOffset()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getBeforeContentPadding()I

    move-result p0

    add-int/2addr p0, v0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public getMainAxisViewportSize()I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerLayoutInfoKt;->getMainAxisViewportSize(Landroidx/compose/foundation/pager/PagerLayoutInfo;)I

    move-result p0

    return p0
.end method

.method public final getState()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "state"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getTotalItemsCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->itemCount:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getVisibleItemLine(I)I
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getExtraPagesBefore()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getExtraPagesBefore()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result p0

    return p0

    :cond_0
    if-lt p1, v0, :cond_1

    add-int v2, v0, v1

    if-ge p1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object p0

    sub-int/2addr p1, v0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result p0

    return p0

    :cond_1
    add-int v2, v0, v1

    if-lt p1, v2, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getExtraPagesAfter()Ljava/util/List;

    move-result-object p0

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getVisibleItemSize(I)I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getPageSize()I

    move-result p0

    return p0
.end method

.method public getVisibleLineCount()I
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getExtraPagesBefore()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getExtraPagesAfter()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public getVisibleLineKey(I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getExtraPagesBefore()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getExtraPagesBefore()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/MeasuredPage;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    if-lt p1, v0, :cond_1

    add-int v2, v0, v1

    if-ge p1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object p0

    sub-int/2addr p1, v0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/MeasuredPage;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    add-int v2, v0, v1

    if-lt p1, v2, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getExtraPagesAfter()Ljava/util/List;

    move-result-object p0

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/MeasuredPage;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Landroidx/compose/foundation/lazy/layout/CachedItem;->NoKey:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    return-object p0
.end method

.method public schedulePrefetch(ILbm3;)Ljava/util/List;
    .locals 7
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

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getChildConstraints-msEJaDk()J

    move-result-wide v3

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->getState()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    move-result-object v1

    new-instance v6, Landroidx/compose/foundation/pager/d;

    invoke-direct {v6, p2, p0}, Landroidx/compose/foundation/pager/d;-><init>(Lbm3;Landroidx/compose/foundation/pager/PagerCacheWindowScope;)V

    const/4 v5, 0x1

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->schedulePrecompositionAndPremeasure-_EkL_-Y$foundation(IJZLnl3;)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    move-result-object p0

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final setLayoutInfo(Landroidx/compose/foundation/pager/PagerMeasureResult;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->layoutInfo:Landroidx/compose/foundation/pager/PagerMeasureResult;

    return-void
.end method

.method public final setState(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    return-void
.end method

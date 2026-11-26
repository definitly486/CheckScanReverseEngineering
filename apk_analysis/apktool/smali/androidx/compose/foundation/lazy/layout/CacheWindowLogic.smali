.class public abstract Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final cacheWindow:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

.field private final enableInitialPrefetch:Z

.field private hasUpdatedVisibleItemsOnce:Z

.field private final indicesToRemove:Landroidx/collection/MutableIntSet;

.field private itemsCount:I

.field private prefetchWindowEndExtraSpace:I

.field private prefetchWindowEndLine:I

.field private final prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableIntObjectMap<",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field private prefetchWindowStartExtraSpace:I

.field private prefetchWindowStartLine:I

.field private previousPassDelta:F

.field private previousPassItemCount:I

.field private shouldRefillWindow:Z

.field private final windowCache:Landroidx/collection/MutableIntIntMap;

.field private final windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/compose/foundation/lazy/layout/CachedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->cacheWindow:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->enableInitialPrefetch:Z

    invoke-static {}, Landroidx/collection/IntObjectMapKt;->mutableIntObjectMapOf()Landroidx/collection/MutableIntObjectMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    invoke-static {}, Landroidx/collection/IntSetKt;->mutableIntSetOf()Landroidx/collection/MutableIntSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->indicesToRemove:Landroidx/collection/MutableIntSet;

    invoke-static {}, Landroidx/collection/IntIntMapKt;->mutableIntIntMapOf()Landroidx/collection/MutableIntIntMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    invoke-static {}, Landroidx/collection/IntObjectMapKt;->mutableIntObjectMapOf()Landroidx/collection/MutableIntObjectMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassItemCount:I

    const p1, 0x7fffffff

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;ZILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 44
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;Z)V

    return-void
.end method

.method public static synthetic a(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->getItemSizeOrPrefetch$lambda$10(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->scheduleNextItemIfNeeded$lambda$1(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->getItemSizeOrPrefetch$lambda$4(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final cachePrefetchedItem(II)V
    .locals 2

    sget-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isCacheWindowRefillFixEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    sget-object v1, Landroidx/compose/foundation/lazy/layout/CachedItem;->NoKey:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->updateOrCreateCachedItem(IILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/CachedItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/MutableIntIntMap;->set(II)V

    :goto_0
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    if-le p1, v0, :cond_1

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    return-void

    :cond_1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    if-ge p1, v0, :cond_2

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    :cond_2
    return-void
.end method

.method private final cacheVisibleItemsInfo(ILjava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p1}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/CachedItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/CachedItem;->getMainAxisSize()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v1, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/compose/foundation/lazy/layout/CachedItem;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/CachedItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, p3, :cond_0

    invoke-static {v1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    invoke-direct {p0, p1, p3, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->updateOrCreateCachedItem(IILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/CachedItem;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final cacheVisibleItemsInfoWithoutFix(II)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v0, p1}, Landroidx/collection/IntIntMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v0, p1}, Landroidx/collection/IntIntMap;->get(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/MutableIntIntMap;->set(II)V

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final fillCacheWindowBackward(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;F)V
    .locals 9

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getHasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisViewportSize()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->cacheWindow:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v2, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;->calculateBehindWindow(Landroidx/compose/ui/unit/Density;I)I

    move-result v0

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getTotalItemsCount()I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->itemsCount:I

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getFirstVisibleLineIndex()I

    move-result v2

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastVisibleLineIndex()I

    move-result v3

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getTotalItemsCount()I

    move-result v8

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisExtraSpaceStart()I

    move-result v5

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisExtraSpaceEnd()I

    move-result v4

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onKeepAround(IIIIIFI)V

    :cond_1
    return-void
.end method

.method private final fillCacheWindowForward(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;F)V
    .locals 13

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getHasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisViewportSize()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->cacheWindow:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v2, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;->calculateAheadWindow(Landroidx/compose/ui/unit/Density;I)I

    move-result v0

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, v3

    :goto_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getFirstVisibleLineIndex()I

    move-result v6

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastVisibleLineIndex()I

    move-result v7

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisExtraSpaceStart()I

    move-result v10

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisExtraSpaceEnd()I

    move-result v9

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    move-object v4, p0

    move-object v5, p1

    move v11, p2

    move v12, v3

    invoke-direct/range {v4 .. v12}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onPrefetchForward(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IIIIIFZ)V

    :cond_2
    return-void
.end method

.method private final getItemSizeOrPrefetch(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IZ)I
    .locals 3

    sget-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isCacheWindowRefillFixEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0, p2}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/compose/foundation/lazy/layout/CachedItem;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/CachedItem;->getMainAxisSize()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_5

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0, p2}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->markAsUrgent()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    new-instance v2, Lvx0;

    invoke-direct {v2, p0, p1}, Lvx0;-><init>(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V

    invoke-interface {p1, p2, v2}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->schedulePrefetch(ILbm3;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    if-eqz p3, :cond_5

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0, p2}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->markAsUrgent()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v0, p2}, Landroidx/collection/IntIntMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {p0, p2}, Landroidx/collection/IntIntMap;->get(I)I

    move-result p0

    return p0

    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p2}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_5

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0, p2}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_2
    if-ge v1, p1, :cond_5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->markAsUrgent()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    new-instance v2, Lwx0;

    invoke-direct {v2, p0, p1}, Lwx0;-><init>(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V

    invoke-interface {p1, p2, v2}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->schedulePrefetch(ILbm3;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    if-eqz p3, :cond_5

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0, p2}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_3
    if-ge v1, p1, :cond_5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->markAsUrgent()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method private static final getItemSizeOrPrefetch$lambda$10(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)Lj59;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onItemPrefetched(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final getItemSizeOrPrefetch$lambda$4(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)Lj59;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onItemPrefetched(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final onDatasetChanged(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getHasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    const/4 v2, 0x0

    if-gez v1, :cond_0

    move v1, v2

    :cond_0
    iput v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastLineIndex()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    if-le v3, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    :cond_2
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassDelta:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_3

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastVisibleLineIndex()I

    move-result p1

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->itemsCount:I

    sub-int/2addr v1, v0

    invoke-direct {p0, p1, v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->removeOutOfBoundsItems(II)V

    return-void

    :cond_3
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getFirstVisibleLineIndex()I

    move-result p1

    invoke-direct {p0, v2, p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->removeOutOfBoundsItems(II)V

    :cond_4
    return-void
.end method

.method private final onDatasetChangedWithoutFix(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastLineIndex()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    if-le v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    :cond_2
    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->itemsCount:I

    sub-int/2addr v1, v0

    invoke-direct {p0, p1, v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->removeOutOfBoundsItems(II)V

    return-void
.end method

.method private final onItemPrefetched(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)V
    .locals 0

    invoke-direct {p0, p2, p3}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->cachePrefetchedItem(II)V

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->scheduleNextItemIfNeeded(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V

    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->traceWindowInfo()V

    return-void
.end method

.method private final onKeepAround(IIIIIFI)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float p6, p6, v0

    if-gtz p6, :cond_2

    sub-int/2addr p5, p4

    iput p5, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    :goto_0
    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    if-lez p1, :cond_1

    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    if-lez p1, :cond_1

    sget-boolean p2, Landroidx/compose/foundation/ComposeFoundationFlags;->isCacheWindowRefillFixEnabled:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/compose/foundation/lazy/layout/CachedItem;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/CachedItem;->getMainAxisSize()I

    move-result p1

    goto :goto_1

    :cond_0
    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Landroidx/collection/IntIntMap;->containsKey(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/collection/IntIntMap;->get(I)I

    move-result p1

    :goto_1
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->removeOutOfBoundsItems(II)V

    return-void

    :cond_2
    sub-int/2addr p5, p3

    iput p5, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    :goto_2
    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    if-lez p1, :cond_4

    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/lit8 p2, p7, -0x1

    if-ge p1, p2, :cond_4

    sget-boolean p2, Landroidx/compose/foundation/ComposeFoundationFlags;->isCacheWindowRefillFixEnabled:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/compose/foundation/lazy/layout/CachedItem;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/CachedItem;->getMainAxisSize()I

    move-result p1

    goto :goto_3

    :cond_3
    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroidx/collection/IntIntMap;->containsKey(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/collection/IntIntMap;->get(I)I

    move-result p1

    :goto_3
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    goto :goto_2

    :cond_4
    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p7, p7, -0x1

    invoke-direct {p0, p1, p7}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->removeOutOfBoundsItems(II)V

    return-void
.end method

.method private final onPrefetchForward(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IIIIIFZ)V
    .locals 5

    invoke-static {p7}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassDelta:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz p8, :cond_6

    if-eqz v0, :cond_3

    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result p6

    invoke-static {p6}, Lw65;->b(F)I

    move-result p6

    add-int/2addr p6, p2

    sub-int/2addr p4, p5

    if-le p6, p4, :cond_2

    move p6, p4

    :cond_2
    iput p6, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    goto :goto_2

    :cond_3
    :goto_1
    sub-int/2addr p4, p5

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    iput p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    :goto_2
    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    if-lez p2, :cond_c

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    invoke-interface {p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastIndexInLine(I)I

    move-result p2

    if-eq p2, v4, :cond_c

    iget p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    invoke-interface {p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastIndexInLine(I)I

    move-result p2

    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->itemsCount:I

    sub-int/2addr p4, v2

    if-ge p2, p4, :cond_c

    sget-boolean p2, Landroidx/compose/foundation/ComposeFoundationFlags;->isCacheWindowRefillFixEnabled:Z

    if-eqz p2, :cond_4

    cmpg-float p2, p7, v3

    if-nez p2, :cond_4

    move p2, v1

    goto :goto_3

    :cond_4
    move p2, v2

    :goto_3
    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/2addr p4, v2

    add-int/lit8 p6, p3, 0x1

    if-ne p4, p6, :cond_5

    if-eqz p2, :cond_5

    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result p2

    int-to-float p4, p5

    cmpl-float p2, p2, p4

    if-ltz p2, :cond_5

    move p2, v2

    goto :goto_4

    :cond_5
    move p2, v1

    :goto_4
    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/2addr p4, v2

    invoke-direct {p0, p1, p4, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->getItemSizeOrPrefetch(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IZ)I

    move-result p2

    if-eq p2, v4, :cond_c

    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/2addr p4, v2

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    sub-int/2addr p4, p2

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_9

    iget-boolean p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    if-eqz p3, :cond_7

    goto :goto_5

    :cond_7
    iget p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result p5

    invoke-static {p5}, Lw65;->b(F)I

    move-result p5

    add-int/2addr p5, p3

    sub-int/2addr p4, p6

    if-le p5, p4, :cond_8

    move p5, p4

    :cond_8
    iput p5, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    goto :goto_6

    :cond_9
    :goto_5
    sub-int/2addr p4, p6

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    :goto_6
    iget p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    if-lez p3, :cond_c

    iget p3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    if-lez p3, :cond_c

    sget-boolean p4, Landroidx/compose/foundation/ComposeFoundationFlags;->isCacheWindowRefillFixEnabled:Z

    if-eqz p4, :cond_a

    cmpg-float p4, p7, v3

    if-nez p4, :cond_a

    move p4, v1

    goto :goto_7

    :cond_a
    move p4, v2

    :goto_7
    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p5, p2, -0x1

    if-ne p3, p5, :cond_b

    if-eqz p4, :cond_b

    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result p3

    int-to-float p4, p6

    cmpl-float p3, p3, p4

    if-ltz p3, :cond_b

    move p3, v2

    goto :goto_8

    :cond_b
    move p3, v1

    :goto_8
    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    sub-int/2addr p4, v2

    invoke-direct {p0, p1, p4, p3}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->getItemSizeOrPrefetch(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IZ)I

    move-result p3

    if-eq p3, v4, :cond_c

    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    add-int/2addr p4, v4

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    iget p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    sub-int/2addr p4, p3

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    goto :goto_6

    :cond_c
    return-void
.end method

.method private final refillWindow(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;Z)V
    .locals 10

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getHasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisViewportSize()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->cacheWindow:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v2, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;->calculateAheadWindow(Landroidx/compose/ui/unit/Density;I)I

    move-result v0

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getFirstVisibleLineIndex()I

    move-result v3

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastVisibleLineIndex()I

    move-result v4

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisExtraSpaceStart()I

    move-result v7

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisExtraSpaceEnd()I

    move-result v6

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v9, p2

    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onPrefetchForward(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IIIIIFZ)V

    :cond_1
    return-void
.end method

.method private final removeOutOfBoundsItems(II)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->indicesToRemove:Landroidx/collection/MutableIntSet;

    invoke-virtual {v3}, Landroidx/collection/MutableIntSet;->clear()V

    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    iget-object v4, v3, Landroidx/collection/IntObjectMap;->keys:[I

    iget-object v3, v3, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    const/4 v10, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v13, 0x8

    const/4 v14, 0x0

    if-ltz v5, :cond_4

    move v15, v14

    const-wide/16 v16, 0x80

    :goto_0
    aget-wide v6, v3, v15

    const-wide/16 v18, 0xff

    not-long v8, v6

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    and-long/2addr v8, v11

    cmp-long v8, v8, v11

    if-eqz v8, :cond_3

    sub-int v8, v15, v5

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    rsub-int/lit8 v8, v8, 0x8

    move v9, v14

    :goto_1
    if-ge v9, v8, :cond_2

    and-long v20, v6, v18

    cmp-long v20, v20, v16

    if-gez v20, :cond_0

    shl-int/lit8 v20, v15, 0x3

    add-int v20, v20, v9

    move/from16 v21, v10

    aget v10, v4, v20

    if-gt v1, v10, :cond_1

    if-gt v10, v2, :cond_1

    move-wide/from16 v22, v11

    iget-object v11, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->indicesToRemove:Landroidx/collection/MutableIntSet;

    invoke-virtual {v11, v10}, Landroidx/collection/MutableIntSet;->add(I)Z

    goto :goto_2

    :cond_0
    move/from16 v21, v10

    :cond_1
    move-wide/from16 v22, v11

    :goto_2
    shr-long/2addr v6, v13

    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v21

    move-wide/from16 v11, v22

    goto :goto_1

    :cond_2
    move/from16 v21, v10

    move-wide/from16 v22, v11

    if-ne v8, v13, :cond_5

    goto :goto_3

    :cond_3
    move/from16 v21, v10

    move-wide/from16 v22, v11

    :goto_3
    if-eq v15, v5, :cond_5

    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v21

    move-wide/from16 v11, v22

    goto :goto_0

    :cond_4
    move/from16 v21, v10

    move-wide/from16 v22, v11

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    :cond_5
    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    iget-object v4, v3, Landroidx/collection/IntIntMap;->keys:[I

    iget-object v3, v3, Landroidx/collection/IntIntMap;->metadata:[J

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_9

    move v6, v14

    :goto_4
    aget-wide v7, v3, v6

    not-long v9, v7

    shl-long v9, v9, v21

    and-long/2addr v9, v7

    and-long v9, v9, v22

    cmp-long v9, v9, v22

    if-eqz v9, :cond_8

    sub-int v9, v6, v5

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x8

    move v10, v14

    :goto_5
    if-ge v10, v9, :cond_7

    and-long v11, v7, v18

    cmp-long v11, v11, v16

    if-gez v11, :cond_6

    shl-int/lit8 v11, v6, 0x3

    add-int/2addr v11, v10

    aget v11, v4, v11

    if-gt v1, v11, :cond_6

    if-gt v11, v2, :cond_6

    iget-object v12, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->indicesToRemove:Landroidx/collection/MutableIntSet;

    invoke-virtual {v12, v11}, Landroidx/collection/MutableIntSet;->add(I)Z

    :cond_6
    shr-long/2addr v7, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_7
    if-ne v9, v13, :cond_9

    :cond_8
    if-eq v6, v5, :cond_9

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    iget-object v4, v3, Landroidx/collection/IntObjectMap;->keys:[I

    iget-object v3, v3, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_d

    move v6, v14

    :goto_6
    aget-wide v7, v3, v6

    not-long v9, v7

    shl-long v9, v9, v21

    and-long/2addr v9, v7

    and-long v9, v9, v22

    cmp-long v9, v9, v22

    if-eqz v9, :cond_c

    sub-int v9, v6, v5

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x8

    move v10, v14

    :goto_7
    if-ge v10, v9, :cond_b

    and-long v11, v7, v18

    cmp-long v11, v11, v16

    if-gez v11, :cond_a

    shl-int/lit8 v11, v6, 0x3

    add-int/2addr v11, v10

    aget v11, v4, v11

    if-gt v1, v11, :cond_a

    if-gt v11, v2, :cond_a

    iget-object v12, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->indicesToRemove:Landroidx/collection/MutableIntSet;

    invoke-virtual {v12, v11}, Landroidx/collection/MutableIntSet;->add(I)Z

    :cond_a
    shr-long/2addr v7, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_b
    if-ne v9, v13, :cond_d

    :cond_c
    if-eq v6, v5, :cond_d

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_d
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->indicesToRemove:Landroidx/collection/MutableIntSet;

    iget-object v2, v1, Landroidx/collection/IntSet;->elements:[I

    iget-object v1, v1, Landroidx/collection/IntSet;->metadata:[J

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_12

    move v4, v14

    :goto_8
    aget-wide v5, v1, v4

    not-long v7, v5

    shl-long v7, v7, v21

    and-long/2addr v7, v5

    and-long v7, v7, v22

    cmp-long v7, v7, v22

    if-eqz v7, :cond_11

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    rsub-int/lit8 v7, v7, 0x8

    move v8, v14

    :goto_9
    if-ge v8, v7, :cond_10

    and-long v9, v5, v18

    cmp-long v9, v9, v16

    if-gez v9, :cond_f

    shl-int/lit8 v9, v4, 0x3

    add-int/2addr v9, v8

    aget v9, v2, v9

    iget-object v10, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v10, v9}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_e

    move-object v11, v10

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    move v12, v14

    :goto_a
    if-ge v12, v11, :cond_e

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_e
    iget-object v10, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v10, v9}, Landroidx/collection/MutableIntIntMap;->remove(I)V

    iget-object v10, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v10, v9}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    :cond_f
    shr-long/2addr v5, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_10
    if-ne v7, v13, :cond_12

    :cond_11
    if-eq v4, v3, :cond_12

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method private final scheduleNextItemIfNeeded(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassDelta:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, -0x1

    if-gtz v0, :cond_0

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    if-lez v0, :cond_1

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassDelta:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    if-lez v0, :cond_1

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-lez v0, :cond_2

    invoke-interface {p1, v0}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastIndexInLine(I)I

    move-result v1

    if-eq v1, v2, :cond_2

    invoke-interface {p1, v0}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getLastIndexInLine(I)I

    move-result v1

    iget v2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->itemsCount:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    new-instance v2, Lxx0;

    invoke-direct {v2, p0, p1}, Lxx0;-><init>(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V

    invoke-interface {p1, v0, v2}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->schedulePrefetch(ILbm3;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static final scheduleNextItemIfNeeded$lambda$1(Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)Lj59;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onItemPrefetched(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final traceWindowInfo()V
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    int-to-long v0, v0

    const-string v2, "prefetchWindowStartExtraSpace"

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->traceValue(Ljava/lang/String;J)V

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    int-to-long v0, v0

    const-string v2, "prefetchWindowEndExtraSpace"

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->traceValue(Ljava/lang/String;J)V

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    int-to-long v0, v0

    const-string v2, "prefetchWindowStartIndex"

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->traceValue(Ljava/lang/String;J)V

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    int-to-long v0, p0

    const-string p0, "prefetchWindowEndIndex"

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->traceValue(Ljava/lang/String;J)V

    return-void
.end method

.method private final updateOrCreateCachedItem(IILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/CachedItem;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/layout/CachedItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/lazy/layout/CachedItem;->setMainAxisSize(I)V

    invoke-virtual {p0, p3}, Landroidx/compose/foundation/lazy/layout/CachedItem;->setKey(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Landroidx/compose/foundation/lazy/layout/CachedItem;

    invoke-direct {p0, p3, p2}, Landroidx/compose/foundation/lazy/layout/CachedItem;-><init>(Ljava/lang/Object;I)V

    return-object p0
.end method


# virtual methods
.method public final getPrefetchWindowEndLine$foundation()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    return p0
.end method

.method public final getPrefetchWindowStartLine$foundation()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    return p0
.end method

.method public final hasValidBounds()Z
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onScroll(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;F)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->traceWindowInfo()V

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->fillCacheWindowBackward(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;F)V

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->fillCacheWindowForward(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;F)V

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassDelta:F

    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->traceWindowInfo()V

    return-void
.end method

.method public final onVisibleItemsUpdated(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V
    .locals 9

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->hasUpdatedVisibleItemsOnce:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->enableInitialPrefetch:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->cacheWindow:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getMainAxisViewportSize()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;->calculateAheadWindow(Landroidx/compose/ui/unit/Density;I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    :cond_1
    iput-boolean v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->hasUpdatedVisibleItemsOnce:Z

    :cond_2
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassItemCount:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getTotalItemsCount()I

    move-result v4

    if-eq v0, v4, :cond_4

    sget-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isCacheWindowRefillFixEnabled:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onDatasetChanged(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onDatasetChangedWithoutFix(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V

    :cond_4
    :goto_1
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getTotalItemsCount()I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->itemsCount:I

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getHasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getVisibleLineCount()I

    move-result v0

    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_7

    invoke-interface {p1, v4}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getVisibleItemLine(I)I

    move-result v5

    invoke-interface {p1, v4}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getVisibleLineKey(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v4}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getVisibleItemSize(I)I

    move-result v7

    sget-boolean v8, Landroidx/compose/foundation/ComposeFoundationFlags;->isCacheWindowRefillFixEnabled:Z

    if-eqz v8, :cond_5

    if-eq v5, v3, :cond_6

    invoke-direct {p0, v5, v6, v7}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->cacheVisibleItemsInfo(ILjava/lang/Object;I)V

    goto :goto_3

    :cond_5
    if-eq v5, v3, :cond_6

    invoke-direct {p0, v5, v7}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->cacheVisibleItemsInfoWithoutFix(II)V

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    if-eqz v0, :cond_a

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassDelta:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-direct {p0, p1, v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->refillWindow(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;Z)V

    iput-boolean v2, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->resetStrategy()V

    :cond_a
    :goto_5
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowScope;->getTotalItemsCount()I

    move-result p1

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->previousPassItemCount:I

    return-void
.end method

.method public final resetStrategy()V
    .locals 14

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartLine:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndLine:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowStartExtraSpace:I

    iput v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowEndExtraSpace:I

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->shouldRefillWindow:Z

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCache:Landroidx/collection/MutableIntIntMap;

    invoke-virtual {v1}, Landroidx/collection/MutableIntIntMap;->clear()V

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->windowCacheWithItems:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v1}, Landroidx/collection/MutableIntObjectMap;->clear()V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->prefetchWindowHandles:Landroidx/collection/MutableIntObjectMap;

    iget-object v1, p0, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_4

    move v3, v0

    :goto_0
    aget-wide v4, v1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    sub-int v6, v3, v2

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v0

    :goto_1
    if-ge v8, v6, :cond_2

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    iget-object v10, p0, Landroidx/collection/IntObjectMap;->keys:[I

    aget v10, v10, v9

    iget-object v10, p0, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    aget-object v10, v10, v9

    check-cast v10, Ljava/util/List;

    move-object v11, v10

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    move v12, v0

    :goto_2
    if-ge v12, v11, :cond_0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-interface {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v9}, Landroidx/collection/MutableIntObjectMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_1
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-ne v6, v7, :cond_4

    :cond_3
    if-eq v3, v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

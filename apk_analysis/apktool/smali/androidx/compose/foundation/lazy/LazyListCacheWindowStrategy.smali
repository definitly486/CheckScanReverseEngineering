.class public final Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;
.super Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;ZILjh2;)V

    new-instance p1, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    return-void
.end method

.method private final applyWindowScope(Landroidx/compose/foundation/lazy/LazyListPrefetchScope;Landroidx/compose/foundation/lazy/LazyListLayoutInfo;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListPrefetchScope;",
            "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/lazy/layout/CacheWindowScope;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-virtual {v0, p2}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->setLayoutInfo(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)V

    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->setPrefetchScope(Landroidx/compose/foundation/lazy/LazyListPrefetchScope;)V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-interface {p3, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onNestedPrefetch(Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;I)V
    .locals 2

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;->getNestedPrefetchItemCount()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;->getNestedPrefetchItemCount()I

    move-result p0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_1

    add-int v1, p2, v0

    invoke-interface {p1, v1}, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;->schedulePrecomposition(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onScroll(Landroidx/compose/foundation/lazy/LazyListPrefetchScope;FLandroidx/compose/foundation/lazy/LazyListLayoutInfo;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-virtual {v0, p3}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->setLayoutInfo(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)V

    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-virtual {p3, p1}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->setPrefetchScope(Landroidx/compose/foundation/lazy/LazyListPrefetchScope;)V

    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onScroll(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;F)V

    return-void
.end method

.method public onVisibleItemsUpdated(Landroidx/compose/foundation/lazy/LazyListPrefetchScope;Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-virtual {v0, p2}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->setLayoutInfo(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)V

    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->setPrefetchScope(Landroidx/compose/foundation/lazy/LazyListPrefetchScope;)V

    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListCacheWindowStrategy;->cacheWindowScope:Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onVisibleItemsUpdated(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V

    return-void
.end method

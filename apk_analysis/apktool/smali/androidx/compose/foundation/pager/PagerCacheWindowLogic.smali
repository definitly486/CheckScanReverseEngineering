.class public final Landroidx/compose/foundation/pager/PagerCacheWindowLogic;
.super Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final cacheWindow:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

.field private final cacheWindowScope:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

.field private final itemCount:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lll3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
            "Lll3<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;Z)V

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindow:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iput-object p3, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->itemCount:Lll3;

    new-instance p1, Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    invoke-direct {p1, p3}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;-><init>(Lll3;)V

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindowScope:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    return-void
.end method

.method private final applyWindowScope(Landroidx/compose/foundation/pager/PagerMeasureResult;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/pager/PagerMeasureResult;",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/lazy/layout/CacheWindowScope;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindowScope:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->setLayoutInfo(Landroidx/compose/foundation/pager/PagerMeasureResult;)V

    iget-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindowScope:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->setState(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindowScope:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    invoke-interface {p2, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getCacheWindow()Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindow:Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    return-object p0
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

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->itemCount:Lll3;

    return-object p0
.end method

.method public final getState()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    return-object p0
.end method

.method public final onScroll(FLandroidx/compose/foundation/pager/PagerMeasureResult;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindowScope:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    invoke-virtual {v0, p2}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->setLayoutInfo(Landroidx/compose/foundation/pager/PagerMeasureResult;)V

    iget-object p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindowScope:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    invoke-virtual {p2, v0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->setState(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V

    iget-object p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindowScope:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    neg-float p1, p1

    invoke-virtual {p0, p2, p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onScroll(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;F)V

    return-void
.end method

.method public final onVisibleItemsChanged(Landroidx/compose/foundation/pager/PagerMeasureResult;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindowScope:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->setLayoutInfo(Landroidx/compose/foundation/pager/PagerMeasureResult;)V

    iget-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindowScope:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->setState(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V

    iget-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->cacheWindowScope:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->onVisibleItemsUpdated(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;)V

    return-void
.end method

.class public interface abstract Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic getPrefetchScheduler$annotations()V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    return-void
.end method


# virtual methods
.method public getPrefetchScheduler()Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract onNestedPrefetch(Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;I)V
.end method

.method public abstract onScroll(Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchScope;FLandroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)V
.end method

.method public abstract onVisibleItemsUpdated(Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchScope;Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)V
.end method

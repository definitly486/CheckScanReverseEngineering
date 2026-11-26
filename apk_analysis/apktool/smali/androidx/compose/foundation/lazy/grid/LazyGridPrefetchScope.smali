.class public interface abstract Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchScope;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract scheduleLinePrefetch(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
            ">;"
        }
    .end annotation
.end method

.method public scheduleLinePrefetch(ILnl3;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;",
            "Lj59;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
            ">;"
        }
    .end annotation

    invoke-interface {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchScope;->scheduleLinePrefetch(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

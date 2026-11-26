.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMapKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final LazyLayoutKeyIndexMap(Ly74;Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;)Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly74;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent<",
            "*>;)",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;-><init>(Ly74;Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;)V

    return-object v0
.end method

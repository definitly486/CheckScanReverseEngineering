.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindowKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final LazyLayoutCacheWindow(FF)Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;-><init>(FF)V

    return-object v0
.end method

.method public static synthetic LazyLayoutCacheWindow$default(FFILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    .locals 1

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move p0, v0

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move p1, v0

    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindowKt;->LazyLayoutCacheWindow(FF)Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    move-result-object p0

    return-object p0
.end method

.method public static final LazyLayoutCacheWindow-YgX7TsA(FF)Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/layout/DpLazyLayoutCacheWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/compose/foundation/lazy/layout/DpLazyLayoutCacheWindow;-><init>(FFLjh2;)V

    return-object v0
.end method

.method public static synthetic LazyLayoutCacheWindow-YgX7TsA$default(FFILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;
    .locals 1

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindowKt;->LazyLayoutCacheWindow-YgX7TsA(FF)Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;

    move-result-object p0

    return-object p0
.end method

.class final Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;


# instance fields
.field private final aheadFraction:F

.field private final behindFraction:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;->aheadFraction:F

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;->behindFraction:F

    return-void
.end method


# virtual methods
.method public calculateAheadWindow(Landroidx/compose/ui/unit/Density;I)I
    .locals 0

    int-to-float p1, p2

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;->aheadFraction:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Lw65;->b(F)I

    move-result p0

    return p0
.end method

.method public calculateBehindWindow(Landroidx/compose/ui/unit/Density;I)I
    .locals 0

    int-to-float p1, p2

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;->behindFraction:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Lw65;->b(F)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;

    iget v0, p1, Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;->aheadFraction:F

    iget v2, p0, Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;->aheadFraction:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    iget p1, p1, Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;->behindFraction:F

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;->behindFraction:F

    cmpg-float p0, p1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final getAheadFraction()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;->aheadFraction:F

    return p0
.end method

.method public final getBehindFraction()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;->behindFraction:F

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;->aheadFraction:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/FractionLazyLayoutCacheWindow;->behindFraction:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

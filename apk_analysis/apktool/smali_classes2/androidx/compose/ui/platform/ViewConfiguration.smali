.class public interface abstract Landroidx/compose/ui/platform/ViewConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/ViewConfiguration$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic access$getHandwritingGestureLineMargin$jd(Landroidx/compose/ui/platform/ViewConfiguration;)F
    .locals 0

    invoke-super {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->getHandwritingGestureLineMargin()F

    move-result p0

    return p0
.end method

.method public static synthetic access$getHandwritingSlop$jd(Landroidx/compose/ui/platform/ViewConfiguration;)F
    .locals 0

    invoke-super {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->getHandwritingSlop()F

    move-result p0

    return p0
.end method

.method public static synthetic access$getMaximumFlingVelocity$jd(Landroidx/compose/ui/platform/ViewConfiguration;)F
    .locals 0

    invoke-super {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->getMaximumFlingVelocity()F

    move-result p0

    return p0
.end method

.method public static synthetic access$getMinimumFlingVelocity$jd(Landroidx/compose/ui/platform/ViewConfiguration;)F
    .locals 0

    invoke-super {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->getMinimumFlingVelocity()F

    move-result p0

    return p0
.end method

.method public static synthetic access$getMinimumTouchTargetSize-MYxV2XQ$jd(Landroidx/compose/ui/platform/ViewConfiguration;)J
    .locals 2

    invoke-super {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->getMinimumTouchTargetSize-MYxV2XQ()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public abstract getDoubleTapMinTimeMillis()J
.end method

.method public abstract getDoubleTapTimeoutMillis()J
.end method

.method public getHandwritingGestureLineMargin()F
    .locals 0

    const/high16 p0, 0x41800000    # 16.0f

    return p0
.end method

.method public getHandwritingSlop()F
    .locals 0

    const/high16 p0, 0x40000000    # 2.0f

    return p0
.end method

.method public abstract getLongPressTimeoutMillis()J
.end method

.method public getMaximumFlingVelocity()F
    .locals 0

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0
.end method

.method public getMinimumFlingVelocity()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMinimumTouchTargetSize-MYxV2XQ()J
    .locals 2

    const/high16 p0, 0x42400000    # 48.0f

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getTouchSlop()F
.end method

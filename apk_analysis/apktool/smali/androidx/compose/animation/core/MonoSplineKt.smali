.class public final Landroidx/compose/animation/core/MonoSplineKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MonoSplineIsExtrapolate:Z = true


# direct methods
.method public static final hermiteDifferential(FFFFFF)F
    .locals 3

    mul-float v0, p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v1, p1

    mul-float/2addr v1, p4

    add-float/2addr v1, p5

    mul-float/2addr v1, v2

    sub-float v1, p4, v1

    const/high16 v2, 0x40400000    # 3.0f

    add-float/2addr p4, p5

    mul-float/2addr p4, v2

    mul-float/2addr p4, v0

    add-float/2addr p4, v1

    mul-float/2addr p4, p0

    const/high16 p0, 0x40c00000    # 6.0f

    sub-float/2addr p1, v0

    mul-float/2addr p1, p0

    sub-float/2addr p2, p3

    mul-float/2addr p2, p1

    sub-float/2addr p4, p2

    return p4
.end method

.method public static final hermiteInterpolate(FFFFFF)F
    .locals 4

    mul-float v0, p1, p1

    mul-float v1, v0, p1

    mul-float/2addr p4, p0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v2, v0

    sub-float/2addr p1, v3

    add-float/2addr p1, v1

    mul-float/2addr p1, p4

    mul-float/2addr p0, p5

    sub-float p4, v1, v0

    mul-float/2addr p4, p0

    add-float/2addr p4, p1

    add-float/2addr p4, p2

    const/high16 p0, 0x40400000    # 3.0f

    mul-float/2addr p0, v0

    mul-float/2addr v2, v1

    sub-float/2addr p0, v2

    sub-float/2addr p2, p3

    mul-float/2addr p2, p0

    sub-float/2addr p4, p2

    return p4
.end method

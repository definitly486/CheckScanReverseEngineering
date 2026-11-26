.class public final Landroidx/compose/foundation/text/selection/SelectionRegistrarImplKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final inARow-zwwh4xc(JJJJ)Z
    .locals 8

    const-wide v0, 0xffffffffL

    and-long v2, p2, v0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    and-long v4, p0, v0

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    sub-float/2addr v3, v5

    const/16 v5, 0x20

    shr-long/2addr p2, v5

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    shr-long/2addr p0, v5

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    sub-float/2addr p3, p1

    and-long v6, p6, v0

    long-to-int p1, v6

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    and-long/2addr v0, p4

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float/2addr v6, v1

    shr-long/2addr p6, v5

    long-to-int p6, p6

    invoke-static {p6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p7

    shr-long/2addr p4, v5

    long-to-int p4, p4

    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p5

    sub-float/2addr p7, p5

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {p5, v0}, Ljava/lang/Math;->max(FF)F

    move-result p5

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float/2addr p1, p5

    const/4 p5, 0x0

    invoke-static {p5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    invoke-static {p0, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-static {p6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    sub-float/2addr p2, p0

    invoke-static {p5, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr v3, p2

    cmpl-float p4, p1, v3

    const/4 p5, 0x1

    const/4 p6, 0x0

    if-gez p4, :cond_1

    mul-float/2addr v6, p2

    cmpl-float p1, p1, v6

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p6

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p5

    :goto_1
    mul-float/2addr p3, p2

    cmpg-float p3, p0, p3

    if-gez p3, :cond_2

    mul-float/2addr p7, p2

    cmpg-float p0, p0, p7

    if-gez p0, :cond_2

    move p0, p5

    goto :goto_2

    :cond_2
    move p0, p6

    :goto_2
    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    return p5

    :cond_3
    return p6
.end method

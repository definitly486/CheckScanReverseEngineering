.class public final Landroidx/compose/material3/internal/colorUtil/Frame_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$lerp(FFF)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/internal/colorUtil/Frame_androidKt;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private static final lerp(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    return p2
.end method

.class public final synthetic Lfp5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/Easing;


# virtual methods
.method public final transform(F)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float p1, p0, p1

    mul-float/2addr p1, p1

    sub-float/2addr p0, p1

    return p0
.end method

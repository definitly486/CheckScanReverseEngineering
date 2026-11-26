.class public abstract Lyads/q35;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(FFFF)F
    .locals 4

    sub-float/2addr p0, p2

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 205
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    sub-float/2addr p1, p3

    float-to-double p1, p1

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static a(Lyads/u35;Lyads/p35;Lyads/p35;[III)Landroid/graphics/RadialGradient;
    .locals 9

    instance-of v0, p1, Lyads/n35;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lyads/n35;

    iget p1, p1, Lyads/n35;->a:F

    :goto_0
    move v3, p1

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lyads/o35;

    if-eqz v0, :cond_a

    check-cast p1, Lyads/o35;

    iget p1, p1, Lyads/o35;->a:F

    int-to-float v0, p4

    mul-float/2addr p1, v0

    goto :goto_0

    :goto_1
    instance-of p1, p2, Lyads/n35;

    if-eqz p1, :cond_1

    check-cast p2, Lyads/n35;

    iget p1, p2, Lyads/n35;->a:F

    :goto_2
    move v4, p1

    goto :goto_3

    :cond_1
    instance-of p1, p2, Lyads/o35;

    if-eqz p1, :cond_9

    check-cast p2, Lyads/o35;

    iget p1, p2, Lyads/o35;->a:F

    int-to-float p2, p5

    mul-float/2addr p1, p2

    goto :goto_2

    :goto_3
    int-to-float p1, p4

    int-to-float p2, p5

    new-instance p4, Lf6a;

    invoke-direct {p4, p1, p2, v3, v4}, Lf6a;-><init>(FFFF)V

    new-instance p5, Lfh8;

    invoke-direct {p5, p4}, Lfh8;-><init>(Lll3;)V

    new-instance p4, Lg6a;

    invoke-direct {p4, p1, p2, v3, v4}, Lg6a;-><init>(FFFF)V

    new-instance p1, Lfh8;

    invoke-direct {p1, p4}, Lfh8;-><init>(Lll3;)V

    instance-of p2, p0, Lyads/r35;

    if-eqz p2, :cond_2

    check-cast p0, Lyads/r35;

    iget p0, p0, Lyads/r35;->a:F

    goto :goto_4

    :cond_2
    instance-of p2, p0, Lyads/t35;

    if-eqz p2, :cond_8

    check-cast p0, Lyads/t35;

    iget-object p0, p0, Lyads/t35;->a:Lyads/s35;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_6

    const/4 p2, 0x1

    if-eq p0, p2, :cond_5

    const/4 p2, 0x2

    if-eq p0, p2, :cond_4

    const/4 p2, 0x3

    if-ne p0, p2, :cond_3

    invoke-virtual {p1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Float;

    invoke-static {p0}, Lyr;->V([Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_4

    :cond_3
    invoke-static {}, Lme0;->e()V

    return-object v1

    :cond_4
    invoke-virtual {p1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Float;

    invoke-static {p0}, Lyr;->X([Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_4

    :cond_5
    invoke-virtual {p5}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Float;

    invoke-static {p0}, Lyr;->V([Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_4

    :cond_6
    invoke-virtual {p5}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Float;

    invoke-static {p0}, Lyr;->X([Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_4
    new-instance v2, Landroid/graphics/RadialGradient;

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-lez p1, :cond_7

    :goto_5
    move v5, p0

    goto :goto_6

    :cond_7
    const p0, 0x3c23d70a    # 0.01f

    goto :goto_5

    :goto_6
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v2

    :cond_8
    invoke-static {}, Lme0;->e()V

    return-object v1

    :cond_9
    invoke-static {}, Lme0;->e()V

    return-object v1

    :cond_a
    invoke-static {}, Lme0;->e()V

    return-object v1
.end method

.method public static final a(FFFFFF)[Ljava/lang/Float;
    .locals 1

    .line 206
    invoke-static {p4, p5, p0, p1}, Lyads/q35;->a(FFFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 207
    invoke-static {p4, p5, p2, p1}, Lyads/q35;->a(FFFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 208
    invoke-static {p4, p5, p2, p3}, Lyads/q35;->a(FFFF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 209
    invoke-static {p4, p5, p0, p3}, Lyads/q35;->a(FFFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, p1, p2, p0}, [Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static final b(FFFFFF)[Ljava/lang/Float;
    .locals 0

    sub-float p0, p4, p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sub-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    sub-float p2, p5, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    sub-float/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

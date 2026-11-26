.class public abstract Lyads/d32;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/k11;ZLyads/fs2;)Lyads/gr4;
    .locals 8

    iget-object v0, p0, Lyads/k11;->e:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/j11;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_f

    const/4 v5, 0x2

    if-eq v0, v5, :cond_7

    const/4 v6, 0x5

    if-eq v0, v6, :cond_6

    if-eqz p1, :cond_1

    iget-object p0, p0, Lyads/k11;->h:Lyads/as2;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-float p0, v6

    invoke-static {p0, v1, v2}, Lkx6;->d(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lyads/k11;->b:Lyads/as2;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    goto :goto_1

    :cond_2
    move-object p0, v3

    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-float p0, v6

    invoke-static {p0, v1, v2}, Lkx6;->d(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_3
    :goto_2
    new-instance p0, Lyads/it2;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_4
    invoke-direct {p0, v2}, Lyads/it2;-><init>(F)V

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v4, v5

    :goto_3
    invoke-virtual {p0, v4}, Landroidx/transition/Visibility;->setMode(I)V

    return-object p0

    :cond_6
    return-object v3

    :cond_7
    if-eqz p1, :cond_a

    iget-object p0, p0, Lyads/k11;->h:Lyads/as2;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    goto :goto_4

    :cond_8
    move-object p0, v3

    :goto_4
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    double-to-float p0, p0

    cmpg-float p1, p0, v1

    if-gez p1, :cond_9

    goto :goto_5

    :cond_9
    move v1, p0

    :goto_5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_8

    :cond_a
    iget-object p0, p0, Lyads/k11;->b:Lyads/as2;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    goto :goto_6

    :cond_b
    move-object p0, v3

    :goto_6
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    double-to-float p0, p0

    cmpg-float p1, p0, v1

    if-gez p1, :cond_c

    goto :goto_7

    :cond_c
    move v1, p0

    :goto_7
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_d
    :goto_8
    new-instance p0, Lyads/oc5;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_e
    invoke-direct {p0, v2}, Lyads/oc5;-><init>(F)V

    return-object p0

    :cond_f
    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p1, :cond_10

    iget-object v4, p0, Lyads/k11;->h:Lyads/as2;

    if-eqz v4, :cond_11

    invoke-virtual {v4, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4, v0, v2}, Lkx6;->d(FFF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_9

    :cond_10
    iget-object v4, p0, Lyads/k11;->b:Lyads/as2;

    if-eqz v4, :cond_11

    invoke-virtual {v4, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4, v0, v2}, Lkx6;->d(FFF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_9

    :cond_11
    move-object v4, v3

    :goto_9
    if-eqz p1, :cond_13

    iget-object p0, p0, Lyads/k11;->b:Lyads/as2;

    if-eqz p0, :cond_12

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    goto :goto_a

    :cond_12
    move-object p0, v3

    :goto_a
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0, v0, v2}, Lkx6;->d(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_c

    :cond_13
    iget-object p0, p0, Lyads/k11;->h:Lyads/as2;

    if-eqz p0, :cond_14

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    goto :goto_b

    :cond_14
    move-object p0, v3

    :goto_b
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0, v0, v2}, Lkx6;->d(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_15
    :goto_c
    new-instance p0, Lyads/q96;

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :cond_16
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_17
    invoke-direct {p0, v0, v1}, Lyads/q96;-><init>(FF)V

    return-object p0
.end method

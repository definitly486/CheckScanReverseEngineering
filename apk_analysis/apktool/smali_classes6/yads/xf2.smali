.class public abstract Lyads/xf2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/animation/ObjectAnimator;Lyads/vq0;Lyads/x11;Lyads/yr0;Lyads/fs2;)Landroid/animation/ObjectAnimator;
    .locals 5

    iget-object v0, p3, Lyads/yr0;->b:Lyads/as2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/m11;

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p2}, Lyads/x11;->g()Lyads/as2;

    move-result-object v0

    invoke-virtual {v0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/m11;

    :cond_1
    iget-object v1, p3, Lyads/yr0;->c:Lyads/as2;

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {v1, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lyads/x11;->getDuration()Lyads/as2;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p3, Lyads/yr0;->g:Lyads/as2;

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v1, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_3

    :cond_3
    invoke-interface {p2}, Lyads/x11;->e()Lyads/as2;

    move-result-object v1

    goto :goto_2

    :goto_3
    invoke-virtual {p0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v1, p3, Lyads/yr0;->e:Lyads/as2;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/o11;

    if-nez v1, :cond_5

    :cond_4
    invoke-interface {p2}, Lyads/x11;->b()Lyads/as2;

    move-result-object v1

    invoke-virtual {v1, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/o11;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    if-eq v2, v3, :cond_6

    invoke-static {v1}, Lyads/jf2;->a(Lyads/o11;)Landroid/view/animation/Interpolator;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-static {v1}, Lyads/jf2;->a(Lyads/o11;)Landroid/view/animation/Interpolator;

    move-result-object v1

    new-instance v2, Lyads/l95;

    invoke-direct {v2, v1}, Lyads/l95;-><init>(Landroid/view/animation/Interpolator;)V

    move-object v1, v2

    :goto_4
    invoke-virtual {p0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p3, p3, Lyads/yr0;->f:Lyads/x91;

    if-nez p3, :cond_7

    invoke-interface {p2}, Lyads/x11;->f()Lyads/x91;

    move-result-object p3

    :cond_7
    instance-of v1, p3, Lyads/v91;

    if-eqz v1, :cond_8

    check-cast p3, Lyads/v91;

    iget-object p3, p3, Lyads/v91;->a:Lyads/ie1;

    iget-object p3, p3, Lyads/ie1;->a:Lyads/as2;

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    long-to-int p3, v1

    sub-int/2addr p3, v4

    if-gez p3, :cond_9

    const/4 p3, 0x0

    goto :goto_5

    :cond_8
    instance-of p3, p3, Lyads/w91;

    if-eqz p3, :cond_d

    const/4 p3, -0x1

    :cond_9
    :goto_5
    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_a

    if-eq p3, v3, :cond_a

    goto :goto_6

    :cond_a
    move v4, v0

    :goto_6
    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-interface {p2}, Lyads/x11;->c()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_b

    new-instance v0, Lyads/vf2;

    invoke-direct {v0, p3, p1, p4}, Lyads/vf2;-><init>(Ljava/util/List;Lyads/vq0;Lyads/fs2;)V

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_b
    invoke-interface {p2}, Lyads/x11;->d()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_c

    new-instance p3, Lyads/wf2;

    invoke-direct {p3, p2, p1, p4}, Lyads/wf2;-><init>(Ljava/util/List;Lyads/vq0;Lyads/fs2;)V

    invoke-virtual {p0, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_c
    return-object p0

    :cond_d
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lyads/vq0;Lyads/fq1;Lyads/yr0;Lyads/fs2;)Landroid/animation/ObjectAnimator;
    .locals 6

    .line 218
    invoke-virtual {p1}, Lyads/fq1;->h()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {p3}, Lyads/w56;->b(Lyads/fs2;)Lyads/z66;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lyads/z66;->a(Ljava/lang/String;)Lyads/u66;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v2

    .line 220
    :cond_1
    instance-of v1, v0, Lyads/r66;

    if-eqz v1, :cond_8

    check-cast v0, Lyads/r66;

    .line 221
    iget-object v1, p2, Lyads/yr0;->h:Lyads/oe2;

    if-eqz v1, :cond_3

    invoke-static {v1, p3}, Lyads/o01;->d(Lyads/oe2;Lyads/fs2;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p1, Lyads/fq1;->j:Lyads/as2;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    .line 222
    :cond_4
    :goto_2
    iget-object v1, p2, Lyads/yr0;->d:Lyads/oe2;

    if-eqz v1, :cond_5

    invoke-static {v1, p3}, Lyads/o01;->d(Lyads/oe2;Lyads/fs2;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p1, Lyads/fq1;->e:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    :cond_6
    if-eqz v2, :cond_7

    .line 223
    invoke-virtual {v0, v2}, Lyads/u66;->a(Ljava/lang/Object;)V

    .line 224
    :cond_7
    sget-object v2, Lyads/nm3;->a:Lyads/nm3;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 225
    invoke-static {v0, p0, p1, p2, p3}, Lyads/xf2;->a(Landroid/animation/ObjectAnimator;Lyads/vq0;Lyads/x11;Lyads/yr0;Lyads/fs2;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0

    .line 226
    :cond_8
    instance-of v1, v0, Lyads/q66;

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    check-cast v0, Lyads/q66;

    .line 227
    iget-object v1, p2, Lyads/yr0;->h:Lyads/oe2;

    if-eqz v1, :cond_a

    invoke-static {v1, p3}, Lyads/o01;->b(Lyads/oe2;Lyads/fs2;)Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    move-object v2, v1

    goto :goto_4

    :cond_a
    :goto_3
    iget-object v1, p1, Lyads/fq1;->j:Lyads/as2;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Double;

    .line 228
    :cond_b
    :goto_4
    iget-object v1, p2, Lyads/yr0;->d:Lyads/oe2;

    if-eqz v1, :cond_c

    invoke-static {v1, p3}, Lyads/o01;->b(Lyads/oe2;Lyads/fs2;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_5

    :cond_c
    iget-object v1, p1, Lyads/fq1;->e:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    :goto_5
    if-eqz v2, :cond_d

    .line 229
    invoke-virtual {v0, v2}, Lyads/u66;->a(Ljava/lang/Object;)V

    .line 230
    :cond_d
    sget-object v1, Lyads/wo4;->a:Lyads/wo4;

    double-to-float v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [F

    aput v2, v4, v3

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 231
    invoke-static {v0, p0, p1, p2, p3}, Lyads/xf2;->a(Landroid/animation/ObjectAnimator;Lyads/vq0;Lyads/x11;Lyads/yr0;Lyads/fs2;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0

    .line 232
    :cond_e
    new-instance p2, Lyads/b94;

    invoke-virtual {p1}, Lyads/fq1;->h()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Unable to find number variable with name \'"

    const-string v0, "\'"

    .line 233
    invoke-static {p3, p1, v0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-direct {p2, p1, v3}, Lyads/b94;-><init>(Ljava/lang/String;I)V

    .line 235
    invoke-static {p0, p2}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static a(Lyads/vq0;Lyads/v71;Lyads/yr0;Lyads/fs2;)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 208
    invoke-virtual {p1}, Lyads/v71;->h()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {p3}, Lyads/w56;->b(Lyads/fs2;)Lyads/z66;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lyads/z66;->a(Ljava/lang/String;)Lyads/u66;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    instance-of v1, v0, Lyads/o66;

    if-nez v1, :cond_1

    move-object v0, v2

    :cond_1
    check-cast v0, Lyads/o66;

    if-nez v0, :cond_2

    .line 210
    new-instance p2, Lyads/b94;

    invoke-virtual {p1}, Lyads/v71;->h()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Unable to find color variable with name \'"

    const-string v0, "\'"

    .line 211
    invoke-static {p3, p1, v0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    .line 212
    invoke-direct {p2, p1, p3}, Lyads/b94;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, p2}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object v2

    .line 213
    :cond_2
    iget-object v1, p2, Lyads/yr0;->h:Lyads/oe2;

    if-eqz v1, :cond_4

    invoke-static {v1, p3}, Lyads/o01;->a(Lyads/oe2;Lyads/fs2;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v1, p1, Lyads/v71;->j:Lyads/as2;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    .line 214
    :cond_5
    :goto_2
    iget-object v1, p2, Lyads/yr0;->d:Lyads/oe2;

    if-eqz v1, :cond_6

    invoke-static {v1, p3}, Lyads/o01;->a(Lyads/oe2;Lyads/fs2;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_6
    iget-object v1, p1, Lyads/v71;->e:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    :goto_3
    if-eqz v2, :cond_7

    .line 215
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lyads/l20;->b(I)I

    move-result v2

    invoke-static {v2}, Lyads/l20;->a(I)Lyads/l20;

    move-result-object v2

    invoke-virtual {v0, v2}, Lyads/u66;->a(Ljava/lang/Object;)V

    .line 216
    :cond_7
    sget-object v2, Lyads/y20;->a:Lyads/y20;

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 217
    invoke-static {v0, p0, p1, p2, p3}, Lyads/xf2;->a(Landroid/animation/ObjectAnimator;Lyads/vq0;Lyads/x11;Lyads/yr0;Lyads/fs2;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

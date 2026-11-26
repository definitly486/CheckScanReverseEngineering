.class public abstract Lyads/rb2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/k11;Lyads/pb2;ZLyads/fs2;)Landroid/transition/Transition;
    .locals 4

    iget-object v0, p0, Lyads/k11;->e:Lyads/as2;

    invoke-virtual {v0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/j11;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lme0;->e()V

    return-object v1

    :cond_1
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    iget-object v2, p0, Lyads/k11;->d:Ljava/util/List;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/k11;

    invoke-static {v3, p1, p2, p3}, Lyads/rb2;->a(Lyads/k11;Lyads/pb2;ZLyads/fs2;)Landroid/transition/Transition;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_0

    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_6

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lyads/k11;->h:Lyads/as2;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lyads/k11;->b:Lyads/as2;

    :goto_2
    new-instance v0, Lyads/pc5;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    double-to-float p1, p1

    goto :goto_3

    :cond_5
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_3
    invoke-direct {v0, p1}, Lyads/pc5;-><init>(F)V

    goto :goto_6

    :cond_6
    new-instance v0, Lyads/w16;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lyads/k11;->h:Lyads/as2;

    goto :goto_4

    :cond_7
    iget-object p2, p0, Lyads/k11;->b:Lyads/as2;

    :goto_4
    if-eqz p2, :cond_8

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    double-to-float p2, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_5

    :cond_8
    move-object p2, v1

    :goto_5
    invoke-direct {v0, p1, p2}, Lyads/w16;-><init>(Lyads/pb2;Ljava/lang/Float;)V

    goto :goto_6

    :cond_9
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    :cond_a
    :goto_6
    if-eqz v0, :cond_b

    iget-object p1, p0, Lyads/k11;->a:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lyads/k11;->c:Lyads/as2;

    invoke-virtual {p0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/o11;

    invoke-static {p0}, Lyads/jf2;->a(Lyads/o11;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v1
.end method

.method public static final a(Lyads/gc5;)V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 175
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    return-void
.end method

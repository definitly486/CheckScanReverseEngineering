.class public final Lyads/hd2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/ContextThemeWrapper;

.field public final b:Lyads/zh2;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;Lyads/zh2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hd2;->a:Landroid/view/ContextThemeWrapper;

    iput-object p2, p0, Lyads/hd2;->b:Lyads/zh2;

    return-void
.end method

.method public static a(Lyads/j61;Lyads/fs2;)Landroidx/transition/Transition;
    .locals 3

    .line 416
    instance-of v0, p0, Lyads/i61;

    if-eqz v0, :cond_1

    .line 417
    new-instance v0, Landroidx/transition/TransitionSet;

    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    .line 418
    check-cast p0, Lyads/i61;

    .line 419
    iget-object p0, p0, Lyads/i61;->a:Lyads/b61;

    .line 420
    iget-object p0, p0, Lyads/b61;->a:Ljava/util/List;

    .line 421
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/j61;

    .line 422
    invoke-static {v1, p1}, Lyads/hd2;->a(Lyads/j61;Lyads/fs2;)Landroidx/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    goto :goto_0

    :cond_0
    return-object v0

    .line 423
    :cond_1
    instance-of v0, p0, Lyads/h61;

    if-eqz v0, :cond_2

    .line 424
    new-instance v0, Landroidx/transition/ChangeBounds;

    invoke-direct {v0}, Landroidx/transition/ChangeBounds;-><init>()V

    .line 425
    check-cast p0, Lyads/h61;

    .line 426
    iget-object v1, p0, Lyads/h61;->a:Lyads/v51;

    .line 427
    iget-object v1, v1, Lyads/v51;->a:Lyads/as2;

    .line 428
    invoke-virtual {v1, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 429
    iget-object v1, p0, Lyads/h61;->a:Lyads/v51;

    .line 430
    iget-object v1, v1, Lyads/v51;->c:Lyads/as2;

    .line 431
    invoke-virtual {v1, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    .line 432
    iget-object p0, p0, Lyads/h61;->a:Lyads/v51;

    .line 433
    iget-object p0, p0, Lyads/v51;->b:Lyads/as2;

    .line 434
    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/o11;

    invoke-static {p0}, Lyads/jf2;->a(Lyads/o11;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    return-object v0

    .line 435
    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/s21;ILyads/fs2;)Landroidx/transition/Transition;
    .locals 8

    instance-of v0, p1, Lyads/q21;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/transition/TransitionSet;

    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    check-cast p1, Lyads/q21;

    iget-object p1, p1, Lyads/q21;->a:Lyads/i21;

    iget-object p1, p1, Lyads/i21;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/s21;

    invoke-virtual {p0, v1, p2, p3}, Lyads/hd2;->a(Lyads/s21;ILyads/fs2;)Landroidx/transition/Transition;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v4

    invoke-virtual {v1}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/transition/TransitionSet;->setDuration(J)Landroidx/transition/TransitionSet;

    invoke-virtual {v0, v1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    instance-of v0, p1, Lyads/o21;

    if-eqz v0, :cond_2

    new-instance p0, Lyads/it2;

    check-cast p1, Lyads/o21;

    iget-object v0, p1, Lyads/o21;->a:Lyads/od1;

    iget-object v0, v0, Lyads/od1;->a:Lyads/as2;

    invoke-virtual {v0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lyads/it2;-><init>(F)V

    invoke-virtual {p0, p2}, Landroidx/transition/Visibility;->setMode(I)V

    iget-object p2, p1, Lyads/o21;->a:Lyads/od1;

    iget-object p2, p2, Lyads/od1;->b:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    iget-object p2, p1, Lyads/o21;->a:Lyads/od1;

    iget-object p2, p2, Lyads/od1;->d:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    iget-object p1, p1, Lyads/o21;->a:Lyads/od1;

    iget-object p1, p1, Lyads/od1;->c:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/o11;

    invoke-static {p1}, Lyads/jf2;->a(Lyads/o11;)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    return-object p0

    :cond_2
    instance-of v0, p1, Lyads/p21;

    if-eqz v0, :cond_3

    new-instance p0, Lyads/oc5;

    check-cast p1, Lyads/p21;

    iget-object v0, p1, Lyads/p21;->a:Lyads/ny1;

    iget-object v0, v0, Lyads/ny1;->e:Lyads/as2;

    invoke-virtual {v0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p1, Lyads/p21;->a:Lyads/ny1;

    iget-object v1, v1, Lyads/ny1;->c:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p1, Lyads/p21;->a:Lyads/ny1;

    iget-object v2, v2, Lyads/ny1;->d:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lyads/oc5;-><init>(FFF)V

    invoke-virtual {p0, p2}, Landroidx/transition/Visibility;->setMode(I)V

    iget-object p2, p1, Lyads/p21;->a:Lyads/ny1;

    iget-object p2, p2, Lyads/ny1;->a:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    iget-object p2, p1, Lyads/p21;->a:Lyads/ny1;

    iget-object p2, p2, Lyads/ny1;->f:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    iget-object p1, p1, Lyads/p21;->a:Lyads/ny1;

    iget-object p1, p1, Lyads/ny1;->b:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/o11;

    invoke-static {p1}, Lyads/jf2;->a(Lyads/o11;)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    return-object p0

    :cond_3
    instance-of v0, p1, Lyads/r21;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    new-instance v0, Lyads/qm5;

    check-cast p1, Lyads/r21;

    iget-object v2, p1, Lyads/r21;->a:Lyads/p12;

    iget-object v2, v2, Lyads/p12;->a:Lyads/ac1;

    if-eqz v2, :cond_4

    iget-object p0, p0, Lyads/hd2;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v2, p0, p3}, Lyads/pq;->a(Lyads/ac1;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result p0

    goto :goto_1

    :cond_4
    const/4 p0, -0x1

    :goto_1
    iget-object v2, p1, Lyads/r21;->a:Lyads/p12;

    iget-object v2, v2, Lyads/p12;->c:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/o12;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_8

    const/4 v4, 0x1

    if-eq v2, v4, :cond_7

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    if-ne v2, v3, :cond_5

    const/16 v3, 0x50

    goto :goto_2

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-object v1

    :cond_6
    const/4 v3, 0x5

    goto :goto_2

    :cond_7
    const/16 v3, 0x30

    :cond_8
    :goto_2
    invoke-direct {v0, p0, v3}, Lyads/qm5;-><init>(II)V

    invoke-virtual {v0, p2}, Landroidx/transition/Visibility;->setMode(I)V

    iget-object p0, p1, Lyads/r21;->a:Lyads/p12;

    iget-object p0, p0, Lyads/p12;->b:Lyads/as2;

    invoke-virtual {p0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    iget-object p0, p1, Lyads/r21;->a:Lyads/p12;

    iget-object p0, p0, Lyads/p12;->e:Lyads/as2;

    invoke-virtual {p0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    iget-object p0, p1, Lyads/r21;->a:Lyads/p12;

    iget-object p0, p0, Lyads/p12;->d:Lyads/as2;

    invoke-virtual {p0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/o11;

    invoke-static {p0}, Lyads/jf2;->a(Lyads/o11;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    return-object v0

    :cond_9
    invoke-static {}, Lme0;->e()V

    return-object v1
.end method

.method public final a(Lzo7;Lzo7;Lyads/fs2;Lyads/fs2;)Landroidx/transition/TransitionSet;
    .locals 6

    .line 381
    new-instance v0, Landroidx/transition/TransitionSet;

    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    const/4 v1, 0x0

    .line 382
    invoke-virtual {v0, v1}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

    if-eqz p1, :cond_2

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 384
    invoke-interface {p1}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/cn1;

    .line 385
    iget-object v4, v3, Lyads/cn1;->a:Lyads/br0;

    .line 386
    invoke-virtual {v4}, Lyads/br0;->a()Lyads/p41;

    move-result-object v4

    invoke-interface {v4}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object v4

    .line 387
    iget-object v3, v3, Lyads/cn1;->a:Lyads/br0;

    .line 388
    invoke-virtual {v3}, Lyads/br0;->a()Lyads/p41;

    move-result-object v3

    invoke-interface {v3}, Lyads/p41;->A()Lyads/s21;

    move-result-object v3

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const/4 v5, 0x2

    .line 389
    invoke-virtual {p0, v3, v5, p3}, Lyads/hd2;->a(Lyads/s21;ILyads/fs2;)Landroidx/transition/Transition;

    move-result-object v3

    .line 390
    iget-object v5, p0, Lyads/hd2;->b:Lyads/zh2;

    invoke-virtual {v5, v4}, Lyads/zh2;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/transition/Transition;->addTarget(I)Landroidx/transition/Transition;

    .line 391
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    .line 393
    invoke-virtual {v0, v2}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 395
    invoke-interface {p1}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/cn1;

    .line 396
    iget-object v3, v2, Lyads/cn1;->a:Lyads/br0;

    .line 397
    invoke-virtual {v3}, Lyads/br0;->a()Lyads/p41;

    move-result-object v3

    invoke-interface {v3}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object v3

    .line 398
    iget-object v2, v2, Lyads/cn1;->a:Lyads/br0;

    .line 399
    invoke-virtual {v2}, Lyads/br0;->a()Lyads/p41;

    move-result-object v2

    invoke-interface {v2}, Lyads/p41;->B()Lyads/j61;

    move-result-object v2

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 400
    invoke-static {v2, p3}, Lyads/hd2;->a(Lyads/j61;Lyads/fs2;)Landroidx/transition/Transition;

    move-result-object v2

    .line 401
    iget-object v4, p0, Lyads/hd2;->b:Lyads/zh2;

    invoke-virtual {v4, v3}, Lyads/zh2;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/transition/Transition;->addTarget(I)Landroidx/transition/Transition;

    .line 402
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 403
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/transition/Transition;

    .line 404
    invoke-virtual {v0, p3}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_8

    .line 405
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-interface {p2}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/cn1;

    .line 407
    iget-object v1, p3, Lyads/cn1;->a:Lyads/br0;

    .line 408
    invoke-virtual {v1}, Lyads/br0;->a()Lyads/p41;

    move-result-object v1

    invoke-interface {v1}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object v1

    .line 409
    iget-object p3, p3, Lyads/cn1;->a:Lyads/br0;

    .line 410
    invoke-virtual {p3}, Lyads/br0;->a()Lyads/p41;

    move-result-object p3

    invoke-interface {p3}, Lyads/p41;->r()Lyads/s21;

    move-result-object p3

    if-eqz v1, :cond_6

    if-eqz p3, :cond_6

    const/4 v2, 0x1

    .line 411
    invoke-virtual {p0, p3, v2, p4}, Lyads/hd2;->a(Lyads/s21;ILyads/fs2;)Landroidx/transition/Transition;

    move-result-object p3

    .line 412
    iget-object v2, p0, Lyads/hd2;->b:Lyads/zh2;

    invoke-virtual {v2, v1}, Lyads/zh2;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroidx/transition/Transition;->addTarget(I)Landroidx/transition/Transition;

    .line 413
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 414
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/Transition;

    .line 415
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    goto :goto_5

    :cond_8
    return-object v0
.end method

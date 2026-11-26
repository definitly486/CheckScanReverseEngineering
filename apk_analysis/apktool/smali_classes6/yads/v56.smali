.class public abstract Lyads/v56;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/k11;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/k11;

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sget-object v3, Lyads/j11;->e:Lyads/j11;

    invoke-static {v3}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lyads/k11;-><init>(Lyads/xr2;Lyads/xr2;Lyads/xr2;Lyads/xr2;)V

    sput-object v0, Lyads/v56;->a:Lyads/k11;

    return-void
.end method

.method public static final a(Lyads/gr4;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 478
    iget-object v0, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    invoke-static {p1}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object p3, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, [I

    invoke-static {p1, p2, p0, p3}, Lyads/ag6;->a(Landroid/view/View;Landroid/view/ViewGroup;Lyads/gr4;[I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static final a(Lyads/k11;Lyads/fs2;ZLandroid/view/View;)Landroid/view/animation/Animation;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lyads/k11;->e:Lyads/as2;

    invoke-virtual {v4, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/j11;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eq v5, v6, :cond_10

    const/4 v6, 0x3

    const/4 v11, 0x0

    if-eq v5, v6, :cond_8

    const/4 v6, 0x4

    if-eq v5, v6, :cond_6

    const/4 v3, 0x5

    if-eq v5, v3, :cond_19

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    iget-object v5, v0, Lyads/k11;->h:Lyads/as2;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    goto :goto_0

    :cond_0
    move-object v5, v10

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v5, v9, v8}, Lkx6;->d(FFF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v10

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v8

    :goto_2
    iget-object v6, v0, Lyads/k11;->b:Lyads/as2;

    if-eqz v6, :cond_3

    invoke-virtual {v6, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    goto :goto_3

    :cond_3
    move-object v6, v10

    :goto_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    double-to-float v6, v10

    invoke-static {v6, v9, v8}, Lkx6;->d(FFF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    :cond_4
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_4

    :cond_5
    const v6, 0x3f19999a    # 0.6f

    :goto_4
    invoke-direct {v3, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v10, v3

    goto/16 :goto_f

    :cond_6
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v5, v0, Lyads/k11;->d:Ljava/util/List;

    if-eqz v5, :cond_19

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/k11;

    invoke-static {v6, v1, v2, v3}, Lyads/v56;->a(Lyads/k11;Lyads/fs2;ZLandroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v10, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v6, v5, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_9

    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    goto :goto_6

    :cond_9
    move-object v5, v10

    :goto_6
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v6

    invoke-static {v11, v6}, Lkx6;->n(II)Ly74;

    move-result-object v6

    instance-of v8, v6, Ljava/util/Collection;

    if-eqz v8, :cond_a

    move-object v8, v6

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v6}, Lw74;->b()Lx74;

    move-result-object v6

    :cond_b
    iget-boolean v8, v6, Lx74;->d:Z

    if-eqz v8, :cond_c

    invoke-virtual {v6}, Lx74;->nextInt()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v8

    sget v9, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_divkit_native_animation_background:I

    if-ne v8, v9, :cond_b

    goto/16 :goto_f

    :cond_c
    :goto_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v8

    move v9, v11

    :goto_8
    if-ge v9, v8, :cond_e

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_d
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v8, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_divkit_native_animation_background:I

    invoke-static {v5, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    new-array v8, v11, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    sget v8, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_divkit_native_animation_background:I

    invoke-virtual {v5, v6, v8}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f

    :cond_10
    iget-object v3, v0, Lyads/k11;->h:Lyads/as2;

    if-eqz v3, :cond_11

    invoke-virtual {v3, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    goto :goto_9

    :cond_11
    move-object v3, v10

    :goto_9
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    double-to-float v3, v5

    cmpg-float v5, v3, v9

    if-gez v5, :cond_12

    move v3, v9

    :cond_12
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_a

    :cond_13
    move-object v3, v10

    :goto_a
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    :cond_14
    move v12, v8

    iget-object v3, v0, Lyads/k11;->b:Lyads/as2;

    if-eqz v3, :cond_15

    invoke-virtual {v3, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    goto :goto_b

    :cond_15
    move-object v3, v10

    :goto_b
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    double-to-float v3, v5

    cmpg-float v5, v3, v9

    if-gez v5, :cond_16

    goto :goto_c

    :cond_16
    move v9, v3

    :goto_c
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    :cond_17
    if-eqz v10, :cond_18

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_d
    move v13, v3

    goto :goto_e

    :cond_18
    const v3, 0x3f733333    # 0.95f

    goto :goto_d

    :goto_e
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/16 v18, 0x1

    const/high16 v19, 0x3f000000    # 0.5f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    move v14, v12

    move v15, v13

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v10, v11

    :cond_19
    :goto_f
    sget-object v3, Lyads/j11;->i:Lyads/j11;

    if-eq v4, v3, :cond_1d

    if-nez v10, :cond_1a

    goto :goto_11

    :cond_1a
    iget-object v3, v0, Lyads/k11;->c:Lyads/as2;

    if-eqz v2, :cond_1b

    invoke-virtual {v3, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/o11;

    invoke-static {v2}, Lyads/jf2;->a(Lyads/o11;)Landroid/view/animation/Interpolator;

    move-result-object v2

    new-instance v3, Lyads/l95;

    invoke-direct {v3, v2}, Lyads/l95;-><init>(Landroid/view/animation/Interpolator;)V

    goto :goto_10

    :cond_1b
    invoke-virtual {v3, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/o11;

    invoke-static {v2}, Lyads/jf2;->a(Lyads/o11;)Landroid/view/animation/Interpolator;

    move-result-object v3

    :goto_10
    invoke-virtual {v10, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_11
    if-nez v10, :cond_1c

    goto :goto_12

    :cond_1c
    iget-object v2, v0, Lyads/k11;->a:Lyads/as2;

    invoke-virtual {v2, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_1d
    :goto_12
    if-nez v10, :cond_1e

    goto :goto_13

    :cond_1e
    iget-object v0, v0, Lyads/k11;->g:Lyads/as2;

    invoke-virtual {v0, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    :goto_13
    if-nez v10, :cond_1f

    return-object v10

    :cond_1f
    invoke-virtual {v10, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-object v10
.end method

.method public static final a(Lyads/k11;Lyads/fs2;Landroid/view/View;)Lbm3;
    .locals 2

    const/4 v0, 0x0

    .line 475
    invoke-static {p0, p1, v0, p2}, Lyads/v56;->a(Lyads/k11;Lyads/fs2;ZLandroid/view/View;)Landroid/view/animation/Animation;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 476
    invoke-static {p0, p1, v0, v1}, Lyads/v56;->a(Lyads/k11;Lyads/fs2;ZLandroid/view/View;)Landroid/view/animation/Animation;

    move-result-object p0

    if-nez p2, :cond_0

    if-nez p0, :cond_0

    return-object v1

    .line 477
    :cond_0
    new-instance p1, Lgfa;

    invoke-direct {p1, p2, p0}, Lgfa;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-object p1
.end method

.method public static final a(Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/MotionEvent;)Lj59;
    .locals 1

    .line 470
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    if-eqz p3, :cond_1

    const/4 p0, 0x1

    if-eq p3, p0, :cond_0

    const/4 p0, 0x3

    if-eq p3, p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 472
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 473
    invoke-virtual {p2, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 474
    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Landroidx/transition/TransitionValues;Lnl3;)V
    .locals 1

    .line 466
    iget-object p0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v0, 0x2

    .line 467
    new-array v0, v0, [I

    .line 468
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 469
    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class public abstract synthetic Lyads/tq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/View;ILyads/ru1;Lyads/fs2;)F
    .locals 2

    .line 317
    invoke-virtual {p2}, Lyads/ru1;->a()Ljava/lang/Object;

    move-result-object p2

    .line 318
    instance-of v0, p2, Lyads/su1;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_4

    .line 319
    check-cast p2, Lyads/su1;

    iget-object v0, p2, Lyads/su1;->b:Lyads/as2;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    .line 320
    iget-object p2, p2, Lyads/su1;->a:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/g12;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    return p1

    .line 321
    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Lyads/pq;->b(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0

    .line 322
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0

    :cond_3
    int-to-float p0, p1

    div-float/2addr p0, v1

    return p0

    .line 323
    :cond_4
    instance-of p0, p2, Lyads/bv1;

    if-eqz p0, :cond_5

    check-cast p2, Lyads/bv1;

    iget-object p0, p2, Lyads/bv1;->a:Lyads/as2;

    invoke-virtual {p0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    double-to-float p0, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p0, p2

    int-to-float p1, p1

    mul-float/2addr p0, p1

    return p0

    :cond_5
    int-to-float p0, p1

    div-float/2addr p0, v1

    return p0
.end method

.method public static final a(Landroid/view/View;Lyads/tt;Lyads/k11;Lyads/dh1;)Lbm3;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 299
    iget-object v1, p1, Lyads/tt;->b:Lyads/fs2;

    .line 300
    invoke-static {p2, v1, p0}, Lyads/v56;->a(Lyads/k11;Lyads/fs2;Landroid/view/View;)Lbm3;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p3, :cond_2

    .line 301
    iget-object p2, p3, Lyads/dh1;->b:Lll3;

    if-nez p2, :cond_1

    .line 302
    iget-object p2, p3, Lyads/dh1;->c:Lll3;

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_1

    :cond_1
    move-object p2, p3

    :goto_1
    if-eqz p2, :cond_2

    .line 303
    new-instance p2, Landroid/view/GestureDetector;

    .line 304
    iget-object p1, p1, Lyads/tt;->a:Lyads/vq0;

    .line 305
    iget-object p1, p1, Lyads/vq0;->l:Lyads/pq0;

    .line 306
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p1, p3, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    goto :goto_2

    :cond_2
    move-object p2, v0

    :goto_2
    if-nez p0, :cond_4

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    return-object v0

    .line 307
    :cond_4
    :goto_3
    new-instance p1, Lc02;

    const/4 p3, 0x2

    invoke-direct {p1, p3, p0, p2}, Lc02;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static final a(Landroid/view/View;D)Lj59;
    .locals 0

    .line 342
    check-cast p0, Lyads/wj;

    double-to-float p1, p1

    .line 343
    invoke-interface {p0, p1}, Lyads/wj;->setAspectRatio(F)V

    .line 344
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Landroid/view/ViewGroup;Z)Lj59;
    .locals 1

    .line 377
    instance-of v0, p0, Lyads/wh1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lyads/wh1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Lyads/s51;->setNeedClipping(Z)V

    .line 378
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p1, :cond_2

    .line 379
    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 380
    check-cast p0, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 381
    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x40

    const/4 v1, 0x0

    .line 365
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    const/4 v0, 0x1

    .line 366
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public static final a(Landroid/view/View;I)V
    .locals 2

    .line 324
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 325
    instance-of v1, v0, Lyads/ro1;

    if-eqz v1, :cond_1

    check-cast v0, Lyads/ro1;

    invoke-virtual {v0}, Lyads/ro1;->b()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 326
    invoke-virtual {v0, p1}, Lyads/ro1;->b(I)V

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void

    .line 328
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lyads/rv3;->a()V

    return-void
.end method

.method public static final a(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 4

    .line 382
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 383
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 385
    instance-of v1, p0, Lyads/s51;

    if-eqz v1, :cond_0

    check-cast p0, Lyads/s51;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyads/s51;->i()Lyads/l51;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lyads/l51;->c(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public static final a(Landroid/view/View;Lyads/b31;Lyads/b31;Lyads/fs2;)V
    .locals 3

    .line 336
    instance-of v0, p0, Lyads/wj;

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 337
    iget-object v1, p1, Lyads/b31;->a:Lyads/as2;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, Lyads/b31;->a:Lyads/as2;

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    invoke-static {v1, p2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_5

    .line 338
    :cond_3
    move-object p2, p0

    check-cast p2, Lyads/wj;

    if-eqz p1, :cond_4

    iget-object v1, p1, Lyads/b31;->a:Lyads/as2;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_5

    .line 339
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-interface {p2, v1}, Lyads/wj;->setAspectRatio(F)V

    if-eqz p1, :cond_6

    .line 340
    iget-object p2, p1, Lyads/b31;->a:Lyads/as2;

    goto :goto_4

    :cond_6
    move-object p2, v0

    :goto_4
    invoke-static {p2}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p2

    if-nez p2, :cond_9

    instance-of p2, p0, Lyads/hs2;

    if-nez p2, :cond_7

    goto :goto_5

    .line 341
    :cond_7
    move-object p2, p0

    check-cast p2, Lyads/hs2;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lyads/b31;->a:Lyads/as2;

    if-eqz p1, :cond_8

    new-instance v0, La02;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, La02;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p3, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    :cond_8
    invoke-interface {p2, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public static final a(Landroid/view/View;Lyads/p41;Lyads/fs2;)V
    .locals 2

    .line 308
    invoke-interface {p1}, Lyads/p41;->l()Lyads/bd2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 309
    iget-object v0, p1, Lyads/bd2;->c:Lyads/as2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    .line 310
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 311
    sget-object v0, Lj59;->a:Lj59;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 312
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void

    .line 313
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    .line 314
    new-instance v0, Lyads/rq;

    invoke-direct {v0, p0, p0, p1, p2}, Lyads/rq;-><init>(Landroid/view/View;Landroid/view/View;Lyads/bd2;Lyads/fs2;)V

    invoke-static {p0, v0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    return-void

    .line 315
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p1, Lyads/bd2;->a:Lyads/ru1;

    invoke-static {p0, v0, v1, p2}, Lyads/tq;->a(Landroid/view/View;ILyads/ru1;Lyads/fs2;)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object p1, p1, Lyads/bd2;->b:Lyads/ru1;

    invoke-static {p0, v0, p1, p2}, Lyads/tq;->a(Landroid/view/View;ILyads/ru1;Lyads/fs2;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method public static final a(Landroid/view/View;Lyads/tt;Landroid/graphics/Bitmap;Ljava/util/List;Lnl3;)V
    .locals 11

    if-eqz p3, :cond_0

    .line 345
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v3, p2

    move-object v7, p4

    goto/16 :goto_3

    .line 346
    :cond_1
    invoke-virtual {p1}, Lyads/tt;->b()Lyads/fs2;

    move-result-object v5

    .line 347
    invoke-virtual {p1}, Lyads/tt;->a()Lyads/vq0;

    move-result-object p1

    invoke-virtual {p1}, Lyads/vq0;->p()Lyads/mq0;

    move-result-object p1

    check-cast p1, Lyads/nq0;

    .line 348
    iget-object p1, p1, Lyads/nq0;->n:Lcl4;

    .line 349
    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lyads/fu;

    .line 350
    invoke-static {p0}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result p1

    if-nez p1, :cond_8

    .line 351
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 352
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v1, 0x0

    .line 353
    invoke-static {p2, v0, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 354
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/wd1;

    .line 355
    instance-of v0, p3, Lyads/ud1;

    if-eqz v0, :cond_6

    .line 356
    check-cast p3, Lyads/ud1;

    invoke-virtual {p3}, Lyads/ud1;->a()Lyads/z41;

    move-result-object p3

    iget-object p3, p3, Lyads/z41;->a:Lyads/as2;

    invoke-virtual {p3, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 p3, 0x1f

    shr-long v2, v0, p3

    const-wide/16 v7, 0x0

    cmp-long p3, v2, v7

    if-eqz p3, :cond_5

    const-wide/16 v9, -0x1

    cmp-long p3, v2, v9

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    cmp-long p3, v0, v7

    if-lez p3, :cond_4

    const p3, 0x7fffffff

    goto :goto_2

    :cond_4
    const/high16 p3, -0x80000000

    goto :goto_2

    :cond_5
    :goto_1
    long-to-int p3, v0

    .line 357
    :goto_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 358
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p3, v0}, Lyads/pq;->a(Ljava/lang/Integer;Landroid/util/DisplayMetrics;)I

    move-result p3

    int-to-float p3, p3

    .line 359
    move-object v0, v6

    check-cast v0, Lyads/yv3;

    invoke-virtual {v0, p1, p3}, Lyads/yv3;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 360
    :cond_6
    instance-of p3, p3, Lyads/vd1;

    if-eqz p3, :cond_2

    invoke-static {p0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 361
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/fu;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 362
    :cond_7
    invoke-interface {p4, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 363
    :cond_8
    new-instance v1, Lyads/qq;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lyads/qq;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Ljava/util/List;Lyads/fs2;Lyads/fu;Lnl3;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    .line 364
    :goto_3
    invoke-interface {v7, v3}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final a(Landroid/view/View;Lyads/yc1;Lyads/fs2;)V
    .locals 10

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 271
    iget-object v4, p1, Lyads/yc1;->g:Lyads/as2;

    invoke-virtual {v4, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/g12;

    .line 272
    iget-object v5, p1, Lyads/yc1;->c:Lyads/as2;

    invoke-virtual {v5, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 273
    invoke-static {v5, v0, v4}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result v5

    .line 274
    iget-object v6, p1, Lyads/yc1;->f:Lyads/as2;

    invoke-virtual {v6, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 275
    invoke-static {v6, v0, v4}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result v6

    .line 276
    iget-object v7, p1, Lyads/yc1;->d:Lyads/as2;

    invoke-virtual {v7, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 277
    invoke-static {v7, v0, v4}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result v7

    .line 278
    iget-object v8, p1, Lyads/yc1;->a:Lyads/as2;

    invoke-virtual {v8, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 279
    invoke-static {v8, v0, v4}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result v8

    .line 280
    iget-object v9, p1, Lyads/yc1;->e:Lyads/as2;

    if-eqz v9, :cond_2

    .line 281
    invoke-virtual {v9, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 282
    invoke-static {v9, v0, v4}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result v9

    .line 283
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object v9, v3

    .line 284
    :goto_1
    iget-object p1, p1, Lyads/yc1;->b:Lyads/as2;

    if-eqz p1, :cond_3

    .line 285
    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 286
    invoke-static {p1, v0, v4}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result p1

    .line 287
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_3
    move-object p1, v3

    move-object v3, v9

    goto :goto_2

    :cond_4
    move v5, v2

    move v6, v5

    move v7, v6

    move v8, v7

    move-object p1, v3

    .line 288
    :goto_2
    iget p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne p2, v5, :cond_7

    iget p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne p2, v6, :cond_7

    .line 289
    iget p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne p2, v7, :cond_7

    iget p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne p2, v8, :cond_7

    if-eqz v3, :cond_5

    .line 290
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_7

    :cond_5
    if-eqz p1, :cond_6

    .line 291
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p2, v0, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    return-void

    .line 292
    :cond_7
    :goto_4
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 293
    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-nez v3, :cond_9

    if-eqz p1, :cond_8

    goto :goto_5

    .line 294
    :cond_8
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 295
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_7

    :cond_9
    :goto_5
    if-eqz v3, :cond_a

    .line 296
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_6

    :cond_a
    move p2, v2

    :goto_6
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    if-eqz p1, :cond_b

    .line 297
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_b
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 298
    :goto_7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static final a(Landroid/view/ViewGroup;Lyads/as2;Lyads/as2;Lyads/fs2;)V
    .locals 2

    .line 367
    invoke-static {p1, p2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    .line 368
    :cond_0
    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 369
    instance-of v0, p0, Lyads/wh1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lyads/wh1;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, p2}, Lyads/s51;->setNeedClipping(Z)V

    .line 370
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez p2, :cond_3

    .line 371
    instance-of p2, v0, Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    .line 372
    check-cast v0, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 373
    :cond_3
    instance-of p2, p1, Lyads/xr2;

    if-eqz p2, :cond_4

    goto :goto_2

    .line 374
    :cond_4
    instance-of p2, p0, Lyads/wh1;

    if-eqz p2, :cond_5

    move-object v1, p0

    check-cast v1, Lyads/wh1;

    :cond_5
    if-eqz v1, :cond_6

    .line 375
    new-instance p2, Lom4;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lom4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p3, p2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 376
    invoke-interface {v1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static final a(Landroid/view/ViewGroup;Lyads/vq0;Ljava/util/List;Ljava/util/List;)V
    .locals 11

    iget-object v0, p1, Lyads/vq0;->n:Lyads/nq0;

    iget-object v0, v0, Lyads/nq0;->I:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lyads/bj2;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v2, p1

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v8, 0x0

    sget-object v9, Lkx2;->b:Lkx2;

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/cn1;

    iget-object v3, v3, Lyads/cn1;->a:Lyads/br0;

    invoke-virtual {v3}, Lyads/br0;->a()Lyads/p41;

    move-result-object v3

    invoke-interface {v3}, Lyads/p41;->b()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v9

    :cond_2
    invoke-interface {v3}, Lyads/p41;->m()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-interface {v3}, Lyads/p41;->k()Lyads/si2;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    :cond_3
    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    move-object v9, v8

    goto :goto_1

    :cond_5
    move-object v9, v5

    :goto_1
    invoke-static {v9, v4}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, v0}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_6
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/r02;

    invoke-interface {v2}, Lyads/r02;->g()Lyads/as2;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/cn1;

    iget-object v2, v0, Lyads/cn1;->a:Lyads/br0;

    invoke-virtual {v2}, Lyads/br0;->a()Lyads/p41;

    move-result-object v2

    invoke-interface {v2}, Lyads/p41;->m()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-interface {v2}, Lyads/p41;->k()Lyads/si2;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    goto :goto_4

    :cond_8
    move-object v3, v8

    :goto_4
    if-nez v3, :cond_9

    move-object v3, v9

    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lyads/si2;

    iget-object v4, v4, Lyads/si2;->c:Lyads/as2;

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    iget-object v2, v0, Lyads/cn1;->a:Lyads/br0;

    invoke-virtual {v2}, Lyads/br0;->a()Lyads/p41;

    move-result-object v2

    invoke-interface {v2}, Lyads/p41;->b()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_c

    move-object v2, v9

    :cond_c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lyads/gc1;

    iget-object v4, v4, Lyads/gc1;->d:Lyads/as2;

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    iget-object v3, v0, Lyads/cn1;->b:Lyads/fs2;

    const/4 v4, 0x0

    iget-object v5, v0, Lyads/cn1;->a:Lyads/br0;

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lyads/bj2;->b(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_3

    :goto_7
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    new-instance p1, Lyads/sq;

    invoke-direct {p1, p0, p2, v1, v2}, Lyads/sq;-><init>(Landroid/view/ViewGroup;Ljava/util/List;Lyads/bj2;Lyads/vq0;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_f
    return-void
.end method

.method public static final a(Lnl3;Landroid/view/View;)V
    .locals 1

    .line 332
    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_1

    .line 333
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object p1

    .line 334
    invoke-interface {p1}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 335
    invoke-static {p0, v0}, Lyads/tq;->a(Lnl3;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static final a(Lyads/w41;Lyads/tt;Landroid/view/View;)V
    .locals 2

    .line 331
    new-instance v0, Lbg1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lbg1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, p2}, Lyads/tq;->a(Lnl3;Landroid/view/View;)V

    return-void
.end method

.method public static final a(Lbm3;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 329
    invoke-interface {p0, p2, p3}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    .line 330
    invoke-virtual {p1, p3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Landroid/view/View;Lyads/yc1;Lyads/fs2;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p1, Lyads/yc1;->g:Lyads/as2;

    invoke-virtual {v2, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/g12;

    iget-object v3, p1, Lyads/yc1;->e:Lyads/as2;

    if-nez v3, :cond_2

    iget-object v4, p1, Lyads/yc1;->b:Lyads/as2;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lyads/yc1;->c:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v2, v1}, Lyads/uq;->a(JLyads/g12;Landroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v3, p1, Lyads/yc1;->f:Lyads/as2;

    invoke-virtual {v3, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v2, v1}, Lyads/uq;->a(JLyads/g12;Landroid/util/DisplayMetrics;)I

    move-result v3

    iget-object v4, p1, Lyads/yc1;->d:Lyads/as2;

    invoke-virtual {v4, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v1}, Lyads/uq;->a(JLyads/g12;Landroid/util/DisplayMetrics;)I

    move-result v4

    iget-object p1, p1, Lyads/yc1;->a:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v2, v1}, Lyads/uq;->a(JLyads/g12;Landroid/util/DisplayMetrics;)I

    move-result p1

    invoke-virtual {p0, v0, v3, v4, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v2, v1}, Lyads/uq;->a(JLyads/g12;Landroid/util/DisplayMetrics;)I

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    iget-object v4, p1, Lyads/yc1;->f:Lyads/as2;

    invoke-virtual {v4, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v1}, Lyads/uq;->a(JLyads/g12;Landroid/util/DisplayMetrics;)I

    move-result v4

    iget-object v5, p1, Lyads/yc1;->b:Lyads/as2;

    if-eqz v5, :cond_4

    invoke-virtual {v5, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6, v2, v1}, Lyads/uq;->a(JLyads/g12;Landroid/util/DisplayMetrics;)I

    move-result v0

    :cond_4
    iget-object p1, p1, Lyads/yc1;->a:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v2, v1}, Lyads/uq;->a(JLyads/g12;Landroid/util/DisplayMetrics;)I

    move-result p1

    invoke-virtual {p0, v3, v4, v0, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public static final b(Lyads/w41;Lyads/tt;Landroid/view/View;)Z
    .locals 3

    .line 172
    instance-of v0, p2, Lyads/k32;

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 173
    :cond_0
    move-object v0, p2

    check-cast v0, Lyads/k32;

    .line 174
    iget-object v1, v0, Lyads/k32;->l:Lyads/xh1;

    .line 175
    iget-object v1, v1, Lyads/xh1;->c:Lyads/br0;

    .line 176
    check-cast v1, Lyads/gq0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 177
    :cond_1
    iget-object v0, v0, Lyads/k32;->m:Lyads/n32;

    if-nez v0, :cond_2

    return v2

    .line 178
    :cond_2
    invoke-virtual {v0}, Lyads/n32;->d()Lyads/n32;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lyads/w41;->a(Lyads/tt;Landroid/view/View;Lyads/br0;Lyads/n32;)V

    return v2
.end method

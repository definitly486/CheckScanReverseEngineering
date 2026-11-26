.class public final Lyads/g82;
.super Lyads/oh2;
.source "SourceFile"


# instance fields
.field public final b:Lyads/ef2;

.field public final c:Lyads/wo5;


# direct methods
.method public constructor <init>(Lyads/v41;Lyads/ef2;Lyads/wo5;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/oh2;-><init>(Lyads/v41;)V

    iput-object p2, p0, Lyads/g82;->b:Lyads/ef2;

    iput-object p3, p0, Lyads/g82;->c:Lyads/wo5;

    return-void
.end method

.method public static final a(Lyads/g82;Lyads/zo1;)I
    .locals 1

    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p0, v0

    .line 355
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Lyads/an2;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static final a(Landroid/widget/TextView;Landroid/text/Spanned;)Lj59;
    .locals 1

    .line 499
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 500
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/an2;Landroid/text/Spanned;)Lj59;
    .locals 0

    .line 561
    invoke-virtual {p0, p1}, Lyads/an2;->setEllipsis(Ljava/lang/CharSequence;)V

    .line 562
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/b82;Lyads/fs2;Lyads/g82;Lyads/zo1;Lyads/tt;Ljava/lang/Object;)Lj59;
    .locals 9

    .line 531
    iget-object p5, p0, Lyads/b82;->W:Lyads/as2;

    invoke-virtual {p5, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 532
    iget-object v0, p2, Lyads/g82;->c:Lyads/wo5;

    .line 533
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    iget-object p5, p0, Lyads/b82;->W:Lyads/as2;

    .line 535
    iget-object v1, p4, Lyads/tt;->b:Lyads/fs2;

    .line 536
    invoke-virtual {p5, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p5

    move-object v4, p5

    check-cast v4, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v2, p3

    move-object v1, p4

    .line 537
    invoke-virtual/range {v0 .. v8}, Lyads/wo5;->a(Lyads/tt;Lyads/an2;Lyads/b82;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnl3;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 538
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    invoke-virtual {p2, v2, p1}, Lyads/g82;->a(Lyads/zo1;Ljava/lang/String;)V

    .line 540
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/g82;Lyads/zo1;Ljava/lang/String;)Lj59;
    .locals 0

    .line 547
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    const-string p2, "\u2026"

    :goto_0
    invoke-virtual {p1, p2}, Lyads/an2;->setEllipsis(Ljava/lang/CharSequence;)V

    .line 549
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/g82;Lyads/zo1;Lyads/b82;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 589
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lyads/g82;->a(Lyads/zo1;Lyads/b82;Lyads/fs2;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/g82;Lyads/zo1;Lyads/bp1;)Lj59;
    .locals 0

    .line 371
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p2, 0x1

    if-eq p0, p2, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p0

    or-int/lit8 p0, p0, 0x10

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p0

    and-int/lit8 p0, p0, -0x11

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 375
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/g82;Lyads/zo1;Lyads/dp1;Lyads/fs2;Lyads/vq0;Ljava/lang/Object;)Lj59;
    .locals 2

    .line 421
    iget-object p5, p2, Lyads/dp1;->a:Lyads/as2;

    invoke-virtual {p5, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 422
    invoke-static {p2, p3}, Lyads/gb1;->a(Lyads/dp1;Lyads/fs2;)Lyads/y30;

    move-result-object p2

    invoke-static {p2, p4}, Lyads/z30;->a(Lyads/y30;Lyads/vq0;)Lyads/y30;

    move-result-object p2

    .line 423
    invoke-virtual {p0, p1, v0, v1, p2}, Lyads/g82;->a(Lyads/zo1;JLyads/y30;)V

    .line 424
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/g82;Lyads/zo1;Lyads/gw1;Landroid/util/DisplayMetrics;Lyads/fs2;Ljava/util/List;)Lj59;
    .locals 8

    .line 455
    iget-object v0, p2, Lyads/gw1;->e:Lyads/gx1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p3, p4}, Lyads/g82;->a(Lyads/gx1;Landroid/util/DisplayMetrics;Lyads/fs2;)Lyads/u35;

    move-result-object v1

    .line 456
    iget-object v0, p2, Lyads/gw1;->a:Lyads/jw1;

    invoke-static {v0, p3, p4}, Lyads/g82;->a(Lyads/jw1;Landroid/util/DisplayMetrics;Lyads/fs2;)Lyads/p35;

    move-result-object v2

    .line 457
    iget-object p2, p2, Lyads/gw1;->b:Lyads/jw1;

    invoke-static {p2, p3, p4}, Lyads/g82;->a(Lyads/jw1;Landroid/util/DisplayMetrics;Lyads/fs2;)Lyads/p35;

    move-result-object v3

    .line 458
    invoke-static {p1}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p2

    if-nez p2, :cond_0

    .line 459
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    sget p3, Lyads/v35;->g:I

    .line 460
    invoke-static {p5}, Lqn1;->s0(Ljava/util/Collection;)[I

    move-result-object v4

    .line 461
    invoke-static {p0, p1}, Lyads/g82;->a(Lyads/g82;Lyads/zo1;)I

    move-result v5

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p0, p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int v6, p0, p3

    .line 463
    invoke-static/range {v1 .. v6}, Lyads/q35;->a(Lyads/u35;Lyads/p35;Lyads/p35;[III)Landroid/graphics/RadialGradient;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 464
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    move-object v5, v3

    move-object v3, v1

    .line 465
    new-instance v1, Lyads/f82;

    move-object v7, p0

    move-object v6, p5

    move-object v4, v2

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lyads/f82;-><init>(Lyads/zo1;Lyads/u35;Lyads/p35;Lyads/p35;Ljava/util/List;Lyads/g82;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 466
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/g82;Lyads/zo1;Lyads/tt;Lyads/b82;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 550
    invoke-virtual {p0, p1, p2, p3}, Lyads/g82;->a(Lyads/zo1;Lyads/tt;Lyads/b82;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/g82;Lyads/zo1;Lyads/tt;Lyads/b82;Ljava/lang/String;)Lj59;
    .locals 0

    .line 496
    invoke-virtual {p0, p1, p2, p3}, Lyads/g82;->b(Lyads/zo1;Lyads/tt;Lyads/b82;)V

    .line 497
    invoke-virtual {p0, p1, p4}, Lyads/g82;->a(Lyads/zo1;Ljava/lang/String;)V

    .line 498
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/g82;Lyads/zo1;Lyads/tt;Lyads/b82;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 1

    .line 356
    iget-object p2, p2, Lyads/tt;->a:Lyads/vq0;

    .line 357
    iget-object p5, p3, Lyads/b82;->L:Lyads/as2;

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    invoke-virtual {p5, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object p5, v0

    .line 358
    :goto_0
    iget-object p3, p3, Lyads/b82;->M:Lyads/as2;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    .line 359
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p5, v0}, Lyads/g82;->a(Lyads/zo1;Lyads/vq0;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 360
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/g82;Lyads/zo1;Lyads/xz1;Lyads/fs2;Landroid/util/DisplayMetrics;Lyads/b82;Ljava/lang/Object;)Lj59;
    .locals 0

    if-eqz p2, :cond_0

    .line 563
    iget-object p5, p5, Lyads/b82;->Z:Lyads/as2;

    invoke-virtual {p5, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3, p4, p5}, Lyads/g82;->a(Lyads/xz1;Lyads/fs2;Landroid/util/DisplayMetrics;I)Lyads/yj5;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lyads/g82;->a(Lyads/zo1;Lyads/yj5;)V

    .line 564
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/g82;Lyads/zo1;Z)Lj59;
    .locals 0

    .line 376
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    invoke-virtual {p1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object p0

    .line 378
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 379
    instance-of p2, p0, Lyads/oi5;

    if-eqz p2, :cond_0

    .line 380
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 381
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Lyads/jw1;Landroid/util/DisplayMetrics;Lyads/fs2;)Lyads/p35;
    .locals 2

    .line 484
    instance-of v0, p0, Lyads/hw1;

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Lyads/n35;

    .line 486
    check-cast p0, Lyads/hw1;

    .line 487
    iget-object p0, p0, Lyads/hw1;->a:Lyads/uw1;

    .line 488
    iget-object p0, p0, Lyads/uw1;->b:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0, p1}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    .line 489
    invoke-direct {v0, p0}, Lyads/n35;-><init>(F)V

    return-object v0

    .line 490
    :cond_0
    instance-of p1, p0, Lyads/iw1;

    if-eqz p1, :cond_1

    .line 491
    new-instance p1, Lyads/o35;

    .line 492
    check-cast p0, Lyads/iw1;

    .line 493
    iget-object p0, p0, Lyads/iw1;->a:Lyads/nx1;

    .line 494
    iget-object p0, p0, Lyads/nx1;->a:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-float p0, v0

    .line 495
    invoke-direct {p1, p0}, Lyads/o35;-><init>(F)V

    return-object p1

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lyads/gx1;Landroid/util/DisplayMetrics;Lyads/fs2;)Lyads/u35;
    .locals 1

    .line 467
    instance-of v0, p0, Lyads/ex1;

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Lyads/r35;

    .line 469
    check-cast p0, Lyads/ex1;

    .line 470
    iget-object p0, p0, Lyads/ex1;->a:Lyads/af1;

    .line 471
    iget-object p0, p0, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0, p1}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    .line 472
    invoke-direct {v0, p0}, Lyads/r35;-><init>(F)V

    return-object v0

    .line 473
    :cond_0
    instance-of p1, p0, Lyads/fx1;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 474
    new-instance p1, Lyads/t35;

    .line 475
    check-cast p0, Lyads/fx1;

    .line 476
    iget-object p0, p0, Lyads/fx1;->a:Lyads/ux1;

    .line 477
    iget-object p0, p0, Lyads/ux1;->a:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/tx1;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 p2, 0x1

    if-eq p0, p2, :cond_3

    const/4 p2, 0x2

    if-eq p0, p2, :cond_2

    const/4 p2, 0x3

    if-ne p0, p2, :cond_1

    .line 478
    sget-object p0, Lyads/s35;->e:Lyads/s35;

    goto :goto_0

    .line 479
    :cond_1
    invoke-static {}, Lme0;->e()V

    return-object v0

    .line 480
    :cond_2
    sget-object p0, Lyads/s35;->d:Lyads/s35;

    goto :goto_0

    .line 481
    :cond_3
    sget-object p0, Lyads/s35;->c:Lyads/s35;

    goto :goto_0

    .line 482
    :cond_4
    sget-object p0, Lyads/s35;->b:Lyads/s35;

    .line 483
    :goto_0
    invoke-direct {p1, p0}, Lyads/t35;-><init>(Lyads/s35;)V

    return-object p1

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-object v0
.end method

.method public static a(Lyads/xz1;Lyads/fs2;Landroid/util/DisplayMetrics;I)Lyads/yj5;
    .locals 5

    ushr-int/lit8 p3, p3, 0x18

    .line 598
    iget-object v0, p0, Lyads/xz1;->b:Lyads/as2;

    invoke-virtual {v0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, p2}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 599
    iget-object v1, p0, Lyads/xz1;->d:Lyads/nv1;

    iget-object v1, v1, Lyads/nv1;->a:Lyads/ac1;

    invoke-static {v1, p2, p1}, Lyads/pq;->a(Lyads/ac1;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result v1

    int-to-float v1, v1

    .line 600
    iget-object v2, p0, Lyads/xz1;->d:Lyads/nv1;

    iget-object v2, v2, Lyads/nv1;->b:Lyads/ac1;

    invoke-static {v2, p2, p1}, Lyads/pq;->a(Lyads/ac1;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result p2

    int-to-float p2, p2

    .line 601
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 602
    iget-object v3, p0, Lyads/xz1;->c:Lyads/as2;

    invoke-virtual {v3, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 603
    iget-object p0, p0, Lyads/xz1;->a:Lyads/as2;

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    int-to-double v3, p3

    mul-double/2addr p0, v3

    double-to-int p0, p0

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 604
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    .line 605
    new-instance p1, Lyads/yj5;

    invoke-direct {p1, v1, p2, v0, p0}, Lyads/yj5;-><init>(FFFI)V

    return-object p1
.end method

.method public static a(Lyads/zo1;Lyads/b82;Lyads/fs2;)V
    .locals 4

    .line 590
    iget-object v0, p1, Lyads/b82;->j0:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/a82;

    .line 591
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 592
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    .line 593
    :cond_0
    invoke-static {}, Lme0;->e()V

    return-void

    .line 594
    :cond_1
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    .line 595
    :cond_2
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 596
    :goto_0
    invoke-virtual {p0, v1}, Lyads/an2;->setEllipsisLocation(Landroid/text/TextUtils$TruncateAt;)V

    .line 597
    sget-object v1, Lyads/a82;->e:Lyads/a82;

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    iget-object p1, p1, Lyads/b82;->i:Lyads/as2;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_4
    move p1, v3

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Lyads/an2;->setAutoEllipsize(Z)V

    return-void
.end method

.method public static a(Lyads/zo1;Lyads/vq0;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 12

    .line 338
    iget-object v0, p0, Lyads/zo1;->s:Lyads/lb;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Lyads/lb;->b()V

    :cond_0
    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    const-wide/16 v2, -0x1

    const/16 v4, 0x1f

    const-wide/16 v5, 0x0

    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    .line 340
    new-instance v7, Lyads/lb;

    invoke-virtual {p1}, Lyads/vq0;->w()Lyads/wq0;

    move-result-object p1

    .line 341
    iget-object p1, p1, Lyads/wq0;->l:Lcl4;

    .line 342
    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ml2;

    .line 343
    invoke-direct {v7, p0, p1}, Lyads/lb;-><init>(Lyads/zo1;Lyads/ml2;)V

    .line 344
    new-instance p1, Lyads/jb;

    .line 345
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    shr-long v10, v8, v4

    cmp-long p2, v10, v5

    if-eqz p2, :cond_3

    cmp-long p2, v10, v2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    cmp-long p2, v8, v5

    if-lez p2, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v0

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int p2, v8

    .line 346
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    shr-long v10, v8, v4

    cmp-long p3, v10, v5

    if-eqz p3, :cond_5

    cmp-long p3, v10, v2

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    cmp-long p3, v8, v5

    if-lez p3, :cond_6

    move v0, v1

    goto :goto_3

    :cond_5
    :goto_2
    long-to-int v0, v8

    .line 347
    :cond_6
    :goto_3
    invoke-direct {p1, p2, v0}, Lyads/jb;-><init>(II)V

    invoke-virtual {v7, p1}, Lyads/lb;->a(Lyads/jb;)V

    .line 348
    invoke-virtual {p0, v7}, Lyads/zo1;->setAdaptiveMaxLines$mobileads_externalRelease(Lyads/lb;)V

    return-void

    :cond_7
    if-eqz p2, :cond_a

    .line 349
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    shr-long v7, p1, v4

    cmp-long p3, v7, v5

    if-eqz p3, :cond_9

    cmp-long p3, v7, v2

    if-nez p3, :cond_8

    goto :goto_4

    :cond_8
    cmp-long p1, p1, v5

    if-lez p1, :cond_b

    goto :goto_5

    :cond_9
    :goto_4
    long-to-int v0, p1

    goto :goto_6

    :cond_a
    :goto_5
    move v0, v1

    .line 350
    :cond_b
    :goto_6
    invoke-virtual {p0, v0}, Lyads/an2;->setMaxLines(I)V

    return-void
.end method

.method public static a(Lyads/zo1;Lyads/yj5;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 565
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v2, p1, Lyads/pi2;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lyads/pi2;

    :cond_0
    const/4 p1, 0x1

    if-eqz v0, :cond_1

    .line 566
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 567
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 568
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    const/4 p1, 0x0

    .line 569
    invoke-virtual {p0, p1, p1, p1, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void

    .line 570
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Lyads/pi2;

    if-eqz v3, :cond_3

    move-object v0, v2

    check-cast v0, Lyads/pi2;

    :cond_3
    if-eqz v0, :cond_4

    .line 571
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 572
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 573
    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 574
    iget v0, p1, Lyads/yj5;->c:F

    .line 575
    iget v1, p1, Lyads/yj5;->a:F

    .line 576
    iget v2, p1, Lyads/yj5;->b:F

    .line 577
    iget p1, p1, Lyads/yj5;->d:I

    .line 578
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method public static final b(Lyads/g82;Lyads/zo1;Lyads/b82;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 76
    iget-object p2, p2, Lyads/b82;->u:Lyads/as2;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    .line 77
    invoke-static {p2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p3, 0x1

    xor-int/2addr p0, p3

    if-ne p0, p3, :cond_1

    move-object p4, p2

    :cond_1
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 78
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Lyads/g82;Lyads/zo1;Lyads/bp1;)Lj59;
    .locals 0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p2, 0x1

    if-eq p0, p2, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p0

    or-int/lit8 p0, p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p0

    and-int/lit8 p0, p0, -0x9

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 83
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Lyads/g82;Lyads/zo1;Lyads/tt;Lyads/b82;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lyads/g82;->b(Lyads/zo1;Lyads/tt;Lyads/b82;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Lyads/g82;Lyads/zo1;Z)Lj59;
    .locals 0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-virtual {p1, p2}, Lyads/tt5;->setTightenWidth(Z)V

    .line 86
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final c(Lyads/g82;Lyads/zo1;Lyads/b82;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 588
    iget-object p4, p2, Lyads/b82;->X:Lyads/as2;

    invoke-virtual {p4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lyads/f11;

    .line 589
    iget-object p2, p2, Lyads/b82;->Y:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/h11;

    .line 590
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    invoke-static {p4, p2}, Lyads/jf2;->a(Lyads/f11;Lyads/h11;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setGravity(I)V

    .line 592
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p2, 0x1

    const/4 p3, 0x4

    if-eq p0, p2, :cond_1

    const/4 p2, 0x2

    if-eq p0, p2, :cond_0

    if-eq p0, p3, :cond_0

    const/4 p3, 0x5

    goto :goto_0

    :cond_0
    const/4 p3, 0x6

    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setTextAlignment(I)V

    .line 593
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final d(Lyads/g82;Lyads/zo1;Lyads/b82;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 1

    .line 661
    iget-object p4, p2, Lyads/b82;->Z:Lyads/as2;

    invoke-virtual {p4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    iget-object p2, p2, Lyads/b82;->s:Lyads/as2;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 662
    new-instance p0, Landroid/content/res/ColorStateList;

    const/4 p3, 0x0

    .line 663
    new-array p3, p3, [I

    const v0, 0x101009c

    filled-new-array {v0}, [I

    move-result-object v0

    filled-new-array {v0, p3}, [[I

    move-result-object p3

    if-eqz p2, :cond_1

    .line 664
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_1
    move p2, p4

    :goto_1
    filled-new-array {p2, p4}, [I

    move-result-object p2

    .line 665
    invoke-direct {p0, p3, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 666
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 667
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    check-cast v1, Lyads/zo1;

    move-object/from16 v13, p3

    check-cast v13, Lyads/b82;

    move-object/from16 v14, p4

    check-cast v14, Lyads/b82;

    iget-object v3, v2, Lyads/tt;->a:Lyads/vq0;

    iget-object v3, v3, Lyads/vq0;->o:Lyads/wq0;

    iget-object v3, v3, Lyads/wq0;->l:Lcl4;

    invoke-interface {v3}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/ml2;

    invoke-virtual {v1, v3}, Lyads/an2;->setDrawingPassOverrideStrategy$mobileads_externalRelease(Lyads/ml2;)V

    iget-object v3, v13, Lyads/b82;->b:Lyads/xr0;

    iget-object v4, v13, Lyads/b82;->d:Ljava/util/List;

    iget-object v5, v13, Lyads/b82;->J:Ljava/util/List;

    iget-object v6, v13, Lyads/b82;->o:Ljava/util/List;

    iget-object v7, v13, Lyads/b82;->D:Ljava/util/List;

    iget-object v8, v13, Lyads/b82;->C:Ljava/util/List;

    iget-object v9, v13, Lyads/b82;->P:Ljava/util/List;

    iget-object v10, v13, Lyads/b82;->O:Ljava/util/List;

    iget-object v11, v13, Lyads/b82;->c:Lyads/k11;

    iget-object v12, v13, Lyads/b82;->l:Lyads/as2;

    invoke-static/range {v1 .. v12}, Lyads/pq;->a(Landroid/view/View;Lyads/tt;Lyads/xr0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/k11;Lyads/as2;)V

    move-object v8, v2

    iget-object v6, v8, Lyads/tt;->b:Lyads/fs2;

    iget-object v2, v13, Lyads/b82;->t:Lyads/as2;

    iget-object v3, v13, Lyads/b82;->y:Lyads/as2;

    iget-object v4, v13, Lyads/b82;->z:Lyads/as2;

    iget-object v7, v13, Lyads/b82;->x:Lyads/as2;

    const/4 v9, 0x0

    if-eqz v14, :cond_0

    iget-object v5, v14, Lyads/b82;->t:Lyads/as2;

    goto :goto_0

    :cond_0
    move-object v5, v9

    :goto_0
    if-eqz v14, :cond_1

    iget-object v10, v14, Lyads/b82;->y:Lyads/as2;

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    if-eqz v14, :cond_2

    iget-object v11, v14, Lyads/b82;->z:Lyads/as2;

    goto :goto_2

    :cond_2
    move-object v11, v9

    :goto_2
    if-eqz v14, :cond_3

    iget-object v12, v14, Lyads/b82;->x:Lyads/as2;

    goto :goto_3

    :cond_3
    move-object v12, v9

    :goto_3
    iget-object v15, v0, Lyads/g82;->b:Lyads/ef2;

    if-eqz v14, :cond_4

    invoke-static {v2, v5}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v3, v10}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v4, v11}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lyads/kw5;->a()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v7, v12}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v5, v15

    invoke-static/range {v1 .. v6}, Lyads/kw5;->a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/ef2;Lyads/fs2;)V

    move-object/from16 v16, v6

    move-object v6, v5

    move-object v5, v7

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lyads/kw5;->a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/ef2;Lyads/fs2;)V

    move-object v6, v7

    invoke-static {v1, v3, v4, v5, v6}, Lyads/kw5;->a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/fs2;)V

    :cond_5
    :goto_4
    invoke-virtual {v0, v1, v13, v14, v6}, Lyads/g82;->e(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V

    iget-object v2, v13, Lyads/b82;->v:Lyads/as2;

    iget-object v3, v13, Lyads/b82;->w:Lyads/as2;

    if-eqz v14, :cond_6

    iget-object v4, v14, Lyads/b82;->v:Lyads/as2;

    goto :goto_5

    :cond_6
    move-object v4, v9

    :goto_5
    if-eqz v14, :cond_7

    iget-object v5, v14, Lyads/b82;->w:Lyads/as2;

    goto :goto_6

    :cond_7
    move-object v5, v9

    :goto_6
    move-object v7, v1

    invoke-static/range {v1 .. v7}, Lyads/kw5;->a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/fs2;Lyads/hs2;)V

    iget-object v2, v13, Lyads/b82;->H:Lyads/as2;

    iget-object v3, v13, Lyads/b82;->v:Lyads/as2;

    if-eqz v14, :cond_8

    iget-object v4, v14, Lyads/b82;->H:Lyads/as2;

    goto :goto_7

    :cond_8
    move-object v4, v9

    :goto_7
    if-eqz v14, :cond_9

    iget-object v5, v14, Lyads/b82;->v:Lyads/as2;

    goto :goto_8

    :cond_9
    move-object v5, v9

    :goto_8
    move-object v7, v1

    invoke-static/range {v1 .. v7}, Lyads/kw5;->b(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/fs2;Lyads/hs2;)V

    invoke-virtual {v0, v1, v13, v14, v6}, Lyads/g82;->b(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V

    invoke-virtual {v0, v1, v13, v14, v6}, Lyads/g82;->f(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V

    invoke-virtual {v0, v1, v13, v14, v6}, Lyads/g82;->i(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V

    invoke-virtual {v0, v1, v13, v14, v6}, Lyads/g82;->d(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V

    move-object v5, v6

    move-object v2, v8

    move-object v3, v13

    move-object v4, v14

    invoke-virtual/range {v0 .. v5}, Lyads/g82;->a(Lyads/zo1;Lyads/tt;Lyads/b82;Lyads/b82;Lyads/fs2;)V

    move-object v6, v3

    move-object v7, v4

    iget-object v3, v6, Lyads/b82;->Q:Ljava/util/List;

    if-nez v3, :cond_a

    iget-object v3, v6, Lyads/b82;->F:Ljava/util/List;

    if-nez v3, :cond_a

    invoke-virtual {v0, v1, v2, v6, v7}, Lyads/g82;->a(Lyads/zo1;Lyads/tt;Lyads/b82;Lyads/b82;)V

    goto :goto_9

    :cond_a
    invoke-virtual {v0, v1, v2, v6}, Lyads/g82;->d(Lyads/zo1;Lyads/tt;Lyads/b82;)V

    :goto_9
    iget-object v3, v6, Lyads/b82;->p:Lyads/r72;

    if-eqz v3, :cond_b

    iget-object v4, v3, Lyads/r72;->c:Ljava/util/List;

    goto :goto_a

    :cond_b
    move-object v4, v9

    :goto_a
    if-nez v4, :cond_f

    if-eqz v3, :cond_c

    iget-object v4, v3, Lyads/r72;->b:Ljava/util/List;

    goto :goto_b

    :cond_c
    move-object v4, v9

    :goto_b
    if-nez v4, :cond_f

    if-eqz v3, :cond_d

    iget-object v4, v3, Lyads/r72;->a:Ljava/util/List;

    goto :goto_c

    :cond_d
    move-object v4, v9

    :goto_c
    if-nez v4, :cond_f

    if-eqz v7, :cond_e

    iget-object v4, v7, Lyads/b82;->p:Lyads/r72;

    goto :goto_d

    :cond_e
    move-object v4, v9

    :goto_d
    iget-object v8, v2, Lyads/tt;->b:Lyads/fs2;

    invoke-virtual {v0, v1, v3, v4, v8}, Lyads/g82;->a(Lyads/zo1;Lyads/r72;Lyads/r72;Lyads/fs2;)V

    goto :goto_e

    :cond_f
    invoke-virtual {v0, v1, v2, v6}, Lyads/g82;->c(Lyads/zo1;Lyads/tt;Lyads/b82;)V

    :goto_e
    invoke-virtual {v0, v1, v6, v7, v5}, Lyads/g82;->a(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V

    iget-object v2, v2, Lyads/tt;->a:Lyads/vq0;

    iget-object v3, v6, Lyads/b82;->a0:Lyads/m82;

    if-nez v3, :cond_10

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_f

    :cond_10
    instance-of v4, v3, Lyads/k82;

    if-eqz v4, :cond_12

    check-cast v3, Lyads/k82;

    iget-object v3, v3, Lyads/k82;->a:Lyads/dp1;

    if-eqz v7, :cond_11

    iget-object v9, v7, Lyads/b82;->a0:Lyads/m82;

    :cond_11
    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Lyads/g82;->a(Lyads/zo1;Lyads/vq0;Lyads/dp1;Lyads/m82;Lyads/fs2;)V

    goto :goto_f

    :cond_12
    instance-of v2, v3, Lyads/l82;

    if-eqz v2, :cond_14

    check-cast v3, Lyads/l82;

    iget-object v2, v3, Lyads/l82;->a:Lyads/gw1;

    if-eqz v7, :cond_13

    iget-object v9, v7, Lyads/b82;->a0:Lyads/m82;

    :cond_13
    invoke-virtual {v0, v1, v2, v9, v5}, Lyads/g82;->a(Lyads/zo1;Lyads/gw1;Lyads/m82;Lyads/fs2;)V

    :cond_14
    :goto_f
    invoke-virtual {v0, v1, v6, v7, v5}, Lyads/g82;->g(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V

    invoke-virtual {v0, v1, v6, v7, v5}, Lyads/g82;->c(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V

    invoke-virtual {v0, v1, v6, v7, v5}, Lyads/g82;->h(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v6, Lyads/b82;->s:Lyads/as2;

    if-eqz v0, :cond_15

    goto :goto_10

    :cond_15
    const/4 v0, 0x0

    goto :goto_11

    :cond_16
    :goto_10
    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public final a(Lyads/zo1;JLyads/y30;)V
    .locals 7

    .line 606
    invoke-static {p1}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget v1, Lyads/lt3;->e:I

    long-to-float p2, p2

    .line 608
    iget-object p3, p4, Lyads/y30;->a:[I

    .line 609
    iget-object p4, p4, Lyads/y30;->b:[F

    .line 610
    invoke-static {p0, p1}, Lyads/g82;->a(Lyads/g82;Lyads/zo1;)I

    move-result p0

    .line 611
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 612
    invoke-static {p2, p3, p4, p0, v1}, Lyads/kt3;->a(F[I[FII)Landroid/graphics/LinearGradient;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 613
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 614
    :cond_0
    new-instance v1, Lyads/e82;

    move-object v6, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lyads/e82;-><init>(Lyads/zo1;JLyads/y30;Lyads/g82;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final a(Lyads/zo1;Ljava/lang/String;)V
    .locals 0

    .line 351
    invoke-virtual {p1}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 352
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V
    .locals 3

    .line 579
    iget-object v0, p2, Lyads/b82;->i:Lyads/as2;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p3, Lyads/b82;->i:Lyads/as2;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    iget-object v0, p2, Lyads/b82;->j0:Lyads/as2;

    if-eqz p3, :cond_1

    iget-object v1, p3, Lyads/b82;->j0:Lyads/as2;

    :cond_1
    invoke-static {v0, v1}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 581
    :cond_2
    invoke-static {p1, p2, p4}, Lyads/g82;->a(Lyads/zo1;Lyads/b82;Lyads/fs2;)V

    .line 582
    iget-object p3, p2, Lyads/b82;->i:Lyads/as2;

    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p2, Lyads/b82;->j0:Lyads/as2;

    .line 583
    instance-of p3, p3, Lyads/xr2;

    if-eqz p3, :cond_3

    :goto_1
    return-void

    .line 584
    :cond_3
    new-instance p3, Lxs9;

    invoke-direct {p3, p0, p1, p2, p4}, Lxs9;-><init>(Lyads/g82;Lyads/zo1;Lyads/b82;Lyads/fs2;)V

    .line 585
    iget-object p0, p2, Lyads/b82;->i:Lyads/as2;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p4, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 586
    iget-object v0, p1, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v0, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 587
    :cond_4
    iget-object p0, p2, Lyads/b82;->j0:Lyads/as2;

    invoke-virtual {p0, p4, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 588
    iget-object p1, p1, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final a(Lyads/zo1;Lyads/gw1;Lyads/m82;Lyads/fs2;)V
    .locals 9

    .line 425
    instance-of v1, p3, Lyads/l82;

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p2, Lyads/gw1;->e:Lyads/gx1;

    move-object v0, p3

    check-cast v0, Lyads/l82;

    .line 427
    iget-object v2, v0, Lyads/l82;->a:Lyads/gw1;

    .line 428
    iget-object v2, v2, Lyads/gw1;->e:Lyads/gx1;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p2, Lyads/gw1;->a:Lyads/jw1;

    .line 430
    iget-object v2, v0, Lyads/l82;->a:Lyads/gw1;

    .line 431
    iget-object v2, v2, Lyads/gw1;->a:Lyads/jw1;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p2, Lyads/gw1;->b:Lyads/jw1;

    .line 433
    iget-object v2, v0, Lyads/l82;->a:Lyads/gw1;

    .line 434
    iget-object v2, v2, Lyads/gw1;->b:Lyads/jw1;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p2, Lyads/gw1;->d:Lyads/ds2;

    .line 436
    iget-object v0, v0, Lyads/l82;->a:Lyads/gw1;

    .line 437
    iget-object v0, v0, Lyads/gw1;->d:Lyads/ds2;

    invoke-static {v1, v0}, Lyads/ls2;->a(Lyads/ds2;Lyads/ds2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 438
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 439
    iget-object v0, p2, Lyads/gw1;->e:Lyads/gx1;

    invoke-static {v0, v7, p4}, Lyads/g82;->a(Lyads/gx1;Landroid/util/DisplayMetrics;Lyads/fs2;)Lyads/u35;

    move-result-object v1

    .line 440
    iget-object v0, p2, Lyads/gw1;->a:Lyads/jw1;

    invoke-static {v0, v7, p4}, Lyads/g82;->a(Lyads/jw1;Landroid/util/DisplayMetrics;Lyads/fs2;)Lyads/p35;

    move-result-object v2

    .line 441
    iget-object v0, p2, Lyads/gw1;->b:Lyads/jw1;

    invoke-static {v0, v7, p4}, Lyads/g82;->a(Lyads/jw1;Landroid/util/DisplayMetrics;Lyads/fs2;)Lyads/p35;

    move-result-object v3

    .line 442
    iget-object v0, p2, Lyads/gw1;->d:Lyads/ds2;

    if-eqz v0, :cond_2

    invoke-interface {v0, p4}, Lyads/ds2;->a(Lyads/fs2;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v5, v0

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v0, Lkx2;->b:Lkx2;

    goto :goto_0

    .line 443
    :goto_2
    invoke-static {p1}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_3

    .line 444
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget v4, Lyads/v35;->g:I

    .line 445
    invoke-static {v5}, Lqn1;->s0(Ljava/util/Collection;)[I

    move-result-object v4

    .line 446
    invoke-static/range {p0 .. p1}, Lyads/g82;->a(Lyads/g82;Lyads/zo1;)I

    move-result v5

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int/2addr v6, v8

    .line 448
    invoke-static/range {v1 .. v6}, Lyads/q35;->a(Lyads/u35;Lyads/p35;Lyads/p35;[III)Landroid/graphics/RadialGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 449
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 450
    :cond_3
    new-instance v0, Lyads/f82;

    move-object v6, p0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lyads/f82;-><init>(Lyads/zo1;Lyads/u35;Lyads/p35;Lyads/p35;Ljava/util/List;Lyads/g82;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 451
    :goto_3
    iget-object v6, p2, Lyads/gw1;->d:Lyads/ds2;

    if-eqz v6, :cond_5

    .line 452
    instance-of v0, v6, Lyads/y50;

    if-eqz v0, :cond_4

    goto :goto_4

    .line 453
    :cond_4
    new-instance v0, Lrv9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lrv9;-><init>(Lyads/g82;Lyads/zo1;Lyads/gw1;Landroid/util/DisplayMetrics;Lyads/fs2;)V

    invoke-interface {v6, p4, v0}, Lyads/ds2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    .line 454
    iget-object v1, p1, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v1, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public final a(Lyads/zo1;Lyads/r72;Lyads/r72;Lyads/fs2;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 541
    iget-object v1, p2, Lyads/r72;->d:Lyads/as2;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p3, :cond_1

    iget-object p3, p3, Lyads/r72;->d:Lyads/as2;

    goto :goto_1

    :cond_1
    move-object p3, v0

    :goto_1
    invoke-static {v1, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_6

    :cond_2
    if-eqz p2, :cond_3

    .line 542
    iget-object p3, p2, Lyads/r72;->d:Lyads/as2;

    if-eqz p3, :cond_3

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object p3, v0

    :goto_2
    if-eqz p3, :cond_4

    goto :goto_3

    .line 543
    :cond_4
    const-string p3, "\u2026"

    :goto_3
    invoke-virtual {p1, p3}, Lyads/an2;->setEllipsis(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_5

    .line 544
    iget-object p3, p2, Lyads/r72;->d:Lyads/as2;

    goto :goto_4

    :cond_5
    move-object p3, v0

    :goto_4
    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_7

    if-eqz p2, :cond_6

    iget-object p3, p2, Lyads/r72;->d:Lyads/as2;

    goto :goto_5

    :cond_6
    move-object p3, v0

    :goto_5
    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_7

    :goto_6
    return-void

    :cond_7
    if-eqz p2, :cond_8

    .line 545
    iget-object p2, p2, Lyads/r72;->d:Lyads/as2;

    if-eqz p2, :cond_8

    new-instance p3, Lkl1;

    const/4 v0, 0x2

    invoke-direct {p3, v0, p0, p1}, Lkl1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p4, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    .line 546
    :cond_8
    iget-object p0, p1, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p0, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final a(Lyads/zo1;Lyads/tt;Lyads/b82;)V
    .locals 9

    .line 551
    iget-object v0, p3, Lyads/b82;->p:Lyads/r72;

    if-nez v0, :cond_0

    .line 552
    const-string p0, "\u2026"

    invoke-virtual {p1, p0}, Lyads/an2;->setEllipsis(Ljava/lang/CharSequence;)V

    return-void

    .line 553
    :cond_0
    iget-object p0, p0, Lyads/g82;->c:Lyads/wo5;

    new-instance v8, Lca2;

    const/4 v1, 0x6

    invoke-direct {v8, p1, v1}, Lca2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    iget-object v1, v0, Lyads/r72;->d:Lyads/as2;

    .line 555
    iget-object v2, p2, Lyads/tt;->b:Lyads/fs2;

    .line 556
    invoke-virtual {v1, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 557
    iget-object v5, v0, Lyads/r72;->c:Ljava/util/List;

    .line 558
    iget-object v6, v0, Lyads/r72;->b:Ljava/util/List;

    .line 559
    iget-object v7, v0, Lyads/r72;->a:Ljava/util/List;

    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move-object v3, p3

    .line 560
    invoke-virtual/range {v0 .. v8}, Lyads/wo5;->a(Lyads/tt;Lyads/an2;Lyads/b82;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnl3;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public final a(Lyads/zo1;Lyads/tt;Lyads/b82;Lyads/b82;)V
    .locals 12

    move-object/from16 v0, p4

    .line 501
    iget-object v2, p3, Lyads/b82;->W:Lyads/as2;

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    iget-object v4, v0, Lyads/b82;->W:Lyads/as2;

    goto :goto_0

    :cond_0
    move-object v4, v9

    :goto_0
    invoke-static {v2, v4}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 502
    iget-object v2, p3, Lyads/b82;->I:Lyads/as2;

    if-eqz v0, :cond_1

    iget-object v4, v0, Lyads/b82;->I:Lyads/as2;

    goto :goto_1

    :cond_1
    move-object v4, v9

    :goto_1
    invoke-static {v2, v4}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 503
    iget-object v2, p3, Lyads/b82;->w:Lyads/as2;

    if-eqz v0, :cond_2

    iget-object v4, v0, Lyads/b82;->w:Lyads/as2;

    goto :goto_2

    :cond_2
    move-object v4, v9

    :goto_2
    invoke-static {v2, v4}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 504
    iget-object v2, p3, Lyads/b82;->q:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lyads/b82;->q:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object v0, v9

    :goto_3
    if-nez v2, :cond_4

    if-nez v0, :cond_4

    goto/16 :goto_6

    :cond_4
    if-eqz v2, :cond_9

    if-nez v0, :cond_5

    goto :goto_5

    .line 505
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_6

    goto :goto_5

    .line 506
    :cond_6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_8

    .line 507
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/gd1;

    check-cast v5, Lyads/gd1;

    .line 508
    iget-object v5, v5, Lyads/gd1;->a:Ljava/lang/String;

    iget-object v4, v4, Lyads/gd1;->a:Ljava/lang/String;

    invoke-static {v5, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    move v4, v6

    goto :goto_4

    .line 509
    :cond_8
    invoke-static {}, Lu96;->o()V

    throw v9

    .line 510
    :cond_9
    :goto_5
    iget-object v10, p2, Lyads/tt;->b:Lyads/fs2;

    .line 511
    iget-object v0, p3, Lyads/b82;->W:Lyads/as2;

    invoke-virtual {v0, v10}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lyads/g82;->c:Lyads/wo5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    iget-object v2, p3, Lyads/b82;->W:Lyads/as2;

    .line 514
    iget-object v4, p2, Lyads/tt;->b:Lyads/fs2;

    .line 515
    invoke-virtual {v2, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v1, p2

    move-object v3, p3

    .line 516
    invoke-virtual/range {v0 .. v8}, Lyads/wo5;->a(Lyads/tt;Lyads/an2;Lyads/b82;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnl3;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 517
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    invoke-virtual {p0, p1, v11}, Lyads/g82;->a(Lyads/zo1;Ljava/lang/String;)V

    .line 519
    iget-object v0, p3, Lyads/b82;->W:Lyads/as2;

    .line 520
    instance-of v0, v0, Lyads/xr2;

    if-eqz v0, :cond_b

    .line 521
    iget-object v0, p3, Lyads/b82;->I:Lyads/as2;

    invoke-static {v0}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 522
    iget-object v0, p3, Lyads/b82;->w:Lyads/as2;

    invoke-static {v0}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_6
    return-void

    .line 523
    :cond_b
    new-instance v0, Lsv9;

    move-object v3, p0

    move-object v5, p1

    move-object v4, p2

    move-object v1, p3

    move-object v2, v10

    invoke-direct/range {v0 .. v5}, Lsv9;-><init>(Lyads/b82;Lyads/fs2;Lyads/g82;Lyads/tt;Lyads/zo1;)V

    move-object p0, v2

    .line 524
    iget-object v1, p3, Lyads/b82;->W:Lyads/as2;

    invoke-virtual {v1, p0, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    .line 525
    iget-object v4, p1, Lyads/zo1;->r:Lyads/xh1;

    .line 526
    invoke-interface {v4, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 527
    iget-object v1, p3, Lyads/b82;->I:Lyads/as2;

    if-eqz v1, :cond_c

    invoke-virtual {v1, p0, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v9

    .line 528
    :cond_c
    iget-object v1, p1, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v1, v9}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 529
    iget-object v1, p3, Lyads/b82;->w:Lyads/as2;

    invoke-virtual {v1, p0, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 530
    iget-object p1, p1, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final a(Lyads/zo1;Lyads/tt;Lyads/b82;Lyads/b82;Lyads/fs2;)V
    .locals 8

    .line 361
    iget-object v0, p3, Lyads/b82;->L:Lyads/as2;

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    iget-object v2, p4, Lyads/b82;->L:Lyads/as2;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p3, Lyads/b82;->M:Lyads/as2;

    if-eqz p4, :cond_1

    iget-object p4, p4, Lyads/b82;->M:Lyads/as2;

    goto :goto_1

    :cond_1
    move-object p4, v1

    :goto_1
    invoke-static {v0, p4}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_4

    .line 363
    :cond_2
    iget-object p4, p2, Lyads/tt;->a:Lyads/vq0;

    .line 364
    iget-object v0, p3, Lyads/b82;->L:Lyads/as2;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    iget-object v2, p3, Lyads/b82;->M:Lyads/as2;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    invoke-static {p1, p4, v0, v2}, Lyads/g82;->a(Lyads/zo1;Lyads/vq0;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 365
    iget-object p4, p3, Lyads/b82;->L:Lyads/as2;

    invoke-static {p4}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p4, p3, Lyads/b82;->M:Lyads/as2;

    invoke-static {p4}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p4

    if-eqz p4, :cond_5

    :goto_4
    return-void

    .line 366
    :cond_5
    new-instance v2, Lov9;

    move-object v5, p0

    move-object v7, p1

    move-object v6, p2

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v2 .. v7}, Lov9;-><init>(Lyads/b82;Lyads/fs2;Lyads/g82;Lyads/tt;Lyads/zo1;)V

    .line 367
    iget-object p0, v3, Lyads/b82;->L:Lyads/as2;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v4, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    goto :goto_5

    :cond_6
    move-object p0, v1

    .line 368
    :goto_5
    iget-object p1, v7, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 369
    iget-object p0, v3, Lyads/b82;->M:Lyads/as2;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v4, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    .line 370
    :cond_7
    iget-object p0, v7, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final a(Lyads/zo1;Lyads/vq0;Lyads/dp1;Lyads/m82;Lyads/fs2;)V
    .locals 8

    .line 382
    instance-of v0, p4, Lyads/k82;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 383
    iget-object v0, p3, Lyads/dp1;->a:Lyads/as2;

    check-cast p4, Lyads/k82;

    .line 384
    iget-object v2, p4, Lyads/k82;->a:Lyads/dp1;

    .line 385
    iget-object v2, v2, Lyads/dp1;->a:Lyads/as2;

    invoke-static {v0, v2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 386
    iget-object v0, p3, Lyads/dp1;->c:Lyads/ds2;

    .line 387
    iget-object v2, p4, Lyads/k82;->a:Lyads/dp1;

    .line 388
    iget-object v2, v2, Lyads/dp1;->c:Lyads/ds2;

    invoke-static {v0, v2}, Lyads/ls2;->a(Lyads/ds2;Lyads/ds2;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 389
    iget-object v0, p3, Lyads/dp1;->b:Ljava/util/List;

    .line 390
    iget-object p4, p4, Lyads/k82;->a:Lyads/dp1;

    .line 391
    iget-object p4, p4, Lyads/dp1;->b:Ljava/util/List;

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v0, :cond_5

    if-nez p4, :cond_1

    goto :goto_1

    .line 392
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 393
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_4

    .line 394
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/cp1;

    check-cast v3, Lyads/cp1;

    .line 395
    invoke-static {v3, v2}, Lyads/gb1;->a(Lyads/cp1;Lyads/cp1;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_0

    .line 396
    :cond_4
    invoke-static {}, Lu96;->o()V

    throw v1

    .line 397
    :cond_5
    :goto_1
    iget-object p4, p3, Lyads/dp1;->a:Lyads/as2;

    invoke-virtual {p4, p5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 398
    invoke-static {p3, p5}, Lyads/gb1;->a(Lyads/dp1;Lyads/fs2;)Lyads/y30;

    move-result-object p4

    invoke-static {p4, p2}, Lyads/z30;->a(Lyads/y30;Lyads/vq0;)Lyads/y30;

    move-result-object p4

    .line 399
    invoke-virtual {p0, p1, v2, v3, p4}, Lyads/g82;->a(Lyads/zo1;JLyads/y30;)V

    .line 400
    iget-object p4, p3, Lyads/dp1;->a:Lyads/as2;

    .line 401
    instance-of p4, p4, Lyads/xr2;

    if-eqz p4, :cond_9

    .line 402
    iget-object p4, p3, Lyads/dp1;->c:Lyads/ds2;

    if-eqz p4, :cond_6

    .line 403
    instance-of p4, p4, Lyads/y50;

    if-eqz p4, :cond_9

    .line 404
    :cond_6
    iget-object p4, p3, Lyads/dp1;->b:Ljava/util/List;

    if-eqz p4, :cond_c

    .line 405
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_4

    .line 406
    :cond_7
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/cp1;

    if-nez v0, :cond_8

    goto :goto_2

    .line 407
    :cond_8
    iget-object v2, v0, Lyads/cp1;->a:Lyads/as2;

    .line 408
    instance-of v2, v2, Lyads/xr2;

    if-eqz v2, :cond_9

    .line 409
    iget-object v0, v0, Lyads/cp1;->b:Lyads/as2;

    .line 410
    instance-of v0, v0, Lyads/xr2;

    if-eqz v0, :cond_9

    goto :goto_2

    .line 411
    :cond_9
    new-instance v2, Ltv9;

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v2 .. v7}, Ltv9;-><init>(Lyads/g82;Lyads/zo1;Lyads/dp1;Lyads/fs2;Lyads/vq0;)V

    .line 412
    iget-object p0, v5, Lyads/dp1;->a:Lyads/as2;

    invoke-virtual {p0, v6, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 413
    iget-object p1, v4, Lyads/zo1;->r:Lyads/xh1;

    .line 414
    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 415
    iget-object p0, v5, Lyads/dp1;->c:Lyads/ds2;

    if-eqz p0, :cond_a

    invoke-interface {p0, v6, v2}, Lyads/ds2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    .line 416
    :cond_a
    iget-object p0, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 417
    iget-object p0, v5, Lyads/dp1;->b:Ljava/util/List;

    if-eqz p0, :cond_c

    .line 418
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/cp1;

    if-nez p1, :cond_b

    goto :goto_3

    .line 419
    :cond_b
    iget-object p2, p1, Lyads/cp1;->a:Lyads/as2;

    invoke-virtual {p2, v6, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p2

    invoke-virtual {v4, p2}, Lyads/zo1;->a(Lyads/tp0;)V

    .line 420
    iget-object p1, p1, Lyads/cp1;->b:Lyads/as2;

    invoke-virtual {p1, v6, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    invoke-virtual {v4, p1}, Lyads/zo1;->a(Lyads/tp0;)V

    goto :goto_3

    :cond_c
    :goto_4
    return-void
.end method

.method public final b(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V
    .locals 8

    iget-object v0, p2, Lyads/b82;->u:Lyads/as2;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p3, Lyads/b82;->u:Lyads/as2;

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    invoke-static {v0, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_3

    :cond_1
    iget-object p3, p2, Lyads/b82;->u:Lyads/as2;

    if-eqz p3, :cond_2

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p3, v1

    :goto_1
    if-eqz p3, :cond_3

    invoke-static {p3}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    move-object p3, v1

    :goto_2
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    iget-object p3, p2, Lyads/b82;->u:Lyads/as2;

    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_4

    :goto_3
    return-void

    :cond_4
    new-instance v2, Lyr8;

    const/4 v7, 0x2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lyr8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, v5, Lyads/b82;->u:Lyads/as2;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v6, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    :cond_5
    iget-object p0, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final b(Lyads/zo1;Lyads/tt;Lyads/b82;)V
    .locals 9

    .line 88
    iget-object v0, p0, Lyads/g82;->c:Lyads/wo5;

    new-instance v8, Lu;

    const/4 p0, 0x6

    invoke-direct {v8, p1, p0}, Lu;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    iget-object p0, p3, Lyads/b82;->W:Lyads/as2;

    .line 90
    iget-object v1, p2, Lyads/tt;->b:Lyads/fs2;

    .line 91
    invoke-virtual {p0, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    .line 92
    iget-object v5, p3, Lyads/b82;->Q:Ljava/util/List;

    .line 93
    iget-object v6, p3, Lyads/b82;->F:Ljava/util/List;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v1, p2

    move-object v3, p3

    .line 94
    invoke-virtual/range {v0 .. v8}, Lyads/wo5;->a(Lyads/tt;Lyads/an2;Lyads/b82;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnl3;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public final c(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V
    .locals 1

    .line 577
    iget-object v0, p2, Lyads/b82;->T:Lyads/as2;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lyads/b82;->T:Lyads/as2;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 578
    :cond_1
    iget-object p3, p2, Lyads/b82;->T:Lyads/as2;

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 579
    invoke-virtual {p1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 580
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 581
    instance-of p3, v0, Lyads/oi5;

    if-eqz p3, :cond_2

    .line 582
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 583
    :cond_2
    iget-object p2, p2, Lyads/b82;->T:Lyads/as2;

    .line 584
    instance-of p3, p2, Lyads/xr2;

    if-eqz p3, :cond_3

    :goto_1
    return-void

    .line 585
    :cond_3
    new-instance p3, Lpv9;

    invoke-direct {p3, p0, p1}, Lpv9;-><init>(Lyads/g82;Lyads/zo1;)V

    invoke-virtual {p2, p4, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 586
    iget-object p1, p1, Lyads/zo1;->r:Lyads/xh1;

    .line 587
    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final c(Lyads/zo1;Lyads/tt;Lyads/b82;)V
    .locals 8

    invoke-virtual {p0, p1, p2, p3}, Lyads/g82;->a(Lyads/zo1;Lyads/tt;Lyads/b82;)V

    iget-object v0, p3, Lyads/b82;->p:Lyads/r72;

    if-nez v0, :cond_0

    goto/16 :goto_16

    :cond_0
    iget-object v1, p2, Lyads/tt;->b:Lyads/fs2;

    new-instance v2, Lus9;

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lus9;-><init>(Lyads/oh2;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, v0, Lyads/r72;->d:Lyads/as2;

    invoke-virtual {p0, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    iget-object p1, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p0, v0, Lyads/r72;->c:Ljava/util/List;

    const/4 p1, 0x0

    if-eqz p0, :cond_17

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/y72;

    iget-object p3, p2, Lyads/y72;->q:Lyads/as2;

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->f:Lyads/as2;

    if-eqz p3, :cond_2

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_1

    :cond_2
    move-object p3, p1

    :goto_1
    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->b:Lyads/as2;

    if-eqz p3, :cond_3

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_2

    :cond_3
    move-object p3, p1

    :goto_2
    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->d:Lyads/as2;

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->i:Lyads/as2;

    if-eqz p3, :cond_4

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_3

    :cond_4
    move-object p3, p1

    :goto_3
    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->j:Lyads/as2;

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->g:Lyads/as2;

    if-eqz p3, :cond_5

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_4

    :cond_5
    move-object p3, p1

    :goto_4
    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->l:Lyads/as2;

    if-eqz p3, :cond_6

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_5

    :cond_6
    move-object p3, p1

    :goto_5
    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->m:Lyads/as2;

    if-eqz p3, :cond_7

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_6

    :cond_7
    move-object p3, p1

    :goto_6
    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->h:Lyads/as2;

    if-eqz p3, :cond_8

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_7

    :cond_8
    move-object p3, p1

    :goto_7
    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->n:Lyads/as2;

    if-eqz p3, :cond_9

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_8

    :cond_9
    move-object p3, p1

    :goto_8
    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->o:Lyads/as2;

    if-eqz p3, :cond_a

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_9

    :cond_a
    move-object p3, p1

    :goto_9
    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->r:Lyads/as2;

    if-eqz p3, :cond_b

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_a

    :cond_b
    move-object p3, p1

    :goto_a
    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->s:Lyads/as2;

    if-eqz p3, :cond_c

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_b

    :cond_c
    move-object p3, p1

    :goto_b
    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->u:Lyads/as2;

    if-eqz p3, :cond_d

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_c

    :cond_d
    move-object p3, p1

    :goto_c
    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->v:Lyads/as2;

    if-eqz p3, :cond_e

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_d

    :cond_e
    move-object p3, p1

    :goto_d
    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->c:Lyads/h92;

    if-eqz p3, :cond_f

    invoke-virtual {p3}, Lyads/h92;->a()Ljava/lang/Object;

    move-result-object p3

    goto :goto_e

    :cond_f
    move-object p3, p1

    :goto_e
    instance-of v3, p3, Lyads/t22;

    if-eqz v3, :cond_10

    check-cast p3, Lyads/t22;

    iget-object p3, p3, Lyads/t22;->a:Lyads/as2;

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_10
    iget-object p3, p2, Lyads/y72;->p:Lyads/aa2;

    if-eqz p3, :cond_11

    invoke-virtual {p3}, Lyads/aa2;->a()Ljava/lang/Object;

    move-result-object p3

    goto :goto_f

    :cond_11
    move-object p3, p1

    :goto_f
    instance-of v3, p3, Lyads/qa2;

    if-eqz v3, :cond_12

    check-cast p3, Lyads/qa2;

    iget-object v3, p3, Lyads/qa2;->b:Lyads/as2;

    invoke-virtual {v3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    iget-object v5, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p3, Lyads/qa2;->a:Lyads/as2;

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    goto :goto_10

    :cond_12
    instance-of v3, p3, Lyads/ka2;

    if-eqz v3, :cond_13

    check-cast p3, Lyads/ka2;

    iget-object v3, p3, Lyads/ka2;->d:Lyads/as2;

    invoke-virtual {v3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    iget-object v5, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v3, p3, Lyads/ka2;->a:Lyads/as2;

    invoke-virtual {v3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    iget-object v5, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v3, p3, Lyads/ka2;->b:Lyads/as2;

    invoke-virtual {v3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    iget-object v5, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v3, p3, Lyads/ka2;->c:Lyads/as2;

    invoke-virtual {v3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    iget-object v5, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v3, p3, Lyads/ka2;->e:Lyads/af1;

    iget-object v3, v3, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {v3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    iget-object v5, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v5, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p3, Lyads/ka2;->e:Lyads/af1;

    iget-object p3, p3, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_13
    :goto_10
    iget-object p3, p2, Lyads/y72;->e:Lyads/o92;

    if-eqz p3, :cond_14

    iget-object p3, p3, Lyads/o92;->b:Lyads/l42;

    if-eqz p3, :cond_14

    iget-object p3, p3, Lyads/l42;->a:Lyads/as2;

    if-eqz p3, :cond_14

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_11

    :cond_14
    move-object p3, p1

    :goto_11
    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/y72;->e:Lyads/o92;

    if-eqz p3, :cond_15

    iget-object p3, p3, Lyads/o92;->b:Lyads/l42;

    if-eqz p3, :cond_15

    iget-object p3, p3, Lyads/l42;->d:Lyads/as2;

    if-eqz p3, :cond_15

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_12

    :cond_15
    move-object p3, p1

    :goto_12
    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    invoke-static {}, Lyads/kw5;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p2, p2, Lyads/y72;->k:Lyads/as2;

    if-eqz p2, :cond_16

    invoke-virtual {p2, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p2

    goto :goto_13

    :cond_16
    move-object p2, p1

    :goto_13
    iget-object p3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p3, p2}, Lyads/hs2;->a(Lyads/tp0;)V

    goto/16 :goto_0

    :cond_17
    iget-object p0, v0, Lyads/r72;->b:Ljava/util/List;

    if-eqz p0, :cond_19

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/x72;

    iget-object p3, p2, Lyads/x72;->f:Lyads/as2;

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    iget-object v0, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v0, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/x72;->i:Lyads/as2;

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    iget-object v0, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v0, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/x72;->g:Lyads/as2;

    if-eqz p3, :cond_18

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_15

    :cond_18
    move-object p3, p1

    :goto_15
    iget-object v0, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v0, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p2, Lyads/x72;->j:Lyads/af1;

    iget-object p3, p3, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {p3, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    iget-object v0, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v0, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p2, p2, Lyads/x72;->j:Lyads/af1;

    iget-object p2, p2, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {p2, v1, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p2

    iget-object p3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p3, p2}, Lyads/hs2;->a(Lyads/tp0;)V

    goto :goto_14

    :cond_19
    :goto_16
    return-void
.end method

.method public final d(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V
    .locals 1

    .line 668
    iget-object v0, p2, Lyads/b82;->V:Lyads/as2;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lyads/b82;->V:Lyads/as2;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_2

    .line 669
    :cond_1
    iget-object p3, p2, Lyads/b82;->V:Lyads/as2;

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/bp1;

    .line 670
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    goto :goto_1

    .line 671
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p3

    or-int/lit8 p3, p3, 0x10

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_1

    .line 672
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p3

    and-int/lit8 p3, p3, -0x11

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 673
    :goto_1
    iget-object p2, p2, Lyads/b82;->V:Lyads/as2;

    .line 674
    instance-of p3, p2, Lyads/xr2;

    if-eqz p3, :cond_4

    :goto_2
    return-void

    .line 675
    :cond_4
    new-instance p3, Luv9;

    invoke-direct {p3, p0, p1}, Luv9;-><init>(Lyads/g82;Lyads/zo1;)V

    invoke-virtual {p2, p4, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 676
    iget-object p1, p1, Lyads/zo1;->r:Lyads/xh1;

    .line 677
    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final d(Lyads/zo1;Lyads/tt;Lyads/b82;)V
    .locals 8

    iget-object v0, p2, Lyads/tt;->b:Lyads/fs2;

    invoke-virtual {p0, p1, p2, p3}, Lyads/g82;->b(Lyads/zo1;Lyads/tt;Lyads/b82;)V

    iget-object v1, p3, Lyads/b82;->W:Lyads/as2;

    invoke-virtual {v1, v0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lyads/g82;->a(Lyads/zo1;Ljava/lang/String;)V

    iget-object v1, p3, Lyads/b82;->W:Lyads/as2;

    new-instance v2, Lys9;

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lys9;-><init>(Lyads/oh2;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v0, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    iget-object p1, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    new-instance p0, Lqv9;

    invoke-direct {p0, v3, v4, v5, v6}, Lqv9;-><init>(Lyads/g82;Lyads/zo1;Lyads/tt;Lyads/b82;)V

    iget-object p1, v6, Lyads/b82;->v:Lyads/as2;

    invoke-virtual {p1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    iget-object p2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p2, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p1, v6, Lyads/b82;->w:Lyads/as2;

    invoke-virtual {p1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    iget-object p2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p2, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p1, v6, Lyads/b82;->t:Lyads/as2;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iget-object p3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p3, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p1, v6, Lyads/b82;->I:Lyads/as2;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    iget-object p3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p3, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p1, v6, Lyads/b82;->Q:Ljava/util/List;

    if-eqz p1, :cond_18

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/y72;

    iget-object v1, p3, Lyads/y72;->q:Lyads/as2;

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->f:Lyads/as2;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, p2

    :goto_3
    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->b:Lyads/as2;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, p2

    :goto_4
    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->d:Lyads/as2;

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->i:Lyads/as2;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, p2

    :goto_5
    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->j:Lyads/as2;

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->g:Lyads/as2;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_6

    :cond_6
    move-object v1, p2

    :goto_6
    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->l:Lyads/as2;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_7

    :cond_7
    move-object v1, p2

    :goto_7
    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->m:Lyads/as2;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_8

    :cond_8
    move-object v1, p2

    :goto_8
    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->h:Lyads/as2;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_9

    :cond_9
    move-object v1, p2

    :goto_9
    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->n:Lyads/as2;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_a

    :cond_a
    move-object v1, p2

    :goto_a
    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->o:Lyads/as2;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_b

    :cond_b
    move-object v1, p2

    :goto_b
    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->r:Lyads/as2;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_c

    :cond_c
    move-object v1, p2

    :goto_c
    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->s:Lyads/as2;

    if-eqz v1, :cond_d

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_d

    :cond_d
    move-object v1, p2

    :goto_d
    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->u:Lyads/as2;

    if-eqz v1, :cond_e

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_e

    :cond_e
    move-object v1, p2

    :goto_e
    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->v:Lyads/as2;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_f

    :cond_f
    move-object v1, p2

    :goto_f
    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->c:Lyads/h92;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lyads/h92;->a()Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    :cond_10
    move-object v1, p2

    :goto_10
    instance-of v2, v1, Lyads/t22;

    if-eqz v2, :cond_11

    check-cast v1, Lyads/t22;

    iget-object v1, v1, Lyads/t22;->a:Lyads/as2;

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_11
    iget-object v1, p3, Lyads/y72;->p:Lyads/aa2;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lyads/aa2;->a()Ljava/lang/Object;

    move-result-object v1

    goto :goto_11

    :cond_12
    move-object v1, p2

    :goto_11
    instance-of v2, v1, Lyads/qa2;

    if-eqz v2, :cond_13

    check-cast v1, Lyads/qa2;

    iget-object v2, v1, Lyads/qa2;->b:Lyads/as2;

    invoke-virtual {v2, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v2

    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, v1, Lyads/qa2;->a:Lyads/as2;

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    goto :goto_12

    :cond_13
    instance-of v2, v1, Lyads/ka2;

    if-eqz v2, :cond_14

    check-cast v1, Lyads/ka2;

    iget-object v2, v1, Lyads/ka2;->d:Lyads/as2;

    invoke-virtual {v2, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v2

    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v2, v1, Lyads/ka2;->a:Lyads/as2;

    invoke-virtual {v2, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v2

    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v2, v1, Lyads/ka2;->b:Lyads/as2;

    invoke-virtual {v2, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v2

    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v2, v1, Lyads/ka2;->c:Lyads/as2;

    invoke-virtual {v2, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v2

    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v2, v1, Lyads/ka2;->e:Lyads/af1;

    iget-object v2, v2, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {v2, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v2

    iget-object v3, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v3, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, v1, Lyads/ka2;->e:Lyads/af1;

    iget-object v1, v1, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_14
    :goto_12
    iget-object v1, p3, Lyads/y72;->e:Lyads/o92;

    if-eqz v1, :cond_15

    iget-object v1, v1, Lyads/o92;->b:Lyads/l42;

    if-eqz v1, :cond_15

    iget-object v1, v1, Lyads/l42;->a:Lyads/as2;

    if-eqz v1, :cond_15

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_13

    :cond_15
    move-object v1, p2

    :goto_13
    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/y72;->e:Lyads/o92;

    if-eqz v1, :cond_16

    iget-object v1, v1, Lyads/o92;->b:Lyads/l42;

    if-eqz v1, :cond_16

    iget-object v1, v1, Lyads/l42;->d:Lyads/as2;

    if-eqz v1, :cond_16

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_14

    :cond_16
    move-object v1, p2

    :goto_14
    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    invoke-static {}, Lyads/kw5;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p3, p3, Lyads/y72;->k:Lyads/as2;

    if-eqz p3, :cond_17

    invoke-virtual {p3, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    goto :goto_15

    :cond_17
    move-object p3, p2

    :goto_15
    iget-object v1, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v1, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    goto/16 :goto_2

    :cond_18
    iget-object p1, v6, Lyads/b82;->F:Ljava/util/List;

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/x72;

    iget-object v1, p3, Lyads/x72;->f:Lyads/as2;

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/x72;->d:Lyads/as2;

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/x72;->i:Lyads/as2;

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/x72;->b:Lyads/as2;

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/x72;->g:Lyads/as2;

    if-eqz v1, :cond_19

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    goto :goto_17

    :cond_19
    move-object v1, p2

    :goto_17
    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, p3, Lyads/x72;->j:Lyads/af1;

    iget-object v1, v1, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {v1, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    iget-object v2, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p3, p3, Lyads/x72;->j:Lyads/af1;

    iget-object p3, p3, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {p3, v0, p0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    iget-object v1, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {v1, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    goto :goto_16

    :cond_1a
    return-void
.end method

.method public final e(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V
    .locals 3

    iget-object v0, p2, Lyads/b82;->X:Lyads/as2;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p3, Lyads/b82;->X:Lyads/as2;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lyads/b82;->Y:Lyads/as2;

    if-eqz p3, :cond_1

    iget-object v1, p3, Lyads/b82;->Y:Lyads/as2;

    :cond_1
    invoke-static {v0, v1}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    iget-object p3, p2, Lyads/b82;->X:Lyads/as2;

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/f11;

    iget-object v0, p2, Lyads/b82;->Y:Lyads/as2;

    invoke-virtual {v0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/h11;

    invoke-static {p3, v0}, Lyads/jf2;->a(Lyads/f11;Lyads/h11;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    if-eq p3, v1, :cond_3

    const/4 v1, 0x5

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    :cond_4
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p3, p2, Lyads/b82;->X:Lyads/as2;

    instance-of v0, p3, Lyads/xr2;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lyads/b82;->Y:Lyads/as2;

    instance-of v0, v0, Lyads/xr2;

    if-eqz v0, :cond_5

    :goto_2
    return-void

    :cond_5
    new-instance v0, Lbt9;

    invoke-direct {v0, p0, p1, p2, p4}, Lbt9;-><init>(Lyads/g82;Lyads/zo1;Lyads/b82;Lyads/fs2;)V

    invoke-virtual {p3, p4, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    iget-object p3, p1, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p3, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p0, p2, Lyads/b82;->Y:Lyads/as2;

    invoke-virtual {p0, p4, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    iget-object p1, p1, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final f(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V
    .locals 8

    iget-object v0, p2, Lyads/b82;->Z:Lyads/as2;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p3, Lyads/b82;->Z:Lyads/as2;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lyads/b82;->s:Lyads/as2;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lyads/b82;->s:Lyads/as2;

    goto :goto_1

    :cond_1
    move-object p3, v1

    :goto_1
    invoke-static {v0, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_4

    :cond_2
    iget-object p3, p2, Lyads/b82;->Z:Lyads/as2;

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    iget-object v0, p2, Lyads/b82;->s:Lyads/as2;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    new-array v3, v3, [I

    const v4, 0x101009c

    filled-new-array {v4}, [I

    move-result-object v4

    filled-new-array {v4, v3}, [[I

    move-result-object v3

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_4
    move v0, p3

    :goto_3
    filled-new-array {v0, p3}, [I

    move-result-object p3

    invoke-direct {v2, v3, p3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p3, p2, Lyads/b82;->Z:Lyads/as2;

    instance-of p3, p3, Lyads/xr2;

    if-eqz p3, :cond_5

    iget-object p3, p2, Lyads/b82;->s:Lyads/as2;

    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v2, Lvv9;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lvv9;-><init>(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, v5, Lyads/b82;->Z:Lyads/as2;

    invoke-virtual {p0, v6, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    iget-object p1, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p0, v5, Lyads/b82;->s:Lyads/as2;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v6, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    :cond_6
    iget-object p0, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final g(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V
    .locals 9

    iget-object v0, p2, Lyads/b82;->b0:Lyads/xz1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lyads/xz1;->a:Lyads/as2;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p3, :cond_1

    iget-object v2, p3, Lyads/b82;->b0:Lyads/xz1;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lyads/xz1;->a:Lyads/as2;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v0, v2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, Lyads/b82;->b0:Lyads/xz1;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lyads/xz1;->b:Lyads/as2;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz p3, :cond_3

    iget-object v2, p3, Lyads/b82;->b0:Lyads/xz1;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lyads/xz1;->b:Lyads/as2;

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    invoke-static {v0, v2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, Lyads/b82;->b0:Lyads/xz1;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lyads/xz1;->c:Lyads/as2;

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    if-eqz p3, :cond_5

    iget-object v2, p3, Lyads/b82;->b0:Lyads/xz1;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lyads/xz1;->c:Lyads/as2;

    goto :goto_5

    :cond_5
    move-object v2, v1

    :goto_5
    invoke-static {v0, v2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, Lyads/b82;->b0:Lyads/xz1;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lyads/xz1;->d:Lyads/nv1;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lyads/nv1;->a:Lyads/ac1;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lyads/ac1;->b:Lyads/as2;

    goto :goto_6

    :cond_6
    move-object v0, v1

    :goto_6
    if-eqz p3, :cond_7

    iget-object v2, p3, Lyads/b82;->b0:Lyads/xz1;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lyads/xz1;->d:Lyads/nv1;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lyads/nv1;->a:Lyads/ac1;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lyads/ac1;->b:Lyads/as2;

    goto :goto_7

    :cond_7
    move-object v2, v1

    :goto_7
    invoke-static {v0, v2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, Lyads/b82;->b0:Lyads/xz1;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lyads/xz1;->d:Lyads/nv1;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lyads/nv1;->a:Lyads/ac1;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lyads/ac1;->a:Lyads/as2;

    goto :goto_8

    :cond_8
    move-object v0, v1

    :goto_8
    if-eqz p3, :cond_9

    iget-object v2, p3, Lyads/b82;->b0:Lyads/xz1;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lyads/xz1;->d:Lyads/nv1;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lyads/nv1;->a:Lyads/ac1;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lyads/ac1;->a:Lyads/as2;

    goto :goto_9

    :cond_9
    move-object v2, v1

    :goto_9
    invoke-static {v0, v2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, Lyads/b82;->b0:Lyads/xz1;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lyads/xz1;->d:Lyads/nv1;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lyads/nv1;->b:Lyads/ac1;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lyads/ac1;->b:Lyads/as2;

    goto :goto_a

    :cond_a
    move-object v0, v1

    :goto_a
    if-eqz p3, :cond_b

    iget-object v2, p3, Lyads/b82;->b0:Lyads/xz1;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lyads/xz1;->d:Lyads/nv1;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lyads/nv1;->b:Lyads/ac1;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lyads/ac1;->b:Lyads/as2;

    goto :goto_b

    :cond_b
    move-object v2, v1

    :goto_b
    invoke-static {v0, v2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, Lyads/b82;->b0:Lyads/xz1;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lyads/xz1;->d:Lyads/nv1;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lyads/nv1;->b:Lyads/ac1;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lyads/ac1;->a:Lyads/as2;

    goto :goto_c

    :cond_c
    move-object v0, v1

    :goto_c
    if-eqz p3, :cond_d

    iget-object p3, p3, Lyads/b82;->b0:Lyads/xz1;

    if-eqz p3, :cond_d

    iget-object p3, p3, Lyads/xz1;->d:Lyads/nv1;

    if-eqz p3, :cond_d

    iget-object p3, p3, Lyads/nv1;->b:Lyads/ac1;

    if-eqz p3, :cond_d

    iget-object p3, p3, Lyads/ac1;->a:Lyads/as2;

    goto :goto_d

    :cond_d
    move-object p3, v1

    :goto_d
    invoke-static {v0, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_e

    goto/16 :goto_16

    :cond_e
    iget-object v5, p2, Lyads/b82;->b0:Lyads/xz1;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    if-eqz v5, :cond_f

    iget-object p3, p2, Lyads/b82;->Z:Lyads/as2;

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-static {v5, p4, v7, p3}, Lyads/g82;->a(Lyads/xz1;Lyads/fs2;Landroid/util/DisplayMetrics;I)Lyads/yj5;

    move-result-object p3

    goto :goto_e

    :cond_f
    move-object p3, v1

    :goto_e
    invoke-static {p1, p3}, Lyads/g82;->a(Lyads/zo1;Lyads/yj5;)V

    iget-object p3, p2, Lyads/b82;->b0:Lyads/xz1;

    if-eqz p3, :cond_10

    iget-object p3, p3, Lyads/xz1;->a:Lyads/as2;

    goto :goto_f

    :cond_10
    move-object p3, v1

    :goto_f
    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_17

    iget-object p3, p2, Lyads/b82;->b0:Lyads/xz1;

    if-eqz p3, :cond_11

    iget-object p3, p3, Lyads/xz1;->b:Lyads/as2;

    goto :goto_10

    :cond_11
    move-object p3, v1

    :goto_10
    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_17

    iget-object p3, p2, Lyads/b82;->b0:Lyads/xz1;

    if-eqz p3, :cond_12

    iget-object p3, p3, Lyads/xz1;->c:Lyads/as2;

    goto :goto_11

    :cond_12
    move-object p3, v1

    :goto_11
    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_17

    iget-object p3, p2, Lyads/b82;->b0:Lyads/xz1;

    if-eqz p3, :cond_13

    iget-object p3, p3, Lyads/xz1;->d:Lyads/nv1;

    if-eqz p3, :cond_13

    iget-object p3, p3, Lyads/nv1;->a:Lyads/ac1;

    if-eqz p3, :cond_13

    iget-object p3, p3, Lyads/ac1;->b:Lyads/as2;

    goto :goto_12

    :cond_13
    move-object p3, v1

    :goto_12
    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_17

    iget-object p3, p2, Lyads/b82;->b0:Lyads/xz1;

    if-eqz p3, :cond_14

    iget-object p3, p3, Lyads/xz1;->d:Lyads/nv1;

    if-eqz p3, :cond_14

    iget-object p3, p3, Lyads/nv1;->a:Lyads/ac1;

    if-eqz p3, :cond_14

    iget-object p3, p3, Lyads/ac1;->a:Lyads/as2;

    goto :goto_13

    :cond_14
    move-object p3, v1

    :goto_13
    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_17

    iget-object p3, p2, Lyads/b82;->b0:Lyads/xz1;

    if-eqz p3, :cond_15

    iget-object p3, p3, Lyads/xz1;->d:Lyads/nv1;

    if-eqz p3, :cond_15

    iget-object p3, p3, Lyads/nv1;->b:Lyads/ac1;

    if-eqz p3, :cond_15

    iget-object p3, p3, Lyads/ac1;->b:Lyads/as2;

    goto :goto_14

    :cond_15
    move-object p3, v1

    :goto_14
    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_17

    iget-object p3, p2, Lyads/b82;->b0:Lyads/xz1;

    if-eqz p3, :cond_16

    iget-object p3, p3, Lyads/xz1;->d:Lyads/nv1;

    if-eqz p3, :cond_16

    iget-object p3, p3, Lyads/nv1;->b:Lyads/ac1;

    if-eqz p3, :cond_16

    iget-object p3, p3, Lyads/ac1;->a:Lyads/as2;

    goto :goto_15

    :cond_16
    move-object p3, v1

    :goto_15
    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_17

    :goto_16
    return-void

    :cond_17
    new-instance v2, Lnv9;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p2

    move-object v6, p4

    invoke-direct/range {v2 .. v8}, Lnv9;-><init>(Lyads/g82;Lyads/zo1;Lyads/xz1;Lyads/fs2;Landroid/util/DisplayMetrics;Lyads/b82;)V

    if-eqz v5, :cond_18

    iget-object p0, v5, Lyads/xz1;->a:Lyads/as2;

    if-eqz p0, :cond_18

    invoke-virtual {p0, v6, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    goto :goto_17

    :cond_18
    move-object p0, v1

    :goto_17
    iget-object p1, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    if-eqz v5, :cond_19

    iget-object p0, v5, Lyads/xz1;->c:Lyads/as2;

    if-eqz p0, :cond_19

    invoke-virtual {p0, v6, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    goto :goto_18

    :cond_19
    move-object p0, v1

    :goto_18
    iget-object p1, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    if-eqz v5, :cond_1a

    iget-object p0, v5, Lyads/xz1;->b:Lyads/as2;

    if-eqz p0, :cond_1a

    invoke-virtual {p0, v6, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    goto :goto_19

    :cond_1a
    move-object p0, v1

    :goto_19
    iget-object p1, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    if-eqz v5, :cond_1b

    iget-object p0, v5, Lyads/xz1;->d:Lyads/nv1;

    if-eqz p0, :cond_1b

    iget-object p0, p0, Lyads/nv1;->a:Lyads/ac1;

    if-eqz p0, :cond_1b

    iget-object p0, p0, Lyads/ac1;->b:Lyads/as2;

    if-eqz p0, :cond_1b

    invoke-virtual {p0, v6, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    goto :goto_1a

    :cond_1b
    move-object p0, v1

    :goto_1a
    iget-object p1, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    if-eqz v5, :cond_1c

    iget-object p0, v5, Lyads/xz1;->d:Lyads/nv1;

    if-eqz p0, :cond_1c

    iget-object p0, p0, Lyads/nv1;->a:Lyads/ac1;

    if-eqz p0, :cond_1c

    iget-object p0, p0, Lyads/ac1;->a:Lyads/as2;

    if-eqz p0, :cond_1c

    invoke-virtual {p0, v6, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    goto :goto_1b

    :cond_1c
    move-object p0, v1

    :goto_1b
    iget-object p1, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    if-eqz v5, :cond_1d

    iget-object p0, v5, Lyads/xz1;->d:Lyads/nv1;

    if-eqz p0, :cond_1d

    iget-object p0, p0, Lyads/nv1;->b:Lyads/ac1;

    if-eqz p0, :cond_1d

    iget-object p0, p0, Lyads/ac1;->b:Lyads/as2;

    if-eqz p0, :cond_1d

    invoke-virtual {p0, v6, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    goto :goto_1c

    :cond_1d
    move-object p0, v1

    :goto_1c
    iget-object p1, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    if-eqz v5, :cond_1e

    iget-object p0, v5, Lyads/xz1;->d:Lyads/nv1;

    if-eqz p0, :cond_1e

    iget-object p0, p0, Lyads/nv1;->b:Lyads/ac1;

    if-eqz p0, :cond_1e

    iget-object p0, p0, Lyads/ac1;->a:Lyads/as2;

    if-eqz p0, :cond_1e

    invoke-virtual {p0, v6, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    :cond_1e
    iget-object p0, v4, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final h(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V
    .locals 1

    iget-object v0, p2, Lyads/b82;->c0:Lyads/as2;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lyads/b82;->c0:Lyads/as2;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p2, Lyads/b82;->c0:Lyads/as2;

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lyads/tt5;->setTightenWidth(Z)V

    iget-object p2, p2, Lyads/b82;->c0:Lyads/as2;

    instance-of p3, p2, Lyads/xr2;

    if-eqz p3, :cond_2

    :goto_1
    return-void

    :cond_2
    new-instance p3, Lcv8;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p0, p1}, Lcv8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p4, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    iget-object p1, p1, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final i(Lyads/zo1;Lyads/b82;Lyads/b82;Lyads/fs2;)V
    .locals 1

    iget-object v0, p2, Lyads/b82;->k0:Lyads/as2;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lyads/b82;->k0:Lyads/as2;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_2

    :cond_1
    iget-object p3, p2, Lyads/b82;->k0:Lyads/as2;

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/bp1;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    if-eq p3, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p3

    or-int/lit8 p3, p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p3

    and-int/lit8 p3, p3, -0x9

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setPaintFlags(I)V

    :goto_1
    iget-object p2, p2, Lyads/b82;->k0:Lyads/as2;

    instance-of p3, p2, Lyads/xr2;

    if-eqz p3, :cond_4

    :goto_2
    return-void

    :cond_4
    new-instance p3, Lml1;

    invoke-direct {p3, v0, p0, p1}, Lml1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p4, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    iget-object p1, p1, Lyads/zo1;->r:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.class public interface abstract Lyads/tg1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IIIIIZ)I
    .locals 3

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    if-gez p0, :cond_0

    move p0, p2

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    const v1, 0x7fffffff

    if-ltz p3, :cond_1

    if-gt p3, v1, :cond_1

    .line 389
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_1
    const/4 v2, -0x1

    if-ne p3, v2, :cond_3

    if-eqz p5, :cond_2

    if-nez p1, :cond_2

    .line 390
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 391
    :cond_2
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_3
    const/4 p5, -0x2

    const/high16 v2, -0x80000000

    if-ne p3, p5, :cond_5

    if-ne p4, v1, :cond_4

    .line 392
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 393
    :cond_4
    invoke-static {p4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_5
    const/4 p5, -0x3

    if-ne p3, p5, :cond_8

    if-eq p1, v2, :cond_7

    if-eq p1, v0, :cond_7

    if-ne p4, v1, :cond_6

    .line 394
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 395
    :cond_6
    invoke-static {p4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 396
    :cond_7
    invoke-static {p0, p4}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 397
    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 398
    :cond_8
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private a(Landroid/view/View;)I
    .locals 3

    .line 356
    invoke-interface {p0}, Lyads/tg1;->j()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 357
    invoke-static {p1}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 358
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 359
    instance-of v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    :cond_1
    sub-int/2addr v0, v1

    .line 360
    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    :goto_1
    sub-int/2addr v0, p0

    return v0

    .line 361
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_4
    sub-int/2addr v0, v1

    .line 363
    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    goto :goto_1
.end method

.method public static synthetic a(Lyads/tg1;Landroid/view/View;)I
    .locals 0

    .line 355
    invoke-direct {p0, p1}, Lyads/tg1;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract a(I)Lyads/cn1;
.end method

.method public abstract a()Lyads/og1;
.end method

.method public abstract a(IILyads/id5;)V
.end method

.method public abstract a(ILyads/id5;)V
.end method

.method public abstract a(Landroid/view/View;IIII)V
.end method

.method public a(Landroid/view/View;IIIIZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v0}, Lyads/tg1;->j()I

    move-result v2

    invoke-interface {v0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-interface {v0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-interface {v0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-eqz v6, :cond_1a

    if-eqz v3, :cond_1a

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_9

    :cond_1
    invoke-interface {v0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-eqz v6, :cond_1a

    if-eqz v4, :cond_1a

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_9

    :cond_2
    :goto_0
    sget v6, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_gallery_item_index:I

    invoke-virtual {v1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v0, v6}, Lyads/tg1;->a(I)Lyads/cn1;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v7

    :goto_1
    if-eqz v6, :cond_4

    iget-object v8, v6, Lyads/cn1;->a:Lyads/br0;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lyads/br0;->a()Lyads/p41;

    move-result-object v8

    goto :goto_2

    :cond_4
    move-object v8, v7

    :goto_2
    if-eqz v6, :cond_5

    iget-object v6, v6, Lyads/cn1;->b:Lyads/fs2;

    if-nez v6, :cond_6

    :cond_5
    invoke-interface {v0}, Lyads/tg1;->c()Lyads/tt;

    move-result-object v6

    iget-object v6, v6, Lyads/tt;->b:Lyads/fs2;

    :cond_6
    invoke-interface {v0}, Lyads/tg1;->a()Lyads/og1;

    move-result-object v9

    iget-object v9, v9, Lyads/og1;->j:Lyads/as2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-ne v2, v5, :cond_10

    if-eqz v8, :cond_7

    invoke-interface {v8}, Lyads/p41;->f()Lyads/as2;

    move-result-object v13

    goto :goto_3

    :cond_7
    move-object v13, v7

    :goto_3
    if-eqz v13, :cond_d

    invoke-virtual {v13, v6}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_d

    check-cast v13, Lyads/f11;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    if-eqz v13, :cond_c

    if-eq v13, v5, :cond_b

    if-eq v13, v12, :cond_a

    if-eq v13, v10, :cond_9

    const/4 v14, 0x4

    if-ne v13, v14, :cond_8

    sget-object v13, Lyads/hg1;->g:Lyads/hg1;

    goto :goto_4

    :cond_8
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_9
    sget-object v13, Lyads/hg1;->e:Lyads/hg1;

    goto :goto_4

    :cond_a
    sget-object v13, Lyads/hg1;->g:Lyads/hg1;

    goto :goto_4

    :cond_b
    sget-object v13, Lyads/hg1;->f:Lyads/hg1;

    goto :goto_4

    :cond_c
    sget-object v13, Lyads/hg1;->e:Lyads/hg1;

    goto :goto_4

    :cond_d
    invoke-virtual {v9, v6}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lyads/hg1;

    :goto_4
    sub-int v14, p4, p2

    sub-int/2addr v3, v14

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    if-eqz v13, :cond_10

    if-eq v13, v5, :cond_f

    if-ne v13, v12, :cond_e

    goto :goto_5

    :cond_e
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_f
    div-int/lit8 v3, v3, 0x2

    goto :goto_5

    :cond_10
    move v3, v11

    :goto_5
    if-nez v2, :cond_19

    if-eqz v8, :cond_11

    invoke-interface {v8}, Lyads/p41;->q()Lyads/as2;

    move-result-object v7

    :cond_11
    if-eqz v7, :cond_16

    invoke-virtual {v7, v6}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_16

    check-cast v2, Lyads/h11;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_15

    if-eq v2, v5, :cond_14

    if-eq v2, v12, :cond_13

    if-ne v2, v10, :cond_12

    goto :goto_6

    :cond_12
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_13
    sget-object v2, Lyads/hg1;->g:Lyads/hg1;

    goto :goto_7

    :cond_14
    sget-object v2, Lyads/hg1;->f:Lyads/hg1;

    goto :goto_7

    :cond_15
    :goto_6
    sget-object v2, Lyads/hg1;->e:Lyads/hg1;

    goto :goto_7

    :cond_16
    invoke-virtual {v9, v6}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/hg1;

    :goto_7
    sub-int v6, p5, p3

    sub-int/2addr v4, v6

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_19

    if-eq v2, v5, :cond_18

    if-ne v2, v12, :cond_17

    goto :goto_8

    :cond_17
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_18
    div-int/lit8 v4, v4, 0x2

    goto :goto_8

    :cond_19
    move v4, v11

    :goto_8
    add-int v2, p2, v3

    move v5, v3

    add-int v3, p3, v4

    add-int v5, p4, v5

    add-int v4, p5, v4

    move v15, v5

    move v5, v4

    move v4, v15

    invoke-interface/range {v0 .. v5}, Lyads/tg1;->a(Landroid/view/View;IIII)V

    invoke-interface {v0, v1, v11}, Lyads/tg1;->a(Landroid/view/View;Z)V

    if-nez p6, :cond_1b

    invoke-interface {v0}, Lyads/tg1;->d()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1a
    :goto_9
    invoke-interface/range {p0 .. p5}, Lyads/tg1;->a(Landroid/view/View;IIII)V

    if-nez p6, :cond_1b

    invoke-interface {v0}, Lyads/tg1;->d()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 4

    .line 364
    invoke-interface {p0, p1}, Lyads/tg1;->c(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 366
    :cond_2
    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object p1

    invoke-static {p1}, Ljp7;->l(Lzo7;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_3

    goto :goto_1

    .line 367
    :cond_3
    invoke-interface {p0}, Lyads/tg1;->c()Lyads/tt;

    move-result-object v1

    .line 368
    iget-object v1, v1, Lyads/tt;->a:Lyads/vq0;

    if-eqz p2, :cond_7

    .line 369
    iget-object p0, v1, Lyads/vq0;->w:Ljava/util/WeakHashMap;

    .line 370
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/br0;

    if-nez p0, :cond_4

    goto :goto_1

    .line 371
    :cond_4
    instance-of p2, p1, Lyads/wh1;

    if-eqz p2, :cond_5

    move-object v2, p1

    check-cast v2, Lyads/wh1;

    :cond_5
    if-eqz v2, :cond_8

    invoke-interface {v2}, Lyads/wh1;->c()Lyads/tt;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_1

    .line 372
    :cond_6
    iget-object v0, v1, Lyads/vq0;->n:Lyads/nq0;

    .line 373
    iget-object v0, v0, Lyads/nq0;->I:Lcl4;

    .line 374
    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/bj2;

    .line 375
    invoke-virtual {v0, p2, p1, p0}, Lyads/bj2;->a(Lyads/tt;Landroid/view/View;Lyads/br0;)V

    .line 376
    iget-object p0, v1, Lyads/vq0;->w:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/br0;

    return-void

    .line 377
    :cond_7
    invoke-interface {p0, v0}, Lyads/tg1;->a(I)Lyads/cn1;

    move-result-object p2

    if-nez p2, :cond_9

    :cond_8
    :goto_1
    return-void

    .line 378
    :cond_9
    iget-object v0, v1, Lyads/vq0;->n:Lyads/nq0;

    .line 379
    iget-object v0, v0, Lyads/nq0;->I:Lcl4;

    .line 380
    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/bj2;

    .line 381
    invoke-interface {p0}, Lyads/tg1;->c()Lyads/tt;

    move-result-object p0

    .line 382
    iget-object v2, p2, Lyads/cn1;->b:Lyads/fs2;

    .line 383
    iget-object v3, p0, Lyads/tt;->b:Lyads/fs2;

    .line 384
    invoke-static {v3, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    new-instance v3, Lyads/tt;

    iget-object p0, p0, Lyads/tt;->a:Lyads/vq0;

    invoke-direct {v3, p0, v2}, Lyads/tt;-><init>(Lyads/vq0;Lyads/fs2;)V

    move-object p0, v3

    .line 385
    :goto_2
    iget-object v2, p2, Lyads/cn1;->a:Lyads/br0;

    .line 386
    invoke-virtual {v0, p0, p1, v2}, Lyads/bj2;->b(Lyads/tt;Landroid/view/View;Lyads/br0;)V

    .line 387
    iget-object p0, p2, Lyads/cn1;->a:Lyads/br0;

    .line 388
    iget-object p2, v1, Lyads/vq0;->w:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 0

    .line 277
    invoke-direct {p0, p1}, Lyads/tg1;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public abstract b()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public b(IILyads/id5;)V
    .locals 5

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_b

    if-nez p1, :cond_1

    invoke-interface {p0}, Lyads/tg1;->j()I

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-static {p1}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-int p2, p2

    :goto_0
    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void

    :cond_1
    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    const/4 v2, 0x1

    if-nez v0, :cond_6

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_4
    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_6

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_a

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    filled-new-array {p1, p1}, [I

    move-result-object p2

    filled-new-array {p1, p1}, [I

    move-result-object p3

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, p2, p1

    aget p1, p3, p1

    sub-int/2addr v1, p1

    aget p1, p2, v2

    aget p2, p3, v2

    sub-int/2addr p1, p2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p1

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void

    :cond_8
    invoke-direct {p0, v0}, Lyads/tg1;->a(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, p2

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-static {p2}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_9

    neg-int p1, p1

    :cond_9
    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_a
    :goto_3
    return-void

    :cond_b
    new-instance v1, Lyads/sg1;

    invoke-direct {v1, p1, p0, p2, p3}, Lyads/sg1;-><init>(ILyads/tg1;ILyads/id5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract c()Lyads/tt;
.end method

.method public abstract d()Ljava/util/HashSet;
.end method

.method public abstract e()I
.end method

.method public abstract f()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()I
.end method

.method public abstract k()I
.end method

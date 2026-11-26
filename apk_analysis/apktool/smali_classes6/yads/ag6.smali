.class public abstract Lyads/ag6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/View;Landroid/view/ViewGroup;Lyads/gr4;[I)Landroid/view/View;
    .locals 5

    sget v0, Landroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {v0, p0}, Lyads/ag6;->c(Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v3}, Landroid/view/View;->layout(IIII)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, p3, v4

    aget v4, v1, v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 v3, 0x1

    aget p3, p3, v3

    aget v1, v1, v3

    sub-int/2addr p3, v1

    invoke-virtual {v0, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    sget p3, Landroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual {p0, p3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    new-instance p3, Lyads/yf6;

    invoke-direct {p3, p0, p1, v0}, Lyads/yf6;-><init>(Landroid/view/View;Landroid/view/ViewGroupOverlay;Landroid/widget/ImageView;)V

    invoke-virtual {p2, p3}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    new-instance p1, Lmn9;

    invoke-direct {p1, v0, p0}, Lmn9;-><init>(Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-static {p0, p1}, Lyads/ag6;->a(Landroid/view/View;Lll3;)V

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0, v2}, Lyads/ag6;->a(Landroid/view/View;Lll3;)V

    return-object v0

    :cond_2
    new-instance p1, Lyads/xf6;

    invoke-direct {p1, v0, p0}, Lyads/xf6;-><init>(Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object v0
.end method

.method public static final a(Landroid/widget/ImageView;Landroid/view/View;)Lj59;
    .locals 0

    .line 142
    invoke-static {p0, p1}, Lyads/ag6;->c(Landroid/widget/ImageView;Landroid/view/View;)V

    .line 143
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Landroid/view/View;Lll3;)V
    .locals 1

    .line 144
    instance-of v0, p0, Lyads/yi1;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/yi1;

    invoke-virtual {p0, p1}, Lyads/iu3;->setImageChangeCallback(Lll3;)V

    return-void

    .line 145
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 147
    invoke-static {v0, p1}, Lyads/ag6;->a(Landroid/view/View;Lll3;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final b(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    neg-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    instance-of v0, p1, Lyads/s51;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lyads/s51;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lyads/s51;->i()Lyads/l51;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getClipToOutline()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static final c(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Lyads/s51;

    if-nez v0, :cond_3

    instance-of v0, p1, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_3
    invoke-static {p1}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0, p1}, Lyads/ag6;->b(Landroid/widget/ImageView;Landroid/view/View;)V

    return-void

    :cond_4
    invoke-static {p1}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0, p1}, Lyads/ag6;->b(Landroid/widget/ImageView;Landroid/view/View;)V

    return-void

    :cond_5
    new-instance v0, Lyads/zf6;

    invoke-direct {v0, p0, p1}, Lyads/zf6;-><init>(Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

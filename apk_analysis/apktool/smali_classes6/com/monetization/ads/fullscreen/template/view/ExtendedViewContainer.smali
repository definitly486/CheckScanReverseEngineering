.class public final Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final a:Lyads/c90;

.field private final b:Lyads/wx3;

.field private c:Lyads/wx3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 116
    invoke-direct/range {v0 .. v5}, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 114
    invoke-direct/range {v0 .. v5}, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    sget-object v1, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalExtendedContainer:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalExtendedContainer_monetization_internal_corner_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    sget p3, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalExtendedContainer_monetization_internal_top_left_corner_radius:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    sget v1, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalExtendedContainer_monetization_internal_top_right_corner_radius:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sget v2, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalExtendedContainer_monetization_internal_bottom_right_corner_radius:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v3, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalExtendedContainer_monetization_internal_bottom_left_corner_radius:I

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    sget v3, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalExtendedContainer_monetization_internal_max_screen_width:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    sget v5, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalExtendedContainer_monetization_internal_max_screen_height:I

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    new-instance v5, Lyads/sx3;

    invoke-direct {v5, p0, v3}, Lyads/sx3;-><init>(Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;F)V

    new-instance v3, Lyads/rx3;

    invoke-direct {v3, p0, v4}, Lyads/rx3;-><init>(Landroid/view/ViewGroup;F)V

    new-instance v4, Lyads/e50;

    const/4 v6, 0x2

    new-array v6, v6, [Lyads/wx3;

    aput-object v5, v6, v0

    const/4 v5, 0x1

    aput-object v3, v6, v5

    invoke-direct {v4, v6}, Lyads/e50;-><init>([Lyads/wx3;)V

    iput-object v4, p0, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->b:Lyads/wx3;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    new-instance v4, Lyads/uk5;

    invoke-direct {v4}, Lyads/uk5;-><init>()V

    iput-object v4, p0, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->b:Lyads/wx3;

    move p2, v0

    move p3, p2

    move v1, p3

    move v2, v1

    :goto_0
    iput-object v4, p0, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->c:Lyads/wx3;

    new-instance v5, Lyads/c90;

    int-to-float v7, p3

    int-to-float v8, v1

    int-to-float v9, v2

    int-to-float v10, p2

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lyads/c90;-><init>(Landroid/view/View;FFFF)V

    iput-object v5, v6, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->a:Lyads/c90;

    invoke-virtual {v6, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjh2;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 115
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->a:Lyads/c90;

    iget-object v1, v0, Lyads/c90;->d:[F

    if-eqz v1, :cond_0

    iget-object v1, v0, Lyads/c90;->c:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lyads/c90;->c:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->c:Lyads/wx3;

    invoke-interface {v0, p1, p2}, Lyads/wx3;->a(II)Lyads/vx3;

    move-result-object p1

    iget p2, p1, Lyads/vx3;->a:I

    iget p1, p1, Lyads/vx3;->b:I

    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p0, p0, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->a:Lyads/c90;

    invoke-virtual {p0}, Lyads/c90;->a()V

    return-void
.end method

.method public final setMeasureSpecProvider(Lyads/wx3;)V
    .locals 4

    new-instance v0, Lyads/e50;

    iget-object v1, p0, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->b:Lyads/wx3;

    const/4 v2, 0x2

    new-array v2, v2, [Lyads/wx3;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-direct {v0, v2}, Lyads/e50;-><init>([Lyads/wx3;)V

    iput-object v0, p0, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->c:Lyads/wx3;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

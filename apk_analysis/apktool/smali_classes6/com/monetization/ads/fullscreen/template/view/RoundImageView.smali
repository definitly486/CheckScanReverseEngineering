.class public final Lcom/monetization/ads/fullscreen/template/view/RoundImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private final a:Lyads/c90;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 45
    invoke-direct/range {v0 .. v6}, Lcom/monetization/ads/fullscreen/template/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILyads/d90;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 41
    invoke-direct/range {v0 .. v6}, Lcom/monetization/ads/fullscreen/template/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILyads/d90;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 42
    invoke-direct/range {v0 .. v6}, Lcom/monetization/ads/fullscreen/template/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILyads/d90;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILyads/d90;)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    sget-object p4, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalRoundImageView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalRoundImageView_monetization_internal_corner_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    move v2, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    new-instance v0, Lyads/c90;

    move v3, v2

    move v4, v2

    move v5, v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lyads/c90;-><init>(Landroid/view/View;FFFF)V

    iput-object v0, v1, Lcom/monetization/ads/fullscreen/template/view/RoundImageView;->a:Lyads/c90;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILyads/d90;ILjh2;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 43
    new-instance p4, Lyads/d90;

    invoke-direct {p4}, Lyads/d90;-><init>()V

    .line 44
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/monetization/ads/fullscreen/template/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILyads/d90;)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/monetization/ads/fullscreen/template/view/RoundImageView;->a:Lyads/c90;

    iget-object v1, v0, Lyads/c90;->d:[F

    if-eqz v1, :cond_0

    iget-object v1, v0, Lyads/c90;->c:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lyads/c90;->c:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget-object p0, p0, Lcom/monetization/ads/fullscreen/template/view/RoundImageView;->a:Lyads/c90;

    invoke-virtual {p0}, Lyads/c90;->a()V

    return-void
.end method

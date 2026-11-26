.class public final Lcom/monetization/ads/fullscreen/template/view/CallToActionView;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/monetization/ads/fullscreen/template/view/CallToActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjh2;)V

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

    .line 53
    invoke-direct/range {v0 .. v5}, Lcom/monetization/ads/fullscreen/template/view/CallToActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    sget-object v2, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalIconButton:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalIconButton_monetization_internal_icon:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    sget v2, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalIconButton_monetization_internal_icon_size:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v3, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalIconButton_monetization_internal_icon_offset:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p3, :cond_0

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    move p1, v1

    move v1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    new-instance p2, Lyads/pw5;

    invoke-direct {p2, v0, v1, p1}, Lyads/pw5;-><init>(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setSpannableFactory(Landroid/text/Spannable$Factory;)V

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

    .line 54
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/monetization/ads/fullscreen/template/view/CallToActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSpannableFactory(Landroid/text/Spannable$Factory;)V

    iget-object v0, p0, Lcom/monetization/ads/fullscreen/template/view/CallToActionView;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/monetization/ads/fullscreen/template/view/CallToActionView;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/monetization/ads/fullscreen/template/view/CallToActionView;->a:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/monetization/ads/fullscreen/template/view/CallToActionView;->a:Ljava/lang/String;

    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

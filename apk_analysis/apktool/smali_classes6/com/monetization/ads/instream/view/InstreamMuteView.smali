.class public final Lcom/monetization/ads/instream/view/InstreamMuteView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field private final a:Lyads/si6;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 52
    invoke-direct/range {v0 .. v5}, Lcom/monetization/ads/instream/view/InstreamMuteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjh2;)V

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

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/monetization/ads/instream/view/InstreamMuteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p3, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalInstreamMuteView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalInstreamMuteView_monetization_internal_sound_on:I

    sget p3, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_internal_ic_sound_on_default:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    sget p3, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalInstreamMuteView_monetization_internal_sound_off:I

    sget v0, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_internal_ic_sound_off_default:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    sget v0, Lcom/yandex/mobile/ads/R$string;->monetization_ads_internal_instream_muted:I

    sget v1, Lcom/yandex/mobile/ads/R$string;->monetization_ads_internal_instream_unmuted:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lyads/ld4;

    invoke-direct {p1, p3, p2, v0, v1}, Lyads/ld4;-><init>(IIII)V

    new-instance p2, Lyads/si6;

    invoke-direct {p2, p1}, Lyads/si6;-><init>(Lyads/ld4;)V

    iput-object p2, p0, Lcom/monetization/ads/instream/view/InstreamMuteView;->a:Lyads/si6;

    iget-boolean p1, p0, Lcom/monetization/ads/instream/view/InstreamMuteView;->b:Z

    invoke-virtual {p0, p1}, Lcom/monetization/ads/instream/view/InstreamMuteView;->setMuted(Z)V

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

    .line 51
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/monetization/ads/instream/view/InstreamMuteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/yandex/mobile/ads/R$dimen;->monetization_instream_internal_mute_width_v2:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget v0, Lcom/yandex/mobile/ads/R$dimen;->monetization_instream_internal_mute_height_v2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setMuted(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/monetization/ads/instream/view/InstreamMuteView;->b:Z

    iget-object v0, p0, Lcom/monetization/ads/instream/view/InstreamMuteView;->a:Lyads/si6;

    invoke-virtual {v0, p0, p1}, Lyads/si6;->a(Lcom/monetization/ads/instream/view/InstreamMuteView;Z)V

    return-void
.end method

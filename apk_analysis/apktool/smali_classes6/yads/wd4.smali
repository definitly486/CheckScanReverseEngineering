.class public final Lyads/wd4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/vd4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 0

    .line 9
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_body:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final b(Landroid/view/View;)Landroid/widget/CheckBox;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Landroid/view/View;)Lcom/monetization/ads/nativeads/CustomizableMediaView;
    .locals 0

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_media:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    return-object p0
.end method

.method public final d(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_price:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final e(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_call_to_action:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final f(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_warning:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final g(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 0

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_favicon:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public final h(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_age:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final i(Landroid/view/View;)Landroid/view/View;
    .locals 0

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_rating:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final j(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_title:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final k(Landroid/view/View;)Landroid/widget/ProgressBar;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final l(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 0

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_feedback:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public final m(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_sponsored:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final n(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_domain:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final o(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 0

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_icon:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public final p(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_review_count:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

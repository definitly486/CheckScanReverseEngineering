.class public final Lyads/a50;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/f80;

.field public final b:I


# direct methods
.method public constructor <init>(Lyads/f80;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/a50;->a:Lyads/f80;

    iput p2, p0, Lyads/a50;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/nativeads/ExtendedNativeAdView;Lyads/z40;Lyads/i80;)Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lyads/a50;->a:Lyads/f80;

    iget-object v1, v0, Lyads/f80;->c:Lyads/i80;

    iget-object v0, v0, Lyads/f80;->b:Lyads/i80;

    if-eqz v1, :cond_0

    sget-object v0, Lyads/z40;->c:Lyads/z40;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    sget-object v0, Lyads/z40;->b:Lyads/z40;

    goto :goto_0

    :cond_1
    sget-object v0, Lyads/z40;->d:Lyads/z40;

    :goto_0
    if-eqz p3, :cond_3

    if-ne v0, p2, :cond_3

    iget p2, p3, Lyads/i80;->c:I

    iget p3, p3, Lyads/i80;->d:I

    iget p0, p0, Lyads/a50;->b:I

    if-gt p0, p2, :cond_2

    if-gt p0, p3, :cond_2

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_icon_large:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    :cond_2
    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_icon_small:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.class public final Lyads/y40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/f80;

.field public final b:I


# direct methods
.method public constructor <init>(Lyads/f80;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/y40;->a:Lyads/f80;

    iput p2, p0, Lyads/y40;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 3

    check-cast p1, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    new-instance v0, Lyads/a50;

    iget-object v1, p0, Lyads/y40;->a:Lyads/f80;

    iget p0, p0, Lyads/y40;->b:I

    invoke-direct {v0, v1, p0}, Lyads/a50;-><init>(Lyads/f80;I)V

    iget-object p0, v1, Lyads/f80;->b:Lyads/i80;

    sget-object v2, Lyads/z40;->b:Lyads/z40;

    invoke-virtual {v0, p1, v2, p0}, Lyads/a50;->a(Lcom/monetization/ads/nativeads/ExtendedNativeAdView;Lyads/z40;Lyads/i80;)Landroid/widget/ImageView;

    move-result-object p0

    iget-object v1, v1, Lyads/f80;->c:Lyads/i80;

    sget-object v2, Lyads/z40;->c:Lyads/z40;

    invoke-virtual {v0, p1, v2, v1}, Lyads/a50;->a(Lcom/monetization/ads/nativeads/ExtendedNativeAdView;Lyads/z40;Lyads/i80;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p0, :cond_0

    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_favicon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    if-eqz p1, :cond_1

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_icon:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setId(I)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.class public final Lcom/monetization/ads/mediation/banner/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/v24;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    check-cast p2, Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter;

    check-cast p3, Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter;->loadBanner(Landroid/content/Context;Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Lcom/monetization/ads/mediation/base/a;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter;

    .line 9
    invoke-virtual {p1}, Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter;->onInvalidate()V

    return-void
.end method

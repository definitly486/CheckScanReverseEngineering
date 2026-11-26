.class public final Lyads/z44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/v24;


# instance fields
.field public a:Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    check-cast p2, Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapter;

    check-cast p3, Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapterListener;

    iput-object p2, p0, Lyads/z44;->a:Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapter;

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapter;->loadRewardedAd(Landroid/content/Context;Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapterListener;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Lcom/monetization/ads/mediation/base/a;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapter;

    .line 11
    invoke-virtual {p1}, Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapter;->onInvalidate()V

    return-void
.end method

.class public final Lcom/monetization/ads/mediation/appopenad/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/v24;


# instance fields
.field public a:Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    check-cast p2, Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter;

    check-cast p3, Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter$MediatedAppOpenAdAdapterListener;

    iput-object p2, p0, Lcom/monetization/ads/mediation/appopenad/d;->a:Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter;

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter;->loadAppOpenAd(Landroid/content/Context;Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter$MediatedAppOpenAdAdapterListener;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Lcom/monetization/ads/mediation/base/a;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter;

    .line 11
    invoke-virtual {p1}, Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter;->onInvalidate()V

    return-void
.end method

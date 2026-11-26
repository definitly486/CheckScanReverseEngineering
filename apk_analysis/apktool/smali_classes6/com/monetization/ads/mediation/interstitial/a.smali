.class public final Lcom/monetization/ads/mediation/interstitial/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter$MediatedInterstitialAdapterListener;


# static fields
.field public static final synthetic h:[Lze4;


# instance fields
.field public final a:Lyads/m24;

.field public final b:Lyads/w24;

.field public final c:Lyads/q74;

.field public final d:Lyads/ve3;

.field public final e:Lyads/e55;

.field public final f:Lyads/e55;

.field public final g:Lyads/e55;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/monetization/ads/mediation/interstitial/a;

    const-string v1, "contentController"

    const-string v2, "getContentController()Lcom/monetization/ads/fullscreen/FullscreenContentController;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v1

    const-string v2, "loadController"

    const-string v4, "getLoadController()Lcom/monetization/ads/fullscreen/FullScreenLoadController;"

    invoke-static {v0, v2, v4, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v2

    const-string v4, "adQualityVerifierController"

    const-string v5, "getAdQualityVerifierController()Lcom/monetization/ads/base/quality/AdQualityVerifierController;"

    invoke-static {v0, v4, v5, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Lze4;

    aput-object v1, v4, v3

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v0, v4, v1

    sput-object v4, Lcom/monetization/ads/mediation/interstitial/a;->h:[Lze4;

    return-void
.end method

.method public constructor <init>(Lyads/s03;Lyads/dp;Lyads/m24;Lyads/w24;Lyads/q74;)V
    .locals 1

    new-instance v0, Lyads/ve3;

    invoke-direct {v0, p3}, Lyads/ve3;-><init>(Lyads/m24;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/monetization/ads/mediation/interstitial/a;->a:Lyads/m24;

    iput-object p4, p0, Lcom/monetization/ads/mediation/interstitial/a;->b:Lyads/w24;

    iput-object p5, p0, Lcom/monetization/ads/mediation/interstitial/a;->c:Lyads/q74;

    iput-object v0, p0, Lcom/monetization/ads/mediation/interstitial/a;->d:Lyads/ve3;

    new-instance p3, Lyads/e55;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/monetization/ads/mediation/interstitial/a;->e:Lyads/e55;

    new-instance p3, Lyads/e55;

    invoke-direct {p3, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/monetization/ads/mediation/interstitial/a;->f:Lyads/e55;

    iget-object p1, p2, Lyads/dp;->d:Lyads/b8;

    new-instance p2, Lyads/e55;

    invoke-direct {p2, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/monetization/ads/mediation/interstitial/a;->g:Lyads/e55;

    return-void
.end method

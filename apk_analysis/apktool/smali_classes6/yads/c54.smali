.class public final Lyads/c54;
.super Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapter;
.source "SourceFile"


# instance fields
.field public final a:Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;

.field public final b:Lyads/d9;

.field public final c:Lyads/ab5;

.field public final d:Ly22;

.field public e:Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapterListener;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Lmb4;

.field public final h:Lyads/a54;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;Lyads/d9;Lyads/ab5;)V
    .locals 2

    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    invoke-static {v1, v0}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object v0

    invoke-direct {p0}, Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapter;-><init>()V

    iput-object p1, p0, Lyads/c54;->a:Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;

    iput-object p2, p0, Lyads/c54;->b:Lyads/d9;

    iput-object p3, p0, Lyads/c54;->c:Lyads/ab5;

    iput-object v0, p0, Lyads/c54;->d:Ly22;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lyads/c54;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lyads/a54;

    invoke-direct {p1, p0}, Lyads/a54;-><init>(Lyads/c54;)V

    iput-object p1, p0, Lyads/c54;->h:Lyads/a54;

    return-void
.end method

.method public static final a(Lyads/c54;)V
    .locals 3

    iget-object v0, p0, Lyads/c54;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lyads/c54;->b:Lyads/d9;

    iget-object v0, v0, Lyads/d9;->r:Lyads/t95;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lyads/t95;->c:Lyads/r00;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Lcom/monetization/ads/mediation/rewarded/MediatedReward;

    iget v2, v0, Lyads/r00;->b:I

    iget-object v0, v0, Lyads/r00;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/monetization/ads/mediation/rewarded/MediatedReward;-><init>(ILjava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lyads/c54;->e:Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapterListener;

    if-eqz p0, :cond_3

    invoke-interface {p0, v1}, Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapterListener;->onRewarded(Lcom/monetization/ads/mediation/rewarded/MediatedReward;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final isLoaded()Z
    .locals 0

    iget-object p0, p0, Lyads/c54;->a:Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;->isLoaded()Z

    move-result p0

    return p0
.end method

.method public final loadRewardedAd(Landroid/content/Context;Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapterListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p2, p0, Lyads/c54;->e:Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapterListener;

    iget-object p2, p0, Lyads/c54;->a:Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;

    iget-object p0, p0, Lyads/c54;->h:Lyads/a54;

    invoke-virtual {p2, p1, p0, p3, p4}, Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;->loadInterstitial(Landroid/content/Context;Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter$MediatedInterstitialAdapterListener;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final onInvalidate()V
    .locals 2

    iget-object v0, p0, Lyads/c54;->g:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v0, p0, Lyads/c54;->a:Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;

    invoke-virtual {v0}, Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;->onInvalidate()V

    iput-object v1, p0, Lyads/c54;->e:Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapterListener;

    return-void
.end method

.method public final showRewardedAd(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lyads/c54;->a:Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;

    invoke-virtual {p0, p1}, Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;->showInterstitial(Landroid/app/Activity;)V

    return-void
.end method

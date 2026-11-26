.class public final Lyads/l44;
.super Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter;
.source "SourceFile"


# instance fields
.field public final a:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;

.field public final b:Lyads/o44;

.field public final c:Ljava/lang/Object;

.field public d:Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;Lyads/o44;)V
    .locals 0

    invoke-direct {p0}, Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter;-><init>()V

    iput-object p1, p0, Lyads/l44;->a:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;

    iput-object p2, p0, Lyads/l44;->b:Lyads/o44;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/l44;->c:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lyads/l44;)Lj59;
    .locals 1

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lyads/l44;->e:Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/l44;Lcom/monetization/ads/mediation/base/MediatedAdRequestError;)Lj59;
    .locals 3

    iget-object v0, p0, Lyads/l44;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyads/l44;->d:Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;

    const/4 v2, 0x0

    iput-object v2, p0, Lyads/l44;->d:Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;->onAdFailedToLoad(Lcom/monetization/ads/mediation/base/MediatedAdRequestError;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static final b(Lyads/l44;)Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;
    .locals 0

    iget-object p0, p0, Lyads/l44;->d:Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;

    return-object p0
.end method


# virtual methods
.method public final getAdObject()Lcom/monetization/ads/mediation/base/model/MediatedAdObject;
    .locals 0

    iget-object p0, p0, Lyads/l44;->a:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/a;->getAdObject()Lcom/monetization/ads/mediation/base/model/MediatedAdObject;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAdapterInfo()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;
    .locals 0

    iget-object p0, p0, Lyads/l44;->a:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/a;->getAdapterInfo()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getShouldTrackImpressionAutomatically()Z
    .locals 0

    iget-object p0, p0, Lyads/l44;->a:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/a;->getShouldTrackImpressionAutomatically()Z

    move-result p0

    return p0
.end method

.method public final loadBanner(Landroid/content/Context;Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 10

    iget-boolean v0, p0, Lyads/l44;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance p0, Lcom/monetization/ads/mediation/base/MediatedAdRequestError;

    const-string p1, "Load already in progress"

    invoke-direct {p0, v1, p1}, Lcom/monetization/ads/mediation/base/MediatedAdRequestError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;->onAdFailedToLoad(Lcom/monetization/ads/mediation/base/MediatedAdRequestError;)V

    return-void

    :cond_0
    iget-object v2, p0, Lyads/l44;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lyads/l44;->e:Z

    if-eqz v0, :cond_1

    new-instance p0, Lcom/monetization/ads/mediation/base/MediatedAdRequestError;

    const-string p1, "Load already in progress"

    invoke-direct {p0, v1, p1}, Lcom/monetization/ads/mediation/base/MediatedAdRequestError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;->onAdFailedToLoad(Lcom/monetization/ads/mediation/base/MediatedAdRequestError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_1
    :try_start_1
    iput-boolean v1, p0, Lyads/l44;->e:Z

    iput-object p2, p0, Lyads/l44;->d:Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;

    sget-object p2, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    new-instance v3, Lyads/k44;

    iget-object v5, p0, Lyads/l44;->b:Lyads/o44;

    new-instance v6, Lpr1;

    const/4 p2, 0x2

    invoke-direct {v6, p0, p2}, Lpr1;-><init>(Ljava/lang/Object;I)V

    new-instance v7, Lca2;

    const/4 p2, 0x7

    invoke-direct {v7, p0, p2}, Lca2;-><init>(Ljava/lang/Object;I)V

    new-instance v8, Lrr1;

    const/4 p2, 0x5

    invoke-direct {v8, p0, p2}, Lrr1;-><init>(Ljava/lang/Object;I)V

    iget-object v9, p0, Lyads/l44;->c:Ljava/lang/Object;

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lyads/k44;-><init>(Landroid/content/Context;Lyads/o44;Lll3;Lnl3;Lll3;Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/l44;->a:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;

    invoke-virtual {p0, v4, v3, p3, p4}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;->loadAd(Landroid/content/Context;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapterListener;Ljava/util/Map;Ljava/util/Map;)V

    return-void

    :goto_0
    monitor-exit v2

    throw p0
.end method

.method public final onInvalidate()V
    .locals 2

    iget-object v0, p0, Lyads/l44;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lyads/l44;->d:Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lyads/l44;->e:Z

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

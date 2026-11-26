.class public final Lcom/monetization/ads/mediation/interstitial/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/o03;


# instance fields
.field public final a:Lyads/dp;

.field public final b:Lyads/m24;

.field public final c:Lcom/monetization/ads/mediation/interstitial/b;

.field public final d:Lnl3;

.field public final e:Lyads/l34;

.field public final f:Lyads/w24;

.field public g:Lcom/monetization/ads/mediation/interstitial/a;


# direct methods
.method public constructor <init>(Lyads/dp;Lyads/m24;Lcom/monetization/ads/mediation/interstitial/b;Lnl3;Lyads/l34;Lyads/w24;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/mediation/interstitial/c;->a:Lyads/dp;

    iput-object p2, p0, Lcom/monetization/ads/mediation/interstitial/c;->b:Lyads/m24;

    iput-object p3, p0, Lcom/monetization/ads/mediation/interstitial/c;->c:Lcom/monetization/ads/mediation/interstitial/b;

    iput-object p4, p0, Lcom/monetization/ads/mediation/interstitial/c;->d:Lnl3;

    iput-object p5, p0, Lcom/monetization/ads/mediation/interstitial/c;->e:Lyads/l34;

    iput-object p6, p0, Lcom/monetization/ads/mediation/interstitial/c;->f:Lyads/w24;

    return-void
.end method

.method public static final a(Lcom/monetization/ads/mediation/interstitial/c;Lyads/q74;)Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter$MediatedInterstitialAdapterListener;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/c;->d:Lnl3;

    invoke-interface {v0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/monetization/ads/mediation/interstitial/a;

    iput-object v0, p0, Lcom/monetization/ads/mediation/interstitial/c;->g:Lcom/monetization/ads/mediation/interstitial/a;

    check-cast p1, Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter$MediatedInterstitialAdapterListener;

    return-object p1
.end method


# virtual methods
.method public final a(Lyads/d13;Landroid/app/Activity;)Ljava/lang/Object;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/c;->c:Lcom/monetization/ads/mediation/interstitial/b;

    iget-object v0, v0, Lcom/monetization/ads/mediation/interstitial/b;->a:Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/monetization/ads/mediation/interstitial/c;->g:Lcom/monetization/ads/mediation/interstitial/a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/monetization/ads/mediation/interstitial/a;->e:Lyads/e55;

    sget-object v2, Lcom/monetization/ads/mediation/interstitial/a;->h:[Lze4;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    :goto_0
    iget-object p1, p0, Lcom/monetization/ads/mediation/interstitial/c;->a:Lyads/dp;

    iget-object p1, p1, Lyads/dp;->d:Lyads/b8;

    invoke-virtual {p1}, Lyads/b8;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lyads/b8;->i:Lcl4;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/i8;

    invoke-interface {p1}, Lyads/i8;->onAdDisplayed()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/monetization/ads/mediation/interstitial/c;->b:Lyads/m24;

    invoke-virtual {p1}, Lyads/m24;->a()V

    iget-object p1, p0, Lcom/monetization/ads/mediation/interstitial/c;->f:Lyads/w24;

    invoke-virtual {p1, p2}, Lyads/w24;->a(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p2}, Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;->showInterstitial(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/c;->f:Lyads/w24;

    invoke-virtual {v0}, Lyads/w24;->a()V

    throw p1

    :cond_2
    :goto_2
    sget-object p1, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_4
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/monetization/ads/mediation/interstitial/c;->b:Lyads/m24;

    iget-object v1, v1, Lyads/m24;->a:Lyads/l24;

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "exception_in_adapter"

    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "reason"

    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/monetization/ads/mediation/interstitial/c;->e:Lyads/l34;

    iget-object v5, v1, Lyads/l24;->b:Lyads/x54;

    iget-object p0, v1, Lyads/l24;->c:Lyads/o24;

    invoke-virtual {p0}, Lyads/o24;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v6

    sget-object v4, Lyads/e75;->e:Lyads/e75;

    invoke-virtual/range {v2 .. v7}, Lyads/l34;->a(Landroid/content/Context;Lyads/e75;Lyads/x54;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/c;->f:Lyads/w24;

    invoke-virtual {v0}, Lyads/w24;->a()V

    .line 147
    iget-object v0, p0, Lcom/monetization/ads/mediation/interstitial/c;->a:Lyads/dp;

    .line 148
    iget-object v0, v0, Lyads/dp;->d:Lyads/b8;

    .line 149
    invoke-virtual {v0}, Lyads/b8;->b()V

    .line 150
    iget-object p0, p0, Lcom/monetization/ads/mediation/interstitial/c;->b:Lyads/m24;

    .line 151
    iget-object p0, p0, Lyads/m24;->c:Lyads/w74;

    .line 152
    invoke-virtual {p0, p1}, Lyads/w74;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lyads/d9;)V
    .locals 2

    .line 142
    iget-object p2, p0, Lcom/monetization/ads/mediation/interstitial/c;->b:Lyads/m24;

    new-instance v0, Lmr2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lmr2;-><init>(Ljava/lang/Object;I)V

    .line 143
    iget-object p0, p2, Lyads/m24;->c:Lyads/w74;

    .line 144
    invoke-virtual {p0, p1, v0}, Lyads/w74;->a(Landroid/content/Context;Lnl3;)V

    return-void
.end method

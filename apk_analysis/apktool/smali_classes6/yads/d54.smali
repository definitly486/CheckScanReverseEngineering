.class public final Lyads/d54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/q34;


# instance fields
.field public final a:Lyads/e34;

.field public final b:Lyads/d9;


# direct methods
.method public constructor <init>(Lyads/e34;Lyads/d9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/d54;->a:Lyads/e34;

    iput-object p2, p0, Lyads/d54;->b:Lyads/d9;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/x54;)Lcom/monetization/ads/mediation/base/a;
    .locals 4

    iget-object v0, p0, Lyads/d54;->b:Lyads/d9;

    iget-object v1, p2, Lyads/x54;->i:Lyads/cb5;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v1, Lyads/cb5;->c:Lyads/ab5;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/d54;->a:Lyads/e34;

    const-class v3, Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;

    invoke-virtual {p0, p1, p2, v3}, Lyads/e34;->a(Landroid/content/Context;Lyads/x54;Ljava/lang/Class;)Lcom/monetization/ads/mediation/base/a;

    move-result-object p0

    check-cast p0, Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    new-instance p1, Lyads/c54;

    invoke-direct {p1, p0, v0, v1}, Lyads/c54;-><init>(Lcom/monetization/ads/mediation/interstitial/MediatedInterstitialAdapter;Lyads/d9;Lyads/ab5;)V

    return-object p1

    :cond_2
    :goto_0
    return-object v2
.end method

.method public final a(Lyads/x54;Ljava/lang/Class;)Z
    .locals 1

    .line 32
    iget-object p0, p1, Lyads/x54;->i:Lyads/cb5;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 33
    :cond_0
    iget-object p0, p0, Lyads/cb5;->b:Lyads/k54;

    .line 34
    sget-object v0, Lyads/k54;->d:Lyads/k54;

    if-ne p0, v0, :cond_1

    .line 35
    const-class p0, Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapter;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

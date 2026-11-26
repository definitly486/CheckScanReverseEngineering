.class public final Lyads/na5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapterListener;


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

    const-class v0, Lyads/na5;

    const-string v1, "contentController"

    const-string v2, "getContentController()Lcom/monetization/ads/rewarded/content/RewardedAdContentController;"

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

    sput-object v4, Lyads/na5;->h:[Lze4;

    return-void
.end method

.method public constructor <init>(Lyads/s03;Lyads/b8;Lyads/m24;Lyads/w24;Lyads/q74;)V
    .locals 1

    new-instance v0, Lyads/ve3;

    invoke-direct {v0, p3}, Lyads/ve3;-><init>(Lyads/m24;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyads/na5;->a:Lyads/m24;

    iput-object p4, p0, Lyads/na5;->b:Lyads/w24;

    iput-object p5, p0, Lyads/na5;->c:Lyads/q74;

    iput-object v0, p0, Lyads/na5;->d:Lyads/ve3;

    new-instance p3, Lyads/e55;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lyads/na5;->e:Lyads/e55;

    new-instance p3, Lyads/e55;

    invoke-direct {p3, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lyads/na5;->f:Lyads/e55;

    new-instance p1, Lyads/e55;

    invoke-direct {p1, p2}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lyads/na5;->g:Lyads/e55;

    return-void
.end method


# virtual methods
.method public final a()Lyads/ba5;
    .locals 2

    iget-object p0, p0, Lyads/na5;->e:Lyads/e55;

    sget-object v0, Lyads/na5;->h:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ba5;

    return-object p0
.end method

.method public final onRewarded(Lcom/monetization/ads/mediation/rewarded/MediatedReward;)V
    .locals 6

    invoke-virtual {p0}, Lyads/na5;->a()Lyads/ba5;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v1, p1, Lyads/bp;->a:Landroid/content/Context;

    iget-object v0, p1, Lyads/bp;->b:Lyads/d9;

    iget-object p0, p0, Lyads/na5;->a:Lyads/m24;

    iget-object v2, p0, Lyads/m24;->b:Lyads/t24;

    iget-object p0, p0, Lyads/m24;->a:Lyads/l24;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_5

    iget-object v3, p0, Lyads/l24;->b:Lyads/x54;

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, v2, Lyads/t24;->d:Lyads/l34;

    iget-object p0, p0, Lyads/l24;->c:Lyads/o24;

    invoke-virtual {p0}, Lyads/o24;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v4

    iget-object p0, v2, Lyads/l34;->f:Lyads/w95;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object p0, v0, Lyads/d9;->r:Lyads/t95;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lyads/t95;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "rewarding_side"

    if-eqz v0, :cond_2

    const-string p0, "server_side"

    invoke-static {v5, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "client_side"

    invoke-static {v5, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_3
    if-nez p0, :cond_4

    sget-object p0, Lmx2;->b:Lmx2;

    :goto_1
    const-string v0, "reward_info"

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v2

    sget-object v2, Lyads/e75;->w:Lyads/e75;

    invoke-virtual/range {v0 .. v5}, Lyads/l34;->a(Landroid/content/Context;Lyads/e75;Lyads/x54;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lyads/ba5;->g()V

    :cond_6
    return-void
.end method

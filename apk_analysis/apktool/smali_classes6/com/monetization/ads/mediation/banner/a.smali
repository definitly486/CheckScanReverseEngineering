.class public final Lcom/monetization/ads/mediation/banner/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;


# static fields
.field public static final synthetic i:[Lze4;


# instance fields
.field public final a:Lyads/m24;

.field public final b:Lyads/u34;

.field public final c:Lyads/q74;

.field public final d:Lyads/ve3;

.field public final e:Lyads/aw3;

.field public final f:Lyads/e55;

.field public final g:Lyads/e55;

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/monetization/ads/mediation/banner/a;

    const-string v1, "loadController"

    const-string v2, "getLoadController()Lcom/monetization/ads/banner/BannerAdLoadController;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v1

    const-string v2, "adQualityVerifierController"

    const-string v4, "getAdQualityVerifierController()Lcom/monetization/ads/base/quality/AdQualityVerifierController;"

    invoke-static {v0, v2, v4, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lze4;

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lcom/monetization/ads/mediation/banner/a;->i:[Lze4;

    return-void
.end method

.method public constructor <init>(Lyads/yn;Lyads/dp;Lyads/m24;Lyads/u34;Lyads/q74;)V
    .locals 2

    new-instance v0, Lyads/ve3;

    invoke-direct {v0, p3}, Lyads/ve3;-><init>(Lyads/m24;)V

    sget-object v1, Lyads/ee5;->a:Lyads/ng3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/ng3;->a()Lyads/aw3;

    move-result-object v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/monetization/ads/mediation/banner/a;->a:Lyads/m24;

    iput-object p4, p0, Lcom/monetization/ads/mediation/banner/a;->b:Lyads/u34;

    iput-object p5, p0, Lcom/monetization/ads/mediation/banner/a;->c:Lyads/q74;

    iput-object v0, p0, Lcom/monetization/ads/mediation/banner/a;->d:Lyads/ve3;

    iput-object v1, p0, Lcom/monetization/ads/mediation/banner/a;->e:Lyads/aw3;

    new-instance p3, Lyads/e55;

    invoke-direct {p3, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/monetization/ads/mediation/banner/a;->f:Lyads/e55;

    iget-object p1, p2, Lyads/dp;->d:Lyads/b8;

    new-instance p2, Lyads/e55;

    invoke-direct {p2, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/monetization/ads/mediation/banner/a;->g:Lyads/e55;

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lcom/monetization/ads/mediation/base/MediatedAdRequestError;)V
    .locals 12

    invoke-virtual {p1}, Lcom/monetization/ads/mediation/base/MediatedAdRequestError;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/monetization/ads/mediation/base/MediatedAdRequestError;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/monetization/ads/mediation/base/MediatedAdRequestError;->getDescription()Ljava/lang/String;

    iget-boolean p1, p0, Lcom/monetization/ads/mediation/banner/a;->h:Z

    const-string v2, "error_code"

    const-string v3, "error"

    const-string v4, "status"

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/monetization/ads/mediation/banner/a;->c:Lyads/q74;

    iget-object p1, p0, Lyads/q74;->a:Lc31;

    invoke-virtual {p1}, Lc31;->t()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lno5;

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lyads/q74;->c:Lyads/w74;

    invoke-virtual {p1}, Lyads/w74;->a()V

    iget-object p1, p0, Lyads/q74;->c:Lyads/w74;

    iget-object p1, p1, Lyads/w74;->f:Lyads/t24;

    iget-object v5, p0, Lyads/q74;->b:Lyads/l24;

    new-instance v6, Lb36;

    invoke-direct {v6, v4, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lb36;

    invoke-direct {v3, v2, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lb36;

    const-string v2, "error_description"

    invoke-direct {v0, v2, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v6, v3, v0}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object v11

    iget-object v0, v5, Lyads/l24;->c:Lyads/o24;

    invoke-static {v0}, Lyads/g34;->a(Lyads/o24;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v6, p1, Lyads/t24;->d:Lyads/l34;

    iget-object v7, p1, Lyads/t24;->f:Landroid/content/Context;

    iget-object v9, v5, Lyads/l24;->b:Lyads/x54;

    iget-object p1, v5, Lyads/l24;->c:Lyads/o24;

    invoke-virtual {p1}, Lyads/o24;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v10

    sget-object v8, Lyads/e75;->g:Lyads/e75;

    invoke-virtual/range {v6 .. v11}, Lyads/l34;->a(Landroid/content/Context;Lyads/e75;Lyads/x54;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lyads/q74;->c:Lyads/w74;

    iget-object p0, p0, Lyads/q74;->a:Lc31;

    sget-object v0, Lyads/r74;->c:Lyads/r74;

    invoke-static {p1, p0, v0}, Lyads/w74;->a(Lyads/w74;Lc31;Lyads/r74;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/monetization/ads/mediation/banner/a;->a:Lyads/m24;

    iget-object p1, p1, Lyads/m24;->c:Lyads/w74;

    iget-object v1, p1, Lyads/w74;->m:Ljava/lang/Object;

    if-eq p0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lyads/w74;->f:Lyads/t24;

    iget-object v1, p1, Lyads/w74;->h:Lll3;

    invoke-interface {v1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/l24;

    if-eqz v1, :cond_3

    new-instance v5, Lb36;

    invoke-direct {v5, v4, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lb36;

    invoke-direct {v3, v2, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, v3}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v7

    iget-object v2, p0, Lyads/t24;->d:Lyads/l34;

    iget-object v3, p0, Lyads/t24;->f:Landroid/content/Context;

    iget-object v5, v1, Lyads/l24;->b:Lyads/x54;

    iget-object p0, v1, Lyads/l24;->c:Lyads/o24;

    invoke-virtual {p0}, Lyads/o24;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v6

    sget-object v4, Lyads/e75;->d:Lyads/e75;

    invoke-virtual/range {v2 .. v7}, Lyads/l34;->a(Landroid/content/Context;Lyads/e75;Lyads/x54;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    iget-object p0, p1, Lyads/w74;->j:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lyads/w74;->a(Landroid/content/Context;)V

    iget-object p0, p1, Lyads/w74;->n:Lnl3;

    if-eqz p0, :cond_4

    iget-object v0, p1, Lyads/w74;->j:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Lyads/w74;->a(Landroid/content/Context;Lnl3;)V

    :cond_4
    :goto_0
    return-void
.end method

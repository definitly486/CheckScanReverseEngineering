.class public final Lyads/o24;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/monetization/ads/mediation/base/a;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/mediation/base/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/o24;->a:Lcom/monetization/ads/mediation/base/a;

    return-void
.end method


# virtual methods
.method public final b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lyads/o24;->a:Lcom/monetization/ads/mediation/base/a;

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/a;->getAdapterInfo()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Lk57$a;

    invoke-direct {v0, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;

    invoke-direct {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;-><init>()V

    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;->setAdapterVersion(Ljava/lang/String;)Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;->setNetworkName(Ljava/lang/String;)Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;->setNetworkSdkVersion(Ljava/lang/String;)Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;->build()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p0

    :goto_1
    check-cast p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    return-object p0
.end method

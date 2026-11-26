.class public final Lyads/g34;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/o24;)Ljava/util/Map;
    .locals 5

    invoke-virtual {p0}, Lyads/o24;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getAdapterVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    new-instance v2, Lb36;

    const-string v3, "mediation_adapter_version"

    invoke-direct {v2, v3, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    new-instance v3, Lb36;

    const-string v4, "mediation_network_name"

    invoke-direct {v3, v4, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    new-instance p0, Lb36;

    const-string v0, "mediation_network_sdk_version"

    invoke-direct {p0, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3, p0}, [Lb36;

    move-result-object p0

    invoke-static {p0}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

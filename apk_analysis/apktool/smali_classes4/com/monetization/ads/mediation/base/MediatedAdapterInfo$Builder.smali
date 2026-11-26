.class public final Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;
    .locals 4

    new-instance v0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    iget-object v1, p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljh2;)V

    return-object v0
.end method

.method public final setAdapterVersion(Ljava/lang/String;)Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setNetworkName(Ljava/lang/String;)Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setNetworkSdkVersion(Ljava/lang/String;)Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

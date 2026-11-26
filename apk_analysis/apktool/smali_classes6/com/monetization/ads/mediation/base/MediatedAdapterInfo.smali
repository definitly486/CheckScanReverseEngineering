.class public final Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljh2;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAdapterVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getNetworkName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getNetworkSdkVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->c:Ljava/lang/String;

    return-object p0
.end method

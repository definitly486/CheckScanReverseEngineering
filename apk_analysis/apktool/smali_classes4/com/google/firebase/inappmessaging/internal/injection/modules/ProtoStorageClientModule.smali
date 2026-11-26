.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/ProtoStorageClientModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/dagger/Module;
.end annotation


# static fields
.field public static final CAMPAIGN_CACHE_FILE:Ljava/lang/String; = "fiam_eligible_campaigns_cache_file"

.field public static final IMPRESSIONS_STORE_FILE:Ljava/lang/String; = "fiam_impressions_store_file"

.field public static final RATE_LIMIT_STORE_FILE:Ljava/lang/String; = "rate_limit_store_file"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesProtoStorageClientForCampaign(Landroid/app/Application;)Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;
    .locals 1
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/CampaignCache;
    .end annotation

    new-instance p0, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    const-string v0, "fiam_eligible_campaigns_cache_file"

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    return-object p0
.end method

.method public providesProtoStorageClientForImpressionStore(Landroid/app/Application;)Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;
    .locals 1
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/ImpressionStore;
    .end annotation

    new-instance p0, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    const-string v0, "fiam_impressions_store_file"

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    return-object p0
.end method

.method public providesProtoStorageClientForLimiterStore(Landroid/app/Application;)Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;
    .locals 1
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/RateLimit;
    .end annotation

    new-instance p0, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    const-string v0, "rate_limit_store_file"

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    return-object p0
.end method

.class public final Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/dagger/internal/Factory<",
        "Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final abtIntegrationHelperProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsEventsManagerProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final apiClientProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private final appForegroundEventFlowableProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lkw1<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final appForegroundRateLimitProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/model/RateLimit;",
            ">;"
        }
    .end annotation
.end field

.field private final blockingExecutorProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final campaignCacheClientProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/time/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final dataCollectionHelperProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseInstallationsProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            ">;"
        }
    .end annotation
.end field

.field private final impressionStorageClientProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;",
            ">;"
        }
    .end annotation
.end field

.field private final programmaticTriggerEventFlowableProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lkw1<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rateLimiterClientProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;",
            ">;"
        }
    .end annotation
.end field

.field private final schedulersProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/Schedulers;",
            ">;"
        }
    .end annotation
.end field

.field private final testDeviceHelperProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lkw1<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lkw1<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/time/Clock;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ApiClient;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/Schedulers;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/model/RateLimit;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->appForegroundEventFlowableProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->programmaticTriggerEventFlowableProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->campaignCacheClientProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p4, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->clockProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p5, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->apiClientProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p6, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->analyticsEventsManagerProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p7, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->schedulersProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p8, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->impressionStorageClientProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p9, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->rateLimiterClientProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p10, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->appForegroundRateLimitProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p11, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->testDeviceHelperProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p12, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->firebaseInstallationsProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p13, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->dataCollectionHelperProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p14, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->abtIntegrationHelperProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p15, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->blockingExecutorProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lkw1<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lkw1<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/time/Clock;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ApiClient;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/Schedulers;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/model/RateLimit;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;-><init>(Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lkw1;Lkw1;Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/ApiClient;Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;Lcom/google/firebase/inappmessaging/internal/Schedulers;Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;Ljava/util/concurrent/Executor;)Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkw1<",
            "Ljava/lang/String;",
            ">;",
            "Lkw1<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;",
            "Lcom/google/firebase/inappmessaging/internal/time/Clock;",
            "Lcom/google/firebase/inappmessaging/internal/ApiClient;",
            "Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;",
            "Lcom/google/firebase/inappmessaging/internal/Schedulers;",
            "Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;",
            "Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;",
            "Lcom/google/firebase/inappmessaging/model/RateLimit;",
            "Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            "Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;",
            "Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;-><init>(Lkw1;Lkw1;Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/ApiClient;Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;Lcom/google/firebase/inappmessaging/internal/Schedulers;Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->appForegroundEventFlowableProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkw1;

    iget-object v1, v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->programmaticTriggerEventFlowableProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkw1;

    iget-object v1, v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->campaignCacheClientProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    iget-object v1, v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->clockProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/firebase/inappmessaging/internal/time/Clock;

    iget-object v1, v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->apiClientProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/firebase/inappmessaging/internal/ApiClient;

    iget-object v1, v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->analyticsEventsManagerProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

    iget-object v1, v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->schedulersProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/firebase/inappmessaging/internal/Schedulers;

    iget-object v1, v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->impressionStorageClientProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iget-object v1, v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->rateLimiterClientProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iget-object v1, v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->appForegroundRateLimitProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/firebase/inappmessaging/model/RateLimit;

    iget-object v1, v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->testDeviceHelperProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    iget-object v1, v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->firebaseInstallationsProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    iget-object v1, v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->dataCollectionHelperProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    iget-object v1, v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->abtIntegrationHelperProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    iget-object v0, v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->blockingExecutorProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/util/concurrent/Executor;

    invoke-static/range {v2 .. v16}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->newInstance(Lkw1;Lkw1;Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/ApiClient;Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;Lcom/google/firebase/inappmessaging/internal/Schedulers;Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;Ljava/util/concurrent/Executor;)Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->get()Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    move-result-object p0

    return-object p0
.end method

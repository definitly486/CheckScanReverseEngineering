.class public Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ON_FOREGROUND:Ljava/lang/String; = "ON_FOREGROUND"


# instance fields
.field private final abtIntegrationHelper:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

.field private final analyticsEventsManager:Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

.field private final apiClient:Lcom/google/firebase/inappmessaging/internal/ApiClient;

.field private final appForegroundEventFlowable:Lkw1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkw1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final appForegroundRateLimit:Lcom/google/firebase/inappmessaging/model/RateLimit;

.field private final blockingExecutor:Ljava/util/concurrent/Executor;

.field private final campaignCacheClient:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

.field private final clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

.field private final dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

.field private final firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

.field private final programmaticTriggerEventFlowable:Lkw1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkw1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rateLimiterClient:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

.field private final schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

.field private final testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;


# direct methods
.method public constructor <init>(Lkw1;Lkw1;Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/ApiClient;Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;Lcom/google/firebase/inappmessaging/internal/Schedulers;Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Lkw1;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/AppForeground;
        .end annotation
    .end param
    .param p2    # Lkw1;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/ProgrammaticTrigger;
        .end annotation
    .end param
    .param p10    # Lcom/google/firebase/inappmessaging/model/RateLimit;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/AppForeground;
        .end annotation
    .end param
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
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->appForegroundEventFlowable:Lkw1;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->programmaticTriggerEventFlowable:Lkw1;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->campaignCacheClient:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    iput-object p4, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    iput-object p5, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->apiClient:Lcom/google/firebase/inappmessaging/internal/ApiClient;

    iput-object p6, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->analyticsEventsManager:Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

    iput-object p7, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    iput-object p8, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iput-object p9, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->rateLimiterClient:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iput-object p10, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->appForegroundRateLimit:Lcom/google/firebase/inappmessaging/model/RateLimit;

    iput-object p11, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    iput-object p13, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    iput-object p12, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    iput-object p14, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->abtIntegrationHelper:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    iput-object p15, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->blockingExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic A(Ljava/lang/Boolean;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$9(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic B(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lf73;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$18(Lf73;)V

    return-void
.end method

.method public static synthetic C(Lm21;Ljava/lang/Boolean;)Lm21;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$10(Lm21;Ljava/lang/Boolean;)Lm21;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lcom/google/android/gms/tasks/Task;Ljava/util/concurrent/Executor;Lc75$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$taskToMaybe$30(Lcom/google/android/gms/tasks/Task;Ljava/util/concurrent/Executor;Lf75;)V

    return-void
.end method

.method public static synthetic E(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lj21;Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Lf73;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$16(Lj21;Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Lf73;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;Lfh1;Lw34;Lk2;Lf73;)La75;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$14(Ljava/lang/String;Lxl3;Lxl3;Lxl3;Lf73;)La75;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Lm21;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$8(Lm21;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ls75;Lj21;)La75;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$20(La75;Lj21;)La75;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lm21;)La75;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$13(Lm21;)La75;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lm21;)La75;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$11(Lm21;)La75;

    move-result-object p0

    return-object p0
.end method

.method public static cacheExpiringResponse()Lf73;
    .locals 3

    invoke-static {}, Lf73;->e()Lf73$b;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lf73$b;->b(J)V

    invoke-virtual {v0}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object v0

    check-cast v0, Lf73;

    return-object v0
.end method

.method private static compareByPriority(Lm21;Lm21;)I
    .locals 1

    invoke-virtual {p0}, Lm21;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lm21;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Lm21;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lm21;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lm21;->f()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->getValue()I

    move-result p0

    invoke-virtual {p1}, Lm21;->f()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->getValue()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private static containsTriggeringCondition(Ljava/lang/String;Lm21;)Z
    .locals 3

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->isAppForegroundEvent(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lm21;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lm21;->g()Lcom/google/protobuf/q$j;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->hasFiamTrigger(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->hasAnalyticsTrigger(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "The event "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is contained in the list of triggers"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic d(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;Lm21;)Lx75;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$getTriggeredInAppMessageMaybe$27(Ljava/lang/String;Lm21;)Lx75;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;)Ldt6;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$21(Ljava/lang/String;)Ldt6;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lf75;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$taskToMaybe$29(Lf75;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/Boolean;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$getContentIfNotRateLimited$23(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method private getContentIfNotRateLimited(Ljava/lang/String;Lm21;)La75;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lm21;",
            ")",
            "La75<",
            "Lm21;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lm21;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->isAppForegroundEvent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->rateLimiterClient:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->appForegroundRateLimit:Lcom/google/firebase/inappmessaging/model/RateLimit;

    invoke-virtual {p1, p0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->isRateLimited(Lcom/google/firebase/inappmessaging/model/RateLimit;)Lmz7;

    move-result-object p0

    new-instance p1, Lg34;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyz7;

    invoke-direct {v0, p0, p1}, Lyz7;-><init>(Lmz7;Lqx1;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    new-instance p1, Lrm3$j;

    invoke-direct {p1, p0}, Lrm3$j;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lz08;

    invoke-direct {p0, v0, p1}, Lz08;-><init>(Lmz7;Lrm3$j;)V

    new-instance p1, Lud;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li75;

    invoke-direct {v0, p0, p1}, Li75;-><init>(Lmz7;Lze6;)V

    new-instance p0, Lnk0;

    invoke-direct {p0, p2}, Lnk0;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lr75;

    invoke-direct {p1, v0, p0}, Lr75;-><init>(La75;Lxl3;)V

    return-object p1

    :cond_0
    invoke-static {p2}, La75;->b(Ljava/lang/Object;)Lq75;

    move-result-object p0

    return-object p0
.end method

.method private getTriggeredInAppMessageMaybe(Ljava/lang/String;Lxl3;Lxl3;Lxl3;Lf73;)La75;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxl3<",
            "Lm21;",
            "La75<",
            "Lm21;",
            ">;>;",
            "Lxl3<",
            "Lm21;",
            "La75<",
            "Lm21;",
            ">;>;",
            "Lxl3<",
            "Lm21;",
            "La75<",
            "Lm21;",
            ">;>;",
            "Lf73;",
            ")",
            "La75<",
            "Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;",
            ">;"
        }
    .end annotation

    invoke-virtual {p5}, Lf73;->d()Lcom/google/protobuf/q$j;

    move-result-object p5

    sget v0, Lgg3;->b:I

    const-string v0, "source is null"

    invoke-static {p5, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lzg3;

    invoke-direct {v0, p5}, Lzg3;-><init>(Ljava/lang/Iterable;)V

    new-instance p5, Lbh1;

    const/4 v1, 0x1

    invoke-direct {p5, p0, v1}, Lbh1;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lsg3;

    invoke-direct {v2, v0, p5}, Lsg3;-><init>(Lgg3;Lze6;)V

    new-instance p5, Lch1;

    invoke-direct {p5, p1, v1}, Lch1;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lsg3;

    invoke-direct {v0, v2, p5}, Lsg3;-><init>(Lgg3;Lze6;)V

    invoke-virtual {v0, p2}, Lgg3;->b(Lxl3;)Lug3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lgg3;->b(Lxl3;)Lug3;

    move-result-object p2

    invoke-virtual {p2, p4}, Lgg3;->b(Lxl3;)Lug3;

    move-result-object p2

    new-instance p3, Lt34;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    new-instance p4, Lvh3;

    invoke-direct {p4, p2}, Lvh3;-><init>(Lug3;)V

    invoke-virtual {p4}, Lvh3;->c()Lgg3;

    move-result-object p2

    new-instance p4, Lrm3$k;

    invoke-direct {p4, p3}, Lrm3$k;-><init>(Lt34;)V

    new-instance p3, Ldh3;

    invoke-direct {p3, p2, p4}, Ldh3;-><init>(Lgg3;Lxl3;)V

    sget p2, Lgg3;->b:I

    const-string p4, "bufferSize"

    invoke-static {p2, p4}, Lnq5;->b(ILjava/lang/String;)V

    new-instance p4, Lwg3;

    invoke-direct {p4, p3, p2}, Lwg3;-><init>(Ldh3;I)V

    new-instance p2, Lpg3;

    invoke-direct {p2, p4}, Lpg3;-><init>(Lwg3;)V

    new-instance p3, Lxf2;

    invoke-direct {p3, p0, p1}, Lxf2;-><init>(Ljava/lang/Object;Ljava/io/Serializable;)V

    new-instance p0, Ll75;

    invoke-direct {p0, p2, p3}, Ll75;-><init>(La75;Lxl3;)V

    return-object p0
.end method

.method public static synthetic h(Lf73;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$1(Lf73;)V

    return-void
.end method

.method private static hasAnalyticsTrigger(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->getEvent()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static hasFiamTrigger(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->getFiamTrigger()Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$getContentIfNotRateLimited$22(Ljava/lang/Boolean;)V

    return-void
.end method

.method private static isActive(Lcom/google/firebase/inappmessaging/internal/time/Clock;Lm21;)Z
    .locals 4

    invoke-virtual {p1}, Lm21;->e()Lm21$c;

    move-result-object v0

    sget-object v1, Lm21$c;->VANILLA_PAYLOAD:Lm21$c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lm21;->h()Ln21;

    move-result-object v0

    invoke-virtual {v0}, Ln21;->d()J

    move-result-wide v0

    invoke-virtual {p1}, Lm21;->h()Ln21;

    move-result-object p1

    invoke-virtual {p1}, Ln21;->b()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lm21;->e()Lm21$c;

    move-result-object v0

    sget-object v1, Lm21$c;->EXPERIMENTAL_PAYLOAD:Lm21$c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lm21;->c()Ll21;

    move-result-object v0

    invoke-virtual {v0}, Ll21;->d()J

    move-result-wide v0

    invoke-virtual {p1}, Lm21;->c()Ll21;

    move-result-object p1

    invoke-virtual {p1}, Ll21;->b()J

    move-result-wide v2

    :goto_0
    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide p0

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    cmp-long p0, p0, v2

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isAppForegroundEvent(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->getFiamTrigger()Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ON_FOREGROUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isAppForegroundEvent(Ljava/lang/String;)Z
    .locals 1

    .line 15
    const-string v0, "ON_FOREGROUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Ljava/lang/String;Lm21;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$getTriggeredInAppMessageMaybe$26(Ljava/lang/String;Lm21;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k()V
    .locals 0

    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$3()V

    return-void
.end method

.method public static synthetic l(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$15(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event Triggered: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$1(Lf73;)V
    .locals 0

    const-string p0, "Fetched from cache"

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$10(Lm21;Ljava/lang/Boolean;)Lm21;
    .locals 0

    return-object p0
.end method

.method private lambda$createFirebaseInAppMessageStream$11(Lm21;)La75;
    .locals 2

    invoke-virtual {p1}, Lm21;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, La75;->b(Ljava/lang/Object;)Lq75;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->isImpressed(Lm21;)Lmz7;

    move-result-object p0

    new-instance v0, Lr34;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lwz7;

    invoke-direct {v1, p0, v0}, Lwz7;-><init>(Lmz7;Lqx1;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    new-instance v0, Lrm3$j;

    invoke-direct {v0, p0}, Lrm3$j;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lz08;

    invoke-direct {p0, v1, v0}, Lz08;-><init>(Lmz7;Lrm3$j;)V

    new-instance v0, Ls34;

    invoke-direct {v0, p1}, Ls34;-><init>(Lm21;)V

    new-instance v1, Lyz7;

    invoke-direct {v1, p0, v0}, Lyz7;-><init>(Lmz7;Lqx1;)V

    new-instance p0, Lx7;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lx7;-><init>(I)V

    new-instance v0, Li75;

    invoke-direct {v0, v1, p0}, Li75;-><init>(Lmz7;Lze6;)V

    new-instance p0, Lah1;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lah1;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lr75;

    invoke-direct {p1, v0, p0}, Lr75;-><init>(La75;Lxl3;)V

    return-object p1
.end method

.method private synthetic lambda$createFirebaseInAppMessageStream$12(Ljava/lang/String;Lm21;)La75;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->getContentIfNotRateLimited(Ljava/lang/String;Lm21;)La75;

    move-result-object p0

    return-object p0
.end method

.method private static lambda$createFirebaseInAppMessageStream$13(Lm21;)La75;
    .locals 2

    sget-object v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$1;->$SwitchMap$com$google$firebase$inappmessaging$MessagesProto$Content$MessageDetailsCase:[I

    invoke-virtual {p0}, Lm21;->getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->getMessageDetailsCase()Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p0, "Filtering non-displayable message"

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    sget-object p0, Lg75;->b:Lg75;

    return-object p0

    :cond_0
    invoke-static {p0}, La75;->b(Ljava/lang/Object;)Lq75;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createFirebaseInAppMessageStream$14(Ljava/lang/String;Lxl3;Lxl3;Lxl3;Lf73;)La75;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->getTriggeredInAppMessageMaybe(Ljava/lang/String;Lxl3;Lxl3;Lxl3;Lf73;)La75;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$15(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Impressions store read fail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createFirebaseInAppMessageStream$16(Lj21;Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Lf73;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->apiClient:Lcom/google/firebase/inappmessaging/internal/ApiClient;

    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/inappmessaging/internal/ApiClient;->getFiams(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;Lj21;)Lf73;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$17(Lf73;)V
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lf73;->d()Lcom/google/protobuf/q$j;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Successfully fetched "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " messages from backend"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createFirebaseInAppMessageStream$18(Lf73;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->clearImpressions(Lf73;)Lqp1;

    move-result-object p0

    invoke-virtual {p0}, Lqp1;->g()Lcp2;

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$19(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service fetch error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$2(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cache read error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private lambda$createFirebaseInAppMessageStream$20(La75;Lj21;)La75;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isAutomaticDataCollectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Automatic data collection is disabled, not attempting campaign fetch from service."

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->cacheExpiringResponse()Lf73;

    move-result-object p0

    invoke-static {p0}, La75;->b(Ljava/lang/Object;)Lq75;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lg7;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg7;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lh75;

    invoke-direct {v1, p1, v0}, Lh75;-><init>(La75;Lze6;)V

    new-instance p1, Li34;

    invoke-direct {p1, p0, p2}, Li34;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Lr75;

    invoke-direct {p2, v1, p1}, Lr75;-><init>(La75;Lxl3;)V

    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->cacheExpiringResponse()Lf73;

    move-result-object p1

    invoke-static {p1}, La75;->b(Ljava/lang/Object;)Lq75;

    move-result-object p1

    new-instance v0, Lz75;

    invoke-direct {v0, p2, p1}, Lz75;-><init>(La75;La75;)V

    new-instance p1, Lj34;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lw75;

    sget-object v1, Lrm3;->d:Lrm3$e;

    invoke-direct {p2, v0, p1, v1}, Lw75;-><init>(La75;Lqx1;Lqx1;)V

    new-instance p1, Lk34;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lk34;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lw75;

    invoke-direct {v2, p2, p1, v1}, Lw75;-><init>(La75;Lqx1;Lqx1;)V

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->analyticsEventsManager:Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ll34;

    invoke-direct {p2, p1, v0}, Ll34;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lw75;

    invoke-direct {p1, v2, p2, v1}, Lw75;-><init>(La75;Lqx1;Lqx1;)V

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lm34;

    invoke-direct {p2, p0}, Lm34;-><init>(Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;)V

    new-instance p0, Lw75;

    invoke-direct {p0, p1, p2, v1}, Lw75;-><init>(La75;Lqx1;Lqx1;)V

    new-instance p1, Ln34;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lw75;

    invoke-direct {p2, p0, v1, p1}, Lw75;-><init>(La75;Lqx1;Lqx1;)V

    sget-object p0, Lg75;->b:Lg75;

    const-string p1, "next is null"

    invoke-static {p0, p1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lrm3$j;

    invoke-direct {p1, p0}, Lrm3$j;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lu75;

    invoke-direct {p0, p2, p1}, Lu75;-><init>(La75;Lxl3;)V

    return-object p0
.end method

.method private lambda$createFirebaseInAppMessageStream$21(Ljava/lang/String;)Ldt6;
    .locals 12

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->campaignCacheClient:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->get()La75;

    move-result-object v0

    new-instance v1, Lu34;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lw75;

    sget-object v3, Lrm3;->d:Lrm3$e;

    invoke-direct {v2, v0, v1, v3}, Lw75;-><init>(La75;Lqx1;Lqx1;)V

    new-instance v0, Lv34;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lw75;

    invoke-direct {v1, v2, v3, v0}, Lw75;-><init>(La75;Lqx1;Lqx1;)V

    sget-object v0, Lg75;->b:Lg75;

    const-string v2, "next is null"

    invoke-static {v0, v2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lrm3$j;

    invoke-direct {v2, v0}, Lrm3$j;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lu75;

    invoke-direct {v0, v1, v2}, Lu75;-><init>(La75;Lxl3;)V

    new-instance v1, Lxk0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lxk0;-><init>(Ljava/lang/Object;I)V

    new-instance v7, Lfh1;

    const/4 v10, 0x2

    invoke-direct {v7, p0, v10}, Lfh1;-><init>(Ljava/lang/Object;I)V

    new-instance v8, Lw34;

    invoke-direct {v8, p0, p1}, Lw34;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lk2;

    invoke-direct {v9, v2}, Lk2;-><init>(I)V

    new-instance v4, Lx34;

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lx34;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;Lfh1;Lw34;Lk2;)V

    iget-object p0, v5, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->getAllImpressions()La75;

    move-result-object p0

    new-instance p1, Lh34;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lw75;

    invoke-direct {v7, p0, v3, p1}, Lw75;-><init>(La75;Lqx1;Lqx1;)V

    invoke-static {}, Lj21;->d()Lj21;

    move-result-object p0

    const-string p1, "defaultItem is null"

    invoke-static {p0, p1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, La75;->b(Ljava/lang/Object;)Lq75;

    move-result-object p0

    new-instance p1, Lz75;

    invoke-direct {p1, v7, p0}, Lz75;-><init>(La75;La75;)V

    invoke-static {}, Lj21;->d()Lj21;

    move-result-object p0

    invoke-static {p0}, La75;->b(Ljava/lang/Object;)Lq75;

    move-result-object p0

    new-instance v7, Lrm3$j;

    invoke-direct {v7, p0}, Lrm3$j;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lu75;

    invoke-direct {p0, p1, v7}, Lu75;-><init>(La75;Lxl3;)V

    iget-object p1, v5, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-interface {p1}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v7, v5, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->blockingExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1, v7}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->taskToMaybe(Lcom/google/android/gms/tasks/Task;Ljava/util/concurrent/Executor;)La75;

    move-result-object p1

    iget-object v7, v5, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v7

    iget-object v9, v5, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->blockingExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v7, v9}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->taskToMaybe(Lcom/google/android/gms/tasks/Task;Ljava/util/concurrent/Executor;)La75;

    move-result-object v7

    new-instance v9, Lti0;

    const/4 v11, 0x4

    invoke-direct {v9, v11}, Lti0;-><init>(I)V

    const-string v11, "source1 is null"

    invoke-static {p1, v11}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "source2 is null"

    invoke-static {v7, v11}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lrm3$a;

    invoke-direct {v11, v9}, Lrm3$a;-><init>(Lli0;)V

    new-array v9, v10, [Lx75;

    aput-object p1, v9, v8

    aput-object v7, v9, v2

    new-instance p1, Lb85;

    invoke-direct {p1, v9, v11}, Lb85;-><init>([Lx75;Lrm3$a;)V

    iget-object v2, v5, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/internal/Schedulers;->io()Lhe7;

    move-result-object v2

    const-string v7, "scheduler is null"

    invoke-static {v2, v7}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ls75;

    invoke-direct {v7, p1, v2}, Ls75;-><init>(La75;Lhe7;)V

    new-instance p1, Lbf2;

    invoke-direct {p1, v5, v7}, Lbf2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v5, v6}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->shouldIgnoreCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v5, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isDeviceInTestMode()Z

    move-result v0

    iget-object v1, v5, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isAppInstallFresh()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Forcing fetch from service rather than cache. Test Device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " | App Fresh Install: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    new-instance v0, Ll75;

    invoke-direct {v0, p0, p1}, Ll75;-><init>(La75;Lxl3;)V

    new-instance p0, Ll75;

    invoke-direct {p0, v0, v4}, Ll75;-><init>(La75;Lxl3;)V

    instance-of p1, p0, Ltm3;

    if-eqz p1, :cond_0

    check-cast p0, Ltm3;

    invoke-interface {p0}, Ltm3;->c()Lgg3;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, La85;

    invoke-direct {p1, p0}, La85;-><init>(Ll75;)V

    return-object p1

    :cond_1
    const-string v2, "Attempting to fetch campaigns using cache"

    invoke-static {v2}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    new-instance v2, Ll75;

    invoke-direct {v2, p0, p1}, Ll75;-><init>(La75;Lxl3;)V

    new-instance p0, Lw75;

    invoke-direct {p0, v2, v1, v3}, Lw75;-><init>(La75;Lqx1;Lqx1;)V

    new-instance p1, Lz75;

    invoke-direct {p1, v0, p0}, Lz75;-><init>(La75;La75;)V

    new-instance p0, Ll75;

    invoke-direct {p0, p1, v4}, Ll75;-><init>(La75;Lxl3;)V

    instance-of p1, p0, Ltm3;

    if-eqz p1, :cond_2

    check-cast p0, Ltm3;

    invoke-interface {p0}, Ltm3;->c()Lgg3;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, La85;

    invoke-direct {p1, p0}, La85;-><init>(Ll75;)V

    return-object p1
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$3()V
    .locals 1

    const-string v0, "Wrote to cache"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$4(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cache write error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private static lambda$createFirebaseInAppMessageStream$5(Ljava/lang/Throwable;)Lqq1;
    .locals 0

    sget-object p0, Laq1;->b:Laq1;

    return-object p0
.end method

.method private lambda$createFirebaseInAppMessageStream$6(Lf73;)V
    .locals 6

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->campaignCacheClient:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->put(Lf73;)Lqp1;

    move-result-object p0

    new-instance p1, Lp34;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lqp1;->e(Lh6;)Loq1;

    move-result-object v1

    new-instance v3, Lq34;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loq1;

    sget-object v2, Lrm3;->d:Lrm3$e;

    sget-object v4, Lrm3;->c:Lrm3$d;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Loq1;-><init>(Lqp1;Lqx1;Lqx1;Lh6;Lh6;)V

    new-instance p0, Ljn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lpq1;

    invoke-direct {p1, v0, p0}, Lpq1;-><init>(Lqp1;Lxl3;)V

    invoke-virtual {p1}, Lqp1;->g()Lcp2;

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$7(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Impression store read fail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$8(Lm21;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->logImpressionStatus(Lm21;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static synthetic lambda$createFirebaseInAppMessageStream$9(Ljava/lang/Boolean;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getContentIfNotRateLimited$22(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "App foreground rate limited ? : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$getContentIfNotRateLimited$23(Ljava/lang/Boolean;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getContentIfNotRateLimited$24(Lm21;Ljava/lang/Boolean;)Lm21;
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$getTriggeredInAppMessageMaybe$25(Lm21;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isDeviceInTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->isActive(Lcom/google/firebase/inappmessaging/internal/time/Clock;Lm21;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getTriggeredInAppMessageMaybe$26(Ljava/lang/String;Lm21;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->containsTriggeringCondition(Ljava/lang/String;Lm21;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getTriggeredInAppMessageMaybe$27(Ljava/lang/String;Lm21;)Lx75;
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->triggeredInAppMessage(Lm21;Ljava/lang/String;)La75;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$taskToMaybe$28(Lf75;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lc75$a;

    invoke-virtual {p0, p1}, Lc75$a;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lc75$a;->a()V

    return-void
.end method

.method private static lambda$taskToMaybe$29(Lf75;Ljava/lang/Exception;)V
    .locals 1

    check-cast p0, Lc75$a;

    invoke-virtual {p0, p1}, Lc75$a;->d(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {p0}, Lc75$a;->a()V

    return-void
.end method

.method private static synthetic lambda$taskToMaybe$30(Lcom/google/android/gms/tasks/Task;Ljava/util/concurrent/Executor;Lf75;)V
    .locals 2

    new-instance v0, Lq01;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lq01;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v0, Lyp0;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lyp0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static logImpressionStatus(Lm21;Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p0}, Lm21;->e()Lm21$c;

    move-result-object v0

    sget-object v1, Lm21$c;->VANILLA_PAYLOAD:Lm21$c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " ? : "

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm21;->h()Ln21;

    move-result-object p0

    invoke-virtual {p0}, Ln21;->c()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Already impressed campaign "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lm21;->e()Lm21$c;

    move-result-object v0

    sget-object v2, Lm21$c;->EXPERIMENTAL_PAYLOAD:Lm21$c;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lm21;->c()Ll21;

    move-result-object p0

    invoke-virtual {p0}, Ll21;->c()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Already impressed experiment "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic m(Lf75;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$taskToMaybe$28(Lf75;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic n(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$2(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic o(Lm21;Ljava/lang/Boolean;)Lm21;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$getContentIfNotRateLimited$24(Lm21;Ljava/lang/Boolean;)Lm21;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;Lm21;)La75;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$12(Ljava/lang/String;Lm21;)La75;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->validIID(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lm21;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$getTriggeredInAppMessageMaybe$25(Lm21;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Lf73;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$17(Lf73;)V

    return-void
.end method

.method private shouldIgnoreCache(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isAppInstallFresh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->isAppForegroundEvent(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isDeviceInTestMode()Z

    move-result p0

    return p0
.end method

.method public static synthetic t(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$7(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static taskToMaybe(Lcom/google/android/gms/tasks/Task;Ljava/util/concurrent/Executor;)La75;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "La75<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcf2;

    invoke-direct {v0, p0, p1}, Lcf2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lc75;

    invoke-direct {p0, v0}, Lc75;-><init>(Lv75;)V

    return-object p0
.end method

.method private triggeredInAppMessage(Lm21;Ljava/lang/String;)La75;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm21;",
            "Ljava/lang/String;",
            ")",
            "La75<",
            "Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lm21;->e()Lm21$c;

    move-result-object v0

    sget-object v1, Lm21$c;->VANILLA_PAYLOAD:Lm21$c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lm21;->h()Ln21;

    move-result-object p0

    invoke-virtual {p0}, Ln21;->getCampaignId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lm21;->h()Ln21;

    move-result-object v0

    invoke-virtual {v0}, Ln21;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lm21;->e()Lm21$c;

    move-result-object v0

    sget-object v1, Lm21$c;->EXPERIMENTAL_PAYLOAD:Lm21$c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lm21;->c()Ll21;

    move-result-object v0

    invoke-virtual {v0}, Ll21;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lm21;->c()Ll21;

    move-result-object v1

    invoke-virtual {v1}, Ll21;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lm21;->d()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->abtIntegrationHelper:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    invoke-virtual {p1}, Lm21;->c()Ll21;

    move-result-object v2

    invoke-virtual {v2}, Ll21;->f()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;->setExperimentActive(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    :cond_1
    move-object p0, v0

    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Lm21;->getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    move-result-object v1

    invoke-virtual {p1}, Lm21;->d()Z

    move-result v2

    invoke-virtual {p1}, Lm21;->b()Ljava/util/Map;

    move-result-object p1

    invoke-static {v1, p0, v0, v2, p1}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->decode(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Lcom/google/firebase/inappmessaging/model/InAppMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getMessageType()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object p1

    sget-object v0, Lcom/google/firebase/inappmessaging/model/MessageType;->UNSUPPORTED:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Lg75;->b:Lg75;

    return-object p0

    :cond_2
    new-instance p1, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;

    invoke-direct {p1, p0, p2}, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;-><init>(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;)V

    invoke-static {p1}, La75;->b(Ljava/lang/Object;)Lq75;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lg75;->b:Lg75;

    return-object p0
.end method

.method public static synthetic u(Lm21;Lm21;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->compareByPriority(Lm21;Lm21;)I

    move-result p0

    return p0
.end method

.method public static synthetic v(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lf73;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$6(Lf73;)V

    return-void
.end method

.method private static validIID(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;->installationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;->installationTokenResult()Lcom/google/firebase/installations/InstallationTokenResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/installations/InstallationTokenResult;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic w(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic x(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$4(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic y(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$19(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic z(Ljava/lang/Throwable;)Lqq1;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$5(Ljava/lang/Throwable;)Lqq1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createFirebaseInAppMessageStream()Lgg3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgg3<",
            "Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->appForegroundEventFlowable:Lkw1;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->analyticsEventsManager:Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->getAnalyticsEventsFlowable()Lkw1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->programmaticTriggerEventFlowable:Lkw1;

    sget v3, Lgg3;->b:I

    const-string v3, "source1 is null"

    invoke-static {v0, v3}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "source2 is null"

    invoke-static {v1, v3}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "source3 is null"

    invoke-static {v2, v3}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    new-array v4, v3, [Ldt6;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    new-instance v1, Lxg3;

    invoke-direct {v1, v4}, Lxg3;-><init>([Ljava/lang/Object;)V

    sget v2, Lgg3;->b:I

    const-string v4, "maxConcurrency"

    invoke-static {v3, v4}, Lnq5;->b(ILjava/lang/String;)V

    const-string v4, "bufferSize"

    invoke-static {v2, v4}, Lnq5;->b(ILjava/lang/String;)V

    instance-of v4, v1, Lkd7;

    if-eqz v4, :cond_1

    check-cast v1, Lkd7;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lrg3;->c:Lrg3;

    goto :goto_0

    :cond_0
    new-instance v2, Lnh3$a;

    sget-object v4, Lrm3;->a:Lrm3$i;

    invoke-direct {v2, v1, v4}, Lnh3$a;-><init>(Ljava/lang/Object;Lxl3;)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    new-instance v4, Ltg3;

    invoke-direct {v4, v1, v2}, Ltg3;-><init>(Lxg3;I)V

    move-object v1, v4

    :goto_0
    new-instance v2, Lo34;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lng3;

    invoke-direct {v4, v1, v2}, Lng3;-><init>(Lgg3;Lqx1;)V

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/internal/Schedulers;->io()Lhe7;

    move-result-object v1

    invoke-virtual {v4, v1}, Lgg3;->c(Lhe7;)Leh3;

    move-result-object v1

    new-instance v2, Lup0;

    invoke-direct {v2, p0, v3}, Lup0;-><init>(Ljava/lang/Object;I)V

    const-string v3, "prefetch"

    invoke-static {v0, v3}, Lnq5;->b(ILjava/lang/String;)V

    instance-of v0, v1, Lkd7;

    if-eqz v0, :cond_3

    check-cast v1, Lkd7;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lrg3;->c:Lrg3;

    goto :goto_1

    :cond_2
    new-instance v1, Lnh3$a;

    invoke-direct {v1, v0, v2}, Lnh3$a;-><init>(Ljava/lang/Object;Lxl3;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Ljg3;

    sget-object v3, Ls03;->IMMEDIATE:Ls03;

    invoke-direct {v0, v1, v2, v3}, Ljg3;-><init>(Leh3;Lup0;Ls03;)V

    :goto_1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/Schedulers;->mainThread()Lhe7;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgg3;->c(Lhe7;)Leh3;

    move-result-object p0

    return-object p0
.end method

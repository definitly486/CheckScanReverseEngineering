.class public Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;


# static fields
.field private static final MESSAGE_CLICK:Ljava/lang/String; = "message click to metrics logger"


# instance fields
.field private final appForegroundRateLimit:Lcom/google/firebase/inappmessaging/model/RateLimit;

.field private final campaignCacheClient:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

.field private final clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

.field private final dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

.field private final impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

.field private final inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

.field private final metricsLoggerClient:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

.field private final rateLimiterClient:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

.field private final schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

.field private final triggeringEvent:Ljava/lang/String;

.field private wasImpressed:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/Schedulers;Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    iput-object p4, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->rateLimiterClient:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iput-object p5, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->campaignCacheClient:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    iput-object p6, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->appForegroundRateLimit:Lcom/google/firebase/inappmessaging/model/RateLimit;

    iput-object p7, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->metricsLoggerClient:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    iput-object p8, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    iput-object p9, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    iput-object p10, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->triggeringEvent:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->wasImpressed:Z

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->lambda$logToImpressionStore$6()V

    return-void
.end method

.method private actionMatches(Lcom/google/firebase/inappmessaging/model/Action;Lcom/google/firebase/inappmessaging/model/Action;)Z
    .locals 0

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/model/Action;->getActionUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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

    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/Action;->getActionUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/model/Action;->getActionUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->lambda$logToImpressionStore$5(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->lambda$logToImpressionStore$7(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->lambda$messageDismissed$2(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/gms/tasks/TaskCompletionSource;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->lambda$maybeToTask$9(Lcom/google/android/gms/tasks/TaskCompletionSource;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;Lcom/google/firebase/inappmessaging/model/Action;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->lambda$logMessageClick$3(Lcom/google/firebase/inappmessaging/model/Action;)V

    return-void
.end method

.method public static synthetic g(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->lambda$impressionDetected$0()V

    return-void
.end method

.method public static synthetic h(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Throwable;)Lx75;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->lambda$maybeToTask$10(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Throwable;)Lx75;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->lambda$updateWasImpressed$1()V

    return-void
.end method

.method public static synthetic j(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->lambda$displayErrorEncountered$4(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V

    return-void
.end method

.method public static synthetic k()V
    .locals 0

    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->lambda$logToImpressionStore$8()V

    return-void
.end method

.method private synthetic lambda$displayErrorEncountered$4(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->metricsLoggerClient:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->logRenderError(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V

    return-void
.end method

.method private synthetic lambda$impressionDetected$0()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->metricsLoggerClient:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->logImpression(Lcom/google/firebase/inappmessaging/model/InAppMessage;)V

    return-void
.end method

.method private synthetic lambda$logMessageClick$3(Lcom/google/firebase/inappmessaging/model/Action;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->metricsLoggerClient:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->logMessageClick(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/model/Action;)V

    return-void
.end method

.method private static synthetic lambda$logToImpressionStore$5(Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "Impression store write failure"

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$logToImpressionStore$6()V
    .locals 1

    const-string v0, "Impression store write success"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$logToImpressionStore$7(Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "Rate limiter client write failure"

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$logToImpressionStore$8()V
    .locals 1

    const-string v0, "Rate limiter client write success"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static lambda$maybeToTask$10(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Throwable;)Lx75;
    .locals 1

    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    sget-object p0, Lg75;->b:Lg75;

    return-object p0
.end method

.method private static synthetic lambda$maybeToTask$9(Lcom/google/android/gms/tasks/TaskCompletionSource;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-object v0
.end method

.method private synthetic lambda$messageDismissed$2(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->metricsLoggerClient:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->logDismiss(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;)V

    return-void
.end method

.method private synthetic lambda$updateWasImpressed$1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->wasImpressed:Z

    return-void
.end method

.method private logActionNotTaken(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logActionNotTaken(Ljava/lang/String;La75;)V

    return-void
.end method

.method private logActionNotTaken(Ljava/lang/String;La75;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "La75<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string p0, "Not recording: %s. Reason: %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getCampaignMetadata()Lcom/google/firebase/inappmessaging/model/CampaignMetadata;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/model/CampaignMetadata;->getIsTestMessage()Z

    move-result p2

    const-string v0, "Not recording: "

    if-eqz p2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Reason: Message is test message"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isAutomaticDataCollectionEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Reason: Data collection is disabled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private logImpressionIfNeeded(Lqp1;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqp1;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->wasImpressed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->impressionDetected()Lcom/google/android/gms/tasks/Task;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lum3;

    if-eqz v0, :cond_1

    check-cast p1, Lum3;

    invoke-interface {p1}, Lum3;->b()Lo75;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ln75;

    invoke-direct {v0, p1}, Ln75;-><init>(Lqp1;)V

    move-object p1, v0

    :goto_0
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/Schedulers;->io()Lhe7;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->maybeToTask(La75;Lhe7;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private logMessageClick(Lcom/google/firebase/inappmessaging/model/Action;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/Action;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "Attempting to record: message click to metrics logger"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    new-instance v0, Lto2;

    invoke-direct {v0, p0, p1}, Lto2;-><init>(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;Lcom/google/firebase/inappmessaging/model/Action;)V

    new-instance p1, Lcq1;

    invoke-direct {p1, v0}, Lcq1;-><init>(Lh6;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logImpressionIfNeeded(Lqp1;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private logToImpressionStore()Lqp1;
    .locals 12

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getCampaignMetadata()Lcom/google/firebase/inappmessaging/model/CampaignMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/CampaignMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to record message impression in impression store for id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    invoke-static {}, Li21;->b()Li21$b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-interface {v3}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Li21$b;->d(J)V

    invoke-virtual {v2, v0}, Li21$b;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object v0

    check-cast v0, Li21;

    invoke-virtual {v1, v0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->storeImpression(Li21;)Lqp1;

    move-result-object v3

    new-instance v5, Luo2;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Loq1;

    sget-object v4, Lrm3;->d:Lrm3$e;

    sget-object v6, Lrm3;->c:Lrm3$d;

    move-object v7, v6

    invoke-direct/range {v2 .. v7}, Loq1;-><init>(Lqp1;Lqx1;Lqx1;Lh6;Lh6;)V

    new-instance v0, Lvo2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v0}, Lqp1;->e(Lh6;)Loq1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->triggeringEvent:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->isAppForegroundEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->rateLimiterClient:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->appForegroundRateLimit:Lcom/google/firebase/inappmessaging/model/RateLimit;

    invoke-virtual {v1, p0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->increment(Lcom/google/firebase/inappmessaging/model/RateLimit;)Lqp1;

    move-result-object v7

    new-instance v9, Lwo2;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v10, v6

    new-instance v6, Loq1;

    move-object v11, v10

    move-object v8, v4

    invoke-direct/range {v6 .. v11}, Loq1;-><init>(Lqp1;Lqx1;Lqx1;Lh6;Lh6;)V

    new-instance p0, Lxo2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, p0}, Lqp1;->e(Lh6;)Loq1;

    move-result-object p0

    new-instance v1, Lnq1;

    invoke-direct {v1, p0}, Lnq1;-><init>(Lqp1;)V

    invoke-virtual {v1, v0}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static maybeToTask(La75;Lhe7;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La75<",
            "TT;>;",
            "Lhe7;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lzo2;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lzo2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lw75;

    sget-object v3, Lrm3;->d:Lrm3$e;

    invoke-direct {v2, p0, v1, v3}, Lw75;-><init>(La75;Lqx1;Lqx1;)V

    new-instance p0, Lap2;

    invoke-direct {p0, v0}, Lap2;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance v1, Lm75;

    invoke-direct {v1, p0}, Lm75;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p0, Lz75;

    invoke-direct {p0, v2, v1}, Lz75;-><init>(La75;La75;)V

    new-instance v1, Lf90;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lf90;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lu75;

    invoke-direct {v2, p0, v1}, Lu75;-><init>(La75;Lxl3;)V

    const-string p0, "scheduler is null"

    invoke-static {p1, p0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ly75;

    invoke-direct {p0, v2, p1}, Ly75;-><init>(La75;Lhe7;)V

    new-instance p1, Lb75;

    sget-object v1, Lrm3;->e:Lrm3$l;

    sget-object v2, Lrm3;->c:Lrm3$d;

    invoke-direct {p1, v3, v1, v2}, Lb75;-><init>(Lqx1;Lqx1;Lh6;)V

    invoke-virtual {p0, p1}, La75;->a(Lt75;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private shouldLog()Z
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isAutomaticDataCollectionEnabled()Z

    move-result p0

    return p0
.end method

.method private updateWasImpressed()Lqp1;
    .locals 1

    new-instance v0, Lro2;

    invoke-direct {v0, p0}, Lro2;-><init>(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;)V

    new-instance p0, Lcq1;

    invoke-direct {p0, v0}, Lcq1;-><init>(Lh6;)V

    return-object p0
.end method


# virtual methods
.method public displayErrorEncountered(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Attempting to record: render error to metrics logger"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    new-instance v0, Lyo2;

    invoke-direct {v0, p0, p1}, Lyo2;-><init>(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V

    new-instance p1, Lcq1;

    invoke-direct {p1, v0}, Lcq1;-><init>(Lh6;)V

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logToImpressionStore()Lqp1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->updateWasImpressed()Lqp1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object p1

    instance-of v0, p1, Lum3;

    if-eqz v0, :cond_0

    check-cast p1, Lum3;

    invoke-interface {p1}, Lum3;->b()Lo75;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ln75;

    invoke-direct {v0, p1}, Ln75;-><init>(Lqp1;)V

    move-object p1, v0

    :goto_0
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/Schedulers;->io()Lhe7;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->maybeToTask(La75;Lhe7;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p1, "render error to metrics logger"

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logActionNotTaken(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public impressionDetected()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->wasImpressed:Z

    if-nez v0, :cond_1

    const-string v0, "Attempting to record: message impression to metrics logger"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    new-instance v0, Lbp2;

    invoke-direct {v0, p0}, Lbp2;-><init>(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;)V

    new-instance v1, Lcq1;

    invoke-direct {v1, v0}, Lcq1;-><init>(Lh6;)V

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logToImpressionStore()Lqp1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->updateWasImpressed()Lqp1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object v0

    instance-of v1, v0, Lum3;

    if-eqz v1, :cond_0

    check-cast v0, Lum3;

    invoke-interface {v0}, Lum3;->b()Lo75;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ln75;

    invoke-direct {v1, v0}, Ln75;-><init>(Lqp1;)V

    move-object v0, v1

    :goto_0
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/Schedulers;->io()Lhe7;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->maybeToTask(La75;Lhe7;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "message impression to metrics logger"

    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logActionNotTaken(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public messageClicked()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getAction()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->messageClicked(Lcom/google/firebase/inappmessaging/model/Action;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public messageClicked(Lcom/google/firebase/inappmessaging/model/Action;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/Action;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/Action;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;->CLICK:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->messageDismissed(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logMessageClick(Lcom/google/firebase/inappmessaging/model/Action;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p1, "message click to metrics logger"

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logActionNotTaken(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public messageDismissed(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Attempting to record: message dismissal to metrics logger"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    new-instance v0, Lso2;

    invoke-direct {v0, p0, p1}, Lso2;-><init>(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;)V

    new-instance p1, Lcq1;

    invoke-direct {p1, v0}, Lcq1;-><init>(Lh6;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logImpressionIfNeeded(Lqp1;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "message dismissal to metrics logger"

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logActionNotTaken(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public wasImpressed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->wasImpressed:Z

    return p0
.end method

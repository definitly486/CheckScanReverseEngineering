.class public Lio/appmetrica/analytics/push/provider/firebase/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/provider/api/PushServiceController;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:J

.field public final c:Lcl4;

.field public final d:Lcl4;

.field public e:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    new-instance v0, Lio/appmetrica/analytics/push/provider/firebase/impl/k;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/push/provider/firebase/impl/k;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/push/provider/firebase/impl/f;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/push/provider/firebase/impl/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/push/provider/firebase/impl/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/f;->a:Landroid/content/Context;

    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/f;->b:J

    new-instance p1, Lio/appmetrica/analytics/push/provider/firebase/impl/e;

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/push/provider/firebase/impl/e;-><init>(Lio/appmetrica/analytics/push/provider/firebase/impl/n;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/f;->c:Lcl4;

    new-instance p1, Lio/appmetrica/analytics/push/provider/firebase/impl/c;

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/push/provider/firebase/impl/c;-><init>(Lio/appmetrica/analytics/push/provider/firebase/impl/n;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/f;->d:Lcl4;

    return-void
.end method

.method public static a(Lcom/google/firebase/messaging/FirebaseMessaging;)Lio/appmetrica/analytics/push/provider/firebase/impl/b;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v3, Lef1;

    invoke-direct {v3, v2}, Lef1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    sget-object v3, Lio/appmetrica/analytics/push/provider/firebase/impl/g;->a:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lio/appmetrica/analytics/push/provider/firebase/impl/b;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lio/appmetrica/analytics/push/provider/firebase/impl/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v2, Lio/appmetrica/analytics/push/provider/firebase/impl/b;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v2, v0, p0, v1}, Lio/appmetrica/analytics/push/provider/firebase/impl/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-object v2

    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string v2, "token retrieval timeout"

    invoke-direct {p0, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    new-instance v2, Lio/appmetrica/analytics/push/provider/firebase/impl/b;

    invoke-direct {v2, v0, p0, v1}, Lio/appmetrica/analytics/push/provider/firebase/impl/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-object v2
.end method

.method public static final a(Ljava/util/concurrent/CountDownLatch;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 76
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;
    .locals 0

    .line 74
    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/f;->a:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :catchall_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    return-object p0
.end method

.method public final getExecutionRestrictions()Lio/appmetrica/analytics/push/provider/api/PushServiceExecutionRestrictions;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/provider/firebase/impl/d;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/push/provider/firebase/impl/d;-><init>(Lio/appmetrica/analytics/push/provider/firebase/impl/f;)V

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 6

    iget-object p0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/f;->e:Lcom/google/firebase/messaging/FirebaseMessaging;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p0

    const-string v1, "Attempt to get push token failed since firebaseMessaging is null"

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportEvent(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lio/appmetrica/analytics/push/provider/firebase/impl/f;->a(Lcom/google/firebase/messaging/FirebaseMessaging;)Lio/appmetrica/analytics/push/provider/firebase/impl/b;

    move-result-object v1

    iget-object v2, v1, Lio/appmetrica/analytics/push/provider/firebase/impl/b;->c:Lcl4;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, v1, Lio/appmetrica/analytics/push/provider/firebase/impl/b;->a:Ljava/lang/String;

    return-object p0

    :cond_1
    sget-object v2, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    iget-object v1, v1, Lio/appmetrica/analytics/push/provider/firebase/impl/b;->b:Ljava/lang/Throwable;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Failed to get token, will retry once"

    invoke-virtual {v2, v1, v5, v4}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lio/appmetrica/analytics/push/provider/firebase/impl/f;->a(Lcom/google/firebase/messaging/FirebaseMessaging;)Lio/appmetrica/analytics/push/provider/firebase/impl/b;

    move-result-object p0

    iget-object v1, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/b;->c:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/b;->a:Ljava/lang/String;

    return-object p0

    :cond_2
    iget-object v1, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/b;->b:Ljava/lang/Throwable;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Failed to get token after retry"

    invoke-virtual {v2, v1, v4, v3}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object v1

    const-string v2, "Attempt to get push token failed"

    iget-object p0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/b;->b:Ljava/lang/Throwable;

    invoke-virtual {v1, v2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final getTransportId()Ljava/lang/String;
    .locals 0

    const-string p0, "firebase"

    return-object p0
.end method

.method public final register()Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/f;->c:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/push/provider/firebase/impl/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v1}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    iget-object v2, v0, Lio/appmetrica/analytics/push/provider/firebase/impl/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    iget-object v2, v0, Lio/appmetrica/analytics/push/provider/firebase/impl/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/FirebaseOptions$Builder;->setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    iget-object v2, v0, Lio/appmetrica/analytics/push/provider/firebase/impl/m;->a:Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lio/appmetrica/analytics/push/provider/firebase/impl/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    :cond_0
    iget-object v2, v0, Lio/appmetrica/analytics/push/provider/firebase/impl/m;->d:Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lio/appmetrica/analytics/push/provider/firebase/impl/m;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    :cond_1
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/push/provider/firebase/impl/f;->a(Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object v0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/f;->e:Lcom/google/firebase/messaging/FirebaseMessaging;

    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_2
    sget-object p0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Google play services not available"

    invoke-virtual {p0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p0

    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportEvent(Ljava/lang/String;)V

    return v0
.end method

.method public final shouldSendToken(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/provider/firebase/impl/f;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

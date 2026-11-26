.class public abstract Lcom/tapjoy/internal/f2;
.super Lcom/tapjoy/internal/d2;
.source "SourceFile"


# instance fields
.field public b:Lcom/tapjoy/TJCurrency;

.field public c:Lcom/tapjoy/TJSession;

.field public final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/d2;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/f2;->b:Lcom/tapjoy/TJCurrency;

    iput-object v0, p0, Lcom/tapjoy/internal/f2;->c:Lcom/tapjoy/TJSession;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/f2;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
    .locals 1

    .line 223
    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/TJUser;->setUserIdRequest(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 224
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not call "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " because Tapjoy SDK has not successfully connected."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/tapjoy/TJGetUserRevenueListener;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJUser;->getUserRevenue(Lcom/tapjoy/TJGetUserRevenueListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/TJGetUserRevenueListener;)V
    .locals 2

    .line 220
    const-string v0, "getUserRevenue"

    invoke-static {v0}, Lcom/tapjoy/internal/f2;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object p0, p0, Lcom/tapjoy/internal/f2;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcy2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcy2;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 222
    const-string p0, "Tapjoy SDK is not connected"

    invoke-interface {p1, p0}, Lcom/tapjoy/TJGetUserRevenueListener;->onGetUserRevenueResponseFailure(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 4

    monitor-enter p0

    if-eqz p3, :cond_3

    :try_start_0
    const-string v0, "TJC_OPTION_ENABLE_LOGGING"

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->setDebugEnabled(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :goto_0
    const-string v0, "TJC_OPTION_LOGGING_LEVEL"

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :try_start_1
    instance-of v1, v0, Lcom/tapjoy/TJLogLevel;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/tapjoy/TJLogLevel;

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->setLoggingLevel(Lcom/tapjoy/TJLogLevel;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/TJLogLevel;->valueOf(I)Lcom/tapjoy/TJLogLevel;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->setLoggingLevel(Lcom/tapjoy/TJLogLevel;)V

    goto :goto_2

    :cond_2
    check-cast v0, Lcom/tapjoy/TJLogLevel;

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->setLoggingLevel(Lcom/tapjoy/TJLogLevel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse logging level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_5

    const-string p1, "The application context is NULL"

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_4

    const-string p1, "The application context is NULL"

    invoke-virtual {p4, v1, p1}, Lcom/tapjoy/TJConnectListener;->onConnectFailure(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    return v0

    :cond_5
    :try_start_3
    invoke-static {p1}, Lcom/tapjoy/internal/i;->a(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string p1, "The SDK key is NULL. A valid SDK key is required to connect successfully to Tapjoy"

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_6

    const-string p1, "The SDK key is NULL. A valid SDK key is required to connect successfully to Tapjoy"

    invoke-virtual {p4, v1, p1}, Lcom/tapjoy/TJConnectListener;->onConnectFailure(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    monitor-exit p0

    return v0

    :cond_7
    :try_start_4
    sget-object v2, Lcom/tapjoy/TapjoyAppSettings;->INSTANCE:Lcom/tapjoy/TapjoyAppSettings;

    invoke-virtual {v2, p1}, Lcom/tapjoy/TapjoyAppSettings;->initSettings(Landroid/content/Context;)V

    new-instance v2, Lcom/tapjoy/TJCurrency;

    invoke-direct {v2, p1}, Lcom/tapjoy/TJCurrency;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tapjoy/internal/f2;->b:Lcom/tapjoy/TJCurrency;

    new-instance v2, Lcom/tapjoy/TJSession;

    invoke-direct {v2, p1}, Lcom/tapjoy/TJSession;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tapjoy/internal/f2;->c:Lcom/tapjoy/TJSession;

    sget-object v3, Lcom/tapjoy/internal/c;->e:Lcom/tapjoy/internal/c;

    iput-object v2, v3, Lcom/tapjoy/internal/c;->c:Lcom/tapjoy/TJSession;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v2

    new-instance v3, Lcom/tapjoy/internal/e2;

    invoke-direct {v3, p4}, Lcom/tapjoy/internal/e2;-><init>(Lcom/tapjoy/TJConnectListener;)V

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)V
    :try_end_4
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/tapjoy/TapjoyException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object p2, p0, Lcom/tapjoy/internal/f2;->c:Lcom/tapjoy/TJSession;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1, p3}, Lcom/tapjoy/TJSession;->setAutomaticSessionTracking(Landroid/content/Context;Ljava/util/Hashtable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    monitor-exit p0

    return v1

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :goto_3
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_9

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v1, p1}, Lcom/tapjoy/TJConnectListener;->onConnectFailure(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_9
    monitor-exit p0

    return v0

    :goto_4
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_a

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v1, p1}, Lcom/tapjoy/TJConnectListener;->onConnectFailure(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_a
    monitor-exit p0

    return v0

    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
    .locals 2

    const-string v0, "setUserID"

    invoke-static {v0}, Lcom/tapjoy/internal/f2;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tapjoy/internal/f2;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lxt;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Lxt;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "Tapjoy SDK is not connected"

    invoke-interface {p2, p0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDFailure(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {p2, p1, p0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDFailure(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

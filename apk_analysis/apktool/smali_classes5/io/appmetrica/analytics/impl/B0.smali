.class public final Lio/appmetrica/analytics/impl/B0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/db;


# static fields
.field public static volatile e:Lio/appmetrica/analytics/impl/B0; = null

.field public static volatile f:Z = false

.field public static volatile g:Z


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/u0;

.field public final c:Ljava/util/concurrent/FutureTask;

.field public final d:Lio/appmetrica/analytics/impl/Pa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/B0;->a:Landroid/content/Context;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p4;->c()Lio/appmetrica/analytics/impl/u0;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/B0;->b:Lio/appmetrica/analytics/impl/u0;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/p4;->g()Lio/appmetrica/analytics/impl/f4;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/u0;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/f4;)Lio/appmetrica/analytics/impl/Pa;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/B0;->d:Lio/appmetrica/analytics/impl/Pa;

    new-instance p1, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lsz;

    invoke-direct {v0, p0}, Lsz;-><init>(Lio/appmetrica/analytics/impl/B0;)V

    invoke-direct {p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/B0;->c:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/B0;
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/impl/B0;->e:Lio/appmetrica/analytics/impl/B0;

    if-nez v0, :cond_1

    const-class v1, Lio/appmetrica/analytics/impl/B0;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/appmetrica/analytics/impl/B0;->e:Lio/appmetrica/analytics/impl/B0;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/B0;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/B0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/B0;->j()V

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/p4;->c:Lio/appmetrica/analytics/impl/f4;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p0

    new-instance v2, Lio/appmetrica/analytics/impl/A0;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/A0;-><init>(Lio/appmetrica/analytics/impl/B0;)V

    invoke-interface {p0, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    sput-object v0, Lio/appmetrica/analytics/impl/B0;->e:Lio/appmetrica/analytics/impl/B0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/location/Location;)V
    .locals 1

    .line 47
    invoke-static {}, Lio/appmetrica/analytics/impl/B0;->c()Lio/appmetrica/analytics/impl/Uc;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Uc;->a(Landroid/location/Location;)V

    return-void
.end method

.method public static declared-synchronized a(Lio/appmetrica/analytics/impl/B0;)V
    .locals 1

    const-class v0, Lio/appmetrica/analytics/impl/B0;

    monitor-enter v0

    .line 55
    :try_start_0
    sput-object p0, Lio/appmetrica/analytics/impl/B0;->e:Lio/appmetrica/analytics/impl/B0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-static {}, Lio/appmetrica/analytics/impl/B0;->c()Lio/appmetrica/analytics/impl/Uc;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Uc;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-static {}, Lio/appmetrica/analytics/impl/B0;->c()Lio/appmetrica/analytics/impl/Uc;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/appmetrica/analytics/impl/Uc;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 48
    invoke-static {}, Lio/appmetrica/analytics/impl/B0;->c()Lio/appmetrica/analytics/impl/Uc;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Uc;->a(Z)V

    return-void
.end method

.method public static b(Z)V
    .locals 2

    .line 28
    invoke-static {}, Lio/appmetrica/analytics/impl/B0;->c()Lio/appmetrica/analytics/impl/Uc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lio/appmetrica/analytics/impl/Uc;->a(ZZ)V

    return-void
.end method

.method public static c()Lio/appmetrica/analytics/impl/Uc;
    .locals 1

    invoke-static {}, Lio/appmetrica/analytics/impl/B0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/appmetrica/analytics/impl/B0;->e:Lio/appmetrica/analytics/impl/B0;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/p4;->b:Lio/appmetrica/analytics/impl/P7;

    return-object v0
.end method

.method public static clearAppEnvironment()V
    .locals 1

    invoke-static {}, Lio/appmetrica/analytics/impl/B0;->c()Lio/appmetrica/analytics/impl/Uc;

    move-result-object v0

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Uc;->clearAppEnvironment()V

    return-void
.end method

.method public static declared-synchronized k()Z
    .locals 2

    const-class v0, Lio/appmetrica/analytics/impl/B0;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lio/appmetrica/analytics/impl/B0;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static l()Z
    .locals 1

    sget-boolean v0, Lio/appmetrica/analytics/impl/B0;->g:Z

    return v0
.end method

.method public static declared-synchronized m()Z
    .locals 3

    const-class v0, Lio/appmetrica/analytics/impl/B0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/B0;->e:Lio/appmetrica/analytics/impl/B0;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lio/appmetrica/analytics/impl/B0;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object v1

    invoke-interface {v1}, Lio/appmetrica/analytics/impl/Qa;->i()Lio/appmetrica/analytics/impl/yc;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized n()V
    .locals 2

    const-class v0, Lio/appmetrica/analytics/impl/B0;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lio/appmetrica/analytics/impl/B0;->e:Lio/appmetrica/analytics/impl/B0;

    const/4 v1, 0x0

    sput-boolean v1, Lio/appmetrica/analytics/impl/B0;->f:Z

    sput-boolean v1, Lio/appmetrica/analytics/impl/B0;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lio/appmetrica/analytics/impl/B0;->c()Lio/appmetrica/analytics/impl/Uc;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/appmetrica/analytics/impl/Uc;->putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized q()V
    .locals 2

    const-class v0, Lio/appmetrica/analytics/impl/B0;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lio/appmetrica/analytics/impl/B0;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static r()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lio/appmetrica/analytics/impl/B0;->g:Z

    return-void
.end method

.method public static s()Lio/appmetrica/analytics/impl/B0;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/B0;->e:Lio/appmetrica/analytics/impl/B0;

    return-object v0
.end method

.method public static setDataSendingEnabled(Z)V
    .locals 1

    invoke-static {}, Lio/appmetrica/analytics/impl/B0;->c()Lio/appmetrica/analytics/impl/Uc;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Uc;->setDataSendingEnabled(Z)V

    return-void
.end method

.method public static setUserProfileID(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lio/appmetrica/analytics/impl/B0;->c()Lio/appmetrica/analytics/impl/Uc;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Uc;->setUserProfileID(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/cb;
    .locals 0

    .line 56
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Qa;->a()Lio/appmetrica/analytics/impl/cb;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Qa;->a(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Qa;->a(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Qa;->a(Lio/appmetrica/analytics/ReporterConfig;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/StartupParamsCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Qa;->a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V

    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/s4;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/appmetrica/analytics/impl/B0;->d:Lio/appmetrica/analytics/impl/Pa;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Pa;->a()Lio/appmetrica/analytics/impl/s4;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .locals 1

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Qa;->a(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/B0;->a:Landroid/content/Context;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p1

    iget-object p1, p1, Lio/appmetrica/analytics/impl/p4;->c:Lio/appmetrica/analytics/impl/f4;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    new-instance v0, Lio/appmetrica/analytics/impl/A1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/A1;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/bb;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Qa;->c(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/bb;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lio/appmetrica/analytics/impl/B0;->d:Lio/appmetrica/analytics/impl/Pa;

    invoke-interface {v0, p1, p0}, Lio/appmetrica/analytics/impl/Pa;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/db;)V

    return-void
.end method

.method public final d()Lio/appmetrica/analytics/impl/ka;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Qa;->d()Lio/appmetrica/analytics/impl/ka;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 1

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Qa;->b(Lio/appmetrica/analytics/AppMetricaConfig;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/B0;->a:Landroid/content/Context;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p1

    iget-object p1, p1, Lio/appmetrica/analytics/impl/p4;->c:Lio/appmetrica/analytics/impl/f4;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    new-instance v0, Lio/appmetrica/analytics/impl/A1;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/A1;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Qa;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f()Lio/appmetrica/analytics/impl/Qa;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/B0;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Qa;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Qa;->g()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lio/appmetrica/analytics/AdvIdentifiersResult;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Qa;->h()Lio/appmetrica/analytics/AdvIdentifiersResult;

    move-result-object p0

    return-object p0
.end method

.method public final i()Lio/appmetrica/analytics/impl/yc;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Qa;->i()Lio/appmetrica/analytics/impl/yc;

    move-result-object p0

    return-object p0
.end method

.method public final j()V
    .locals 3

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/p4;->c:Lio/appmetrica/analytics/impl/f4;

    new-instance v1, Lrz;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lrz;-><init>(Ljava/lang/Object;I)V

    iget-object p0, v0, Lio/appmetrica/analytics/impl/f4;->a:Lio/appmetrica/analytics/impl/e4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lio/appmetrica/analytics/impl/Ld;

    new-instance p0, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IAA-INIT_CORE-"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lio/appmetrica/analytics/impl/Ld;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final o()V
    .locals 2

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/p4;->s:Lio/appmetrica/analytics/impl/ra;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/B0;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/ra;->a(Landroid/content/Context;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/B0;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/p4;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/Hd;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Hd;->a()Lio/appmetrica/analytics/internal/IdentifiersResult;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/B0;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->run()V

    return-void
.end method

.method public final p()Lio/appmetrica/analytics/impl/Qa;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/B0;->b:Lio/appmetrica/analytics/impl/u0;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/B0;->a:Landroid/content/Context;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/B0;->d:Lio/appmetrica/analytics/impl/Pa;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lio/appmetrica/analytics/impl/u0;->d:Lio/appmetrica/analytics/impl/Qa;

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/u0;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lio/appmetrica/analytics/impl/H0;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/H0;-><init>()V

    iput-object v2, v0, Lio/appmetrica/analytics/impl/u0;->d:Lio/appmetrica/analytics/impl/Qa;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v2, Lio/appmetrica/analytics/impl/F0;

    invoke-direct {v2, v1, p0}, Lio/appmetrica/analytics/impl/F0;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Pa;)V

    iput-object v2, v0, Lio/appmetrica/analytics/impl/u0;->d:Lio/appmetrica/analytics/impl/Qa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw p0
.end method

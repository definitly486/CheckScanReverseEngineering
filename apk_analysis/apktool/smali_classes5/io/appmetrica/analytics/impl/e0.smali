.class public final Lio/appmetrica/analytics/impl/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/C0;

.field public final b:Lio/appmetrica/analytics/impl/pl;

.field public final c:Lio/appmetrica/analytics/impl/f4;

.field public final d:J


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/C0;Lio/appmetrica/analytics/impl/pl;Lio/appmetrica/analytics/impl/f4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/e0;->a:Lio/appmetrica/analytics/impl/C0;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/e0;->b:Lio/appmetrica/analytics/impl/pl;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/e0;->c:Lio/appmetrica/analytics/impl/f4;

    const-wide/16 p1, 0x2710

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/e0;->d:J

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/e0;Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lio/appmetrica/analytics/impl/e0;->a:Lio/appmetrica/analytics/impl/C0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    invoke-static {p1}, Lio/appmetrica/analytics/impl/B0;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/B0;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p1

    .line 80
    invoke-interface {p1, p2}, Lio/appmetrica/analytics/impl/Qa;->a(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    .line 81
    iget-object p0, p0, Lio/appmetrica/analytics/impl/B0;->a:Landroid/content/Context;

    .line 82
    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p1

    .line 83
    iget-object p1, p1, Lio/appmetrica/analytics/impl/p4;->c:Lio/appmetrica/analytics/impl/f4;

    .line 84
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    new-instance p2, Lio/appmetrica/analytics/impl/A1;

    invoke-direct {p2, p0}, Lio/appmetrica/analytics/impl/A1;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/e0;->a:Lio/appmetrica/analytics/impl/C0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/impl/C0;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getMainPublicOrAnonymousLogger()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Session autotracking enabled"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/e0;->b:Lio/appmetrica/analytics/impl/pl;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/pl;->a()Lio/appmetrica/analytics/impl/n;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/e0;->a:Lio/appmetrica/analytics/impl/C0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/B0;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/B0;

    move-result-object v0

    iget-object v1, v0, Lio/appmetrica/analytics/impl/B0;->d:Lio/appmetrica/analytics/impl/Pa;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lio/appmetrica/analytics/impl/Pa;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/db;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/e0;->c:Lio/appmetrica/analytics/impl/f4;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    new-instance v1, Ltt9;

    invoke-direct {v1, p0, p1, p2}, Ltt9;-><init>(Lio/appmetrica/analytics/impl/e0;Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    check-cast v0, Lio/appmetrica/analytics/impl/M9;

    iget-object p1, v0, Lio/appmetrica/analytics/impl/M9;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lio/appmetrica/analytics/impl/e0;->a:Lio/appmetrica/analytics/impl/C0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/impl/C0;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

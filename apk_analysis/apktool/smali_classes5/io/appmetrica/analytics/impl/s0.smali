.class public final Lio/appmetrica/analytics/impl/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:J


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

.field public c:Z

.field public d:Lio/appmetrica/analytics/internal/IAppMetricaService;

.field public e:Ljava/util/concurrent/CountDownLatch;

.field public final f:Ljava/lang/Object;

.field public final g:Lio/appmetrica/analytics/impl/U1;

.field public final h:Lio/appmetrica/analytics/impl/V1;

.field public final i:Lio/appmetrica/analytics/impl/q0;

.field public final j:Lio/appmetrica/analytics/impl/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2710

    sput-wide v0, Lio/appmetrica/analytics/impl/s0;->k:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V
    .locals 2

    .line 43
    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p4;->e()Lio/appmetrica/analytics/impl/U1;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/V1;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/V1;-><init>()V

    .line 44
    invoke-direct {p0, p1, p2, v0, v1}, Lio/appmetrica/analytics/impl/s0;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/impl/U1;Lio/appmetrica/analytics/impl/V1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/impl/U1;Lio/appmetrica/analytics/impl/V1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/s0;->d:Lio/appmetrica/analytics/internal/IAppMetricaService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/s0;->f:Ljava/lang/Object;

    new-instance v0, Lio/appmetrica/analytics/impl/q0;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/q0;-><init>(Lio/appmetrica/analytics/impl/s0;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/s0;->i:Lio/appmetrica/analytics/impl/q0;

    new-instance v0, Lio/appmetrica/analytics/impl/r0;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/r0;-><init>(Lio/appmetrica/analytics/impl/s0;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/s0;->j:Lio/appmetrica/analytics/impl/r0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/s0;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/s0;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/s0;->c:Z

    iput-object p3, p0, Lio/appmetrica/analytics/impl/s0;->g:Lio/appmetrica/analytics/impl/U1;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/s0;->h:Lio/appmetrica/analytics/impl/V1;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 0

    monitor-enter p0

    .line 28
    monitor-exit p0

    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 3

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/s0;->e:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    return-void
.end method

.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/s0;->d:Lio/appmetrica/analytics/internal/IAppMetricaService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/s0;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/s0;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/s0;->i:Lio/appmetrica/analytics/impl/q0;

    invoke-interface {v1, p0}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/s0;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/s0;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/s0;->i:Lio/appmetrica/analytics/impl/q0;

    invoke-interface {v0, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    iget-boolean v2, p0, Lio/appmetrica/analytics/impl/s0;->c:Z

    if-nez v2, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/s0;->i:Lio/appmetrica/analytics/impl/q0;

    sget-wide v2, Lio/appmetrica/analytics/impl/s0;->k:J

    invoke-interface {v0, p0, v2, v3}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

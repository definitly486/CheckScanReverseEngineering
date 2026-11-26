.class public final Lio/appmetrica/analytics/impl/K9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ak;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->w()Lio/appmetrica/analytics/impl/Ak;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/K9;->a:Lio/appmetrica/analytics/impl/Ak;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ak;->c()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/K9;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    return-void
.end method


# virtual methods
.method public final getDefaultExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/K9;->a:Lio/appmetrica/analytics/impl/Ak;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Ak;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p0

    return-object p0
.end method

.method public final getInterruptionThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lio/appmetrica/analytics/impl/Ld;

    new-instance p1, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;

    const-string p2, "-"

    invoke-static {p0, p2}, Lfh;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p2, Lio/appmetrica/analytics/impl/Ld;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p3, p0}, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getModuleExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/K9;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    return-object p0
.end method

.method public final getReportRunnableExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/K9;->a:Lio/appmetrica/analytics/impl/Ak;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Ak;->f()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p0

    return-object p0
.end method

.method public final getSupportIOExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/K9;->a:Lio/appmetrica/analytics/impl/Ak;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Ak;->g()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p0

    return-object p0
.end method

.method public final getUiExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/K9;->a:Lio/appmetrica/analytics/impl/Ak;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ak;->h:Lio/appmetrica/analytics/impl/yk;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ak;->h:Lio/appmetrica/analytics/impl/yk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ak;->a:Lio/appmetrica/analytics/impl/zk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/appmetrica/analytics/impl/yk;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/yk;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/Ak;->h:Lio/appmetrica/analytics/impl/yk;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ak;->h:Lio/appmetrica/analytics/impl/yk;

    return-object p0
.end method

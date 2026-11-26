.class public final Lio/appmetrica/analytics/idsync/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

.field public final b:J

.field public final c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

.field public final d:Lio/appmetrica/analytics/idsync/impl/q;

.field public volatile e:Lio/appmetrica/analytics/idsync/impl/c;

.field public volatile f:Z

.field public final g:Lio/appmetrica/analytics/idsync/impl/i;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/k;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lio/appmetrica/analytics/idsync/impl/k;->b:J

    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getExecutorProvider()Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;->getModuleExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/k;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v0, Lio/appmetrica/analytics/idsync/impl/q;

    new-instance v1, Lio/appmetrica/analytics/idsync/impl/M;

    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getServiceStorageProvider()Lio/appmetrica/analytics/modulesapi/internal/service/ServiceStorageProvider;

    move-result-object v2

    const-string v3, "id-sync"

    invoke-interface {v2, v3}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceStorageProvider;->modulePreferences(Ljava/lang/String;)Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/idsync/impl/M;-><init>(Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;)V

    invoke-direct {v0, p1, v1, p2}, Lio/appmetrica/analytics/idsync/impl/q;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/idsync/impl/M;Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;)V

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/k;->d:Lio/appmetrica/analytics/idsync/impl/q;

    new-instance p1, Lio/appmetrica/analytics/idsync/impl/i;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/idsync/impl/i;-><init>(Lio/appmetrica/analytics/idsync/impl/k;)V

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/k;->g:Lio/appmetrica/analytics/idsync/impl/i;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/idsync/impl/c;)Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lio/appmetrica/analytics/idsync/impl/c;->a:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/c;->c:Ljava/util/List;

    .line 85
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized a(Lio/appmetrica/analytics/idsync/impl/c;Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/k;->d:Lio/appmetrica/analytics/idsync/impl/q;

    iput-object p2, v0, Lio/appmetrica/analytics/idsync/impl/q;->c:Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

    iget-object p2, p0, Lio/appmetrica/analytics/idsync/impl/k;->e:Lio/appmetrica/analytics/idsync/impl/c;

    invoke-static {p2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/k;->e:Lio/appmetrica/analytics/idsync/impl/c;

    invoke-static {p1}, Lio/appmetrica/analytics/idsync/impl/k;->a(Lio/appmetrica/analytics/idsync/impl/c;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lio/appmetrica/analytics/idsync/impl/k;->f:Z

    if-nez p2, :cond_0

    iget-wide p1, p1, Lio/appmetrica/analytics/idsync/impl/c;->b:J

    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/k;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getActivationBarrier()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ActivationBarrier;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/k;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v2, Lio/appmetrica/analytics/idsync/impl/j;

    invoke-direct {v2, p0}, Lio/appmetrica/analytics/idsync/impl/j;-><init>(Lio/appmetrica/analytics/idsync/impl/k;)V

    invoke-interface {v0, p1, p2, v1, v2}, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ActivationBarrier;->subscribe(JLio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ActivationBarrierCallback;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/appmetrica/analytics/idsync/impl/k;->f:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lio/appmetrica/analytics/idsync/impl/k;->a(Lio/appmetrica/analytics/idsync/impl/c;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lio/appmetrica/analytics/idsync/impl/k;->f:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/appmetrica/analytics/idsync/impl/k;->f:Z

    iget-object p1, p0, Lio/appmetrica/analytics/idsync/impl/k;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    iget-object p2, p0, Lio/appmetrica/analytics/idsync/impl/k;->g:Lio/appmetrica/analytics/idsync/impl/i;

    if-eqz p2, :cond_1

    invoke-interface {p1, p2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string p1, "syncRunnable"

    invoke-static {p1}, Laa4;->j(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

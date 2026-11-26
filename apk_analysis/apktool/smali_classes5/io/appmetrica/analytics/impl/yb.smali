.class public final Lio/appmetrica/analytics/impl/yb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/u2;

.field public final b:Lio/appmetrica/analytics/impl/v6;

.field public c:Lio/appmetrica/analytics/impl/Nn;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/u2;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/u2;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/yb;->a:Lio/appmetrica/analytics/impl/u2;

    new-instance v0, Lio/appmetrica/analytics/impl/v6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/v6;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/yb;->b:Lio/appmetrica/analytics/impl/v6;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/yb;->b:Lio/appmetrica/analytics/impl/v6;

    .line 34
    iget-object v0, v0, Lio/appmetrica/analytics/impl/v6;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/yb;->d:Z

    .line 37
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/yb;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/db;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/yb;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/yb;->b:Lio/appmetrica/analytics/impl/v6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/yb;->a:Lio/appmetrica/analytics/impl/u2;

    invoke-virtual {v1, p1, p2, p3}, Lio/appmetrica/analytics/impl/u2;->a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/db;)Lio/appmetrica/analytics/impl/Ta;

    move-result-object p1

    const/4 p2, 0x1

    new-array p3, p2, [Lio/appmetrica/analytics/impl/Ta;

    const/4 v1, 0x0

    aput-object p1, p3, v1

    iget-object p1, v0, Lio/appmetrica/analytics/impl/v6;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, p3}, Lnn1;->u(Ljava/util/Collection;[Ljava/lang/Object;)V

    iput-boolean p2, p0, Lio/appmetrica/analytics/impl/yb;->e:Z
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

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/yb;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/yb;->b:Lio/appmetrica/analytics/impl/v6;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v1

    iget-object v1, v1, Lio/appmetrica/analytics/impl/p4;->i:Lio/appmetrica/analytics/impl/yn;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/yn;->a:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, v0, Lio/appmetrica/analytics/impl/v6;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/yb;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/yb;->c:Lio/appmetrica/analytics/impl/Nn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lio/appmetrica/analytics/impl/Nn;

    new-instance v1, Lio/appmetrica/analytics/impl/d2;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/yb;->b:Lio/appmetrica/analytics/impl/v6;

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/d2;-><init>(Lio/appmetrica/analytics/impl/v6;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Nn;-><init>(Lio/appmetrica/analytics/impl/d2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/yb;->c:Lio/appmetrica/analytics/impl/Nn;

    new-instance v0, Lio/appmetrica/analytics/impl/Mn;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Mn;-><init>()V

    iget-object v2, v0, Lio/appmetrica/analytics/impl/Mn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lio/appmetrica/analytics/impl/Mn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

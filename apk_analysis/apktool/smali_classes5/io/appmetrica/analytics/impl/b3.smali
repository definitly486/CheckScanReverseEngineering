.class public final Lio/appmetrica/analytics/impl/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Bk;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Landroid/content/Intent;

.field public final c:Landroid/content/Context;

.field public final d:Lio/appmetrica/analytics/impl/R5;

.field public final e:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lio/appmetrica/analytics/impl/b3;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/b3;->a:Ljava/util/ArrayList;

    const/4 p3, 0x0

    iput-object p3, p0, Lio/appmetrica/analytics/impl/b3;->b:Landroid/content/Intent;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/b3;->c:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/b3;->e:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance p1, Lio/appmetrica/analytics/impl/I2;

    new-instance p3, Lio/appmetrica/analytics/impl/a3;

    invoke-direct {p3, p0}, Lio/appmetrica/analytics/impl/a3;-><init>(Lio/appmetrica/analytics/impl/b3;)V

    invoke-direct {p1, p3, p2}, Lio/appmetrica/analytics/impl/I2;-><init>(Lio/appmetrica/analytics/impl/a3;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Q5;->a(Lio/appmetrica/analytics/impl/I2;)Lio/appmetrica/analytics/impl/R5;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/b3;->d:Lio/appmetrica/analytics/impl/R5;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/coreapi/internal/backport/Consumer<",
            "Landroid/content/Intent;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/b3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object p1, p0, Lio/appmetrica/analytics/impl/b3;->b:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/b3;->b:Landroid/content/Intent;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/b3;->d:Lio/appmetrica/analytics/impl/R5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/b3;->c:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lio/appmetrica/analytics/impl/R5;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, v0, Lio/appmetrica/analytics/impl/R5;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lio/appmetrica/analytics/impl/R5;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final declared-synchronized onCreate()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/b3;->d:Lio/appmetrica/analytics/impl/R5;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/b3;->c:Landroid/content/Context;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/b3;->e:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    invoke-virtual {v1, v2, v0, v3}, Lio/appmetrica/analytics/impl/R5;->a(Landroid/content/Context;Landroid/content/IntentFilter;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/b3;->b:Landroid/content/Intent;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/b3;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;

    invoke-interface {v2, v0}, Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;->consume(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onDestroy()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/b3;->b:Landroid/content/Intent;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/b3;->a()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/b3;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;

    invoke-interface {v2, v0}, Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;->consume(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

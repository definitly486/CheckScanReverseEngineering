.class public final Lio/appmetrica/analytics/impl/pl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/o;

.field public final b:Lio/appmetrica/analytics/impl/x5;

.field public final c:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;

.field public final d:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;

.field public final e:Lio/appmetrica/analytics/impl/q;

.field public final f:Lio/appmetrica/analytics/impl/m;

.field public g:Z


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/o;Lio/appmetrica/analytics/impl/m;)V
    .locals 2

    .line 29
    new-instance v0, Lio/appmetrica/analytics/impl/x5;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/x5;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/q;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/q;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lio/appmetrica/analytics/impl/pl;-><init>(Lio/appmetrica/analytics/impl/o;Lio/appmetrica/analytics/impl/m;Lio/appmetrica/analytics/impl/x5;Lio/appmetrica/analytics/impl/q;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/o;Lio/appmetrica/analytics/impl/m;Lio/appmetrica/analytics/impl/x5;Lio/appmetrica/analytics/impl/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/pl;->g:Z

    iput-object p1, p0, Lio/appmetrica/analytics/impl/pl;->a:Lio/appmetrica/analytics/impl/o;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/pl;->f:Lio/appmetrica/analytics/impl/m;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/pl;->b:Lio/appmetrica/analytics/impl/x5;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/pl;->e:Lio/appmetrica/analytics/impl/q;

    new-instance p1, Lt5a;

    invoke-direct {p1, p0}, Lt5a;-><init>(Lio/appmetrica/analytics/impl/pl;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/pl;->c:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;

    new-instance p1, Lu5a;

    invoke-direct {p1, p0}, Lu5a;-><init>(Lio/appmetrica/analytics/impl/pl;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/pl;->d:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lio/appmetrica/analytics/impl/n;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/pl;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/pl;->a:Lio/appmetrica/analytics/impl/o;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/pl;->c:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;

    sget-object v2, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->RESUMED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    filled-new-array {v2}, [Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/o;->registerListener(Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;[Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/pl;->a:Lio/appmetrica/analytics/impl/o;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/pl;->d:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;

    sget-object v2, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->PAUSED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    filled-new-array {v2}, [Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/o;->registerListener(Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;[Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/pl;->g:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/pl;->a:Lio/appmetrica/analytics/impl/o;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/o;->b:Lio/appmetrica/analytics/impl/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V
    .locals 2

    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget-object p2, p0, Lio/appmetrica/analytics/impl/pl;->b:Lio/appmetrica/analytics/impl/x5;

    new-instance v0, Lw5a;

    invoke-direct {v0, p0, p1}, Lw5a;-><init>(Lio/appmetrica/analytics/impl/pl;Landroid/app/Activity;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p1

    .line 51
    iget-object p1, p1, Lio/appmetrica/analytics/impl/p4;->c:Lio/appmetrica/analytics/impl/f4;

    .line 52
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    new-instance v1, Lio/appmetrica/analytics/impl/w5;

    invoke-direct {v1, p2, v0}, Lio/appmetrica/analytics/impl/w5;-><init>(Lio/appmetrica/analytics/impl/x5;Lio/appmetrica/analytics/impl/le;)V

    invoke-interface {p1, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/app/Activity;Lio/appmetrica/analytics/impl/wc;)V
    .locals 1

    .line 45
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/pl;->g:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object p0, p0, Lio/appmetrica/analytics/impl/pl;->e:Lio/appmetrica/analytics/impl/q;

    sget-object v0, Lio/appmetrica/analytics/impl/p;->a:Lio/appmetrica/analytics/impl/p;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/q;->a(Landroid/app/Activity;Lio/appmetrica/analytics/impl/p;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 47
    invoke-virtual {p2, p1}, Lio/appmetrica/analytics/impl/wc;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lio/appmetrica/analytics/impl/pl;->b:Lio/appmetrica/analytics/impl/x5;

    new-instance v0, Lv5a;

    invoke-direct {v0, p0, p1}, Lv5a;-><init>(Lio/appmetrica/analytics/impl/pl;Landroid/app/Activity;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p1

    iget-object p1, p1, Lio/appmetrica/analytics/impl/p4;->c:Lio/appmetrica/analytics/impl/f4;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    new-instance v1, Lio/appmetrica/analytics/impl/w5;

    invoke-direct {v1, p2, v0}, Lio/appmetrica/analytics/impl/w5;-><init>(Lio/appmetrica/analytics/impl/x5;Lio/appmetrica/analytics/impl/le;)V

    invoke-interface {p1, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Landroid/app/Activity;Lio/appmetrica/analytics/impl/wc;)V
    .locals 1

    .line 34
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/pl;->g:Z

    if-eqz v0, :cond_0

    .line 35
    iget-object p0, p0, Lio/appmetrica/analytics/impl/pl;->e:Lio/appmetrica/analytics/impl/q;

    sget-object v0, Lio/appmetrica/analytics/impl/p;->b:Lio/appmetrica/analytics/impl/p;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/q;->a(Landroid/app/Activity;Lio/appmetrica/analytics/impl/p;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 36
    invoke-virtual {p2, p1}, Lio/appmetrica/analytics/impl/wc;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

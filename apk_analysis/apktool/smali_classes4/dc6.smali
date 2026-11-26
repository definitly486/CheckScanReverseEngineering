.class public final Ldc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lac6;


# static fields
.field public static volatile i:Z


# instance fields
.field public final b:Lta6;

.field public final c:Laz4;

.field public final d:Landroidx/lifecycle/Lifecycle;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/Timer;

.field public g:Lcc6;

.field public h:Loa6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lta6;Laz4;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    invoke-virtual {p1}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldc6;->b:Lta6;

    iput-object p3, p0, Ldc6;->c:Laz4;

    iput-object p1, p0, Ldc6;->d:Landroidx/lifecycle/Lifecycle;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldc6;->e:Ljava/lang/Object;

    new-instance p1, Ljava/util/Timer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Ldc6;->f:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final b(Lbc6;)V
    .locals 4

    sget-boolean v0, Ldc6;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Ldc6;->i:Z

    :try_start_0
    check-cast p1, Loa6;

    iput-object p1, p0, Ldc6;->h:Loa6;

    iget-object p1, p0, Ldc6;->c:Laz4;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object p1, p1, Laz4;->b:Ljava/lang/Object;

    check-cast p1, Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Ldc6;->d:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :cond_1
    iget-object p1, p0, Ldc6;->c:Laz4;

    iget-object p1, p1, Laz4;->c:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    new-instance v0, Loh;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Loh;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Ldc6;->b:Lta6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to install PostHogLifecycleObserverIntegration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Ldc6;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldc6;->g:Lcc6;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Ldc6;->g:Lcc6;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ldc6;->c()V

    sget-object p1, Lyd6;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    sput-boolean p1, Lyd6;->h:Z

    invoke-static {}, Lyd6;->b()V

    iget-object p0, p0, Ldc6;->h:Loa6;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Loa6;->C()V

    :cond_0
    return-void
.end method

.method public final onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Ldc6;->b:Lta6;

    iget-object p1, p1, Lnb6;->I:Lqb6;

    invoke-interface {p1}, Lqb6;->currentTimeMillis()J

    move-result-wide v0

    sget-object p1, Lyd6;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-boolean v2, Lyd6;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    monitor-exit p1

    goto :goto_0

    :cond_0
    :try_start_1
    sget-wide v5, Lyd6;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_1

    const-wide/32 v7, 0x5265c00

    add-long/2addr v5, v7

    cmp-long v0, v5, v0

    if-gtz v0, :cond_1

    move v4, v3

    :cond_1
    monitor-exit p1

    :goto_0
    invoke-static {}, Lyd6;->b()V

    sput-boolean v3, Lyd6;->h:Z

    iget-object p1, p0, Ldc6;->h:Loa6;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Loa6;->flush()V

    :cond_2
    if-eqz v4, :cond_8

    invoke-virtual {p0}, Ldc6;->c()V

    iget-object p1, p0, Ldc6;->h:Loa6;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Loa6;->l()V

    :cond_3
    iget-object p0, p0, Ldc6;->h:Loa6;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lae6;->h()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Loa6;->y:Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/posthog/internal/replay/PostHogSessionReplayHandler;->isActive()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lcom/posthog/internal/replay/PostHogSessionReplayHandler;->stop()V

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lae6;->f:Lta6;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lnb6;->v:Lic6;

    if-eqz p0, :cond_7

    const-string p1, "Session replay isn\'t installed."

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    iget-object p1, p0, Ldc6;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    invoke-virtual {p0}, Ldc6;->c()V

    new-instance v0, Lcc6;

    invoke-direct {v0, p0}, Lcc6;-><init>(Ldc6;)V

    iput-object v0, p0, Ldc6;->g:Lcc6;

    iget-object p0, p0, Ldc6;->f:Ljava/util/Timer;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0
.end method

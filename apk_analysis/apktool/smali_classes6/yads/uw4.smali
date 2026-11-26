.class public final Lyads/uw4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/tw4;

.field public final b:Lyads/sw4;

.field public final c:Lyads/du5;

.field public d:I

.field public e:Ljava/lang/Object;

.field public final f:Landroid/os/Looper;

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Lyads/sw4;Lyads/tw4;Lyads/kx5;ILyads/du5;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/uw4;->b:Lyads/sw4;

    iput-object p2, p0, Lyads/uw4;->a:Lyads/tw4;

    iput-object p6, p0, Lyads/uw4;->f:Landroid/os/Looper;

    iput-object p5, p0, Lyads/uw4;->c:Lyads/du5;

    return-void
.end method


# virtual methods
.method public final a()Lyads/uw4;
    .locals 3

    .line 88
    iget-boolean v0, p0, Lyads/uw4;->g:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lyads/uw4;->g:Z

    .line 90
    iget-object v0, p0, Lyads/uw4;->b:Lyads/sw4;

    check-cast v0, Lyads/mq2;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-boolean v1, v0, Lyads/mq2;->z:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lyads/mq2;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v1, v0, Lyads/mq2;->i:Lyads/gu5;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p0}, Lyads/gu5;->a(ILjava/lang/Object;)Lyads/fu5;

    move-result-object v1

    invoke-virtual {v1}, Lyads/fu5;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    :try_start_1
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Ignoring messages sent after release."

    invoke-static {v1, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, v1}, Lyads/uw4;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 95
    :goto_1
    monitor-exit v0

    throw p0

    .line 96
    :cond_2
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized a(J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lyads/uw4;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lyads/uw4;->f:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lyads/uw4;->c:Lyads/du5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    :goto_0
    iget-boolean v2, p0, Lyads/uw4;->i:Z

    if-nez v2, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    iget-object v2, p0, Lyads/uw4;->c:Lyads/du5;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    iget-object p1, p0, Lyads/uw4;->c:Lyads/du5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long p1, v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Message delivery timed out."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    iget-boolean v0, p0, Lyads/uw4;->h:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lyads/uw4;->h:Z

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lyads/uw4;->i:Z

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

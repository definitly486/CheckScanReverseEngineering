.class public final Lyads/bn4;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/concurrent/PriorityBlockingQueue;

.field public final c:Lyads/ss;

.field public final d:Lyads/xv;

.field public final e:Lyads/pp2;

.field public volatile f:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/PriorityBlockingQueue;Lyads/ss;Lyads/xv;Lyads/pp2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/bn4;->f:Z

    iput-object p1, p0, Lyads/bn4;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    iput-object p2, p0, Lyads/bn4;->c:Lyads/ss;

    iput-object p3, p0, Lyads/bn4;->d:Lyads/xv;

    iput-object p4, p0, Lyads/bn4;->e:Lyads/pp2;

    return-void
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lyads/bn4;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/r75;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lyads/r75;->a(I)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "network-queue-take"

    invoke-virtual {v0, v3}, Lyads/r75;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lyads/r75;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "network-discard-cancelled"

    invoke-virtual {v0, v3}, Lyads/r75;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lyads/r75;->j()V

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto/16 :goto_1

    :cond_0
    iget v3, v0, Lyads/r75;->e:I

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v3, p0, Lyads/bn4;->c:Lyads/ss;

    invoke-virtual {v3, v0}, Lyads/ss;->a(Lyads/r75;)Lyads/en4;

    move-result-object v3

    const-string v4, "network-http-complete"

    invoke-virtual {v0, v4}, Lyads/r75;->a(Ljava/lang/String;)V

    iget-boolean v4, v3, Lyads/en4;->e:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lyads/r75;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "not-modified"

    invoke-virtual {v0, v3}, Lyads/r75;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lyads/r75;->j()V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0, v3}, Lyads/r75;->a(Lyads/en4;)Lyads/z85;

    move-result-object v3

    const-string v4, "network-parse-complete"

    invoke-virtual {v0, v4}, Lyads/r75;->a(Ljava/lang/String;)V

    iget-boolean v4, v0, Lyads/r75;->j:Z

    if-eqz v4, :cond_2

    iget-object v4, v3, Lyads/z85;->b:Lyads/wv;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lyads/bn4;->d:Lyads/xv;

    invoke-virtual {v0}, Lyads/r75;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lyads/z85;->b:Lyads/wv;

    invoke-interface {v4, v5, v6}, Lyads/xv;->a(Ljava/lang/String;Lyads/wv;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v0, v4}, Lyads/r75;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v4, v0, Lyads/r75;->f:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Lyads/hi6; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, v0, Lyads/r75;->l:Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lyads/bn4;->e:Lyads/pp2;

    invoke-virtual {v4, v0, v3, v2}, Lyads/pp2;->a(Lyads/r75;Lyads/z85;Lyads/dw;)V

    invoke-virtual {v0, v3}, Lyads/r75;->a(Lyads/z85;)V
    :try_end_2
    .catch Lyads/hi6; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v3
    :try_end_4
    .catch Lyads/hi6; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    sget-boolean v4, Lyads/li6;->a:Z

    new-instance v4, Lyads/hi6;

    invoke-direct {v4, v3}, Lyads/hi6;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object p0, p0, Lyads/bn4;->e:Lyads/pp2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "post-error"

    invoke-virtual {v0, v3}, Lyads/r75;->a(Ljava/lang/String;)V

    new-instance v3, Lyads/z85;

    invoke-direct {v3, v4}, Lyads/z85;-><init>(Lyads/hi6;)V

    iget-object p0, p0, Lyads/pp2;->a:Lyads/np2;

    new-instance v4, Lyads/op2;

    invoke-direct {v4, v0, v3, v2}, Lyads/op2;-><init>(Lyads/r75;Lyads/z85;Lyads/dw;)V

    iget-object p0, p0, Lyads/np2;->a:Landroid/os/Handler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lyads/r75;->j()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v0, v3}, Lyads/r75;->a(Lyads/hi6;)Lyads/hi6;

    move-result-object v3

    iget-object p0, p0, Lyads/bn4;->e:Lyads/pp2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "post-error"

    invoke-virtual {v0, v4}, Lyads/r75;->a(Ljava/lang/String;)V

    new-instance v4, Lyads/z85;

    invoke-direct {v4, v3}, Lyads/z85;-><init>(Lyads/hi6;)V

    iget-object p0, p0, Lyads/pp2;->a:Lyads/np2;

    new-instance v3, Lyads/op2;

    invoke-direct {v3, v0, v4, v2}, Lyads/op2;-><init>(Lyads/r75;Lyads/z85;Lyads/dw;)V

    iget-object p0, p0, Lyads/np2;->a:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lyads/r75;->j()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    invoke-virtual {v0, v1}, Lyads/r75;->a(I)V

    return-void

    :goto_3
    invoke-virtual {v0, v1}, Lyads/r75;->a(I)V

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lyads/bn4;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-boolean p0, Lyads/li6;->a:Z

    return-void

    :catch_0
    iget-boolean v0, p0, Lyads/bn4;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    sget-boolean v0, Lyads/li6;->a:Z

    goto :goto_0
.end method

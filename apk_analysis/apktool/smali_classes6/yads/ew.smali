.class public final Lyads/ew;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final h:Z


# instance fields
.field public final b:Ljava/util/concurrent/PriorityBlockingQueue;

.field public final c:Ljava/util/concurrent/PriorityBlockingQueue;

.field public final d:Lyads/xv;

.field public final e:Lyads/pp2;

.field public volatile f:Z

.field public final g:Lyads/ej6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lyads/li6;->a:Z

    sput-boolean v0, Lyads/ew;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/concurrent/PriorityBlockingQueue;Lyads/xv;Lyads/pp2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/ew;->f:Z

    iput-object p1, p0, Lyads/ew;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    iput-object p2, p0, Lyads/ew;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iput-object p3, p0, Lyads/ew;->d:Lyads/xv;

    iput-object p4, p0, Lyads/ew;->e:Lyads/pp2;

    new-instance p1, Lyads/ej6;

    invoke-direct {p1, p0, p2, p4}, Lyads/ej6;-><init>(Lyads/ew;Ljava/util/concurrent/PriorityBlockingQueue;Lyads/pp2;)V

    iput-object p1, p0, Lyads/ew;->g:Lyads/ej6;

    return-void
.end method

.method private a()V
    .locals 11

    iget-object v0, p0, Lyads/ew;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/r75;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lyads/r75;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyads/r75;->a(I)V

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v0}, Lyads/r75;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "cache-discard-canceled"

    invoke-virtual {v0, p0}, Lyads/r75;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    iget-object v3, p0, Lyads/ew;->d:Lyads/xv;

    invoke-virtual {v0}, Lyads/r75;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lyads/xv;->get(Ljava/lang/String;)Lyads/wv;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lyads/r75;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lyads/ew;->g:Lyads/ej6;

    invoke-virtual {v1, v0}, Lyads/ej6;->a(Lyads/r75;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object p0, p0, Lyads/ew;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lyads/wv;->e:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_2

    const-string v1, "cache-hit-expired"

    invoke-virtual {v0, v1}, Lyads/r75;->a(Ljava/lang/String;)V

    iput-object v3, v0, Lyads/r75;->p:Lyads/wv;

    iget-object v1, p0, Lyads/ew;->g:Lyads/ej6;

    invoke-virtual {v1, v0}, Lyads/ej6;->a(Lyads/r75;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object p0, p0, Lyads/ew;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v6, "cache-hit"

    invoke-virtual {v0, v6}, Lyads/r75;->a(Ljava/lang/String;)V

    new-instance v6, Lyads/en4;

    iget-object v7, v3, Lyads/wv;->a:[B

    iget-object v8, v3, Lyads/wv;->g:Ljava/util/Map;

    const/16 v9, 0xc8

    const/4 v10, 0x0

    invoke-direct {v6, v9, v7, v8, v10}, Lyads/en4;-><init>(I[BLjava/util/Map;Z)V

    invoke-virtual {v0, v6}, Lyads/r75;->a(Lyads/en4;)Lyads/z85;

    move-result-object v6

    const-string v7, "cache-hit-parsed"

    invoke-virtual {v0, v7}, Lyads/r75;->a(Ljava/lang/String;)V

    iget-object v7, v6, Lyads/z85;->c:Lyads/hi6;

    const/4 v8, 0x0

    if-nez v7, :cond_5

    iget-wide v9, v3, Lyads/wv;->f:J

    cmp-long v4, v9, v4

    if-gez v4, :cond_4

    const-string v4, "cache-hit-refresh-needed"

    invoke-virtual {v0, v4}, Lyads/r75;->a(Ljava/lang/String;)V

    iput-object v3, v0, Lyads/r75;->p:Lyads/wv;

    iput-boolean v1, v6, Lyads/z85;->d:Z

    iget-object v1, p0, Lyads/ew;->g:Lyads/ej6;

    invoke-virtual {v1, v0}, Lyads/ej6;->a(Lyads/r75;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lyads/ew;->e:Lyads/pp2;

    if-nez v1, :cond_3

    :try_start_1
    new-instance v1, Lyads/dw;

    invoke-direct {v1, p0, v0}, Lyads/dw;-><init>(Lyads/ew;Lyads/r75;)V

    invoke-virtual {v3, v0, v6, v1}, Lyads/pp2;->a(Lyads/r75;Lyads/z85;Lyads/dw;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v0, v6, v8}, Lyads/pp2;->a(Lyads/r75;Lyads/z85;Lyads/dw;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lyads/ew;->e:Lyads/pp2;

    invoke-virtual {p0, v0, v6, v8}, Lyads/pp2;->a(Lyads/r75;Lyads/z85;Lyads/dw;)V

    goto :goto_0

    :cond_5
    const-string v1, "cache-parsing-failed"

    invoke-virtual {v0, v1}, Lyads/r75;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lyads/ew;->d:Lyads/xv;

    invoke-virtual {v0}, Lyads/r75;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lyads/xv;->a(Ljava/lang/String;)V

    iput-object v8, v0, Lyads/r75;->p:Lyads/wv;

    iget-object v1, p0, Lyads/ew;->g:Lyads/ej6;

    invoke-virtual {v1, v0}, Lyads/ej6;->a(Lyads/r75;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object p0, p0, Lyads/ew;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_0
    invoke-virtual {v0, v2}, Lyads/r75;->a(I)V

    return-void

    :goto_1
    invoke-virtual {v0, v2}, Lyads/r75;->a(I)V

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lyads/ew;->d:Lyads/xv;

    invoke-interface {v0}, Lyads/xv;->a()V

    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lyads/ew;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    return-void

    :catch_0
    iget-boolean v0, p0, Lyads/ew;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

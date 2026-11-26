.class public final Lwt8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Laz4;

.field public final b:Lqb6;

.field public c:J

.field public final d:J

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Laz4;Lqb6;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwt8;->a:Laz4;

    iput-object p2, p0, Lwt8;->b:Lqb6;

    const-wide/32 p1, 0x3b9aca00

    iput-wide p1, p0, Lwt8;->d:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lwt8;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lwt8;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Led0;)V
    .locals 4

    iget-object v0, p0, Lwt8;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lwt8;->b:Lqb6;

    invoke-interface {v2}, Lqb6;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lwt8;->c:J

    invoke-virtual {p1}, Led0;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p0
.end method

.method public final b(Led0;)V
    .locals 7

    iget-object v0, p0, Lwt8;->b:Lqb6;

    invoke-interface {v0}, Lqb6;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lwt8;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lwt8;->d:J

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    iget-object v6, p0, Lwt8;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ltz v4, :cond_1

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lwt8;->a(Led0;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-nez v4, :cond_2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    iget-object v0, p0, Lwt8;->a:Laz4;

    iget-object v0, v0, Laz4;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lsc6;

    invoke-direct {v1, v5, p0, p1}, Lsc6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget-object p0, p0, Lwt8;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

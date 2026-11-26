.class public final Lif4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif4$c;,
        Lif4$d;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:La98;

.field public final c:Lif4$c;

.field public d:Lif4$d;

.field public e:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public final g:Lvu4;

.field public final h:Lvu4;

.field public final i:J

.field public final j:J


# direct methods
.method public constructor <init>(Lif4$c;Ljava/util/concurrent/ScheduledExecutorService;JJ)V
    .locals 3

    new-instance v0, La98;

    invoke-direct {v0}, La98;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lif4$d;->IDLE:Lif4$d;

    iput-object v1, p0, Lif4;->d:Lif4$d;

    new-instance v1, Lvu4;

    new-instance v2, Lif4$a;

    invoke-direct {v2, p0}, Lif4$a;-><init>(Lif4;)V

    invoke-direct {v1, v2}, Lvu4;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lif4;->g:Lvu4;

    new-instance v1, Lvu4;

    new-instance v2, Lif4$b;

    invoke-direct {v2, p0}, Lif4$b;-><init>(Lif4;)V

    invoke-direct {v1, v2}, Lvu4;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lif4;->h:Lvu4;

    iput-object p1, p0, Lif4;->c:Lif4$c;

    const-string p1, "scheduler"

    invoke-static {p2, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lif4;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lif4;->b:La98;

    iput-wide p3, p0, Lif4;->i:J

    iput-wide p5, p0, Lif4;->j:J

    const/4 p0, 0x0

    iput-boolean p0, v0, La98;->b:Z

    invoke-virtual {v0}, La98;->b()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lif4;->b:La98;

    const/4 v1, 0x0

    iput-boolean v1, v0, La98;->b:Z

    invoke-virtual {v0}, La98;->b()V

    iget-object v0, p0, Lif4;->d:Lif4$d;

    sget-object v2, Lif4$d;->PING_SCHEDULED:Lif4$d;

    if-ne v0, v2, :cond_0

    sget-object v0, Lif4$d;->PING_DELAYED:Lif4$d;

    iput-object v0, p0, Lif4;->d:Lif4$d;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v3, Lif4$d;->PING_SENT:Lif4$d;

    if-eq v0, v3, :cond_1

    sget-object v3, Lif4$d;->IDLE_AND_PING_SENT:Lif4$d;

    if-ne v0, v3, :cond_5

    :cond_1
    iget-object v0, p0, Lif4;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Lif4;->d:Lif4$d;

    sget-object v3, Lif4$d;->IDLE_AND_PING_SENT:Lif4$d;

    if-ne v0, v3, :cond_3

    sget-object v0, Lif4$d;->IDLE:Lif4$d;

    iput-object v0, p0, Lif4;->d:Lif4$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iput-object v2, p0, Lif4;->d:Lif4$d;

    iget-object v0, p0, Lif4;->f:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    const-string v0, "There should be no outstanding pingFuture"

    invoke-static {v1, v0}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v0, p0, Lif4;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lif4;->h:Lvu4;

    iget-wide v2, p0, Lif4;->i:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lif4;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lif4;->d:Lif4$d;

    sget-object v1, Lif4$d;->IDLE:Lif4$d;

    if-ne v0, v1, :cond_0

    sget-object v0, Lif4$d;->PING_SCHEDULED:Lif4$d;

    iput-object v0, p0, Lif4;->d:Lif4$d;

    iget-object v0, p0, Lif4;->f:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    iget-object v0, p0, Lif4;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lif4;->h:Lvu4;

    iget-wide v2, p0, Lif4;->i:J

    iget-object v4, p0, Lif4;->b:La98;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, La98;->a()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-interface {v0, v1, v2, v3, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lif4;->f:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v1, Lif4$d;->IDLE_AND_PING_SENT:Lif4$d;

    if-ne v0, v1, :cond_1

    sget-object v0, Lif4$d;->PING_SENT:Lif4$d;

    iput-object v0, p0, Lif4;->d:Lif4$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

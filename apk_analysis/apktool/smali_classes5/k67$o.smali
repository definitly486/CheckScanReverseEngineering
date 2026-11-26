.class public final Lk67$o;
.super Lio/grpc/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "o"
.end annotation


# instance fields
.field public final p:Lk67$x;

.field public q:J

.field public final synthetic r:Lk67;


# direct methods
.method public constructor <init>(Lk67;Lk67$x;)V
    .locals 0

    iput-object p1, p0, Lk67$o;->r:Lk67;

    invoke-direct {p0}, Lio/grpc/c;-><init>()V

    iput-object p2, p0, Lk67$o;->p:Lk67$x;

    return-void
.end method


# virtual methods
.method public final M(J)V
    .locals 8

    iget-object v0, p0, Lk67$o;->r:Lk67;

    iget-object v0, v0, Lk67;->p:Lk67$v;

    iget-object v0, v0, Lk67$v;->f:Lk67$x;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lk67$o;->r:Lk67;

    iget-object v0, v0, Lk67;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lk67$o;->r:Lk67;

    iget-object v1, v1, Lk67;->p:Lk67$v;

    iget-object v1, v1, Lk67$v;->f:Lk67$x;

    if-nez v1, :cond_7

    iget-object v1, p0, Lk67$o;->p:Lk67$x;

    iget-boolean v2, v1, Lk67$x;->b:Z

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    iget-wide v2, p0, Lk67$o;->q:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lk67$o;->q:J

    iget-object p1, p0, Lk67$o;->r:Lk67;

    iget-wide v4, p1, Lk67;->u:J

    cmp-long p2, v2, v4

    if-gtz p2, :cond_2

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    iget-wide v6, p1, Lk67;->l:J

    cmp-long p2, v2, v6

    const/4 v6, 0x1

    if-lez p2, :cond_3

    iput-boolean v6, v1, Lk67$x;->c:Z

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lk67;->k:Lk67$p;

    sub-long/2addr v2, v4

    iget-object p1, p1, Lk67$p;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    iget-object v1, p0, Lk67$o;->r:Lk67;

    iget-wide v2, p0, Lk67$o;->q:J

    iput-wide v2, v1, Lk67;->u:J

    iget-wide v2, v1, Lk67;->m:J

    cmp-long p1, p1, v2

    if-lez p1, :cond_4

    iget-object p1, p0, Lk67$o;->p:Lk67$x;

    iput-boolean v6, p1, Lk67$x;->c:Z

    :cond_4
    move-object p1, v1

    :goto_0
    iget-object p0, p0, Lk67$o;->p:Lk67$x;

    iget-boolean p2, p0, Lk67$x;->c:Z

    if-eqz p2, :cond_5

    invoke-virtual {p1, p0}, Lk67;->k(Lk67$x;)Ll67;

    move-result-object p0

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ll67;->run()V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    :try_start_1
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

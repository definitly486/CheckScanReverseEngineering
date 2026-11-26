.class public final Lio/appmetrica/analytics/impl/jh;
.super Lio/appmetrica/analytics/impl/Ug;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ug;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 11

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/w9;->c:Lio/appmetrica/analytics/impl/jl;

    iget v1, v0, Lio/appmetrica/analytics/impl/jl;->g:I

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/appmetrica/analytics/impl/jl;->c:Lio/appmetrica/analytics/impl/eb;

    invoke-interface {v1}, Lio/appmetrica/analytics/impl/eb;->a()Lio/appmetrica/analytics/impl/Tk;

    move-result-object v1

    iget-object v2, v0, Lio/appmetrica/analytics/impl/jl;->d:Lio/appmetrica/analytics/impl/eb;

    invoke-interface {v2}, Lio/appmetrica/analytics/impl/eb;->a()Lio/appmetrica/analytics/impl/Tk;

    move-result-object v2

    const-wide/16 v3, -0x1

    if-nez v1, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    iget-wide v5, v1, Lio/appmetrica/analytics/impl/Tk;->d:J

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v3, v2, Lio/appmetrica/analytics/impl/Tk;->d:J

    :goto_1
    cmp-long v3, v5, v3

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v2

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;

    :goto_2
    if-eqz v1, :cond_5

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v1, Lio/appmetrica/analytics/impl/Tk;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz v2, :cond_4

    iget-object v2, v0, Lio/appmetrica/analytics/impl/jl;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/i5;->e:Lio/appmetrica/analytics/impl/Y6;

    iget-wide v3, v1, Lio/appmetrica/analytics/impl/Tk;->d:J

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Tk;->c:Lio/appmetrica/analytics/impl/Wk;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Wk;->a:Lio/appmetrica/analytics/impl/ol;

    invoke-virtual {v2, v3, v4, v1}, Lio/appmetrica/analytics/impl/Y6;->a(JLio/appmetrica/analytics/impl/ol;)Lio/appmetrica/analytics/impl/kl;

    move-result-object v10

    iget-wide v6, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    iget-wide v8, p1, Lio/appmetrica/analytics/impl/a6;->j:J

    const/4 v1, 0x2

    iput v1, v0, Lio/appmetrica/analytics/impl/jl;->g:I

    iget-object v1, v0, Lio/appmetrica/analytics/impl/jl;->e:Lio/appmetrica/analytics/impl/eb;

    new-instance v5, Lio/appmetrica/analytics/impl/Uk;

    invoke-direct/range {v5 .. v10}, Lio/appmetrica/analytics/impl/Uk;-><init>(JJLio/appmetrica/analytics/impl/kl;)V

    invoke-interface {v1, v5}, Lio/appmetrica/analytics/impl/eb;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Tk;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;

    iget-wide v1, v1, Lio/appmetrica/analytics/impl/Tk;->d:J

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/jl;->a(J)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;

    invoke-static {v0, v6, v7}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/Tk;J)Lio/appmetrica/analytics/impl/ml;

    move-result-object v0

    goto :goto_3

    :cond_4
    new-instance v0, Lio/appmetrica/analytics/impl/ml;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ml;-><init>()V

    iget-wide v2, v1, Lio/appmetrica/analytics/impl/Tk;->d:J

    iput-wide v2, v0, Lio/appmetrica/analytics/impl/ml;->a:J

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Tk;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    iget-object v4, v1, Lio/appmetrica/analytics/impl/Tk;->b:Lio/appmetrica/analytics/impl/nl;

    iget-object v5, v1, Lio/appmetrica/analytics/impl/Tk;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "SESSION_COUNTER_ID"

    invoke-virtual {v4, v6, v5}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/nl;->a()V

    iput-wide v2, v0, Lio/appmetrica/analytics/impl/ml;->b:J

    iget-wide v2, p1, Lio/appmetrica/analytics/impl/a6;->j:J

    iget-wide v4, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    iget-wide v6, v1, Lio/appmetrica/analytics/impl/Tk;->f:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    iget-object v8, v1, Lio/appmetrica/analytics/impl/Tk;->b:Lio/appmetrica/analytics/impl/nl;

    iget-wide v9, v1, Lio/appmetrica/analytics/impl/Tk;->e:J

    sub-long/2addr v4, v9

    iput-wide v4, v1, Lio/appmetrica/analytics/impl/Tk;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "SESSION_LAST_EVENT_OFFSET"

    invoke-virtual {v8, v5, v4}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Lio/appmetrica/analytics/impl/nl;->a()V

    iget-wide v4, v1, Lio/appmetrica/analytics/impl/Tk;->j:J

    div-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lio/appmetrica/analytics/impl/ml;->c:J

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Tk;->c:Lio/appmetrica/analytics/impl/Wk;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Wk;->a:Lio/appmetrica/analytics/impl/ol;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/ml;->d:Lio/appmetrica/analytics/impl/ol;

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0

    :cond_5
    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/w9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/ml;)V

    move p0, v1

    goto :goto_4

    :cond_6
    const/4 p0, 0x0

    :goto_4
    xor-int/2addr p0, v1

    return p0
.end method

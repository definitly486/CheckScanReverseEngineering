.class public final Lio/appmetrica/analytics/impl/Tk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/i5;

.field public final b:Lio/appmetrica/analytics/impl/nl;

.field public final c:Lio/appmetrica/analytics/impl/Wk;

.field public d:J

.field public e:J

.field public f:J

.field public g:Ljava/util/concurrent/atomic/AtomicLong;

.field public h:Z

.field public i:J

.field public j:J

.field public k:Z

.field public final l:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/nl;Lio/appmetrica/analytics/impl/Wk;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Tk;->a:Lio/appmetrica/analytics/impl/i5;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Tk;->b:Lio/appmetrica/analytics/impl/nl;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Tk;->c:Lio/appmetrica/analytics/impl/Wk;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/Tk;->l:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Tk;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Tk;->c:Lio/appmetrica/analytics/impl/Wk;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Tk;->l:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->elapsedRealtime()J

    move-result-wide v1

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Wk;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    iput-wide v1, p0, Lio/appmetrica/analytics/impl/Tk;->e:J

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Tk;->c:Lio/appmetrica/analytics/impl/Wk;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Tk;->l:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Wk;->d:Ljava/lang/Long;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    iput-wide v1, p0, Lio/appmetrica/analytics/impl/Tk;->f:J

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Tk;->c:Lio/appmetrica/analytics/impl/Wk;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Wk;->b:Ljava/lang/Long;

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Tk;->d:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Tk;->c:Lio/appmetrica/analytics/impl/Wk;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Wk;->f:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_3

    move-wide v4, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_3
    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Tk;->g:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Tk;->c:Lio/appmetrica/analytics/impl/Wk;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Wk;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_4
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Tk;->h:Z

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Tk;->c:Lio/appmetrica/analytics/impl/Wk;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Wk;->h:Ljava/lang/Long;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_5
    iput-wide v2, p0, Lio/appmetrica/analytics/impl/Tk;->i:J

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Tk;->c:Lio/appmetrica/analytics/impl/Wk;

    iget-wide v4, p0, Lio/appmetrica/analytics/impl/Tk;->e:J

    sub-long/2addr v2, v4

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Wk;->i:Ljava/lang/Long;

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_6
    iput-wide v2, p0, Lio/appmetrica/analytics/impl/Tk;->j:J

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Tk;->c:Lio/appmetrica/analytics/impl/Wk;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Wk;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_7
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Tk;->k:Z

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Tk;->k:Z

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Tk;->b:Lio/appmetrica/analytics/impl/nl;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "SESSION_CRASHED"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/nl;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Tk;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", creationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Tk;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sessionCreationCurrentTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Tk;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", currentReportId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Tk;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionRequestParams=null, sleepStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/Tk;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", aliveNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/Tk;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", crashedSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/Tk;->k:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lsg;->d(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

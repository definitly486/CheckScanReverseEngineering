.class public final Lio/appmetrica/analytics/impl/xh;
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
    .locals 5

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/i5;->p:Lio/appmetrica/analytics/impl/C9;

    check-cast p1, Lio/appmetrica/analytics/impl/v5;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/v5;->e()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->j:Lio/appmetrica/analytics/impl/jl;

    monitor-enter p0

    :try_start_0
    iget p1, p0, Lio/appmetrica/analytics/impl/jl;->g:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lio/appmetrica/analytics/impl/jl;->c:Lio/appmetrica/analytics/impl/eb;

    invoke-interface {p1}, Lio/appmetrica/analytics/impl/eb;->a()Lio/appmetrica/analytics/impl/Tk;

    move-result-object p1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/jl;->d:Lio/appmetrica/analytics/impl/eb;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/eb;->a()Lio/appmetrica/analytics/impl/Tk;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez p1, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-wide v3, p1, Lio/appmetrica/analytics/impl/Tk;->d:J

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v1, v0, Lio/appmetrica/analytics/impl/Tk;->d:J

    :goto_1
    cmp-long v1, v3, v1

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lio/appmetrica/analytics/impl/jl;->f:Lio/appmetrica/analytics/impl/Tk;

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Tk;->b()V

    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/Tk;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iput-boolean v1, p1, Lio/appmetrica/analytics/impl/Tk;->h:Z

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Tk;->b:Lio/appmetrica/analytics/impl/nl;

    const-string v0, "SESSION_IS_ALIVE_REPORT_NEEDED"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v2}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/nl;->a()V

    :cond_4
    iput v1, p0, Lio/appmetrica/analytics/impl/jl;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_3
    monitor-exit p0

    throw p1
.end method

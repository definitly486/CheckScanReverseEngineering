.class public final Lio/appmetrica/analytics/impl/f5;
.super Lio/appmetrica/analytics/impl/e5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/e5;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    return-void
.end method


# virtual methods
.method public final b(I)Z
    .locals 0

    const/16 p0, 0x71

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()V
    .locals 6

    const-string v0, "SESSION_LAST_EVENT_OFFSET"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "SESSION_SLEEP_START"

    iget-object p0, p0, Lio/appmetrica/analytics/impl/e5;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->c:Lio/appmetrica/analytics/impl/jf;

    :try_start_0
    new-instance v3, Lio/appmetrica/analytics/impl/nl;

    const-string v4, "background"

    invoke-direct {v3, p0, v4}, Lio/appmetrica/analytics/impl/nl;-><init>(Lio/appmetrica/analytics/impl/jf;Ljava/lang/String;)V

    iget-object v4, v3, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    invoke-virtual {v4, v2}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v4, v3, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    invoke-virtual {v4, v0}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :try_start_1
    new-instance v3, Lio/appmetrica/analytics/impl/nl;

    const-string v4, "foreground"

    invoke-direct {v3, p0, v4}, Lio/appmetrica/analytics/impl/nl;-><init>(Lio/appmetrica/analytics/impl/jf;Ljava/lang/String;)V

    iget-object p0, v3, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v3, v2, p0}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object p0, v3, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v3, v0, p0}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_3
    return-void
.end method

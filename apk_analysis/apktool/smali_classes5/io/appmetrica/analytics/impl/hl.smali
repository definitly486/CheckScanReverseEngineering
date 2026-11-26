.class public final Lio/appmetrica/analytics/impl/hl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/eb;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/i5;

.field public final b:Lio/appmetrica/analytics/impl/il;

.field public final c:Lio/appmetrica/analytics/impl/nl;

.field public final d:Lio/appmetrica/analytics/impl/gl;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/il;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/hl;->a:Lio/appmetrica/analytics/impl/i5;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/hl;->b:Lio/appmetrica/analytics/impl/il;

    new-instance p2, Lio/appmetrica/analytics/impl/nl;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->h()Lio/appmetrica/analytics/impl/jf;

    move-result-object p1

    const-string v0, "background"

    invoke-direct {p2, p1, v0}, Lio/appmetrica/analytics/impl/nl;-><init>(Lio/appmetrica/analytics/impl/jf;Ljava/lang/String;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/hl;->c:Lio/appmetrica/analytics/impl/nl;

    sget-object p1, Lio/appmetrica/analytics/impl/ol;->c:Lio/appmetrica/analytics/impl/ol;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/gl;->a(Lio/appmetrica/analytics/impl/ol;)Lio/appmetrica/analytics/impl/fl;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/fl;->b()Lio/appmetrica/analytics/impl/fl;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/fl;->a()Lio/appmetrica/analytics/impl/gl;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/hl;->d:Lio/appmetrica/analytics/impl/gl;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Tk;
    .locals 0

    .line 276
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Uk;)Lio/appmetrica/analytics/impl/Tk;
    .locals 11

    iget-object v0, p0, Lio/appmetrica/analytics/impl/hl;->b:Lio/appmetrica/analytics/impl/il;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/il;->a()J

    move-result-wide v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/hl;->c:Lio/appmetrica/analytics/impl/nl;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "SESSION_ID"

    invoke-virtual {v2, v4, v3}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v3, p1, Lio/appmetrica/analytics/impl/Uk;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "SESSION_SLEEP_START"

    invoke-virtual {v2, v4, v3}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v3, p1, Lio/appmetrica/analytics/impl/Uk;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "SESSION_INIT_TIME"

    invoke-virtual {v2, v4, v3}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v3, p1, Lio/appmetrica/analytics/impl/Uk;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "SESSION_CREATION_CURRENT_TIME"

    invoke-virtual {v2, v4, v3}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "SESSION_COUNTER_ID"

    invoke-virtual {v2, v4, v3}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-virtual {v2, v4, v3}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/nl;->a()V

    iget-object v2, p0, Lio/appmetrica/analytics/impl/hl;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/i5;->e:Lio/appmetrica/analytics/impl/Y6;

    sget-object v3, Lio/appmetrica/analytics/impl/ol;->c:Lio/appmetrica/analytics/impl/ol;

    iget-wide v4, p1, Lio/appmetrica/analytics/impl/Uk;->b:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Uk;->c:Lio/appmetrica/analytics/impl/kl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lio/appmetrica/analytics/impl/G7;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8, v7}, Lio/appmetrica/analytics/impl/G7;-><init>(Lio/appmetrica/analytics/impl/D7;ILjh2;)V

    iget-object v7, v2, Lio/appmetrica/analytics/impl/Y6;->e:Lio/appmetrica/analytics/impl/i5;

    iget-object v7, v7, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v7}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v7

    check-cast v7, Lio/appmetrica/analytics/impl/rh;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lio/appmetrica/analytics/impl/kl;->a:Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    invoke-static {v7}, Lio/appmetrica/analytics/impl/H7;->a(Lio/appmetrica/analytics/impl/rh;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v4, Lio/appmetrica/analytics/impl/F7;

    new-instance v5, Lio/appmetrica/analytics/impl/E7;

    invoke-static {}, Lio/appmetrica/analytics/impl/Wn;->a()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v9, Lio/appmetrica/analytics/impl/mk;->a:Lio/appmetrica/analytics/impl/nk;

    monitor-enter v9

    :try_start_0
    iget-object v10, v9, Lio/appmetrica/analytics/impl/nk;->b:Lio/appmetrica/analytics/impl/mf;

    invoke-virtual {v10, v8}, Lio/appmetrica/analytics/impl/mf;->b(Z)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v5, v1, v7, v8}, Lio/appmetrica/analytics/impl/E7;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    invoke-direct {v4, v0, v3, p1, v5}, Lio/appmetrica/analytics/impl/F7;-><init>(Ljava/lang/Long;Lio/appmetrica/analytics/impl/ol;Ljava/lang/String;Lio/appmetrica/analytics/impl/E7;)V

    invoke-virtual {v6, v4}, Lio/appmetrica/analytics/impl/G7;->a(Lio/appmetrica/analytics/impl/F7;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/impl/Y6;->a(Landroid/content/ContentValues;)V

    iget-object p1, p0, Lio/appmetrica/analytics/impl/hl;->d:Lio/appmetrica/analytics/impl/gl;

    new-instance v0, Lio/appmetrica/analytics/impl/Vk;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Vk;-><init>(Lio/appmetrica/analytics/impl/gl;)V

    iget-object p1, p0, Lio/appmetrica/analytics/impl/hl;->c:Lio/appmetrica/analytics/impl/nl;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v1, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/tb;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Vk;->h:Ljava/lang/Boolean;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/hl;->c:Lio/appmetrica/analytics/impl/nl;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v1, "SESSION_COUNTER_ID"

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Vk;->g:Ljava/lang/Long;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/hl;->c:Lio/appmetrica/analytics/impl/nl;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v1, "SESSION_INIT_TIME"

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Vk;->d:Ljava/lang/Long;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/hl;->c:Lio/appmetrica/analytics/impl/nl;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v1, "SESSION_CREATION_CURRENT_TIME"

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Vk;->e:Ljava/lang/Long;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/hl;->c:Lio/appmetrica/analytics/impl/nl;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v1, "SESSION_ID"

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Vk;->c:Ljava/lang/Long;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/hl;->c:Lio/appmetrica/analytics/impl/nl;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v1, "SESSION_SLEEP_START"

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Vk;->i:Ljava/lang/Long;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/hl;->c:Lio/appmetrica/analytics/impl/nl;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v1, "SESSION_LAST_EVENT_OFFSET"

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/Vk;->a:Ljava/lang/Long;

    new-instance p1, Lio/appmetrica/analytics/impl/Wk;

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Wk;-><init>(Lio/appmetrica/analytics/impl/Vk;)V

    new-instance v0, Lio/appmetrica/analytics/impl/Tk;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/hl;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/hl;->c:Lio/appmetrica/analytics/impl/nl;

    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v2}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    invoke-direct {v0, v1, p0, p1, v2}, Lio/appmetrica/analytics/impl/Tk;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/nl;Lio/appmetrica/analytics/impl/Wk;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v9

    throw p0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Tk;
    .locals 0

    .line 275
    check-cast p1, Lio/appmetrica/analytics/impl/Uk;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/hl;->a(Lio/appmetrica/analytics/impl/Uk;)Lio/appmetrica/analytics/impl/Tk;

    move-result-object p0

    return-object p0
.end method

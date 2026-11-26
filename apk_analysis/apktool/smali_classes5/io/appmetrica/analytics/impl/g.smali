.class public abstract Lio/appmetrica/analytics/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/eb;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/i5;

.field public final b:Lio/appmetrica/analytics/impl/il;

.field public final c:Lio/appmetrica/analytics/impl/nl;

.field public final d:Lio/appmetrica/analytics/impl/gl;

.field public final e:Lio/appmetrica/analytics/impl/bb;

.field public final f:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/il;Lio/appmetrica/analytics/impl/nl;Lio/appmetrica/analytics/impl/gl;Lio/appmetrica/analytics/impl/bb;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/g;->a:Lio/appmetrica/analytics/impl/i5;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/g;->b:Lio/appmetrica/analytics/impl/il;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/nl;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/g;->d:Lio/appmetrica/analytics/impl/gl;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/g;->e:Lio/appmetrica/analytics/impl/bb;

    iput-object p6, p0, Lio/appmetrica/analytics/impl/g;->f:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Tk;
    .locals 4

    .line 192
    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/nl;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/nl;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Lio/appmetrica/analytics/impl/Tk;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/g;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/nl;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/g;->b()Lio/appmetrica/analytics/impl/Wk;

    move-result-object v3

    iget-object p0, p0, Lio/appmetrica/analytics/impl/g;->f:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v0, v1, v2, v3, p0}, Lio/appmetrica/analytics/impl/Tk;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/nl;Lio/appmetrica/analytics/impl/Wk;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Uk;)Lio/appmetrica/analytics/impl/Tk;
    .locals 14

    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/nl;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/nl;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->e:Lio/appmetrica/analytics/impl/bb;

    const-string v1, "create session with non-empty storage"

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/IReporter;->reportEvent(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lio/appmetrica/analytics/impl/Tk;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/g;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/nl;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/g;->b:Lio/appmetrica/analytics/impl/il;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/il;->a()J

    move-result-wide v3

    iget-object v5, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/nl;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "SESSION_ID"

    invoke-virtual {v5, v7, v6}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v6, p1, Lio/appmetrica/analytics/impl/Uk;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "SESSION_SLEEP_START"

    invoke-virtual {v5, v7, v6}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v6, p1, Lio/appmetrica/analytics/impl/Uk;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "SESSION_INIT_TIME"

    invoke-virtual {v5, v7, v6}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v6, p1, Lio/appmetrica/analytics/impl/Uk;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "SESSION_CREATION_CURRENT_TIME"

    invoke-virtual {v5, v7, v6}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "SESSION_COUNTER_ID"

    invoke-virtual {v5, v7, v6}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v7, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-virtual {v5, v7, v6}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/nl;->a()V

    iget-object v5, p0, Lio/appmetrica/analytics/impl/g;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v5, v5, Lio/appmetrica/analytics/impl/i5;->e:Lio/appmetrica/analytics/impl/Y6;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/g;->d:Lio/appmetrica/analytics/impl/gl;

    iget-object v6, v6, Lio/appmetrica/analytics/impl/gl;->a:Lio/appmetrica/analytics/impl/ol;

    iget-wide v7, p1, Lio/appmetrica/analytics/impl/Uk;->b:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lio/appmetrica/analytics/impl/G7;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p1, v9, v10, v9}, Lio/appmetrica/analytics/impl/G7;-><init>(Lio/appmetrica/analytics/impl/D7;ILjh2;)V

    iget-object v9, v5, Lio/appmetrica/analytics/impl/Y6;->e:Lio/appmetrica/analytics/impl/i5;

    iget-object v9, v9, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v9}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v9

    check-cast v9, Lio/appmetrica/analytics/impl/rh;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v9}, Lio/appmetrica/analytics/impl/H7;->a(Lio/appmetrica/analytics/impl/rh;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lio/appmetrica/analytics/impl/F7;

    new-instance v9, Lio/appmetrica/analytics/impl/E7;

    invoke-static {}, Lio/appmetrica/analytics/impl/Wn;->a()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    sget-object v12, Lio/appmetrica/analytics/impl/mk;->a:Lio/appmetrica/analytics/impl/nk;

    monitor-enter v12

    :try_start_0
    iget-object v13, v12, Lio/appmetrica/analytics/impl/nk;->b:Lio/appmetrica/analytics/impl/mf;

    invoke-virtual {v13, v10}, Lio/appmetrica/analytics/impl/mf;->b(Z)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v9, v4, v11, v10}, Lio/appmetrica/analytics/impl/E7;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    invoke-direct {v8, v3, v6, v7, v9}, Lio/appmetrica/analytics/impl/F7;-><init>(Ljava/lang/Long;Lio/appmetrica/analytics/impl/ol;Ljava/lang/String;Lio/appmetrica/analytics/impl/E7;)V

    invoke-virtual {p1, v8}, Lio/appmetrica/analytics/impl/G7;->a(Lio/appmetrica/analytics/impl/F7;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v5, p1}, Lio/appmetrica/analytics/impl/Y6;->a(Landroid/content/ContentValues;)V

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/g;->b()Lio/appmetrica/analytics/impl/Wk;

    move-result-object p0

    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {p1}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    invoke-direct {v0, v1, v2, p0, p1}, Lio/appmetrica/analytics/impl/Tk;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/nl;Lio/appmetrica/analytics/impl/Wk;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v12

    throw p0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Tk;
    .locals 0

    .line 194
    check-cast p1, Lio/appmetrica/analytics/impl/Uk;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/g;->a(Lio/appmetrica/analytics/impl/Uk;)Lio/appmetrica/analytics/impl/Tk;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/Wk;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->d:Lio/appmetrica/analytics/impl/gl;

    new-instance v1, Lio/appmetrica/analytics/impl/Vk;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/Vk;-><init>(Lio/appmetrica/analytics/impl/gl;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/nl;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v2, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/tb;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lio/appmetrica/analytics/impl/Vk;->h:Ljava/lang/Boolean;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/nl;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v2, "SESSION_COUNTER_ID"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lio/appmetrica/analytics/impl/Vk;->g:Ljava/lang/Long;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/nl;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v2, "SESSION_INIT_TIME"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lio/appmetrica/analytics/impl/Vk;->d:Ljava/lang/Long;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/nl;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v2, "SESSION_CREATION_CURRENT_TIME"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lio/appmetrica/analytics/impl/Vk;->e:Ljava/lang/Long;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/nl;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v2, "SESSION_ID"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lio/appmetrica/analytics/impl/Vk;->c:Ljava/lang/Long;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/nl;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v2, "SESSION_SLEEP_START"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lio/appmetrica/analytics/impl/Vk;->i:Ljava/lang/Long;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/nl;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v2, "SESSION_LAST_EVENT_OFFSET"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lio/appmetrica/analytics/impl/Vk;->a:Ljava/lang/Long;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/g;->c:Lio/appmetrica/analytics/impl/nl;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v0, "SESSION_CRASHED"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/tb;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v1, Lio/appmetrica/analytics/impl/Vk;->j:Ljava/lang/Boolean;

    new-instance p0, Lio/appmetrica/analytics/impl/Wk;

    invoke-direct {p0, v1}, Lio/appmetrica/analytics/impl/Wk;-><init>(Lio/appmetrica/analytics/impl/Vk;)V

    return-object p0
.end method

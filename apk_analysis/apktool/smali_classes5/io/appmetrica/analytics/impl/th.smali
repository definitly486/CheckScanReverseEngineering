.class public final Lio/appmetrica/analytics/impl/th;
.super Lio/appmetrica/analytics/impl/Ug;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/Gf;

.field public final c:Lio/appmetrica/analytics/impl/Go;

.field public final d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

.field public final e:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 6

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->u()Lio/appmetrica/analytics/impl/Go;

    move-result-object v2

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->t()Lio/appmetrica/analytics/impl/Gf;

    move-result-object v3

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v4}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v5}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/th;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Go;Lio/appmetrica/analytics/impl/Gf;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Go;Lio/appmetrica/analytics/impl/Gf;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ug;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    .line 29
    iput-object p2, p0, Lio/appmetrica/analytics/impl/th;->c:Lio/appmetrica/analytics/impl/Go;

    .line 30
    iput-object p3, p0, Lio/appmetrica/analytics/impl/th;->b:Lio/appmetrica/analytics/impl/Gf;

    .line 31
    iput-object p4, p0, Lio/appmetrica/analytics/impl/th;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    .line 32
    iput-object p5, p0, Lio/appmetrica/analytics/impl/th;->e:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 7

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/th;->c:Lio/appmetrica/analytics/impl/Go;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Go;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, v0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/rh;

    iget-boolean v1, v1, Lio/appmetrica/analytics/impl/rh;->e:Z

    if-eqz v1, :cond_0

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->F:Lio/appmetrica/analytics/impl/pb;

    invoke-static {p1, v1}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/pb;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v1, Lio/appmetrica/analytics/impl/pb;->d:Lio/appmetrica/analytics/impl/pb;

    invoke-static {p1, v1}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/pb;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lio/appmetrica/analytics/impl/th;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    iget-object v4, v0, Lio/appmetrica/analytics/impl/i5;->a:Landroid/content/Context;

    iget-object v5, v0, Lio/appmetrica/analytics/impl/i5;->b:Lio/appmetrica/analytics/impl/b5;

    iget-object v5, v5, Lio/appmetrica/analytics/impl/b5;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getInstallerPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    const-string v4, "appInstaller"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "preloadInfo"

    iget-object v4, p0, Lio/appmetrica/analytics/impl/th;->b:Lio/appmetrica/analytics/impl/Gf;

    iget-object v5, v4, Lio/appmetrica/analytics/impl/b8;->h:Lio/appmetrica/analytics/impl/N6;

    iget-object v6, v4, Lio/appmetrica/analytics/impl/b8;->a:Landroid/content/Context;

    invoke-interface {v5, v6}, Lio/appmetrica/analytics/impl/N6;->a(Landroid/content/Context;)V

    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/b8;->c()Lio/appmetrica/analytics/impl/g8;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/impl/Df;

    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/Df;->b()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/a6;->setValue(Ljava/lang/String;)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/w9;->c:Lio/appmetrica/analytics/impl/jl;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/jl;->b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/Tk;

    move-result-object v1

    iget-wide v3, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-static {v1, v3, v4}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/Tk;J)Lio/appmetrica/analytics/impl/ml;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/w9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/ml;)V

    iget-object p1, p0, Lio/appmetrica/analytics/impl/th;->c:Lio/appmetrica/analytics/impl/Go;

    monitor-enter p1

    :try_start_1
    const-string v0, "init_event_done"

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/appmetrica/analytics/impl/Ho;->a(Lorg/json/JSONObject;)V

    :goto_1
    iget-object v0, p1, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ho;->a:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ho;->b:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    iget-object p1, p0, Lio/appmetrica/analytics/impl/th;->c:Lio/appmetrica/analytics/impl/Go;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/th;->e:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    invoke-interface {p0}, Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/appmetrica/analytics/impl/Go;->a(J)V

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_2
    :goto_2
    return v2
.end method

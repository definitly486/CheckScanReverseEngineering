.class public final Lio/appmetrica/analytics/impl/lk;
.super Lio/appmetrica/analytics/impl/Ug;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ug;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/impl/lk;)Z
    .locals 0

    .line 32
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/lk;->b()Z

    move-result p0

    return p0
.end method

.method public static final b(Lio/appmetrica/analytics/impl/lk;)V
    .locals 4

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->t:Lio/appmetrica/analytics/impl/Go;

    monitor-enter p0

    :try_start_0
    const-string v0, "referrer_handled"

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/Ho;->a(Lorg/json/JSONObject;)V

    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ho;->a:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ho;->b:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 1

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/lk;->b()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Fa;->u()Lio/appmetrica/analytics/impl/sg;

    move-result-object p1

    new-instance v0, Lio/appmetrica/analytics/impl/kk;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/kk;-><init>(Lio/appmetrica/analytics/impl/lk;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lio/appmetrica/analytics/impl/dj;

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/dj;-><init>(Lio/appmetrica/analytics/impl/qg;)V

    iget-object p1, p1, Lio/appmetrica/analytics/impl/sg;->a:Lio/appmetrica/analytics/impl/ug;

    invoke-interface {p1, p0}, Lio/appmetrica/analytics/impl/ug;->a(Lio/appmetrica/analytics/impl/qg;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Z
    .locals 3

    .line 48
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    .line 49
    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->t:Lio/appmetrica/analytics/impl/Go;

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "referrer_handled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 52
    monitor-exit p0

    throw v0
.end method

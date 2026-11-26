.class public final Lio/appmetrica/analytics/impl/Lo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/kg;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Fo;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Fo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Lo;->a:Lio/appmetrica/analytics/impl/Fo;

    const-string p1, "vital"

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Lo;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/yg;)V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Lo;->a:Lio/appmetrica/analytics/impl/Fo;

    invoke-interface {p1}, Lio/appmetrica/analytics/impl/yg;->a()Lio/appmetrica/analytics/impl/og;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Fo;->a(Lio/appmetrica/analytics/impl/og;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lo;->a:Lio/appmetrica/analytics/impl/Fo;

    monitor-enter p0

    :try_start_0
    const-string p1, "referrer_checked"

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Ho;->a(Lorg/json/JSONObject;)V

    :goto_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Ho;->a:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ho;->b:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Lio/appmetrica/analytics/impl/yg;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lo;->a:Lio/appmetrica/analytics/impl/Fo;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fo;->b()Lio/appmetrica/analytics/impl/og;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/xg;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/xg;-><init>(Lio/appmetrica/analytics/impl/og;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Z
    .locals 3

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lo;->a:Lio/appmetrica/analytics/impl/Fo;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "referrer_checked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

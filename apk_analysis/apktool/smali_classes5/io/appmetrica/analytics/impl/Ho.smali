.class public final Lio/appmetrica/analytics/impl/Ho;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ko;

.field public final b:Lio/appmetrica/analytics/impl/Ko;

.field public final c:Lio/appmetrica/analytics/impl/Io;

.field public d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Ko;Lio/appmetrica/analytics/impl/Ko;Lio/appmetrica/analytics/impl/Io;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ho;->a:Lio/appmetrica/analytics/impl/Ko;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ho;->b:Lio/appmetrica/analytics/impl/Ko;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Ho;->c:Lio/appmetrica/analytics/impl/Io;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/Ko;)V
    .locals 0

    .line 51
    :try_start_0
    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Ko;->flushAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static b(Lio/appmetrica/analytics/impl/Ko;)Lorg/json/JSONObject;
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Ko;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()Lorg/json/JSONObject;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ho;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ho;->a:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Ho;->b(Lio/appmetrica/analytics/impl/Ko;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ho;->b:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/Ho;->b(Lio/appmetrica/analytics/impl/Ko;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Ho;->c:Lio/appmetrica/analytics/impl/Io;

    invoke-interface {v2, v0, v1}, Lio/appmetrica/analytics/impl/Io;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ho;->d:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Ho;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ho;->d:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "fileContents"

    invoke-static {v0}, Laa4;->j(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(Lorg/json/JSONObject;)V
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ho;->a:Lio/appmetrica/analytics/impl/Ko;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 48
    :try_start_1
    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Ko;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :catchall_0
    :try_start_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ho;->b:Lio/appmetrica/analytics/impl/Ko;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 50
    :try_start_3
    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Ko;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

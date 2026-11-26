.class public final Lio/appmetrica/analytics/impl/Fo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ho;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/mf;Lio/appmetrica/analytics/impl/qa;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Ho;

    new-instance v1, Log;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lio/appmetrica/analytics/impl/Ho;-><init>(Lio/appmetrica/analytics/impl/Ko;Lio/appmetrica/analytics/impl/Ko;Lio/appmetrica/analytics/impl/Io;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    return-void
.end method

.method public static final a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "device_id"

    invoke-static {p0, v1}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optStringOrNullable(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_id_hash"

    invoke-static {p0, v1}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optStringOrNullable(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "referrer"

    invoke-static {p0, v1}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optStringOrNullable(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "referrer_checked"

    invoke-static {p0, v2, v1}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optBooleanOrNullable(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optBooleanOrNullable(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "last_migration_api_level"

    invoke-static {p0, v2, v1}, Lio/appmetrica/analytics/impl/ub;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lio/appmetrica/analytics/impl/ub;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "device_id_hash"

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/og;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 78
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/og;->a()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    sget-object v1, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    const-string p1, "referrer"

    .line 81
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 82
    invoke-static {v1, p1}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/impl/Ho;->a(Lorg/json/JSONObject;)V

    .line 84
    :goto_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    .line 85
    iget-object v0, p1, Lio/appmetrica/analytics/impl/Ho;->a:Lio/appmetrica/analytics/impl/Ko;

    .line 86
    invoke-static {v0}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V

    .line 87
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ho;->b:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 88
    :try_start_0
    const-string v0, "device_id"

    .line 89
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 90
    invoke-static {v1, v0}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/impl/Ho;->a(Lorg/json/JSONObject;)V

    .line 92
    :goto_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    .line 93
    iget-object v0, p1, Lio/appmetrica/analytics/impl/Ho;->a:Lio/appmetrica/analytics/impl/Ko;

    .line 94
    invoke-static {v0}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V

    .line 95
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ho;->b:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()Lio/appmetrica/analytics/impl/og;
    .locals 2

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "referrer"

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 47
    :try_start_1
    sget-object v1, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Lio/appmetrica/analytics/impl/og;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/og;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "device_id_hash"

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/impl/Ho;->a(Lorg/json/JSONObject;)V

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

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

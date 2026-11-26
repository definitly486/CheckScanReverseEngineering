.class public final Lyads/wg5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/q84;

.field public final c:Lyads/zg5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;)V
    .locals 2

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/zg5;

    invoke-direct {v1}, Lyads/zg5;-><init>()V

    sput-object v1, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/wg5;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/wg5;->b:Lyads/q84;

    iput-object v0, p0, Lyads/wg5;->c:Lyads/zg5;

    return-void
.end method

.method public static a(Ljava/util/Map;)I
    .locals 4

    .line 108
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 8

    sget-object v0, Lmx2;->b:Lmx2;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "networks"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "adapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v4

    add-int/lit16 v4, v4, 0x200

    div-int/lit16 v4, v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v2

    :catch_0
    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Map;ILyads/e4;I)Ljava/util/Map;
    .locals 8

    .line 110
    invoke-static {p1}, Lyads/wg5;->a(Ljava/util/Map;)I

    move-result p1

    .line 111
    iget-object v0, p3, Lyads/e4;->h:Ljava/lang/String;

    .line 112
    invoke-static {v0}, Lyads/wg5;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    add-int/lit16 p1, p1, 0x200

    .line 113
    div-int/lit16 p1, p1, 0x400

    add-int/lit16 p2, p2, 0x200

    .line 114
    div-int/lit16 p2, p2, 0x400

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 116
    new-instance v1, Lb36;

    const-string v2, "headers_size"

    invoke-direct {v1, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 118
    new-instance v2, Lb36;

    const-string p2, "sdk_request_size"

    invoke-direct {v2, p2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    new-instance v3, Lb36;

    const-string p1, "bidding_data_network_sizes"

    invoke-direct {v3, p1, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    iget-object p1, p3, Lyads/e4;->a:Lyads/n70;

    .line 121
    iget-object p1, p1, Lyads/n70;->b:Ljava/lang/String;

    .line 122
    new-instance v4, Lb36;

    const-string p2, "ad_type_format"

    invoke-direct {v4, p2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 124
    new-instance v5, Lb36;

    const-string p2, "code"

    invoke-direct {v5, p2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    new-instance v6, Lb36;

    const-string p1, "sdk_version"

    const-string p2, "8.2.0"

    invoke-direct {v6, p1, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    iget-object p0, p0, Lyads/wg5;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 127
    new-instance v7, Lb36;

    const-string p1, "app_id"

    invoke-direct {v7, p1, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    filled-new-array/range {v1 .. v7}, [Lb36;

    move-result-object p0

    .line 129
    invoke-static {p0}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

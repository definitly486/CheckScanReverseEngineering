.class public final Lcom/tapjoy/internal/b1;
.super Lcom/tapjoy/internal/e1;
.source "SourceFile"


# instance fields
.field public final i:Ljava/util/List;

.field public final j:Lcom/tapjoy/internal/r2;

.field public k:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/tapjoy/internal/e1;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/b1;->i:Ljava/util/List;

    new-instance p1, Lcom/tapjoy/internal/r2;

    invoke-direct {p1}, Lcom/tapjoy/internal/r2;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/b1;->j:Lcom/tapjoy/internal/r2;

    sget-object p1, Lmx2;->b:Lmx2;

    iput-object p1, p0, Lcom/tapjoy/internal/b1;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2

    .line 342
    invoke-super {p0}, Lcom/tapjoy/internal/e1;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 343
    iget-object p0, p0, Lcom/tapjoy/internal/b1;->i:Ljava/util/List;

    invoke-static {p0}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/p0;

    if-eqz p0, :cond_0

    .line 344
    iget-object p0, p0, Lcom/tapjoy/internal/p0;->a:Ljava/lang/String;

    if-nez p0, :cond_1

    .line 345
    :cond_0
    const-string p0, ""

    .line 346
    :cond_1
    const-string v1, "X-Tapjoy-Token"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 13

    const-string v0, "/"

    const-string v1, "AppUsage request attempt "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/tapjoy/internal/b1;->i:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/tapjoy/internal/p0;

    iget-object v5, v5, Lcom/tapjoy/internal/p0;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string p0, "AppUsage request failed: empty token"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    return v3

    :cond_2
    const/4 v2, 0x1

    const-wide/16 v4, 0x3e8

    move v6, v2

    :goto_1
    const/4 v7, 0x3

    if-gt v6, v7, :cond_8

    :try_start_0
    new-instance v8, Lcom/tapjoy/internal/o0;

    iget-object v9, p0, Lcom/tapjoy/internal/b1;->i:Ljava/util/List;

    invoke-direct {v8, v9}, Lcom/tapjoy/internal/o0;-><init>(Ljava/util/List;)V

    invoke-virtual {v8, p1}, Lcom/tapjoy/internal/o0;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v8

    iput-object v8, p0, Lcom/tapjoy/internal/b1;->k:Ljava/util/Map;

    iget-object v8, p0, Lcom/tapjoy/internal/b1;->j:Lcom/tapjoy/internal/r2;

    iget-object v9, p0, Lcom/tapjoy/internal/e1;->h:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "api/app_usage/ingest"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/tapjoy/internal/b1;->a()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {p0}, Lcom/tapjoy/internal/b1;->b()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v9, v11}, Lcom/tapjoy/internal/r2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/s2;

    move-result-object v8

    iget-object v9, v8, Lcom/tapjoy/internal/s2;->b:Ljava/lang/String;

    iget v10, v8, Lcom/tapjoy/internal/s2;->a:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AppUsage request success "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " code: "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iget-object v8, v8, Lcom/tapjoy/internal/s2;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_6

    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "status"

    const/4 v10, -0x1

    invoke-virtual {v9, v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v10, "app_usage"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    return v3

    :cond_3
    const/16 v10, 0xc8

    if-ne v8, v10, :cond_4

    sget-boolean v8, Lcom/tapjoy/internal/AppUsageForegroundService;->b:Z

    invoke-static {p1, v9, v3}, Lcom/tapjoy/internal/j;->a(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    return v2

    :catch_0
    move-exception v8

    goto :goto_2

    :cond_4
    const/16 v10, 0x191

    if-ne v8, v10, :cond_5

    const-string v10, "state"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "missing"

    invoke-static {v9, v10}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    return v3

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " failed with response status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": Failed to parse response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/3 error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    :cond_6
    :goto_3
    if-ge v6, v7, :cond_7

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-lez v9, :cond_7

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    long-to-double v9, v4

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v9, v11

    double-to-long v9, v9

    cmp-long v7, v9, v7

    if-lez v7, :cond_7

    move-wide v4, v9

    goto :goto_4

    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return v3

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_8
    return v3
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/tapjoy/TJAppInfo;->INSTANCE:Lcom/tapjoy/TJAppInfo;

    invoke-virtual {v1}, Lcom/tapjoy/TJAppInfo;->getManagedDeviceID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "managed_device_id"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/tapjoy/TJApiDecoded;->INSTANCE:Lcom/tapjoy/TJApiDecoded;

    invoke-virtual {v1}, Lcom/tapjoy/TJApiDecoded;->getAppID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id"

    invoke-static {v0, v3, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/tapjoy/TJApiDecoded;->getSdkKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    const-string v2, "publisher_sdk_key"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONArray;

    iget-object p0, p0, Lcom/tapjoy/internal/b1;->k:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p0, "app_usage"

    invoke-static {v0, p0, v1}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

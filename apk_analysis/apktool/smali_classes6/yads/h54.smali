.class public abstract Lyads/h54;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 7

    .line 123
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 124
    new-instance v0, Luz4;

    invoke-direct {v0}, Luz4;-><init>()V

    .line 125
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 126
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 129
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_0
    const-string p1, " network="

    const-string v0, " must be positive"

    .line 131
    const-string v1, "timeout for format="

    invoke-static {v1, p0, p1, v2, v0}, Ln2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 132
    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 133
    :cond_1
    invoke-virtual {v0}, Luz4;->b()Luz4;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lyads/i54;
    .locals 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "default_timeout"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    move-object v4, p0

    goto :goto_1

    :cond_1
    const-string p0, "default_timeout must be positive"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_2
    move-object v4, v2

    :goto_1
    new-instance v3, Lyads/i54;

    const-string p0, "banner"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v5, v2

    goto :goto_2

    :cond_3
    invoke-static {p0, v0}, Lyads/h54;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    move-object v5, p0

    :goto_2
    const-string p0, "interstitial"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v6, v2

    goto :goto_3

    :cond_4
    invoke-static {p0, v0}, Lyads/h54;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    move-object v6, p0

    :goto_3
    const-string p0, "rewarded"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object v7, v2

    goto :goto_4

    :cond_5
    invoke-static {p0, v0}, Lyads/h54;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    move-object v7, p0

    :goto_4
    const-string p0, "native"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    move-object v8, v2

    goto :goto_5

    :cond_6
    invoke-static {p0, v0}, Lyads/h54;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    move-object v8, p0

    :goto_5
    const-string p0, "appOpenAd"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_6
    move-object v9, v2

    goto :goto_7

    :cond_7
    invoke-static {p0, v0}, Lyads/h54;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    goto :goto_6

    :goto_7
    invoke-direct/range {v3 .. v9}, Lyads/i54;-><init>(Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v3
.end method

.method public static b(Ljava/lang/String;)Lyads/i54;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {p0}, Lyads/h54;->a(Ljava/lang/String;)Lyads/i54;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Lk57$a;

    invoke-direct {v1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v1

    :goto_0
    nop

    instance-of v1, p0, Lk57$a;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    check-cast v0, Lyads/i54;

    :cond_2
    :goto_2
    return-object v0
.end method

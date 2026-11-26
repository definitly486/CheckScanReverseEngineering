.class public abstract Lcom/tapjoy/internal/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkx2;->b:Lkx2;

    sput-object v0, Lcom/tapjoy/internal/r0;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/tapjoy/internal/p0;
    .locals 12

    .line 105
    const-string v0, "network_stats"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 106
    :cond_0
    const-string v1, "fetch"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 107
    :cond_1
    const-string v0, "exclude_bundles"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/r0;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v10

    .line 108
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 109
    invoke-static {p0}, Lcom/tapjoy/internal/r0;->b(Lorg/json/JSONArray;)Lcom/tapjoy/internal/q0;

    move-result-object v0

    if-eqz p0, :cond_2

    .line 110
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "interval"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    :cond_2
    if-eqz v2, :cond_6

    const/4 p0, 0x1

    if-eq v2, p0, :cond_5

    const/4 p0, 0x2

    if-eq v2, p0, :cond_4

    const/4 p0, 0x3

    if-eq v2, p0, :cond_3

    .line 111
    sget-object p0, Lcom/tapjoy/internal/t;->a:Lcom/tapjoy/internal/t;

    :goto_0
    move-object v9, p0

    goto :goto_1

    .line 112
    :cond_3
    sget-object p0, Lcom/tapjoy/internal/t;->d:Lcom/tapjoy/internal/t;

    goto :goto_0

    .line 113
    :cond_4
    sget-object p0, Lcom/tapjoy/internal/t;->c:Lcom/tapjoy/internal/t;

    goto :goto_0

    .line 114
    :cond_5
    sget-object p0, Lcom/tapjoy/internal/t;->b:Lcom/tapjoy/internal/t;

    goto :goto_0

    .line 115
    :cond_6
    sget-object p0, Lcom/tapjoy/internal/t;->a:Lcom/tapjoy/internal/t;

    goto :goto_0

    .line 116
    :goto_1
    new-instance v3, Lcom/tapjoy/internal/p0;

    .line 117
    sget-object v5, Lcom/tapjoy/internal/n0;->c:Lcom/tapjoy/internal/n0;

    .line 118
    iget-object v6, v0, Lcom/tapjoy/internal/q0;->a:Ljava/lang/Long;

    .line 119
    iget-object v7, v0, Lcom/tapjoy/internal/q0;->b:Ljava/lang/Long;

    .line 120
    iget-object v8, v0, Lcom/tapjoy/internal/q0;->c:Ljava/lang/Integer;

    .line 121
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v4, p1

    .line 122
    invoke-direct/range {v3 .. v11}, Lcom/tapjoy/internal/p0;-><init>(Ljava/lang/String;Lcom/tapjoy/internal/n0;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Lcom/tapjoy/internal/t;Ljava/util/List;Ljava/lang/Long;)V

    return-object v3
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    .line 124
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 126
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 127
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_3
    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6

    sget-object v0, Lkx2;->b:Lkx2;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "app_usage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "token"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_fetch"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "categories"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_2

    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1, v2, v3}, Lcom/tapjoy/internal/r0;->d(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/tapjoy/internal/p0;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v5}, Lar4;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {p0, v1, v2, v3}, Lcom/tapjoy/internal/r0;->c(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/tapjoy/internal/p0;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v5}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p0, v1, v2, v3}, Lcom/tapjoy/internal/r0;->a(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/tapjoy/internal/p0;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v5}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {p0, v1, v2, v3}, Lcom/tapjoy/internal/r0;->b(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/tapjoy/internal/p0;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {v4, p0}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {v4}, Lu96;->d(Lar4;)Lar4;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p0, Lcom/tapjoy/internal/r0;->a:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Failed to parse StatsConfig from connect: "

    invoke-static {v1, p0}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/tapjoy/internal/p0;
    .locals 10

    .line 67
    const-string v0, "storage_stats"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 68
    :cond_0
    const-string v1, "fetch"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 69
    :cond_1
    const-string v0, "exclude_bundles"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/r0;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v8

    .line 70
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 71
    invoke-static {p0}, Lcom/tapjoy/internal/r0;->b(Lorg/json/JSONArray;)Lcom/tapjoy/internal/q0;

    move-result-object p0

    .line 72
    new-instance v1, Lcom/tapjoy/internal/p0;

    .line 73
    sget-object v3, Lcom/tapjoy/internal/n0;->d:Lcom/tapjoy/internal/n0;

    .line 74
    iget-object v4, p0, Lcom/tapjoy/internal/q0;->a:Ljava/lang/Long;

    .line 75
    iget-object v5, p0, Lcom/tapjoy/internal/q0;->b:Ljava/lang/Long;

    .line 76
    iget-object v6, p0, Lcom/tapjoy/internal/q0;->c:Ljava/lang/Integer;

    .line 77
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 78
    sget-object v7, Lcom/tapjoy/internal/t;->a:Lcom/tapjoy/internal/t;

    move-object v2, p1

    .line 79
    invoke-direct/range {v1 .. v9}, Lcom/tapjoy/internal/p0;-><init>(Ljava/lang/String;Lcom/tapjoy/internal/n0;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Lcom/tapjoy/internal/t;Ljava/util/List;Ljava/lang/Long;)V

    return-object v1
.end method

.method public static b(Lorg/json/JSONArray;)Lcom/tapjoy/internal/q0;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    if-eqz p0, :cond_1

    const-string v4, "max_lookback"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    :cond_1
    int-to-long v3, v3

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    if-eqz p0, :cond_2

    const-string v0, "period_in_seconds"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    new-instance p0, Lcom/tapjoy/internal/q0;

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v3, v1, v0}, Lcom/tapjoy/internal/q0;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-object p0

    :cond_3
    :goto_0
    new-instance p0, Lcom/tapjoy/internal/q0;

    invoke-direct {p0, v0, v0, v0}, Lcom/tapjoy/internal/q0;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/tapjoy/internal/p0;
    .locals 10

    const-string v0, "usage_events"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "fetch"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "exclude_bundles"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/r0;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v8

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/internal/r0;->b(Lorg/json/JSONArray;)Lcom/tapjoy/internal/q0;

    move-result-object p0

    new-instance v1, Lcom/tapjoy/internal/p0;

    sget-object v3, Lcom/tapjoy/internal/n0;->b:Lcom/tapjoy/internal/n0;

    iget-object v4, p0, Lcom/tapjoy/internal/q0;->a:Ljava/lang/Long;

    iget-object v5, p0, Lcom/tapjoy/internal/q0;->b:Ljava/lang/Long;

    iget-object v6, p0, Lcom/tapjoy/internal/q0;->c:Ljava/lang/Integer;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v7, Lcom/tapjoy/internal/t;->a:Lcom/tapjoy/internal/t;

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/tapjoy/internal/p0;-><init>(Ljava/lang/String;Lcom/tapjoy/internal/n0;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Lcom/tapjoy/internal/t;Ljava/util/List;Ljava/lang/Long;)V

    return-object v1
.end method

.method public static d(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/tapjoy/internal/p0;
    .locals 12

    const-string v0, "usage_stats"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "fetch"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "exclude_bundles"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/r0;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v10

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/internal/r0;->b(Lorg/json/JSONArray;)Lcom/tapjoy/internal/q0;

    move-result-object v0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "interval"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    :cond_2
    if-eqz v2, :cond_6

    const/4 p0, 0x1

    if-eq v2, p0, :cond_5

    const/4 p0, 0x2

    if-eq v2, p0, :cond_4

    const/4 p0, 0x3

    if-eq v2, p0, :cond_3

    sget-object p0, Lcom/tapjoy/internal/t;->a:Lcom/tapjoy/internal/t;

    :goto_0
    move-object v9, p0

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/tapjoy/internal/t;->d:Lcom/tapjoy/internal/t;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/tapjoy/internal/t;->c:Lcom/tapjoy/internal/t;

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/tapjoy/internal/t;->b:Lcom/tapjoy/internal/t;

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/tapjoy/internal/t;->a:Lcom/tapjoy/internal/t;

    goto :goto_0

    :goto_1
    new-instance v3, Lcom/tapjoy/internal/p0;

    sget-object v5, Lcom/tapjoy/internal/n0;->a:Lcom/tapjoy/internal/n0;

    iget-object v6, v0, Lcom/tapjoy/internal/q0;->a:Ljava/lang/Long;

    iget-object v7, v0, Lcom/tapjoy/internal/q0;->b:Ljava/lang/Long;

    iget-object v8, v0, Lcom/tapjoy/internal/q0;->c:Ljava/lang/Integer;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/tapjoy/internal/p0;-><init>(Ljava/lang/String;Lcom/tapjoy/internal/n0;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Lcom/tapjoy/internal/t;Ljava/util/List;Ljava/lang/Long;)V

    return-object v3
.end method

.class public final Lyads/dy4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/v46;

.field public final b:Lyads/gt2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/v46;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/dy4;->a:Lyads/v46;

    new-instance p2, Lyads/gt2;

    invoke-direct {p2, p1, p0}, Lyads/gt2;-><init>(Landroid/content/Context;Lyads/dy4;)V

    iput-object p2, p0, Lyads/dy4;->b:Lyads/gt2;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lyads/by4;
    .locals 13

    const-string v0, "deeplinkLaunchParams"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    const-string v0, "package"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "null"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "extras"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lyads/dy4;->b:Lyads/gt2;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance v6, Luz4;

    invoke-direct {v6}, Luz4;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Lorg/json/JSONObject;

    if-eqz v10, :cond_5

    iget-object v10, v5, Lyads/gt2;->a:Lyads/et2;

    check-cast v9, Lorg/json/JSONObject;

    const-string v11, "type"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "value"

    :try_start_0
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object v9, v2

    :goto_2
    const-string v12, "parcelable"

    invoke-static {v11, v12}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v9, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    sget-object v9, Lyads/ft2;->a:Lyads/ft2;

    goto :goto_3

    :cond_3
    const-string v12, "intent"

    invoke-static {v11, v12}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    instance-of v11, v9, Lorg/json/JSONObject;

    if-eqz v11, :cond_4

    iget-object v11, v10, Lyads/et2;->b:Lyads/dy4;

    check-cast v9, Lorg/json/JSONObject;

    invoke-virtual {v11, v9}, Lyads/dy4;->a(Lorg/json/JSONObject;)Lyads/by4;

    move-result-object v9

    new-instance v11, Lyads/ct2;

    iget-object v10, v10, Lyads/et2;->a:Landroid/content/Context;

    invoke-direct {v11, v10, v9}, Lyads/ct2;-><init>(Landroid/content/Context;Lyads/by4;)V

    move-object v9, v11

    goto :goto_3

    :cond_4
    move-object v9, v2

    :cond_5
    :goto_3
    if-eqz v9, :cond_2

    invoke-virtual {v6, v8, v9}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Luz4;->b()Luz4;

    move-result-object v0

    invoke-virtual {v0}, Luz4;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    move-object v5, v2

    goto :goto_5

    :cond_7
    move-object v5, v0

    :goto_5
    const-string v0, "flags"

    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    new-instance v4, Lk57$a;

    invoke-direct {v4, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v4

    :goto_6
    nop

    instance-of v4, v0, Lk57$a;

    if-eqz v4, :cond_8

    move-object v0, v2

    :cond_8
    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    const-string v0, "launchMode"

    invoke-static {v0, v1}, Lyads/br3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lyads/ui0;->b:Lyads/ti0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lyads/ui0;->f:Lg03;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lyads/ui0;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v0, v9}, Lra8;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_7

    :cond_a
    move-object v7, v2

    :goto_7
    check-cast v7, Lyads/ui0;

    if-nez v7, :cond_b

    sget-object v7, Lyads/ui0;->c:Lyads/ui0;

    :cond_b
    const-string v0, "className"

    invoke-static {v0, v1}, Lyads/br3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "url"

    if-nez v11, :cond_c

    iget-object p0, p0, Lyads/dy4;->a:Lyads/v46;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lyads/v46;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    :goto_8
    move-object v4, p0

    goto :goto_9

    :cond_c
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :goto_9
    const-string p0, "deeplinkType"

    invoke-static {p0, p1}, Lyads/br3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    const-string p0, "trackingUrls"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_d

    move-object v8, v2

    goto :goto_a

    :cond_d
    invoke-static {p0}, Lyads/j16;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    move-object v8, p0

    :goto_a
    const-string p0, "fallbackTrackingUrls"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_e

    :goto_b
    move-object v9, v2

    goto :goto_c

    :cond_e
    invoke-static {p0}, Lyads/j16;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    goto :goto_b

    :goto_c
    new-instance v2, Lyads/by4;

    invoke-direct/range {v2 .. v11}, Lyads/by4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Lyads/ui0;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_f
    const-string p0, "Native Ad json has not required attributes"

    invoke-static {p0}, Lqg;->g(Ljava/lang/String;)V

    return-object v2
.end method

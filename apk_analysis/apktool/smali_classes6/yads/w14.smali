.class public final Lyads/w14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/lk;


# instance fields
.field public final a:Lyads/x04;

.field public final b:Lyads/ud6;

.field public final c:Lyads/ad3;

.field public final d:Lyads/xd3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;Lyads/yo;)V
    .locals 2

    new-instance v0, Lyads/x04;

    iget-boolean v1, p3, Lyads/yo;->a:Z

    invoke-direct {v0, v1}, Lyads/x04;-><init>(Z)V

    new-instance v1, Lyads/ud6;

    invoke-direct {v1, p1, p2, p3}, Lyads/ud6;-><init>(Landroid/content/Context;Lyads/q84;Lyads/yo;)V

    new-instance p1, Lyads/ad3;

    invoke-direct {p1}, Lyads/ad3;-><init>()V

    new-instance p2, Lyads/xd3;

    invoke-direct {p2}, Lyads/xd3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/w14;->a:Lyads/x04;

    iput-object v1, p0, Lyads/w14;->b:Lyads/ud6;

    iput-object p1, p0, Lyads/w14;->c:Lyads/ad3;

    iput-object p2, p0, Lyads/w14;->d:Lyads/xd3;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 11

    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Native Ad json has not required attributes"

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lyads/w14;->a:Lyads/x04;

    const-string v1, "media"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "aspectRatio"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v4, v6

    const/4 v6, 0x0

    cmpg-float v6, v4, v6

    if-nez v6, :cond_0

    const v4, 0x3fe38e39

    :cond_0
    :try_start_0
    new-instance v6, Lyads/rz3;

    iget-object v0, v0, Lyads/x04;->a:Lyads/k66;

    const-string v7, "html"

    invoke-interface {v0, v7, v1}, Lyads/k66;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lyads/rz3;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "htmlUrl"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    move-object v1, v3

    :cond_1
    if-eqz v1, :cond_2

    new-instance v6, Lyads/sz3;

    invoke-direct {v6, v1}, Lyads/sz3;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lyads/by3;

    const/4 v1, 0x4

    invoke-direct {v0, v6, v4, v5, v1}, Lyads/by3;-><init>(Lyads/tz3;FZI)V

    goto :goto_1

    :cond_2
    throw v0

    :cond_3
    move-object v0, v3

    :goto_1
    const-string v1, "images"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v4, p0, Lyads/w14;->d:Lyads/xd3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v8, v5

    :goto_2
    if-ge v8, v7, :cond_5

    iget-object v9, v4, Lyads/xd3;->a:Lyads/ad3;

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v10}, Lyads/ad3;->a(Lorg/json/JSONObject;)Lyads/rd3;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    move-object v6, v3

    :cond_5
    iget-object v1, p0, Lyads/w14;->c:Lyads/ad3;

    const-string v4, "image"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lyads/ad3;->a(Lorg/json/JSONObject;)Lyads/rd3;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v3

    :goto_3
    const/4 v4, 0x1

    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-ne v7, v4, :cond_8

    :cond_7
    if-eqz v1, :cond_8

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lu96;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    :cond_8
    iget-object p0, p0, Lyads/w14;->b:Lyads/ud6;

    const-string v1, "video"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lyads/ud6;->b:Lyads/k66;

    const-string v7, "vast"

    invoke-interface {v1, v7, p1}, Lyads/k66;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lyads/ud6;->a:Lyads/yo;

    :try_start_1
    iget-object v8, p0, Lyads/ud6;->d:Lyads/w86;

    invoke-virtual {v8, v1, v7}, Lyads/w86;->a(Ljava/lang/String;Lyads/yo;)Lyads/q76;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-object v1, v3

    :goto_4
    const-string v7, "Invalid VAST in response"

    if-eqz v1, :cond_d

    iget-object v8, v1, Lyads/q76;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "settings"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v9, p0, Lyads/ud6;->e:Lyads/xe6;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "volumeControlVisible"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v9, "isProgressBarHidden"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    :try_start_2
    const-string v9, "initialVolume"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v8

    new-instance v9, Lk57$a;

    invoke-direct {v9, v8}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v8, v9

    :goto_5
    nop

    instance-of v9, v8, Lk57$a;

    if-eqz v9, :cond_9

    move-object v8, v3

    :cond_9
    check-cast v8, Ljava/lang/Double;

    new-instance v9, Lyads/we6;

    invoke-direct {v9, v4, v5, v8}, Lyads/we6;-><init>(ZZLjava/lang/Double;)V

    goto :goto_6

    :cond_a
    move-object v9, v3

    :goto_6
    iget-object v4, p0, Lyads/ud6;->c:Lyads/na6;

    iget-object v1, v1, Lyads/q76;->b:Ljava/util/List;

    invoke-virtual {v4, v1}, Lyads/na6;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "preview"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lyads/ud6;->f:Lyads/ad3;

    invoke-virtual {p0, p1}, Lyads/ad3;->a(Lorg/json/JSONObject;)Lyads/rd3;

    move-result-object p0

    goto :goto_7

    :cond_b
    move-object p0, v3

    :goto_7
    new-instance p1, Lyads/r96;

    invoke-direct {p1, v1, v9, p0}, Lyads/r96;-><init>(Ljava/util/List;Lyads/we6;Lyads/rd3;)V

    goto :goto_8

    :cond_c
    invoke-static {v7}, Lqg;->g(Ljava/lang/String;)V

    return-object v3

    :cond_d
    invoke-static {v7}, Lqg;->g(Ljava/lang/String;)V

    return-object v3

    :cond_e
    move-object p1, v3

    :goto_8
    if-nez v0, :cond_11

    if-eqz v6, :cond_f

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_11

    :cond_f
    if-eqz p1, :cond_10

    goto :goto_9

    :cond_10
    invoke-static {v2}, Lqg;->g(Ljava/lang/String;)V

    return-object v3

    :cond_11
    :goto_9
    new-instance p0, Lyads/v14;

    if-eqz v6, :cond_12

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_12
    invoke-direct {p0, v0, p1, v3}, Lyads/v14;-><init>(Lyads/by3;Lyads/r96;Ljava/util/List;)V

    return-object p0

    :cond_13
    invoke-static {v2}, Lqg;->g(Ljava/lang/String;)V

    return-object v3
.end method

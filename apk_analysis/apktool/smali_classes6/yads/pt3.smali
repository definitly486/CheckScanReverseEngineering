.class public final Lyads/pt3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/z0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;)V
    .locals 1

    new-instance v0, Lyads/z0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lyads/z0;-><init>(Landroid/content/Context;Lyads/q84;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/pt3;->a:Lyads/z0;

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .line 312
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 314
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "null"

    .line 315
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    .line 316
    :cond_0
    const-string p0, "Native Ad json has not required attributes"

    invoke-static {p0}, Lqg;->g(Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Lyads/yo;)Lyads/ot3;
    .locals 19

    move-object/from16 v1, p1

    const-string v0, "actions"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    move-object/from16 v8, p0

    iget-object v9, v8, Lyads/pt3;->a:Lyads/z0;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "type"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "null"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v9, Lyads/z0;->f:Ljava/util/Map;

    if-nez v11, :cond_0

    new-instance v11, Lyads/ac;

    iget-object v12, v9, Lyads/z0;->b:Lyads/v46;

    iget-object v13, v9, Lyads/z0;->c:Lyads/k16;

    invoke-direct {v11, v12, v13}, Lyads/ac;-><init>(Lyads/v46;Lyads/k16;)V

    new-instance v12, Lb36;

    const-string v13, "adtune"

    invoke-direct {v12, v13, v11}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lyads/pn1;

    iget-object v13, v9, Lyads/z0;->d:Lyads/sn0;

    iget-object v14, v9, Lyads/z0;->e:Lyads/jo1;

    iget-object v15, v9, Lyads/z0;->c:Lyads/k16;

    move-object/from16 v2, p2

    const/16 v16, 0x0

    iget-boolean v3, v2, Lyads/yo;->b:Z

    invoke-direct {v11, v13, v14, v15, v3}, Lyads/pn1;-><init>(Lyads/sn0;Lyads/jo1;Lyads/k16;Z)V

    new-instance v3, Lb36;

    const-string v13, "divkit_adtune"

    invoke-direct {v3, v13, v11}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lyads/c10;

    invoke-direct {v11}, Lyads/c10;-><init>()V

    new-instance v13, Lb36;

    const-string v14, "close"

    invoke-direct {v13, v14, v11}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lyads/si0;

    iget-object v14, v9, Lyads/z0;->a:Landroid/content/Context;

    iget-object v15, v9, Lyads/z0;->b:Lyads/v46;

    invoke-direct {v11, v14, v15}, Lyads/si0;-><init>(Landroid/content/Context;Lyads/v46;)V

    new-instance v14, Lb36;

    const-string v15, "deeplink"

    invoke-direct {v14, v15, v11}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v12, v3, v13, v14}, [Lb36;

    move-result-object v3

    invoke-static {v3}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v11

    iput-object v11, v9, Lyads/z0;->f:Ljava/util/Map;

    goto :goto_1

    :cond_0
    move-object/from16 v2, p2

    const/16 v16, 0x0

    :goto_1
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/y0;

    if-eqz v3, :cond_1

    invoke-interface {v3, v7}, Lyads/y0;->a(Lorg/json/JSONObject;)Lyads/u0;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    const/16 v16, 0x0

    const-string v0, "Native Ad json has not required attributes"

    invoke-static {v0}, Lqg;->g(Ljava/lang/String;)V

    return-object v16

    :cond_3
    const/16 v16, 0x0

    move-object v2, v4

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    move-object/from16 v2, v16

    :goto_2
    const-string v0, "falseClickUrl"

    invoke-static {v0, v1}, Lyads/pt3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "falseClickInterval"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    if-eqz v0, :cond_5

    new-instance v3, Lyads/mt2;

    invoke-direct {v3, v0, v6, v7}, Lyads/mt2;-><init>(Ljava/lang/String;J)V

    goto :goto_3

    :cond_5
    move-object/from16 v3, v16

    :goto_3
    new-instance v6, Lir7;

    invoke-direct {v6}, Lir7;-><init>()V

    const-string v0, "trackingUrl"

    invoke-static {v0, v1}, Lyads/pt3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v6, v0}, Lir7;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v0, "trackingUrls"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v8

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_8

    :try_start_0
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    new-instance v11, Lk57$a;

    invoke-direct {v11, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v11

    :goto_5
    nop

    instance-of v11, v0, Lk57$a;

    if-nez v11, :cond_7

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_8
    invoke-static {v8}, Lu96;->d(Lar4;)Lar4;

    move-result-object v0

    goto :goto_6

    :cond_9
    move-object/from16 v0, v16

    :goto_6
    if-eqz v0, :cond_a

    invoke-virtual {v6, v0}, Lir7;->addAll(Ljava/util/Collection;)Z

    :cond_a
    invoke-static {v6}, Ll1;->d(Lir7;)Lir7;

    move-result-object v0

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    const-string v6, "url"

    invoke-static {v6, v1}, Lyads/pt3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "clickableDelay"

    invoke-virtual {v1, v7, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v7, "webViewEnabled"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    new-instance v1, Lyads/ot3;

    move-wide/from16 v17, v4

    move-object v5, v6

    move-wide/from16 v6, v17

    move-object v4, v0

    invoke-direct/range {v1 .. v8}, Lyads/ot3;-><init>(Ljava/util/ArrayList;Lyads/mt2;Ljava/util/List;Ljava/lang/String;JZ)V

    return-object v1
.end method

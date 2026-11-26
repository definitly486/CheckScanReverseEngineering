.class public final Lqw9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lqn9;

.field public final b:Llia;

.field public c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>(Lz2a;Llia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lqw9;->d:Z

    iput-object p2, p0, Lqw9;->b:Llia;

    new-instance p1, Lqn9;

    invoke-direct {p1, p2}, Lqn9;-><init>(Llia;)V

    iput-object p1, p0, Lqw9;->a:Lqn9;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lj8a;Lks9;)Ljava/lang/String;
    .locals 4

    const-string v0, "src"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "source"

    if-nez v1, :cond_0

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Ll6a;->n:Ll6a;

    invoke-virtual {p1, p0}, Lj8a;->a(Ll6a;)V

    invoke-virtual {p2, v0}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object p0

    const/16 p1, 0xbbe

    invoke-virtual {p0, p1}, Lks9;->f(I)V

    invoke-virtual {p2, v3}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object p0

    invoke-virtual {p0, p1}, Lks9;->f(I)V

    return-object v2

    :cond_0
    const-string p1, ""

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    :catchall_0
    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0, v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0}, Ly14;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2
.end method

.method public static c(Lorg/json/JSONObject;Lao9;)V
    .locals 5

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    const-string v0, "detailedMonitoringPixelsEnabled"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Lao9;->Q:Lpp9;

    iget-object p0, p0, Lpp9;->a:Lz8a;

    iget-object p0, p0, Lz8a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "show"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "playbackStarted"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "playheadViewabilityValue"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lao9;->a:Ln4a;

    invoke-virtual {v4, v3}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object v3

    iget-object v3, v3, Ls5a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/my/target/a3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    sget-object v1, Lcom/my/target/a3;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/my/target/a3;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public final b(Lorg/json/JSONObject;Lao9;Lks9;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v2, Lao9;->a:Ln4a;

    iget-object v5, v0, Lqw9;->b:Llia;

    iget-object v6, v5, Llia;->F:Ljava/lang/Boolean;

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v0, Lqw9;->d:Z

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    iget-boolean v6, v0, Lqw9;->d:Z

    iput-boolean v6, v2, Lao9;->O:Z

    goto :goto_0

    :cond_0
    const-string v6, "logErrors"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lqw9;->d:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    iget-boolean v6, v0, Lqw9;->d:Z

    iput-boolean v6, v2, Lao9;->O:Z

    :cond_1
    :goto_0
    const-string v6, "id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lqw9;->c:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v9, 0xbbc

    if-eqz v8, :cond_3

    const-string v8, "bannerID"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    iget-object v10, v2, Lao9;->B:Ljava/lang/String;

    invoke-virtual {v1, v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lqw9;->c:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v6}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v8

    invoke-virtual {v8, v9}, Lks9;->f(I)V

    :goto_1
    iget-object v8, v0, Lqw9;->c:Ljava/lang/String;

    iput-object v8, v2, Lao9;->B:Ljava/lang/String;

    iget-object v8, v2, Lao9;->P:Lzn9;

    const-string v10, "type"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    iput-object v11, v2, Lao9;->A:Ljava/lang/String;

    :cond_4
    invoke-virtual {v2}, Lao9;->c()I

    move-result v11

    const-string v12, "width"

    invoke-virtual {v1, v12, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v2, Lao9;->x:I

    invoke-virtual {v2}, Lao9;->j()I

    move-result v11

    const-string v13, "height"

    invoke-virtual {v1, v13, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v2, Lao9;->y:I

    invoke-virtual {v2}, Lao9;->h()Ljava/lang/String;

    move-result-object v11

    const-string v14, "discount"

    invoke-virtual {v1, v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lao9;->f(Ljava/lang/String;)V

    iget-object v11, v2, Lao9;->M:Ljava/lang/String;

    const-string v14, "newPrice"

    invoke-virtual {v1, v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lao9;->M:Ljava/lang/String;

    invoke-virtual {v2}, Lao9;->a()Ljava/lang/String;

    move-result-object v11

    const-string v14, "oldPrice"

    invoke-virtual {v1, v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lao9;->i(Ljava/lang/String;)V

    const-string v11, "ageRestrictions"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    iput-object v11, v2, Lao9;->g:Ljava/lang/String;

    :cond_5
    const-string v11, "erid"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    const-string v11, "deeplink"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    iput-object v14, v2, Lao9;->E:Ljava/lang/String;

    :cond_6
    const-string v14, "trackingLink"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    iput-object v14, v2, Lao9;->F:Ljava/lang/String;

    :cond_7
    const-string v15, "ctaLink"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_8

    iput-object v15, v2, Lao9;->G:Ljava/lang/String;

    :cond_8
    const-string v7, "bundle_id"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    iput-object v7, v2, Lao9;->D:Ljava/lang/String;

    :cond_9
    const-string v7, "urlscheme"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    iput-object v7, v2, Lao9;->C:Ljava/lang/String;

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v5, Llia;->A:Ljava/lang/Boolean;

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_2

    :cond_b
    iget-boolean v7, v2, Lao9;->s:Z

    const-string v9, "openInBrowser"

    invoke-virtual {v1, v9, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    :goto_2
    iput-boolean v7, v2, Lao9;->s:Z

    iget-object v7, v5, Llia;->z:Ljava/lang/Boolean;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_3

    :cond_c
    iget-boolean v7, v2, Lao9;->t:Z

    const-string v9, "directLink"

    invoke-virtual {v1, v9, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    :goto_3
    iput-boolean v7, v2, Lao9;->t:Z

    iget-object v7, v2, Lao9;->N:Ljava/lang/String;

    const-string v9, "paidType"

    invoke-virtual {v1, v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lao9;->N:Ljava/lang/String;

    const-string v7, "navigationType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    move-object/from16 v19, v14

    const-string v14, "store"

    if-nez v18, :cond_e

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v3, v7}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    const-string v15, "legacy value "

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v15, 0xbbd

    invoke-virtual {v7, v15, v11}, Lks9;->g(ILjava/lang/String;)V

    iput-object v14, v2, Lao9;->m:Ljava/lang/String;

    goto :goto_4

    :cond_d
    move-object/from16 v18, v15

    iput-object v9, v2, Lao9;->m:Ljava/lang/String;

    goto :goto_4

    :cond_e
    move-object/from16 v18, v15

    :goto_4
    const-string v7, "storeType"

    invoke-static {v1, v7}, Ly14;->i(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/16 v15, 0xbbe

    if-eqz v11, :cond_f

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v3, v7}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v7

    invoke-virtual {v7, v15}, Lks9;->f(I)V

    :cond_f
    const-string v7, "title"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    iput-object v7, v2, Lao9;->e:Ljava/lang/String;

    :cond_10
    const-string v7, "description"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    iput-object v7, v2, Lao9;->c:Ljava/lang/String;

    :cond_11
    const-string v7, "disclaimerInfo"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_12

    const/4 v14, 0x0

    goto :goto_5

    :cond_12
    invoke-virtual {v3, v7}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v7

    new-instance v14, Lhw9;

    invoke-direct {v14, v9, v7}, Lhw9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    const-string v9, "percent"

    if-nez v14, :cond_14

    move-object/from16 v27, v4

    move-object/from16 v21, v8

    :cond_13
    :goto_6
    const/4 v11, 0x0

    goto/16 :goto_13

    :cond_14
    new-instance v11, Lrw9;

    invoke-direct {v11}, Lrw9;-><init>()V

    invoke-virtual {v14, v6}, Lhw9;->a(Ljava/lang/String;)I

    move-result v6

    iput v6, v11, Lrw9;->a:I

    invoke-virtual {v14, v9}, Lhw9;->a(Ljava/lang/String;)I

    move-result v6

    iput v6, v11, Lrw9;->d:I

    const-string v6, "alias"

    invoke-virtual {v14, v6}, Lhw9;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v11, Lrw9;->b:Ljava/lang/String;

    const-string v6, "text"

    invoke-virtual {v14, v6}, Lhw9;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v11, Lrw9;->c:Ljava/lang/String;

    iget-object v6, v14, Lhw9;->c:Ljava/lang/Object;

    check-cast v6, Lks9;

    const-string v7, "images"

    invoke-virtual {v6, v7}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v6

    iget-object v14, v14, Lhw9;->b:Ljava/lang/Object;

    check-cast v14, Lorg/json/JSONObject;

    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_15

    invoke-virtual {v6, v15}, Lks9;->f(I)V

    :goto_7
    const/4 v14, 0x0

    goto :goto_9

    :cond_15
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_16

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-nez v14, :cond_17

    :cond_16
    const/16 v7, 0xbbf

    goto :goto_8

    :cond_17
    new-instance v14, Lml;

    invoke-direct {v14, v7, v6}, Lml;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :goto_8
    invoke-virtual {v6, v7}, Lks9;->f(I)V

    goto :goto_7

    :goto_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-nez v14, :cond_19

    move-object/from16 v21, v8

    :cond_18
    move-object/from16 v27, v4

    goto/16 :goto_12

    :cond_19
    iget-object v7, v14, Lml;->a:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONArray;

    move-object/from16 v21, v8

    const/4 v15, 0x0

    :goto_a
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v15, v8, :cond_18

    iget-object v8, v14, Lml;->b:Ljava/lang/Object;

    check-cast v8, Lks9;

    invoke-virtual {v8, v15}, Lks9;->d(I)Lks9;

    move-result-object v8

    move-object/from16 v22, v14

    invoke-virtual {v7, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    if-nez v14, :cond_1a

    move-object/from16 v23, v7

    const/16 v7, 0xbbf

    invoke-virtual {v8, v7}, Lks9;->f(I)V

    const/4 v7, 0x0

    goto :goto_b

    :cond_1a
    move-object/from16 v23, v7

    new-instance v7, Lhw9;

    invoke-direct {v7, v14, v8}, Lhw9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b
    if-nez v7, :cond_1b

    move-object/from16 v27, v4

    move-object/from16 v24, v10

    move-object/from16 v26, v12

    move/from16 v25, v15

    goto/16 :goto_11

    :cond_1b
    new-instance v8, Lrw9$a;

    invoke-direct {v8}, Lrw9$a;-><init>()V

    invoke-virtual {v7, v10}, Lhw9;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v24, v10

    iget-object v10, v7, Lhw9;->c:Ljava/lang/Object;

    check-cast v10, Lks9;

    iput-object v14, v8, Lrw9$a;->a:Ljava/lang/String;

    move/from16 v25, v15

    if-eqz v14, :cond_1c

    const-string v15, "portrait"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1c

    const-string v15, "landscape"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1c

    iget-object v14, v8, Lrw9$a;->a:Ljava/lang/String;

    const/16 v15, 0xbbf

    invoke-virtual {v10, v15, v14}, Lks9;->g(ILjava/lang/String;)V

    const/4 v14, 0x0

    iput-object v14, v8, Lrw9$a;->a:Ljava/lang/String;

    :cond_1c
    const-string v14, "minHeight"

    invoke-virtual {v7, v14}, Lhw9;->a(Ljava/lang/String;)I

    move-result v14

    iput v14, v8, Lrw9$a;->b:I

    const-string v14, "image"

    invoke-virtual {v10, v14}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v10

    iget-object v7, v7, Lhw9;->b:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONObject;

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1d

    const/16 v15, 0xbbe

    invoke-virtual {v10, v15}, Lks9;->f(I)V

    :goto_c
    const/4 v14, 0x0

    goto :goto_d

    :cond_1d
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_1e

    const/16 v15, 0xbbf

    invoke-virtual {v10, v15}, Lks9;->f(I)V

    goto :goto_c

    :cond_1e
    new-instance v14, Lhw9;

    invoke-direct {v14, v7, v10}, Lhw9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_d
    if-nez v14, :cond_20

    move-object/from16 v27, v4

    move-object/from16 v26, v12

    :cond_1f
    :goto_e
    const/4 v14, 0x0

    goto :goto_10

    :cond_20
    iget-object v7, v14, Lhw9;->c:Ljava/lang/Object;

    check-cast v7, Lks9;

    new-instance v10, Lsi0;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    const-string v15, "url"

    invoke-virtual {v14, v15}, Lhw9;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v10, Lsi0;->c:Ljava/io/Serializable;

    invoke-virtual {v14, v12}, Lhw9;->a(Ljava/lang/String;)I

    move-result v15

    iput v15, v10, Lsi0;->a:I

    if-gtz v15, :cond_21

    invoke-virtual {v7, v12}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v15

    move-object/from16 v26, v12

    iget v12, v10, Lsi0;->a:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v27, v4

    const/16 v4, 0xbbf

    invoke-virtual {v15, v4, v12}, Lks9;->g(ILjava/lang/String;)V

    goto :goto_f

    :cond_21
    move-object/from16 v27, v4

    move-object/from16 v26, v12

    const/16 v4, 0xbbf

    :goto_f
    invoke-virtual {v14, v13}, Lhw9;->a(Ljava/lang/String;)I

    move-result v12

    iput v12, v10, Lsi0;->b:I

    if-gtz v12, :cond_22

    invoke-virtual {v7, v13}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v7

    iget v12, v10, Lsi0;->b:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v4, v12}, Lks9;->g(ILjava/lang/String;)V

    :cond_22
    iget-object v4, v10, Lsi0;->c:Ljava/io/Serializable;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    iget v4, v10, Lsi0;->a:I

    if-lez v4, :cond_1f

    iget v4, v10, Lsi0;->b:I

    if-gtz v4, :cond_23

    goto :goto_e

    :cond_23
    move-object v14, v10

    :goto_10
    iput-object v14, v8, Lrw9$a;->c:Lsi0;

    iget-object v4, v8, Lrw9$a;->a:Ljava/lang/String;

    if-eqz v4, :cond_24

    iget v4, v8, Lrw9$a;->b:I

    if-lez v4, :cond_24

    if-nez v14, :cond_25

    :cond_24
    const/4 v8, 0x0

    :cond_25
    if-nez v8, :cond_26

    goto :goto_11

    :cond_26
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11
    add-int/lit8 v15, v25, 0x1

    move-object/from16 v14, v22

    move-object/from16 v7, v23

    move-object/from16 v10, v24

    move-object/from16 v12, v26

    move-object/from16 v4, v27

    goto/16 :goto_a

    :goto_12
    iget-object v4, v11, Lrw9;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v4, v11, Lrw9;->a:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_13

    iget v4, v11, Lrw9;->d:I

    if-eq v4, v6, :cond_13

    iget-object v4, v11, Lrw9;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v4, v11, Lrw9;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto/16 :goto_6

    :cond_27
    :goto_13
    const-string v6, ""

    if-eqz v11, :cond_2b

    iget v7, v11, Lrw9;->a:I

    iget-object v8, v11, Lrw9;->c:Ljava/lang/String;

    if-eqz v8, :cond_28

    goto :goto_14

    :cond_28
    move-object v8, v6

    :goto_14
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iget-object v11, v11, Lrw9;->e:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_15
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lrw9$a;

    iget-object v13, v12, Lrw9$a;->c:Lsi0;

    if-nez v13, :cond_29

    goto :goto_15

    :cond_29
    new-instance v14, Lln2;

    iget v15, v12, Lrw9$a;->b:I

    iget-object v4, v13, Lsi0;->c:Ljava/io/Serializable;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v23, v11

    iget v11, v13, Lsi0;->a:I

    iget v13, v13, Lsi0;->b:I

    invoke-direct {v14, v15, v4, v11, v13}, Lln2;-><init>(ILjava/lang/String;II)V

    iget-object v4, v12, Lrw9$a;->a:Ljava/lang/String;

    invoke-virtual {v10, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, v23

    goto :goto_15

    :cond_2a
    iput v7, v2, Lao9;->w:I

    iput-object v8, v2, Lao9;->f:Ljava/lang/String;

    goto :goto_17

    :cond_2b
    const-string v4, "disclaimer"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2c

    iput-object v7, v2, Lao9;->f:Ljava/lang/String;

    :cond_2c
    const-string v7, "disclaimer_id"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2e

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v7}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v7

    if-eqz v4, :cond_2d

    const/4 v8, 0x3

    if-eq v4, v8, :cond_2d

    const/4 v8, 0x4

    if-eq v4, v8, :cond_2d

    const/4 v8, 0x5

    if-eq v4, v8, :cond_2d

    const/4 v8, 0x6

    if-eq v4, v8, :cond_2d

    packed-switch v4, :pswitch_data_0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0xbbf

    invoke-virtual {v7, v15, v4}, Lks9;->c(ILjava/lang/String;)V

    const/4 v4, 0x0

    :cond_2d
    :pswitch_0
    iput v4, v2, Lao9;->w:I

    goto :goto_16

    :cond_2e
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {v3, v7}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v4

    const-string v7, "has disclaimer, but has no disclaimer_id"

    const/16 v15, 0xbbe

    invoke-virtual {v4, v15, v7}, Lks9;->g(ILjava/lang/String;)V

    :cond_2f
    :goto_16
    iget v4, v2, Lao9;->w:I

    if-nez v4, :cond_30

    goto :goto_17

    :cond_30
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :goto_17
    const-string v4, "votes"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    const/4 v8, -0x1

    invoke-virtual {v1, v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_31

    goto :goto_18

    :cond_31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lao9;->i:Ljava/lang/Integer;

    :cond_32
    :goto_18
    const-string v4, "category"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_33

    iput-object v4, v2, Lao9;->j:Ljava/lang/String;

    :cond_33
    const-string v4, "subcategory"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_34

    iput-object v4, v2, Lao9;->k:Ljava/lang/String;

    :cond_34
    const-string v4, "domain"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_35

    iput-object v4, v2, Lao9;->l:Ljava/lang/String;

    :cond_35
    iget v4, v2, Lao9;->z:F

    float-to-double v7, v4

    const-string v4, "duration"

    invoke-virtual {v1, v4, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v7, v7

    iput v7, v2, Lao9;->z:F

    const-string v7, "rating"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    const-wide/16 v10, 0x0

    if-eqz v8, :cond_37

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-virtual {v1, v7, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    double-to-float v8, v12

    float-to-double v12, v8

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    cmpg-double v14, v12, v14

    if-gtz v14, :cond_36

    cmpl-double v12, v12, v10

    if-ltz v12, :cond_36

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, v2, Lao9;->h:Ljava/lang/Float;

    goto :goto_19

    :cond_36
    invoke-virtual {v3, v7}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xbbf

    invoke-virtual {v7, v15, v8}, Lks9;->g(ILjava/lang/String;)V

    :cond_37
    :goto_19
    const-string v7, "ctaText"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v2}, Lao9;->g()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lao9;->d:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_38

    if-nez v8, :cond_38

    invoke-virtual {v3, v7}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v12

    const/16 v15, 0xbbe

    invoke-virtual {v12, v15}, Lks9;->f(I)V

    :cond_38
    if-eqz v8, :cond_39

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_39

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_39

    invoke-virtual {v3, v7}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v7

    const/16 v8, 0xbc0

    const-string v12, "ctaText is not empty, but ctaLink and trackingLink are empty"

    invoke-virtual {v7, v8, v12}, Lks9;->g(ILjava/lang/String;)V

    :cond_39
    const-string v7, "iconLink"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "iconWidth"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v12, "iconHeight"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3a

    invoke-static {v8, v12, v7}, Lh14;->a(IILjava/lang/String;)Lh14;

    move-result-object v7

    iput-object v7, v2, Lao9;->q:Lh14;

    :cond_3a
    const-string v7, "imageLink"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "imageWidth"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v12, "imageHeight"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3b

    invoke-static {v8, v12, v7}, Lh14;->a(IILjava/lang/String;)Lh14;

    move-result-object v7

    iput-object v7, v2, Lao9;->p:Lh14;

    :cond_3b
    const-string v7, "imageDominantColor"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget v7, v5, Llia;->o:I

    if-ltz v7, :cond_3c

    new-instance v8, Lt2a;

    invoke-direct {v8, v7}, Lt2a;-><init>(I)V

    iput-object v8, v2, Lao9;->r:Lt2a;

    goto :goto_1a

    :cond_3c
    const-string v7, "clickArea"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3e

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_3d

    invoke-virtual {v3, v7}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0xbbf

    invoke-virtual {v7, v15, v8}, Lks9;->g(ILjava/lang/String;)V

    goto :goto_1a

    :cond_3d
    new-instance v7, Lt2a;

    invoke-direct {v7, v8}, Lt2a;-><init>(I)V

    iput-object v7, v2, Lao9;->r:Lt2a;

    goto :goto_1a

    :cond_3e
    const-string v7, "extendedClickArea"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-virtual {v3, v7}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v8

    const/16 v12, 0xbbc

    invoke-virtual {v8, v12}, Lks9;->f(I)V

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3f

    sget-object v7, Lt2a;->r:Lt2a;

    iput-object v7, v2, Lao9;->r:Lt2a;

    goto :goto_1a

    :cond_3f
    sget-object v7, Lt2a;->s:Lt2a;

    iput-object v7, v2, Lao9;->r:Lt2a;

    :cond_40
    :goto_1a
    const-string v7, "advertisingLabel"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lao9;->n:Ljava/lang/String;

    const-string v6, "url_types"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v2, Lao9;->o:Ljava/util/List;

    :cond_41
    iget-object v6, v5, Llia;->H:Lcom/my/target/q;

    if-nez v6, :cond_42

    const-string v7, "adChoices"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v3, v7}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v7

    if-eqz v8, :cond_42

    invoke-static {v8, v7}, Lcom/my/target/q0;->a(Lorg/json/JSONObject;Lks9;)Lcom/my/target/q;

    move-result-object v6

    if-nez v6, :cond_42

    const-string v8, "adChoices element is not parsed"

    const/16 v15, 0xbbf

    invoke-virtual {v7, v15, v8}, Lks9;->g(ILjava/lang/String;)V

    :cond_42
    iput-object v6, v2, Lao9;->H:Lcom/my/target/q;

    const-string v6, "viewability"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_49

    invoke-virtual {v3, v6}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v6

    iget-object v8, v2, Lao9;->b:La0a;

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_44

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x5

    if-lt v12, v13, :cond_43

    const/16 v13, 0x64

    if-gt v12, v13, :cond_43

    int-to-float v9, v12

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v9, v12

    iput v9, v8, La0a;->b:F

    goto :goto_1b

    :cond_43
    invoke-virtual {v6, v9}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0xbbf

    invoke-virtual {v9, v15, v12}, Lks9;->c(ILjava/lang/String;)V

    :cond_44
    :goto_1b
    const-string v9, "rate"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_46

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v14, v12, v14

    if-ltz v14, :cond_45

    double-to-float v9, v12

    iput v9, v8, La0a;->a:F

    goto :goto_1c

    :cond_45
    invoke-virtual {v6, v9}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v9

    invoke-static {v12, v13}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0xbbf

    invoke-virtual {v9, v15, v12}, Lks9;->c(ILjava/lang/String;)V

    :cond_46
    :goto_1c
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_47

    invoke-virtual {v6, v4}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v4

    const/16 v15, 0xbbe

    invoke-virtual {v4, v15}, Lks9;->f(I)V

    goto :goto_1d

    :cond_47
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v7, v12

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_48

    float-to-double v12, v7

    cmpl-double v9, v12, v10

    if-ltz v9, :cond_48

    iput v7, v8, La0a;->c:F

    goto :goto_1d

    :cond_48
    invoke-virtual {v6, v4}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    const/16 v15, 0xbbf

    invoke-virtual {v4, v15, v6}, Lks9;->g(ILjava/lang/String;)V

    :cond_49
    :goto_1d
    iget-boolean v4, v2, Lao9;->u:Z

    const-string v6, "isAppInWhitelist"

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lao9;->u:Z

    iget-boolean v4, v2, Lao9;->v:Z

    const-string v6, "not_ad"

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lao9;->v:Z

    iget-object v4, v5, Llia;->G:Laga;

    const-string v5, "omdata"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_4a

    goto :goto_1e

    :cond_4a
    invoke-static {v4, v5}, Lp46;->a(Laga;Lorg/json/JSONObject;)Laga;

    move-result-object v4

    :goto_1e
    iput-object v4, v2, Lao9;->I:Laga;

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4b

    :catch_0
    :goto_1f
    const/4 v4, 0x0

    goto :goto_20

    :cond_4b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4c

    goto :goto_1f

    :cond_4c
    invoke-static {v4}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4d

    goto :goto_1f

    :cond_4d
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4e

    goto :goto_1f

    :cond_4e
    const-string v6, "mail.ru"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f

    const-string v6, ".mail.ru"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto :goto_1f

    :cond_4f
    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/redir"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    :goto_20
    if-nez v4, :cond_50

    new-instance v4, Lks9;

    iget-object v5, v3, Lks9;->a:Lpp9;

    iget-object v3, v3, Lks9;->b:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v6}, Lks9;-><init>(Lpp9;Ljava/lang/String;Z)V

    move-object v3, v4

    :cond_50
    iget-object v0, v0, Lqw9;->a:Lqn9;

    iget v4, v2, Lao9;->z:F

    move-object/from16 v5, v27

    invoke-virtual {v0, v5, v1, v4, v3}, Lqn9;->c(Ln4a;Lorg/json/JSONObject;FLks9;)V

    :try_start_1
    const-string v0, "featureFlags"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    if-eqz v0, :cond_51

    :try_start_2
    const-string v1, "ignoreBannerStatOnCardClick"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_51
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    if-eqz v0, :cond_52

    :try_start_4
    const-string v1, "useClickHandlerV2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :cond_52
    :try_start_5
    invoke-static {v0, v2}, Lqw9;->c(Lorg/json/JSONObject;Lao9;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz v0, :cond_53

    :try_start_6
    const-string v1, "playableUrlInterceptEnabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_21
    move-object/from16 v1, v21

    goto :goto_22

    :catchall_2
    :cond_53
    const/4 v6, 0x0

    goto :goto_21

    :goto_22
    :try_start_7
    iput-boolean v6, v1, Lzn9;->a:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-eqz v0, :cond_54

    :try_start_8
    const-string v2, "useKotlinInterstitialV2"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_23

    :catchall_3
    :cond_54
    const/4 v6, 0x0

    :goto_23
    :try_start_9
    iput-boolean v6, v1, Lzn9;->b:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    if-eqz v0, :cond_55

    :try_start_a
    const-string v2, "playbackTrackerTimingEnabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    :cond_55
    if-eqz v0, :cond_56

    :try_start_b
    const-string v2, "totalBannerSquareRecalculationEnabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    :cond_56
    if-eqz v0, :cond_57

    :try_start_c
    const-string v2, "showConsistencyCheckEnabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_24

    :catchall_6
    :cond_57
    const/4 v6, 0x0

    :goto_24
    :try_start_d
    iput-boolean v6, v1, Lzn9;->c:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-eqz v0, :cond_58

    :try_start_e
    const-string v2, "playbackViewDataLogEnabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_25

    :catchall_7
    :cond_58
    const/4 v6, 0x0

    :goto_25
    :try_start_f
    iput-boolean v6, v1, Lzn9;->d:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :catchall_8
    const-string v0, "load"

    const/4 v6, 0x0

    const/4 v14, 0x0

    invoke-static {v5, v0, v6, v14}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

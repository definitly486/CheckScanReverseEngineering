.class public final Lcom/my/target/v2;
.super Lcom/my/target/s2;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# virtual methods
.method public final d(Ljava/lang/String;Llia;Lvha;Lz2a;Lcom/my/target/t0$a;Lcom/my/target/t0;Ljava/util/ArrayList;Lj8a;)Lkia;
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p8

    move-object/from16 v6, p3

    check-cast v6, Lkia;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v7, "<VAST"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-nez v7, :cond_0

    const-string v7, "<?xml"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 p3, 0x0

    goto/16 :goto_2b

    :cond_1
    iget-object v15, v4, Lz2a;->g:Lz8a;

    new-instance v7, Lyda;

    invoke-direct {v7, v15}, Lyda;-><init>(Lz8a;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 p3, 0x0

    if-eqz v0, :cond_7

    const-string v8, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v8, "AdResponseParser: Converting to JSON..."

    invoke-static {v14, v8}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Ly14;->m:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "sdk_debug_mode"

    invoke-virtual {v8, v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-boolean v12, Ly14;->m:Z

    :cond_4
    :goto_0
    invoke-static {v8, v7}, Lcom/my/target/s2;->b(Lorg/json/JSONObject;Lyda;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "AdResponseParser: Invalid json version"

    invoke-static {v14, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ll6a;->k:Ll6a;

    invoke-virtual {v5, v0}, Lj8a;->a(Ll6a;)V

    :goto_1
    move-object v8, v14

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_5
    move-object/from16 v0, p7

    invoke-static {v0, v8, v7}, Lcom/my/target/s2;->a(Ljava/util/List;Lorg/json/JSONObject;Lyda;)V

    const-string v0, "sdk_ms"

    invoke-virtual {v8, v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move-object/from16 v15, p5

    iput-boolean v0, v15, Lcom/my/target/t0$a;->b:Z

    move-object/from16 v15, p6

    iput-boolean v0, v15, Lcom/my/target/t0;->e:Z

    const-string v0, "timestamp"

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v0, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    sget-object v9, Lfn9;->b:Lfn9;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v0, v9, Lfn9;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_6

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iput-boolean v12, v9, Lfn9;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v9

    :goto_2
    invoke-static {v8, v7}, Lcom/my/target/s2;->c(Lorg/json/JSONObject;Lyda;)V

    const-string v0, "AdResponseParser: Done"

    invoke-static {v14, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "AdResponseParser: Parsing ad response error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v8, v0}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    sget-object v8, Ll6a;->k:Ll6a;

    invoke-virtual {v5, v8}, Lj8a;->a(Ll6a;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Get Json, exception="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ly14;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", data="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v15, v7, Lyda;->a:Lz8a;

    invoke-virtual {v7, v0}, Lyda;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v19, 0xbb9

    invoke-virtual/range {v15 .. v20}, Lz8a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_1

    :cond_7
    :goto_4
    const-string v0, "AdResponseParser: Parsing ad response: empty data"

    invoke-static {v14, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ll6a;->j:Ll6a;

    invoke-virtual {v5, v0}, Lj8a;->a(Ll6a;)V

    const-string v0, "Input json is empty, data="

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lyda;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v19, 0xbba

    invoke-virtual/range {v15 .. v20}, Lz8a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    goto/16 :goto_1

    :goto_5
    if-nez v8, :cond_8

    sget-object v0, Ll6a;->j:Ll6a;

    invoke-virtual {v5, v0}, Lj8a;->a(Ll6a;)V

    goto/16 :goto_41

    :cond_8
    if-nez v6, :cond_9

    new-instance v0, Lkia;

    invoke-direct {v0}, Lkia;-><init>()V

    move-object v6, v0

    :cond_9
    const-string v0, "mraid.js"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/my/target/v2;->a:Ljava/lang/String;

    iget-object v0, v4, Lz2a;->f:Ljava/lang/String;

    const-string v2, "rewarded"

    const-string v9, "fullscreen"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_7

    :cond_b
    :goto_6
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_7
    const-string v2, "settings"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_d

    if-eqz v0, :cond_d

    const-string v2, "settings"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :cond_d
    if-eqz v2, :cond_10

    const-string v9, "style"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v9, "style"

    invoke-virtual {v2, v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v12, :cond_f

    if-eq v2, v13, :cond_f

    const/4 v9, 0x3

    if-ne v2, v9, :cond_e

    goto :goto_8

    :cond_e
    iput v11, v3, Llia;->n:I

    goto :goto_9

    :cond_f
    :goto_8
    iput v2, v3, Llia;->n:I

    :cond_10
    :goto_9
    if-nez v0, :cond_26

    iget-boolean v0, v4, Lz2a;->c:Z

    if-eqz v0, :cond_25

    const-string v0, "mediation"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v2, Lqn9;

    invoke-direct {v2, v3}, Lqn9;-><init>(Llia;)V

    const-string v7, "networks"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_24

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-gtz v8, :cond_11

    goto/16 :goto_13

    :cond_11
    new-instance v8, Lfq9;

    invoke-direct {v8}, Lfq9;-><init>()V

    iget v9, v8, Lfq9;->b:I

    const-string v10, "refreshTimeout"

    invoke-virtual {v0, v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_12

    iput v0, v8, Lfq9;->b:I

    :cond_12
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    move v9, v11

    :goto_a
    if-ge v9, v0, :cond_22

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_20

    const-string v12, "name"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_13

    :goto_b
    move/from16 p1, v0

    move-object v11, v14

    goto/16 :goto_f

    :cond_13
    const-string v13, "placementId"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_14

    goto :goto_b

    :cond_14
    const-string v15, "adapter"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_15

    goto :goto_b

    :cond_15
    new-instance v11, Let9;

    invoke-direct {v11, v12, v13, v15}, Let9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v11, Let9;->a:Ljava/lang/String;

    const-string v13, "myTarget"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    const-string v12, "banner"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_17

    iget-object v13, v4, Lz2a;->g:Lz8a;

    new-instance v15, Lyda;

    invoke-direct {v15, v13}, Lyda;-><init>(Lz8a;)V

    new-instance v13, Lin9;

    invoke-direct {v13, v4, v3}, Lin9;-><init>(Lz2a;Llia;)V

    iget-object v14, v1, Lcom/my/target/v2;->a:Ljava/lang/String;

    invoke-virtual {v13, v12, v14, v5, v15}, Lin9;->a(Lorg/json/JSONObject;Ljava/lang/String;Lj8a;Lyda;)Ljia;

    move-result-object v12

    if-nez v12, :cond_16

    sget-object v12, Ll6a;->r:Ll6a;

    invoke-virtual {v5, v12}, Lj8a;->a(Ll6a;)V

    const/4 v13, 0x0

    goto :goto_c

    :cond_16
    new-instance v13, Lkia;

    invoke-direct {v13}, Lkia;-><init>()V

    iget-object v14, v13, Lkia;->b:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    iput-object v13, v11, Let9;->g:Lkia;

    :cond_17
    const-string v12, "payload"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_18

    iput-object v12, v11, Let9;->f:Ljava/lang/String;

    :cond_18
    iget v12, v11, Let9;->h:I

    const-string v13, "timeout"

    invoke-virtual {v10, v13, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    if-lez v12, :cond_19

    iput v12, v11, Let9;->h:I

    :cond_19
    iget v12, v11, Let9;->i:F

    float-to-double v12, v12

    const-string v14, "priority"

    invoke-virtual {v10, v14, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    double-to-float v12, v12

    iput v12, v11, Let9;->i:F

    const-string v12, "params"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_1d

    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1a

    goto :goto_d

    :cond_1a
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1b

    move/from16 p1, v0

    goto :goto_e

    :cond_1b
    move/from16 p1, v0

    iget-object v0, v11, Let9;->e:Ljava/util/HashMap;

    if-nez v15, :cond_1c

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_1c
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    move/from16 v0, p1

    goto :goto_d

    :cond_1d
    move/from16 p1, v0

    iget-object v0, v11, Let9;->d:Ln4a;

    const/high16 v12, -0x40800000    # -1.0f

    invoke-virtual {v2, v0, v10, v12}, Lqn9;->b(Ln4a;Lorg/json/JSONObject;F)V

    :goto_f
    if-eqz v11, :cond_21

    iget-object v0, v8, Lfq9;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_10
    if-ge v12, v10, :cond_1f

    iget v13, v11, Let9;->i:F

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Let9;

    iget v14, v14, Let9;->i:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1e

    invoke-virtual {v0, v12, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_11

    :cond_1e
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_1f
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_20
    move/from16 p1, v0

    :cond_21
    :goto_11
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p1

    const/4 v11, 0x0

    const/4 v14, 0x0

    goto/16 :goto_a

    :cond_22
    iget-object v0, v8, Lfq9;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    move-object v14, v8

    goto :goto_14

    :cond_23
    sget-object v0, Ll6a;->u:Ll6a;

    invoke-virtual {v5, v0}, Lj8a;->a(Ll6a;)V

    :goto_12
    const/4 v14, 0x0

    goto :goto_14

    :cond_24
    :goto_13
    sget-object v0, Ll6a;->u:Ll6a;

    invoke-virtual {v5, v0}, Lj8a;->a(Ll6a;)V

    goto :goto_12

    :goto_14
    if-eqz v14, :cond_25

    iput-object v14, v6, Lvha;->a:Lfq9;

    :cond_25
    sget-object v0, Ll6a;->m:Ll6a;

    invoke-virtual {v5, v0}, Lj8a;->a(Ll6a;)V

    goto/16 :goto_41

    :cond_26
    const-string v2, "banners"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_28

    :cond_27
    move-object v2, v6

    goto/16 :goto_2a

    :cond_28
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_56

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_54

    const-string v9, "type"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "additionalData"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    const-string v9, "advertisingLabel"

    new-instance v10, Lqn9;

    invoke-direct {v10, v3}, Lqn9;-><init>(Llia;)V

    sget-object v11, Lks9;->d:Lks9;

    const-string v12, "pointP"

    const-string v13, "point"

    const-string v14, "logErrors"

    const-string v15, "autoplay"

    move-object/from16 p1, v0

    const-string v0, "automute"

    move/from16 v18, v2

    const-string v2, "allowBackButton"

    move-object/from16 v19, v6

    const-string v6, "allowReplay"

    move-object/from16 v20, v7

    const-string v7, "directLink"

    const-string v1, "openInBrowser"

    const-string v4, "allowTrackChange"

    move-object/from16 p5, v9

    const-string v9, "allowSkip"

    move-object/from16 p6, v10

    const-string v10, "allowSeek"

    move-object/from16 p7, v12

    const-string v12, "hasPause"

    move-object/from16 v21, v13

    const-string v13, "allowClose"

    move-object/from16 v22, v14

    const-string v14, "url"

    move-object/from16 v23, v15

    iget v15, v3, Llia;->k:I

    move-object/from16 v24, v0

    const/16 v0, 0xbbf

    move-object/from16 v25, v2

    const/4 v2, 0x5

    if-lt v15, v2, :cond_29

    sget-object v1, Ll6a;->i:Ll6a;

    invoke-virtual {v5, v1}, Lj8a;->a(Ll6a;)V

    const-string v1, "rc limit"

    invoke-virtual {v11, v0, v1}, Lks9;->g(ILjava/lang/String;)V

    const-string v0, "AdditionalDataParser: Got additional data, but max redirects limit exceeded"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    const/4 v0, 0x0

    goto/16 :goto_28

    :cond_29
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_2a

    sget-object v1, Ll6a;->n:Ll6a;

    invoke-virtual {v5, v1}, Lj8a;->a(Ll6a;)V

    invoke-virtual {v11, v14}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lks9;->f(I)V

    goto :goto_16

    :cond_2a
    const-string v14, "url = "

    invoke-static {v14, v2}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v0, v11, Lks9;->a:Lpp9;

    invoke-virtual {v11, v14}, Lks9;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x3

    const/16 v31, 0x0

    const/16 v28, 0x0

    const/16 v30, 0xbc2

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v31}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    new-instance v0, Llia;

    const/4 v14, 0x0

    invoke-direct {v0, v2, v14}, Llia;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v3, Llia;->l:I

    const-string v14, "id"

    invoke-virtual {v8, v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v15, v15, 0x1

    iput v15, v0, Llia;->k:I

    iput v2, v0, Llia;->l:I

    iget-boolean v2, v0, Llia;->r:Z

    const-string v14, "doAfter"

    invoke-virtual {v8, v14, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Llia;->r:Z

    iget v2, v0, Llia;->m:I

    const-string v14, "doOnEmptyResponseFromId"

    invoke-virtual {v8, v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Llia;->m:I

    iget-boolean v2, v0, Llia;->s:Z

    const-string v14, "isMidrollPoint"

    invoke-virtual {v8, v14, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Llia;->s:Z

    iget v2, v3, Llia;->t:F

    cmpg-float v14, v2, p3

    if-gez v14, :cond_2b

    iget v2, v0, Llia;->t:F

    float-to-double v14, v2

    const-string v2, "allowCloseDelay"

    invoke-virtual {v8, v2, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    double-to-float v2, v14

    :cond_2b
    iput v2, v0, Llia;->t:F

    iget-object v2, v3, Llia;->u:Ljava/lang/Boolean;

    if-nez v2, :cond_2d

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_17

    :cond_2c
    const/4 v2, 0x0

    :cond_2d
    :goto_17
    iput-object v2, v0, Llia;->u:Ljava/lang/Boolean;

    iget-object v2, v3, Llia;->v:Ljava/lang/Boolean;

    if-nez v2, :cond_2f

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_18

    :cond_2e
    const/4 v2, 0x0

    :cond_2f
    :goto_18
    iput-object v2, v0, Llia;->v:Ljava/lang/Boolean;

    iget-object v2, v3, Llia;->w:Ljava/lang/Boolean;

    if-nez v2, :cond_31

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_19

    :cond_30
    const/4 v2, 0x0

    :cond_31
    :goto_19
    iput-object v2, v0, Llia;->w:Ljava/lang/Boolean;

    iget-object v2, v3, Llia;->x:Ljava/lang/Boolean;

    if-nez v2, :cond_33

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1a

    :cond_32
    const/4 v2, 0x0

    :cond_33
    :goto_1a
    iput-object v2, v0, Llia;->x:Ljava/lang/Boolean;

    iget-object v2, v3, Llia;->y:Ljava/lang/Boolean;

    if-nez v2, :cond_35

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1b

    :cond_34
    const/4 v2, 0x0

    :cond_35
    :goto_1b
    iput-object v2, v0, Llia;->y:Ljava/lang/Boolean;

    iget-object v2, v3, Llia;->A:Ljava/lang/Boolean;

    if-nez v2, :cond_37

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1c

    :cond_36
    const/4 v1, 0x0

    goto :goto_1c

    :cond_37
    move-object v1, v2

    :goto_1c
    iput-object v1, v0, Llia;->A:Ljava/lang/Boolean;

    iget-object v1, v3, Llia;->z:Ljava/lang/Boolean;

    if-nez v1, :cond_39

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1d

    :cond_38
    const/4 v1, 0x0

    :cond_39
    :goto_1d
    iput-object v1, v0, Llia;->z:Ljava/lang/Boolean;

    iget-object v1, v3, Llia;->B:Ljava/lang/Boolean;

    if-nez v1, :cond_3b

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1e

    :cond_3a
    const/4 v1, 0x0

    :cond_3b
    :goto_1e
    iput-object v1, v0, Llia;->B:Ljava/lang/Boolean;

    iget-object v1, v3, Llia;->C:Ljava/lang/Boolean;

    if-nez v1, :cond_3d

    move-object/from16 v2, v25

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1f

    :cond_3c
    const/4 v1, 0x0

    :cond_3d
    :goto_1f
    iput-object v1, v0, Llia;->C:Ljava/lang/Boolean;

    iget-object v1, v3, Llia;->D:Ljava/lang/Boolean;

    if-nez v1, :cond_3f

    move-object/from16 v2, v24

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_20

    :cond_3e
    const/4 v1, 0x0

    :cond_3f
    :goto_20
    iput-object v1, v0, Llia;->D:Ljava/lang/Boolean;

    iget-object v1, v3, Llia;->E:Ljava/lang/Boolean;

    if-nez v1, :cond_41

    move-object/from16 v2, v23

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_21

    :cond_40
    const/4 v1, 0x0

    :cond_41
    :goto_21
    iput-object v1, v0, Llia;->E:Ljava/lang/Boolean;

    iget v1, v3, Llia;->n:I

    if-gez v1, :cond_42

    iget v1, v0, Llia;->n:I

    const-string v2, "style"

    invoke-virtual {v8, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    :cond_42
    iput v1, v0, Llia;->n:I

    iget v1, v3, Llia;->o:I

    if-gez v1, :cond_43

    iget v1, v0, Llia;->o:I

    const-string v2, "clickArea"

    invoke-virtual {v8, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    :cond_43
    iput v1, v0, Llia;->o:I

    iget-object v1, v3, Llia;->F:Ljava/lang/Boolean;

    if-nez v1, :cond_45

    move-object/from16 v2, v22

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_22

    :cond_44
    const/4 v1, 0x0

    :cond_45
    :goto_22
    iput-object v1, v0, Llia;->F:Ljava/lang/Boolean;

    iget v1, v3, Llia;->p:F

    cmpg-float v2, v1, p3

    if-gez v2, :cond_46

    move-object/from16 v2, v21

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    cmpg-float v2, v1, p3

    if-gez v2, :cond_46

    const-string v1, "point=-1.0"

    const/16 v2, 0xbbf

    invoke-virtual {v11, v2, v1}, Lks9;->g(ILjava/lang/String;)V

    const/high16 v1, -0x40800000    # -1.0f

    :cond_46
    iput v1, v0, Llia;->p:F

    iget v1, v3, Llia;->q:F

    cmpg-float v2, v1, p3

    if-gez v2, :cond_48

    move-object/from16 v2, p7

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    cmpg-float v2, v1, p3

    if-ltz v2, :cond_47

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_48

    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "pointP="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbbf

    invoke-virtual {v11, v2, v1}, Lks9;->g(ILjava/lang/String;)V

    const/high16 v1, -0x40800000    # -1.0f

    :cond_48
    iput v1, v0, Llia;->q:F

    iget-object v1, v3, Llia;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_49

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v3, Llia;->e:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_23

    :cond_49
    const/4 v1, 0x0

    :goto_23
    iget-object v2, v0, Llia;->e:Ljava/util/ArrayList;

    if-nez v2, :cond_4a

    iput-object v1, v0, Llia;->e:Ljava/util/ArrayList;

    goto :goto_24

    :cond_4a
    if-eqz v1, :cond_4b

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4b
    :goto_24
    iget-object v1, v3, Llia;->G:Laga;

    const-string v2, "omdata"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_4c

    goto :goto_25

    :cond_4c
    invoke-static {v1, v2}, Lp46;->a(Laga;Lorg/json/JSONObject;)Laga;

    move-result-object v1

    :goto_25
    iput-object v1, v0, Llia;->G:Laga;

    const-string v1, "serviceStatistics"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4f

    const/4 v2, 0x0

    :goto_26
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_4f

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4d

    sget-object v6, Lks9;->d:Lks9;

    move-object/from16 v7, p6

    const/high16 v12, -0x40800000    # -1.0f

    invoke-virtual {v7, v4, v12, v6}, Lqn9;->a(Lorg/json/JSONObject;FLks9;)Lm2a;

    move-result-object v4

    if-eqz v4, :cond_4e

    iget-object v6, v0, Llia;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_4d
    move-object/from16 v7, p6

    :cond_4e
    :goto_27
    add-int/lit8 v2, v2, 0x1

    move-object/from16 p6, v7

    goto :goto_26

    :cond_4f
    move-object/from16 v7, p6

    iget-object v1, v0, Llia;->d:Ln4a;

    iget v2, v0, Llia;->l:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    const/high16 v12, -0x40800000    # -1.0f

    invoke-virtual {v7, v1, v8, v12}, Lqn9;->b(Ln4a;Lorg/json/JSONObject;F)V

    iget-object v1, v3, Llia;->H:Lcom/my/target/q;

    if-nez v1, :cond_50

    const-string v2, "adChoices"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_50

    invoke-static {v2, v11}, Lcom/my/target/q0;->a(Lorg/json/JSONObject;Lks9;)Lcom/my/target/q;

    move-result-object v1

    :cond_50
    iput-object v1, v0, Llia;->H:Lcom/my/target/q;

    iget-object v1, v3, Llia;->j:Ljava/lang/String;

    if-nez v1, :cond_51

    move-object/from16 v2, p5

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_51
    iput-object v1, v0, Llia;->j:Ljava/lang/String;

    :goto_28
    if-eqz v0, :cond_52

    iget-object v1, v3, Llia;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    move-object/from16 v1, p0

    move-object/from16 v4, p4

    move-object/from16 v2, v19

    move-object/from16 v6, v20

    goto :goto_29

    :cond_53
    move-object/from16 p1, v0

    move/from16 v18, v2

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    new-instance v0, Lin9;

    move-object/from16 v4, p4

    invoke-direct {v0, v4, v3}, Lin9;-><init>(Lz2a;Llia;)V

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/my/target/v2;->a:Ljava/lang/String;

    move-object/from16 v6, v20

    invoke-virtual {v0, v8, v2, v5, v6}, Lin9;->a(Lorg/json/JSONObject;Ljava/lang/String;Lj8a;Lyda;)Ljia;

    move-result-object v0

    move-object/from16 v2, v19

    if-eqz v0, :cond_55

    iget-object v7, v2, Lkia;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_54
    move-object/from16 p1, v0

    move/from16 v18, v2

    move-object v2, v6

    move-object v6, v7

    :cond_55
    :goto_29
    add-int/lit8 v0, v18, 0x1

    move-object v7, v6

    move-object v6, v2

    move v2, v0

    move-object/from16 v0, p1

    goto/16 :goto_15

    :cond_56
    move-object v2, v6

    goto/16 :goto_41

    :goto_2a
    sget-object v0, Ll6a;->r:Ll6a;

    invoke-virtual {v5, v0}, Lj8a;->a(Ll6a;)V

    move-object v6, v2

    goto/16 :goto_41

    :goto_2b
    const-string v1, "ctaClick"

    const-string v7, "click"

    new-instance v0, Ll8a;

    invoke-direct {v0, v4, v3}, Ll8a;-><init>(Lz2a;Llia;)V

    iget-object v4, v0, Ll8a;->g:Ljava/util/ArrayList;

    iget-object v8, v0, Ll8a;->f:Ljava/util/ArrayList;

    iget-object v9, v0, Ll8a;->c:Ljava/util/ArrayList;

    iget-object v10, v0, Ll8a;->b:Llia;

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    :try_start_7
    const-string v14, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v15, 0x0

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    new-instance v14, Ljava/io/StringReader;

    invoke-direct {v14, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v2, v10, Llia;->e:Ljava/util/ArrayList;

    if-eqz v2, :cond_57

    new-instance v2, Ljava/util/ArrayList;

    iget-object v14, v10, Llia;->e:Ljava/util/ArrayList;

    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2c

    :cond_57
    const/4 v2, 0x0

    :goto_2c
    iget-object v14, v10, Llia;->d:Ln4a;

    if-eqz v2, :cond_58

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_58
    iget-object v2, v10, Llia;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_59

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_59
    invoke-static {v11}, Ll8a;->i(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    :goto_2d
    if-eq v2, v12, :cond_5a

    const/high16 v15, -0x80000000

    if-ne v2, v15, :cond_5b

    :cond_5a
    move-object/from16 v20, v6

    goto/16 :goto_3b

    :cond_5b
    if-ne v2, v13, :cond_79

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v15, "VAST"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    :goto_2e
    invoke-static {v11}, Ll8a;->l(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    if-ne v2, v13, :cond_79

    invoke-static {v11}, Ll8a;->i(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    if-eq v2, v13, :cond_5c

    goto :goto_2e

    :cond_5c
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v15, "Ad"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    iget-object v2, v0, Ll8a;->e:Ljava/util/ArrayList;

    iget-object v15, v0, Ll8a;->d:Ljava/util/ArrayList;

    const-string v12, "AdVerifications"

    const-string v13, "Extensions"

    move-object/from16 v20, v6

    const-string v6, "Creatives"

    const-string v5, "Impression"

    :goto_2f
    invoke-static {v11}, Ll8a;->l(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    move-object/from16 p0, v1

    const/4 v1, 0x2

    if-ne v3, v1, :cond_77

    invoke-static {v11}, Ll8a;->i(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    if-eq v3, v1, :cond_5d

    move-object/from16 v1, p0

    goto :goto_2f

    :cond_5d
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Wrapper"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    const/4 v3, 0x1

    iput-boolean v3, v0, Ll8a;->h:Z

    const-string v1, "VastParser: VAST file contains wrapped ad information"

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v10, Llia;->k:I

    const/4 v3, 0x5

    if-ge v1, v3, :cond_6a

    move/from16 v21, v1

    const/4 v3, 0x0

    :goto_30
    invoke-static {v11}, Ll8a;->l(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    move-object/from16 p5, v7

    const/4 v7, 0x2

    if-ne v1, v7, :cond_64

    invoke-static {v11}, Ll8a;->i(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    if-eq v1, v7, :cond_5e

    goto :goto_31

    :cond_5e
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-virtual {v0, v11}, Ll8a;->j(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_31

    :cond_5f
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-virtual {v0, v11}, Ll8a;->g(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_31

    :cond_60
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_61

    invoke-virtual {v0, v11}, Ll8a;->h(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_31

    :cond_61
    const-string v7, "VASTAdTagURI"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-static {v11}, Ll8a;->m(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    :goto_31
    move-object/from16 v7, p5

    goto :goto_30

    :cond_62
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-virtual {v0, v11}, Ll8a;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_31

    :cond_63
    invoke-static {v11}, Ll8a;->n(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_31

    :cond_64
    if-eqz v3, :cond_68

    iget-object v1, v10, Llia;->g:Ljava/lang/String;

    iget-object v7, v10, Llia;->h:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v10, Llia;->i:Lk5a;

    move-object/from16 v23, v1

    new-instance v1, Llia;

    move-object/from16 v24, v7

    const/4 v7, 0x0

    invoke-direct {v1, v3, v7}, Llia;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Ll8a;->l:Llia;

    add-int/lit8 v3, v21, 0x1

    iput v3, v1, Llia;->k:I

    iput-object v9, v1, Llia;->e:Ljava/util/ArrayList;

    iget-object v3, v0, Ll8a;->n:Laga;

    iput-object v3, v1, Llia;->G:Laga;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_65

    iget-object v3, v0, Ll8a;->i:Ljava/lang/String;

    goto :goto_32

    :cond_65
    move-object/from16 v3, v22

    :goto_32
    iput-object v3, v1, Llia;->g:Ljava/lang/String;

    iget-object v1, v0, Ll8a;->l:Llia;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v7, v0, Ll8a;->j:Ljava/lang/String;

    goto :goto_33

    :cond_66
    move-object/from16 v7, v24

    :goto_33
    iput-object v7, v1, Llia;->h:Ljava/lang/String;

    iget-object v1, v0, Ll8a;->l:Llia;

    if-nez v23, :cond_67

    iget-object v3, v0, Ll8a;->k:Lk5a;

    goto :goto_34

    :cond_67
    move-object/from16 v3, v23

    :goto_34
    iput-object v3, v1, Llia;->i:Lk5a;

    iput-object v8, v1, Llia;->f:Ljava/util/ArrayList;

    iget-object v3, v10, Llia;->u:Ljava/lang/Boolean;

    iput-object v3, v1, Llia;->u:Ljava/lang/Boolean;

    iget-object v3, v10, Llia;->v:Ljava/lang/Boolean;

    iput-object v3, v1, Llia;->v:Ljava/lang/Boolean;

    iget-object v3, v10, Llia;->w:Ljava/lang/Boolean;

    iput-object v3, v1, Llia;->w:Ljava/lang/Boolean;

    iget-object v3, v10, Llia;->x:Ljava/lang/Boolean;

    iput-object v3, v1, Llia;->x:Ljava/lang/Boolean;

    iget-object v3, v10, Llia;->y:Ljava/lang/Boolean;

    iput-object v3, v1, Llia;->y:Ljava/lang/Boolean;

    iget-object v3, v10, Llia;->z:Ljava/lang/Boolean;

    iput-object v3, v1, Llia;->z:Ljava/lang/Boolean;

    iget-object v3, v10, Llia;->A:Ljava/lang/Boolean;

    iput-object v3, v1, Llia;->A:Ljava/lang/Boolean;

    iget v3, v10, Llia;->t:F

    iput v3, v1, Llia;->t:F

    iget-object v3, v10, Llia;->B:Ljava/lang/Boolean;

    iput-object v3, v1, Llia;->B:Ljava/lang/Boolean;

    iget-object v3, v10, Llia;->H:Lcom/my/target/q;

    iput-object v3, v1, Llia;->H:Lcom/my/target/q;

    iget-object v3, v10, Llia;->j:Ljava/lang/String;

    iput-object v3, v1, Llia;->j:Ljava/lang/String;

    iget-object v1, v1, Llia;->d:Ln4a;

    invoke-virtual {v1, v15}, Ln4a;->b(Ljava/util/List;)V

    iget-object v3, v1, Ln4a;->c:Ljava/util/HashSet;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v14, v3}, Ln4a;->d(Ln4a;F)V

    iget-object v1, v0, Ll8a;->l:Llia;

    iget-object v7, v10, Llia;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    goto :goto_35

    :cond_68
    const/high16 v3, -0x40800000    # -1.0f

    const-string v1, "VastParser: Got VAST wrapper, but no vastAdTagUri"

    const/4 v7, 0x0

    invoke-static {v7, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    :goto_35
    move-object/from16 v1, p0

    move-object/from16 v7, p5

    goto/16 :goto_2f

    :cond_6a
    move-object/from16 p5, v7

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const-string v1, "VastParser: Got VAST wrapper, but max redirects limit exceeded"

    invoke-static {v7, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Ll8a;->n(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_35

    :cond_6b
    move-object/from16 p5, v7

    const/4 v7, 0x0

    const-string v3, "InLine"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    const/4 v1, 0x0

    iput-boolean v1, v0, Ll8a;->h:Z

    const-string v1, "VastParser: VAST file contains inline ad information."

    invoke-static {v7, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_36
    invoke-static {v11}, Ll8a;->l(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    const/4 v7, 0x2

    if-ne v1, v7, :cond_71

    invoke-static {v11}, Ll8a;->i(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    if-eq v1, v7, :cond_6c

    goto :goto_36

    :cond_6c
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-virtual {v0, v11}, Ll8a;->j(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_36

    :cond_6d
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-virtual {v0, v11}, Ll8a;->g(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_36

    :cond_6e
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-virtual {v0, v11}, Ll8a;->h(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_36

    :cond_6f
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-virtual {v0, v11}, Ll8a;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_36

    :cond_70
    invoke-static {v11}, Ll8a;->n(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_36

    :cond_71
    const/4 v1, 0x0

    :goto_37
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_69

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkha;

    iget-object v7, v3, Lao9;->a:Ln4a;

    move/from16 v21, v1

    iget v1, v3, Lao9;->z:F

    invoke-virtual {v7, v14, v1}, Ln4a;->d(Ln4a;F)V

    iget-object v1, v10, Llia;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_72

    iget-object v1, v0, Ll8a;->i:Ljava/lang/String;

    :cond_72
    iput-object v1, v3, Lao9;->d:Ljava/lang/String;

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-object v1, v10, Llia;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 p1, v5

    const/4 v5, 0x0

    :goto_38
    if-ge v5, v1, :cond_73

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    add-int/lit8 v5, v5, 0x1

    move/from16 p4, v1

    move-object/from16 v1, v22

    check-cast v1, Lk8a;

    move-object/from16 v22, v2

    iget v2, v1, Lk8a;->g:F

    iget-object v1, v1, Lm2a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Ll8a;->b(FLjava/lang/String;Lao9;)V

    move/from16 v1, p4

    move-object/from16 v2, v22

    goto :goto_38

    :cond_73
    move-object/from16 v22, v2

    invoke-virtual {v7, v15}, Ln4a;->b(Ljava/util/List;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v1, :cond_74

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Lg1a;

    move/from16 p4, v1

    iget-object v1, v3, Lkha;->R:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v1, p4

    goto :goto_39

    :cond_74
    if-nez v21, :cond_75

    invoke-virtual {v7, v9}, Ln4a;->b(Ljava/util/List;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3a
    if-ge v2, v1, :cond_75

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Lg1a;

    iget-object v5, v5, Lao9;->a:Ln4a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v7, p5

    move/from16 p4, v1

    invoke-virtual {v14, v7}, Ln4a;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v5, v1}, Ln4a;->b(Ljava/util/List;)V

    move-object/from16 v1, p0

    move/from16 p0, v2

    invoke-virtual {v14, v1}, Ln4a;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v5, v2}, Ln4a;->b(Ljava/util/List;)V

    const-string v2, "closedByUser"

    invoke-virtual {v14, v2}, Ln4a;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v5, v2}, Ln4a;->b(Ljava/util/List;)V

    move/from16 v2, p0

    move-object/from16 p0, v1

    move/from16 v1, p4

    goto :goto_3a

    :cond_75
    move-object/from16 v1, p0

    move-object/from16 v7, p5

    iget-object v2, v0, Ll8a;->n:Laga;

    iput-object v2, v3, Lao9;->I:Laga;

    add-int/lit8 v2, v21, 0x1

    move-object/from16 v5, p1

    move-object/from16 p0, v1

    move v1, v2

    move-object/from16 p5, v7

    move-object/from16 v2, v22

    const/4 v7, 0x2

    goto/16 :goto_37

    :cond_76
    move-object/from16 v1, p0

    move-object/from16 v7, p5

    move-object/from16 v22, v2

    move-object/from16 p1, v5

    invoke-static {v11}, Ll8a;->n(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2f

    :cond_77
    move-object/from16 v3, p2

    move-object/from16 v5, p8

    move v13, v1

    move-object/from16 v6, v20

    const/4 v12, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_2e

    :cond_78
    move-object/from16 v3, p2

    move-object/from16 v5, p8

    goto/16 :goto_2e

    :cond_79
    move-object/from16 v20, v6

    invoke-static {v11}, Ll8a;->k(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    move-object/from16 v3, p2

    move-object/from16 v5, p8

    move-object/from16 v6, v20

    const/4 v12, 0x1

    const/4 v13, 0x2

    goto/16 :goto_2d

    :goto_3b
    const/4 v14, 0x0

    goto :goto_3c

    :catchall_2
    move-exception v0

    move-object/from16 v20, v6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VastParser: Unable to parse VAST - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-static {v14, v2, v0}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    :goto_3c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    if-nez v20, :cond_7a

    new-instance v0, Lkia;

    invoke-direct {v0}, Lkia;-><init>()V

    move-object v6, v0

    :goto_3d
    const/4 v15, 0x0

    goto :goto_3e

    :cond_7a
    move-object/from16 v6, v20

    goto :goto_3d

    :goto_3e
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkha;

    sget-object v2, Lpp9;->d:Lpp9;

    new-instance v3, Lxda;

    invoke-direct {v3, v2}, Lxda;-><init>(Lpp9;)V

    iget-object v2, v3, Lao9;->a:Ln4a;

    invoke-virtual {v0}, Lao9;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lao9;->a:Ln4a;

    iput-object v4, v3, Lao9;->d:Ljava/lang/String;

    iput-object v0, v3, Lxda;->Z:Lkha;

    move-object/from16 v4, p2

    iget v8, v4, Llia;->n:I

    iput v8, v3, Lxda;->f0:I

    iget-object v8, v0, Lao9;->F:Ljava/lang/String;

    iput-object v8, v3, Lao9;->F:Ljava/lang/String;

    invoke-virtual {v0}, Lkha;->e()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lao9;->G:Ljava/lang/String;

    iget-object v8, v4, Llia;->H:Lcom/my/target/q;

    iput-object v8, v3, Lao9;->H:Lcom/my/target/q;

    iget v8, v4, Llia;->o:I

    if-ltz v8, :cond_7b

    new-instance v9, Lt2a;

    invoke-direct {v9, v8}, Lt2a;-><init>(I)V

    iput-object v9, v3, Lao9;->r:Lt2a;

    :cond_7b
    iget-object v8, v4, Llia;->u:Ljava/lang/Boolean;

    if-eqz v8, :cond_7c

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v0, Lkha;->c0:Z

    :cond_7c
    iget-object v8, v4, Llia;->v:Ljava/lang/Boolean;

    if-eqz v8, :cond_7d

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v0, Lkha;->e0:Z

    :cond_7d
    iget-object v8, v4, Llia;->B:Ljava/lang/Boolean;

    if-eqz v8, :cond_7e

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v0, Lkha;->a0:Z

    :cond_7e
    iget-object v8, v4, Llia;->D:Ljava/lang/Boolean;

    if-eqz v8, :cond_7f

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v0, Lkha;->X:Z

    :cond_7f
    iget-object v8, v4, Llia;->z:Ljava/lang/Boolean;

    if-eqz v8, :cond_80

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v3, Lao9;->t:Z

    :cond_80
    iget-object v8, v4, Llia;->A:Ljava/lang/Boolean;

    if-eqz v8, :cond_81

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v3, Lao9;->s:Z

    :cond_81
    iget v4, v4, Llia;->t:F

    cmpl-float v8, v4, p3

    if-ltz v8, :cond_82

    iput v4, v0, Lkha;->f0:F

    :cond_82
    invoke-virtual {v5, v7}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object v4

    iget-object v4, v4, Ls5a;->b:Ljava/util/List;

    invoke-virtual {v2, v4}, Ln4a;->b(Ljava/util/List;)V

    invoke-virtual {v5, v1}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object v1

    iget-object v1, v1, Ls5a;->b:Ljava/util/List;

    invoke-virtual {v2, v1}, Ln4a;->b(Ljava/util/List;)V

    const-string v1, "urlResolved"

    invoke-virtual {v5, v1}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object v1

    iget-object v1, v1, Ls5a;->b:Ljava/util/List;

    invoke-virtual {v2, v1}, Ln4a;->b(Ljava/util/List;)V

    const-string v1, "webviewShown"

    invoke-virtual {v5, v1}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object v1

    iget-object v1, v1, Ls5a;->b:Ljava/util/List;

    invoke-virtual {v2, v1}, Ln4a;->b(Ljava/util/List;)V

    const-string v1, "webviewClosed"

    invoke-virtual {v5, v1}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object v1

    iget-object v1, v1, Ls5a;->b:Ljava/util/List;

    invoke-virtual {v2, v1}, Ln4a;->b(Ljava/util/List;)V

    const-string v1, "pageLoaded"

    invoke-virtual {v5, v1}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object v1

    iget-object v1, v1, Ls5a;->b:Ljava/util/List;

    invoke-virtual {v2, v1}, Ln4a;->b(Ljava/util/List;)V

    const-string v1, "pageLoadFailed"

    invoke-virtual {v5, v1}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object v1

    iget-object v1, v1, Ls5a;->b:Ljava/util/List;

    invoke-virtual {v2, v1}, Ln4a;->b(Ljava/util/List;)V

    iget-object v1, v6, Lkia;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v3, Lao9;->I:Laga;

    if-nez v1, :cond_83

    iget-object v1, v0, Lao9;->I:Laga;

    iput-object v1, v3, Lao9;->I:Laga;

    :cond_83
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lkha;->R:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v11, v15

    :goto_3f
    if-ge v11, v0, :cond_89

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v11, v11, 0x1

    check-cast v2, Lg1a;

    iget-object v4, v2, Lg1a;->S:Ljava/lang/String;

    iget-object v5, v2, Lao9;->a:Ln4a;

    iget-object v7, v2, Lao9;->Q:Lpp9;

    if-eqz v4, :cond_85

    new-instance v4, Lwv9;

    invoke-direct {v4, v7}, Ljia;-><init>(Lpp9;)V

    iget-object v7, v2, Lao9;->B:Ljava/lang/String;

    iput-object v7, v4, Lao9;->B:Ljava/lang/String;

    iget-object v7, v2, Lg1a;->S:Ljava/lang/String;

    iput-object v7, v4, Lwv9;->X:Ljava/lang/String;

    iget-object v7, v4, Lao9;->a:Ln4a;

    move/from16 v8, p3

    invoke-virtual {v7, v5, v8}, Ln4a;->d(Ln4a;F)V

    iget-object v2, v2, Lao9;->F:Ljava/lang/String;

    iput-object v2, v4, Lao9;->F:Ljava/lang/String;

    :cond_84
    const/4 v8, 0x0

    goto :goto_40

    :cond_85
    iget-object v4, v2, Lg1a;->R:Ljava/lang/String;

    if-eqz v4, :cond_86

    new-instance v4, Lvy9;

    invoke-direct {v4, v7}, Lvy9;-><init>(Lpp9;)V

    iget-object v7, v2, Lao9;->B:Ljava/lang/String;

    iput-object v7, v4, Lao9;->B:Ljava/lang/String;

    iget-object v7, v2, Lg1a;->R:Ljava/lang/String;

    if-eqz v7, :cond_84

    iget v8, v2, Lao9;->x:I

    iget v9, v2, Lao9;->y:I

    invoke-static {v8, v9, v7}, Lh14;->a(IILjava/lang/String;)Lh14;

    move-result-object v7

    iget-object v8, v4, Lvy9;->X:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v4, Lao9;->a:Ln4a;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Ln4a;->d(Ln4a;F)V

    iget-object v2, v2, Lao9;->F:Ljava/lang/String;

    iput-object v2, v4, Lao9;->F:Ljava/lang/String;

    goto :goto_40

    :cond_86
    const/4 v8, 0x0

    move-object v4, v14

    :goto_40
    if-eqz v4, :cond_87

    iput-object v4, v3, Lxda;->a0:Ljia;

    goto :goto_41

    :cond_87
    move/from16 p3, v8

    goto :goto_3f

    :cond_88
    sget-object v0, Ll6a;->l:Ll6a;

    move-object/from16 v5, p8

    invoke-virtual {v5, v0}, Lj8a;->a(Ll6a;)V

    move-object/from16 v6, v20

    :cond_89
    :goto_41
    return-object v6
.end method

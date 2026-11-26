.class public final Lwm9$a;
.super Lwm9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwm9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Lz2a;Ljava/util/Map;Lcom/my/target/t0;Lkt9;Lv4a;)V
    .locals 19

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    new-instance v3, Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p4

    iget-object v0, v0, Lkt9;->a:Landroid/content/Context;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v1, Lz2a;->f:Ljava/lang/String;

    const-string v6, "formats"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lsh5;->a:Ljava/lang/String;

    const-string v5, "5.52.5"

    const-string v6, "adman_ver"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lsh5;->a:Ljava/lang/String;

    const-string v6, "sdk_ver_int"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ltk2;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ltk2;-><init>(I)V

    const-string v7, "preloadvideo"

    const-string v8, "1"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lz2a;->d:Ljava/lang/String;

    if-eqz v7, :cond_0

    const-string v8, "bid_id"

    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v7, v1, Lz2a;->a:Lf72;

    invoke-virtual {v5}, Ltk2;->g()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    sget-object v8, Lrh5;->b:Lnh5;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "vk_id"

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-enter v7

    :try_start_0
    iget-object v8, v7, Lf72;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    iget-object v8, v7, Lf72;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :goto_0
    sget-object v8, Lrh5;->b:Lnh5;

    :try_start_1
    sget-object v10, Lat9;->l:Lat9;

    move-object/from16 v11, p3

    invoke-virtual {v10, v8, v5, v11, v0}, Lat9;->b(Lnh5;Ltk2;Lcom/my/target/t0;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "AdServiceBuilder: Error collecting data - "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v0, "lang"

    invoke-virtual {v7, v0}, Lf72;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v5, "lang"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget v0, Lmu9;->a:I

    if-ltz v0, :cond_4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "sdk_flags"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "instance_id"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "AdServiceBuilder: Device instanceId is "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Use this value in adInstance.withTestDevices() to enable test mode on this device."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v10, v1, Lz2a;->g:Lz8a;

    :try_start_2
    invoke-static {v3}, Luha;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ly14;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x3e9

    invoke-virtual/range {v10 .. v15}, Lz8a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    const-string v0, ""

    :goto_3
    invoke-static/range {p0 .. p0}, Lad2;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Lz2a;->e:I

    const-string v4, "/"

    invoke-static {v3, v4, v1}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lv4a;->a:Lcom/my/target/b1;

    iget-object v4, v2, Lv4a;->b:Lcom/my/target/t0;

    iget-object v5, v2, Lv4a;->c:Ljava/util/ArrayList;

    iget-object v2, v2, Lv4a;->d:Ln6a;

    const-string v7, ","

    iget-object v8, v3, Lcom/my/target/b1;->a:Lz2a;

    iget v10, v4, Lcom/my/target/t0;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v4, Lcom/my/target/t0;->c:J

    sub-long/2addr v11, v13

    invoke-virtual {v4, v10, v11, v12}, Lcom/my/target/t0;->a(IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    iget-object v14, v8, Lz2a;->g:Lz8a;

    const/16 v15, 0x7d0

    invoke-virtual {v14, v15}, Lz8a;->b(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v6

    const/4 v15, 0x0

    move-object/from16 v16, v9

    :goto_4
    if-gt v15, v14, :cond_e

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    const-string v9, "https://"

    move-object/from16 v17, v5

    const-string v5, "/mobile/"

    invoke-static {v9, v6, v5}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, v8, Lz2a;->e:I

    move-wide/from16 p0, v10

    const-string v10, "/"

    invoke-static {v5, v10, v9}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lpp9;->d:Lpp9;

    new-instance v10, Ln4a;

    invoke-direct {v10, v9}, Ln4a;-><init>(Lpp9;)V

    iget-object v9, v8, Lz2a;->g:Lz8a;

    new-instance v10, Lg5a;

    invoke-direct {v10, v9}, Lg5a;-><init>(Lz8a;)V

    invoke-virtual {v10, v5, v0, v13}, Lg5a;->U(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lvda;

    move-result-object v5

    iget-boolean v9, v5, Lvda;->a:Z

    if-eqz v9, :cond_6

    new-instance v9, Lyn9;

    iget-object v10, v5, Lvda;->c:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-direct {v9, v5, v10}, Lyn9;-><init>(Lvda;Ljava/lang/Object;)V

    const/4 v10, 0x0

    goto :goto_5

    :cond_6
    new-instance v9, Lyn9;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v10}, Lyn9;-><init>(Lvda;Ljava/lang/Object;)V

    :goto_5
    iget-object v5, v9, Lyn9;->a:Lvda;

    iget-object v9, v9, Lyn9;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_7

    const-string v9, "AdResponseParser: Null data"

    invoke-static {v10, v9}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    move-object/from16 v16, v5

    goto :goto_7

    :cond_7
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_8

    const-string v9, "AdResponseParser: Empty data"

    invoke-static {v10, v9}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v5

    const-string v5, "<VAST"

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "<?xml"

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_9

    :cond_9
    const-string v5, "{"

    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "}"

    invoke-virtual {v11, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "AdResponseParser: JSON is received"

    const/4 v10, 0x0

    invoke-static {v10, v5}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_a
    const/4 v10, 0x0

    const-string v5, "AdResponseParser: Unsupported data is received"

    invoke-static {v10, v5}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    if-ne v15, v14, :cond_b

    :goto_8
    move-object/from16 v5, v16

    const/4 v10, 0x0

    goto :goto_b

    :cond_b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "X-Failed-Hosts"

    invoke-virtual {v13, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v10, p0

    move-object/from16 v5, v17

    const/4 v6, 0x1

    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_d
    :goto_9
    const-string v5, "AdResponseParser: Vast is received"

    const/4 v10, 0x0

    invoke-static {v10, v5}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    move-object v10, v9

    move-object/from16 v5, v16

    goto :goto_b

    :cond_e
    move-wide/from16 p0, v10

    goto :goto_8

    :goto_b
    if-nez v10, :cond_16

    if-eqz v5, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "response: code="

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v5, Lvda;->b:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", error="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lvda;->d:Ljava/lang/String;

    const-string v10, ", dataForService="

    invoke-static {v6, v9, v10, v0}, Lkh;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_c
    move-object v10, v6

    goto :goto_d

    :cond_f
    const-string v6, "response==null, dataForService="

    invoke-static {v6, v0}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    :goto_d
    iget-object v9, v8, Lz2a;->g:Lz8a;

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x7d2

    invoke-virtual/range {v9 .. v14}, Lz8a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    if-nez v5, :cond_10

    sget-object v5, Ll6a;->c:Ll6a;

    new-instance v6, Lj8a;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v5, v6, Lj8a;->a:Ll6a;

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v6, v4}, Lcom/my/target/b1;->c(Lvha;Lj8a;Lcom/my/target/t0;)V

    move-object v5, v10

    goto :goto_f

    :cond_10
    iget v6, v5, Lvda;->b:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " \u2013 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lvda;->d:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x193

    if-eq v6, v8, :cond_15

    const/16 v8, 0x194

    if-eq v6, v8, :cond_14

    const/16 v8, 0x198

    if-eq v6, v8, :cond_13

    const/16 v8, 0x1f4

    if-eq v6, v8, :cond_12

    const/16 v8, 0x1f8

    if-eq v6, v8, :cond_13

    const/16 v8, 0xc8

    if-ne v6, v8, :cond_11

    sget-object v5, Ll6a;->j:Ll6a;

    goto :goto_e

    :cond_11
    new-instance v6, Ll6a;

    invoke-direct {v6, v5}, Ll6a;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_e

    :cond_12
    sget-object v5, Ll6a;->h:Ll6a;

    goto :goto_e

    :cond_13
    sget-object v5, Ll6a;->e:Ll6a;

    goto :goto_e

    :cond_14
    sget-object v5, Ll6a;->g:Ll6a;

    goto :goto_e

    :cond_15
    sget-object v5, Ll6a;->f:Ll6a;

    :goto_e
    new-instance v6, Lj8a;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v5, v6, Lj8a;->a:Ll6a;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v6, v4}, Lcom/my/target/b1;->c(Lvha;Lj8a;Lcom/my/target/t0;)V

    :goto_f
    move-object v11, v5

    goto :goto_10

    :cond_16
    const/4 v5, 0x0

    move-object v11, v10

    :goto_10
    if-nez v11, :cond_17

    goto/16 :goto_12

    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, p0

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v8, v9}, Lcom/my/target/t0;->a(IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/my/target/v2;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v18, Lj8a;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    new-instance v12, Llia;

    invoke-direct {v12, v1, v0}, Llia;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v14, v3, Lcom/my/target/b1;->a:Lz2a;

    iget-object v15, v3, Lcom/my/target/b1;->b:Lcom/my/target/t0$a;

    const/4 v13, 0x0

    move-object/from16 v16, v4

    invoke-virtual/range {v10 .. v18}, Lcom/my/target/v2;->d(Ljava/lang/String;Llia;Lvha;Lz2a;Lcom/my/target/t0$a;Lcom/my/target/t0;Ljava/util/ArrayList;Lj8a;)Lkia;

    move-result-object v0

    move-object/from16 v1, v16

    move-object/from16 v4, v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v8

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v13, v14}, Lcom/my/target/t0;->a(IJ)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_18

    move-object v9, v5

    goto :goto_11

    :cond_18
    invoke-static {v7, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    :goto_11
    const-string v4, "hosts"

    invoke-virtual {v2, v4, v9}, Ln6a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v12, Llia;->b:Ljava/util/ArrayList;

    move-object/from16 p2, v0

    move-object/from16 p4, v1

    move-object/from16 p1, v2

    move-object/from16 p0, v3

    move-object/from16 p3, v10

    move-object/from16 p5, v18

    invoke-virtual/range {p0 .. p5}, Lcom/my/target/b1;->a(Ljava/util/ArrayList;Lkia;Lcom/my/target/v2;Lcom/my/target/t0;Lj8a;)Lvha;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v0, v3}, Lcom/my/target/b1;->d(Lvha;Lj8a;)Lvha;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v6, v7}, Lcom/my/target/t0;->a(IJ)V

    invoke-virtual {v1, v0, v3, v2}, Lcom/my/target/b1;->c(Lvha;Lj8a;Lcom/my/target/t0;)V

    :goto_12
    return-void
.end method

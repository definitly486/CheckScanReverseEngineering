.class public final Lpx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf94;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpx0$a;
    }
.end annotation


# instance fields
.field public final a:Llx0;


# direct methods
.method public constructor <init>(Llx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpx0;->a:Llx0;

    return-void
.end method


# virtual methods
.method public final a(Lez6;)Lz47;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lez6;->a:Ljy6;

    iget-object v3, v0, Lpx0;->a:Llx0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    iget-object v6, v1, Lez6;->e:Lb37;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Lb37;->a:Lfz3;

    invoke-static {v7}, Llx0$b;->a(Lfz3;)Ljava/lang/String;

    move-result-object v8

    :try_start_0
    iget-object v3, v3, Llx0;->b:Lun2;

    invoke-virtual {v3, v8}, Lun2;->p(Ljava/lang/String;)Lun2$c;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_1
    new-instance v8, Llx0$c;

    iget-object v9, v3, Lun2$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv48;

    invoke-direct {v8, v9}, Llx0$c;-><init>(Lv48;)V

    iget-object v9, v8, Llx0$c;->b:Ljv3;

    iget-object v10, v8, Llx0$c;->c:Ljava/lang/String;

    iget-object v11, v8, Llx0$c;->a:Lfz3;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v12, v8, Llx0$c;->g:Ljv3;

    const-string v13, "Content-Type"

    invoke-virtual {v12, v13}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Content-Length"

    invoke-virtual {v12, v14}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lb37$a;

    invoke-direct {v15}, Lb37$a;-><init>()V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v11, v15, Lb37$a;->a:Lfz3;

    invoke-virtual {v15, v10, v5}, Lb37$a;->c(Ljava/lang/String;Lg37;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljv3;->d()Ljv3$a;

    move-result-object v4

    iput-object v4, v15, Lb37$a;->c:Ljv3$a;

    invoke-virtual {v15}, Lb37$a;->a()Lb37;

    move-result-object v4

    new-instance v15, Lz47$a;

    invoke-direct {v15}, Lz47$a;-><init>()V

    iput-object v4, v15, Lz47$a;->a:Lb37;

    iget-object v4, v8, Llx0$c;->d:Lts6;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v15, Lz47$a;->b:Lts6;

    iget v4, v8, Llx0$c;->e:I

    iput v4, v15, Lz47$a;->c:I

    iget-object v4, v8, Llx0$c;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v15, Lz47$a;->d:Ljava/lang/String;

    invoke-virtual {v12}, Ljv3;->d()Ljv3$a;

    move-result-object v4

    iput-object v4, v15, Lz47$a;->f:Ljv3$a;

    new-instance v4, Llx0$a;

    invoke-direct {v4, v3, v13, v14}, Llx0$a;-><init>(Lun2$c;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v15, Lz47$a;->g:Lb57;

    iget-object v3, v8, Llx0$c;->h:Llu3;

    iput-object v3, v15, Lz47$a;->e:Llu3;

    iget-wide v3, v8, Llx0$c;->i:J

    iput-wide v3, v15, Lz47$a;->k:J

    iget-wide v3, v8, Llx0$c;->j:J

    iput-wide v3, v15, Lz47$a;->l:J

    invoke-virtual {v15}, Lz47$a;->a()Lz47;

    move-result-object v3

    invoke-virtual {v11, v7}, Lfz3;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v6, Lb37;->b:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lz47;->g:Ljv3;

    invoke-static {v4}, Llx0$b;->c(Ljv3;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    instance-of v7, v4, Ljava/util/Collection;

    if-eqz v7, :cond_1

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljv3;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    iget-object v10, v6, Lb37;->c:Ljv3;

    invoke-virtual {v10, v7}, Ljv3;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_3
    iget-object v3, v3, Lz47;->h:Lb57;

    if-eqz v3, :cond_4

    invoke-static {v3}, Lgb9;->d(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    invoke-static {v3}, Lgb9;->d(Ljava/io/Closeable;)V

    :catch_1
    :cond_4
    :goto_0
    move-object v3, v5

    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v4, v1, Lez6;->e:Lb37;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_c

    iget-wide v11, v3, Lz47;->l:J

    iget-wide v13, v3, Lz47;->m:J

    iget-object v15, v3, Lz47;->g:Ljv3;

    invoke-virtual {v15}, Ljv3;->size()I

    move-result v9

    move-object/from16 v18, v5

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v22, v20

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    const/4 v10, 0x0

    const/16 v21, -0x1

    :goto_2
    if-ge v10, v9, :cond_b

    invoke-virtual {v15, v10}, Ljv3;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v10}, Ljv3;->g(I)Ljava/lang/String;

    move-result-object v8

    move-wide/from16 v25, v6

    const-string v6, "Date"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lra8;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v8}, Lpc2;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v20

    move-object/from16 v24, v8

    goto :goto_3

    :cond_6
    const-string v6, "Expires"

    invoke-static {v5, v6, v7}, Lra8;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v8}, Lpc2;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    goto :goto_3

    :cond_7
    const-string v6, "Last-Modified"

    invoke-static {v5, v6, v7}, Lra8;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v8}, Lpc2;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v19

    move-object/from16 v23, v8

    goto :goto_3

    :cond_8
    const-string v6, "ETag"

    invoke-static {v5, v6, v7}, Lra8;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object/from16 v22, v8

    goto :goto_3

    :cond_9
    const-string v6, "Age"

    invoke-static {v5, v6, v7}, Lra8;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, -0x1

    invoke-static {v5, v8}, Lgb9;->x(ILjava/lang/String;)I

    move-result v21

    :cond_a
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v6, v25

    const/4 v5, 0x0

    goto :goto_2

    :cond_b
    move/from16 v5, v21

    :goto_4
    move-wide/from16 v25, v6

    goto :goto_5

    :cond_c
    const/4 v5, -0x1

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    goto :goto_4

    :goto_5
    const-string v6, "If-None-Match"

    const-string v7, "If-Modified-Since"

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    if-nez v3, :cond_d

    new-instance v5, Lux0;

    const/4 v9, 0x0

    invoke-direct {v5, v4, v9}, Lux0;-><init>(Lb37;Lz47;)V

    goto/16 :goto_13

    :cond_d
    const/4 v9, 0x0

    iget-object v10, v4, Lb37;->a:Lfz3;

    iget-object v15, v4, Lb37;->c:Ljv3;

    iget-boolean v10, v10, Lfz3;->j:Z

    if-eqz v10, :cond_e

    iget-object v10, v3, Lz47;->f:Llu3;

    if-nez v10, :cond_e

    new-instance v5, Lux0;

    invoke-direct {v5, v4, v9}, Lux0;-><init>(Lb37;Lz47;)V

    goto/16 :goto_13

    :cond_e
    invoke-static {v4, v3}, Lux0$a;->a(Lb37;Lz47;)Z

    move-result v10

    if-nez v10, :cond_f

    new-instance v5, Lux0;

    invoke-direct {v5, v4, v9}, Lux0;-><init>(Lb37;Lz47;)V

    goto/16 :goto_13

    :cond_f
    iget-object v9, v4, Lb37;->f:Lmx0;

    if-nez v9, :cond_10

    sget v9, Lmx0;->n:I

    iget-object v9, v4, Lb37;->c:Ljv3;

    invoke-static {v9}, Lmx0$b;->a(Ljv3;)Lmx0;

    move-result-object v9

    iput-object v9, v4, Lb37;->f:Lmx0;

    :cond_10
    iget-boolean v10, v9, Lmx0;->a:Z

    if-nez v10, :cond_25

    invoke-virtual {v15, v7}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_25

    invoke-virtual {v15, v6}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_11

    goto/16 :goto_12

    :cond_11
    invoke-virtual {v3}, Lz47;->m()Lmx0;

    move-result-object v10

    if-eqz v20, :cond_12

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v27

    move-object/from16 v21, v6

    move-object/from16 v29, v7

    sub-long v6, v13, v27

    move-wide/from16 v27, v11

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_6
    const/4 v11, -0x1

    goto :goto_7

    :cond_12
    move-object/from16 v21, v6

    move-object/from16 v29, v7

    move-wide/from16 v27, v11

    const-wide/16 v6, 0x0

    goto :goto_6

    :goto_7
    if-eq v5, v11, :cond_13

    int-to-long v11, v5

    invoke-virtual {v8, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :cond_13
    sub-long v11, v13, v27

    sub-long v25, v25, v13

    add-long/2addr v6, v11

    add-long v6, v6, v25

    invoke-virtual {v3}, Lz47;->m()Lmx0;

    move-result-object v5

    iget v5, v5, Lmx0;->c:I

    const/4 v11, -0x1

    if-eq v5, v11, :cond_14

    int-to-long v11, v5

    invoke-virtual {v8, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    :goto_8
    const-wide/16 v16, 0x0

    goto :goto_c

    :cond_14
    if-eqz v18, :cond_17

    if-eqz v20, :cond_15

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    :cond_15
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sub-long/2addr v11, v13

    const-wide/16 v16, 0x0

    cmp-long v5, v11, v16

    if-lez v5, :cond_16

    goto :goto_8

    :cond_16
    const-wide/16 v11, 0x0

    goto :goto_8

    :cond_17
    if-eqz v19, :cond_1b

    iget-object v5, v3, Lz47;->b:Lb37;

    iget-object v5, v5, Lb37;->a:Lfz3;

    iget-object v5, v5, Lfz3;->g:Ljava/util/List;

    if-nez v5, :cond_18

    const/4 v5, 0x0

    goto :goto_9

    :cond_18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v11}, Lfz3$b;->e(Ljava/util/List;Ljava/lang/StringBuilder;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_9
    if-nez v5, :cond_1b

    if-eqz v20, :cond_19

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    goto :goto_a

    :cond_19
    move-wide/from16 v11, v27

    :goto_a
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    const-wide/16 v16, 0x0

    cmp-long v5, v11, v16

    if-lez v5, :cond_1a

    const-wide/16 v13, 0xa

    div-long/2addr v11, v13

    goto :goto_c

    :cond_1a
    :goto_b
    move-wide/from16 v11, v16

    goto :goto_c

    :cond_1b
    const-wide/16 v16, 0x0

    goto :goto_b

    :goto_c
    iget v5, v9, Lmx0;->c:I

    const/4 v13, -0x1

    if-eq v5, v13, :cond_1c

    int-to-long v13, v5

    invoke-virtual {v8, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    :cond_1c
    iget v5, v9, Lmx0;->i:I

    const/4 v13, -0x1

    if-eq v5, v13, :cond_1d

    int-to-long v13, v5

    invoke-virtual {v8, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    goto :goto_d

    :cond_1d
    move-wide/from16 v13, v16

    :goto_d
    iget-boolean v5, v10, Lmx0;->g:Z

    if-nez v5, :cond_1e

    iget v5, v9, Lmx0;->h:I

    const/4 v9, -0x1

    if-eq v5, v9, :cond_1e

    move-wide/from16 v25, v6

    int-to-long v5, v5

    invoke-virtual {v8, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    move-wide/from16 v16, v5

    goto :goto_e

    :cond_1e
    move-wide/from16 v25, v6

    :goto_e
    iget-boolean v5, v10, Lmx0;->a:Z

    if-nez v5, :cond_21

    add-long v6, v25, v13

    add-long v16, v11, v16

    cmp-long v5, v6, v16

    if-gez v5, :cond_21

    invoke-virtual {v3}, Lz47;->p()Lz47$a;

    move-result-object v5

    cmp-long v6, v6, v11

    if-ltz v6, :cond_1f

    const-string v6, "110 HttpURLConnection \"Response is stale\""

    const-string v7, "Warning"

    iget-object v8, v5, Lz47$a;->f:Ljv3$a;

    invoke-virtual {v8, v7, v6}, Ljv3$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const-wide/32 v6, 0x5265c00

    cmp-long v6, v25, v6

    if-lez v6, :cond_20

    invoke-virtual {v3}, Lz47;->m()Lmx0;

    move-result-object v6

    iget v6, v6, Lmx0;->c:I

    const/4 v11, -0x1

    if-ne v6, v11, :cond_20

    if-nez v18, :cond_20

    const-string v6, "113 HttpURLConnection \"Heuristic expiration\""

    const-string v7, "Warning"

    iget-object v8, v5, Lz47$a;->f:Ljv3$a;

    invoke-virtual {v8, v7, v6}, Ljv3$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    new-instance v6, Lux0;

    invoke-virtual {v5}, Lz47$a;->a()Lz47;

    move-result-object v5

    const/4 v9, 0x0

    invoke-direct {v6, v9, v5}, Lux0;-><init>(Lb37;Lz47;)V

    :goto_f
    move-object v5, v6

    goto :goto_13

    :cond_21
    if-eqz v22, :cond_22

    move-object/from16 v6, v21

    move-object/from16 v5, v22

    goto :goto_11

    :cond_22
    if-eqz v19, :cond_23

    move-object/from16 v5, v23

    :goto_10
    move-object/from16 v6, v29

    goto :goto_11

    :cond_23
    if-eqz v20, :cond_24

    move-object/from16 v5, v24

    goto :goto_10

    :goto_11
    invoke-virtual {v15}, Ljv3;->d()Ljv3$a;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v6, v5}, Ljv3$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lb37;->a()Lb37$a;

    move-result-object v5

    invoke-virtual {v7}, Ljv3$a;->e()Ljv3;

    move-result-object v6

    invoke-virtual {v6}, Ljv3;->d()Ljv3$a;

    move-result-object v6

    iput-object v6, v5, Lb37$a;->c:Ljv3$a;

    invoke-virtual {v5}, Lb37$a;->a()Lb37;

    move-result-object v5

    new-instance v6, Lux0;

    invoke-direct {v6, v5, v3}, Lux0;-><init>(Lb37;Lz47;)V

    goto :goto_f

    :cond_24
    new-instance v5, Lux0;

    const/4 v9, 0x0

    invoke-direct {v5, v4, v9}, Lux0;-><init>(Lb37;Lz47;)V

    goto :goto_13

    :cond_25
    :goto_12
    const/4 v9, 0x0

    new-instance v5, Lux0;

    invoke-direct {v5, v4, v9}, Lux0;-><init>(Lb37;Lz47;)V

    :goto_13
    iget-object v6, v5, Lux0;->a:Lb37;

    if-eqz v6, :cond_27

    iget-object v6, v4, Lb37;->f:Lmx0;

    if-nez v6, :cond_26

    sget v6, Lmx0;->n:I

    iget-object v6, v4, Lb37;->c:Ljv3;

    invoke-static {v6}, Lmx0$b;->a(Ljv3;)Lmx0;

    move-result-object v6

    iput-object v6, v4, Lb37;->f:Lmx0;

    :cond_26
    iget-boolean v4, v6, Lmx0;->j:Z

    if-eqz v4, :cond_27

    new-instance v5, Lux0;

    const/4 v9, 0x0

    invoke-direct {v5, v9, v9}, Lux0;-><init>(Lb37;Lz47;)V

    goto :goto_14

    :cond_27
    const/4 v9, 0x0

    :goto_14
    iget-object v4, v5, Lux0;->a:Lb37;

    iget-object v5, v5, Lux0;->b:Lz47;

    iget-object v6, v0, Lpx0;->a:Llx0;

    if-eqz v6, :cond_28

    monitor-enter v6

    monitor-exit v6

    :cond_28
    iget-object v6, v2, Ljy6;->e:Lokhttp3/b;

    if-nez v6, :cond_29

    sget-object v6, Lokhttp3/b;->NONE:Lokhttp3/b;

    :cond_29
    if-eqz v3, :cond_2a

    if-nez v5, :cond_2a

    iget-object v7, v3, Lz47;->h:Lb57;

    if-eqz v7, :cond_2a

    invoke-static {v7}, Lgb9;->d(Ljava/io/Closeable;)V

    :cond_2a
    const-wide/16 v7, -0x1

    if-nez v4, :cond_2b

    if-nez v5, :cond_2b

    new-instance v0, Lz47$a;

    invoke-direct {v0}, Lz47$a;-><init>()V

    iget-object v1, v1, Lez6;->e:Lb37;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lz47$a;->a:Lb37;

    sget-object v1, Lts6;->HTTP_1_1:Lts6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lz47$a;->b:Lts6;

    const/16 v1, 0x1f8

    iput v1, v0, Lz47$a;->c:I

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    iput-object v1, v0, Lz47$a;->d:Ljava/lang/String;

    sget-object v1, Lgb9;->c:Lc57;

    iput-object v1, v0, Lz47$a;->g:Lb57;

    iput-wide v7, v0, Lz47$a;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lz47$a;->l:J

    invoke-virtual {v0}, Lz47$a;->a()Lz47;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Lokhttp3/b;->satisfactionFailure(Lokhttp3/a;Lz47;)V

    return-object v0

    :cond_2b
    if-nez v4, :cond_2c

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lz47;->p()Lz47$a;

    move-result-object v0

    invoke-static {v5}, Lpx0$a;->b(Lz47;)Lz47;

    move-result-object v1

    const-string v3, "cacheResponse"

    invoke-static {v1, v3}, Lz47$a;->b(Lz47;Ljava/lang/String;)V

    iput-object v1, v0, Lz47$a;->i:Lz47;

    invoke-virtual {v0}, Lz47$a;->a()Lz47;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Lokhttp3/b;->cacheHit(Lokhttp3/a;Lz47;)V

    return-object v0

    :cond_2c
    if-eqz v5, :cond_2d

    invoke-virtual {v6, v2, v5}, Lokhttp3/b;->cacheConditionalHit(Lokhttp3/a;Lz47;)V

    goto :goto_15

    :cond_2d
    iget-object v10, v0, Lpx0;->a:Llx0;

    if-eqz v10, :cond_2e

    invoke-virtual {v6, v2}, Lokhttp3/b;->cacheMiss(Lokhttp3/a;)V

    :cond_2e
    :goto_15
    :try_start_2
    invoke-virtual {v1, v4}, Lez6;->b(Lb37;)Lz47;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_3b

    iget v3, v1, Lz47;->e:I

    const/16 v10, 0x130

    if-ne v3, v10, :cond_3a

    invoke-virtual {v5}, Lz47;->p()Lz47$a;

    move-result-object v3

    iget-object v4, v5, Lz47;->g:Ljv3;

    iget-object v7, v1, Lz47;->g:Ljv3;

    new-instance v8, Ljv3$a;

    invoke-direct {v8}, Ljv3$a;-><init>()V

    invoke-virtual {v4}, Ljv3;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_16
    if-ge v11, v10, :cond_34

    invoke-virtual {v4, v11}, Ljv3;->b(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11}, Ljv3;->g(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Warning"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2f

    const-string v14, "1"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_30

    goto :goto_18

    :cond_2f
    const/4 v15, 0x0

    :cond_30
    const-string v14, "Content-Length"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_32

    const-string v14, "Content-Encoding"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_32

    const-string v14, "Content-Type"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_31

    goto :goto_17

    :cond_31
    invoke-static {v12}, Lpx0$a;->a(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_32

    invoke-virtual {v7, v12}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_33

    :cond_32
    :goto_17
    invoke-virtual {v8, v12, v13}, Ljv3$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    :goto_18
    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    :cond_34
    const/4 v15, 0x0

    invoke-virtual {v7}, Ljv3;->size()I

    move-result v4

    :goto_19
    if-ge v15, v4, :cond_37

    invoke-virtual {v7, v15}, Ljv3;->b(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Content-Length"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_36

    const-string v11, "Content-Encoding"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_36

    const-string v11, "Content-Type"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_35

    goto :goto_1a

    :cond_35
    invoke-static {v10}, Lpx0$a;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_36

    invoke-virtual {v7, v15}, Ljv3;->g(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljv3$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    :goto_1a
    add-int/lit8 v15, v15, 0x1

    goto :goto_19

    :cond_37
    invoke-virtual {v8}, Ljv3$a;->e()Ljv3;

    move-result-object v4

    invoke-virtual {v4}, Ljv3;->d()Ljv3$a;

    move-result-object v4

    iput-object v4, v3, Lz47$a;->f:Ljv3$a;

    iget-wide v7, v1, Lz47;->l:J

    iput-wide v7, v3, Lz47$a;->k:J

    iget-wide v7, v1, Lz47;->m:J

    iput-wide v7, v3, Lz47$a;->l:J

    invoke-static {v5}, Lpx0$a;->b(Lz47;)Lz47;

    move-result-object v4

    const-string v7, "cacheResponse"

    invoke-static {v4, v7}, Lz47$a;->b(Lz47;Ljava/lang/String;)V

    iput-object v4, v3, Lz47$a;->i:Lz47;

    invoke-static {v1}, Lpx0$a;->b(Lz47;)Lz47;

    move-result-object v4

    const-string v7, "networkResponse"

    invoke-static {v4, v7}, Lz47$a;->b(Lz47;Ljava/lang/String;)V

    iput-object v4, v3, Lz47$a;->h:Lz47;

    invoke-virtual {v3}, Lz47$a;->a()Lz47;

    move-result-object v3

    iget-object v1, v1, Lz47;->h:Lb57;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lb57;->close()V

    iget-object v1, v0, Lpx0;->a:Llx0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v1

    monitor-exit v1

    iget-object v0, v0, Lpx0;->a:Llx0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llx0$c;

    invoke-direct {v0, v3}, Llx0$c;-><init>(Lz47;)V

    iget-object v1, v5, Lz47;->h:Lb57;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Llx0$a;

    iget-object v1, v1, Llx0$a;->c:Lun2$c;

    :try_start_3
    iget-object v4, v1, Lun2$c;->e:Lun2;

    iget-object v5, v1, Lun2$c;->b:Ljava/lang/String;

    iget-wide v7, v1, Lun2$c;->c:J

    invoke-virtual {v4, v7, v8, v5}, Lun2;->o(JLjava/lang/String;)Lun2$a;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v5, :cond_38

    goto :goto_1b

    :cond_38
    :try_start_4
    invoke-virtual {v0, v5}, Llx0$c;->c(Lun2$a;)V

    invoke-virtual {v5}, Lun2$a;->b()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1b

    :catch_2
    move-object v5, v9

    :catch_3
    if-eqz v5, :cond_39

    :try_start_5
    invoke-virtual {v5}, Lun2$a;->a()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_39
    :goto_1b
    invoke-virtual {v6, v2, v3}, Lokhttp3/b;->cacheHit(Lokhttp3/a;Lz47;)V

    return-object v3

    :cond_3a
    iget-object v3, v5, Lz47;->h:Lb57;

    if-eqz v3, :cond_3b

    invoke-static {v3}, Lgb9;->d(Ljava/io/Closeable;)V

    :cond_3b
    invoke-virtual {v1}, Lz47;->p()Lz47$a;

    move-result-object v3

    invoke-static {v5}, Lpx0$a;->b(Lz47;)Lz47;

    move-result-object v10

    const-string v11, "cacheResponse"

    invoke-static {v10, v11}, Lz47$a;->b(Lz47;Ljava/lang/String;)V

    iput-object v10, v3, Lz47$a;->i:Lz47;

    invoke-static {v1}, Lpx0$a;->b(Lz47;)Lz47;

    move-result-object v1

    const-string v10, "networkResponse"

    invoke-static {v1, v10}, Lz47$a;->b(Lz47;Ljava/lang/String;)V

    iput-object v1, v3, Lz47$a;->h:Lz47;

    invoke-virtual {v3}, Lz47$a;->a()Lz47;

    move-result-object v1

    iget-object v3, v0, Lpx0;->a:Llx0;

    if-eqz v3, :cond_46

    invoke-static {v1}, Laz3;->a(Lz47;)Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-static {v4, v1}, Lux0$a;->a(Lb37;Lz47;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v0, v0, Lpx0;->a:Llx0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lz47;->b:Lb37;

    iget-object v4, v3, Lb37;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "POST"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_40

    const-string v10, "PATCH"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_40

    const-string v10, "PUT"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_40

    const-string v10, "DELETE"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_40

    const-string v10, "MOVE"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    goto :goto_1c

    :cond_3c
    const-string v10, "GET"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_1d

    :cond_3d
    iget-object v4, v1, Lz47;->g:Ljv3;

    invoke-static {v4}, Llx0$b;->c(Ljv3;)Ljava/util/Set;

    move-result-object v4

    const-string v10, "*"

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    goto :goto_1d

    :cond_3e
    new-instance v4, Llx0$c;

    invoke-direct {v4, v1}, Llx0$c;-><init>(Lz47;)V

    :try_start_6
    iget-object v10, v0, Llx0;->b:Lun2;

    iget-object v3, v3, Lb37;->a:Lfz3;

    invoke-static {v3}, Llx0$b;->a(Lfz3;)Ljava/lang/String;

    move-result-object v3

    sget-object v11, Lun2;->s:Lg17;

    invoke-virtual {v10, v7, v8, v3}, Lun2;->o(JLjava/lang/String;)Lun2$a;

    move-result-object v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    if-nez v3, :cond_3f

    goto :goto_1d

    :cond_3f
    :try_start_7
    invoke-virtual {v4, v3}, Llx0$c;->c(Lun2$a;)V

    new-instance v4, Llx0$d;

    invoke-direct {v4, v0, v3}, Llx0$d;-><init>(Llx0;Lun2$a;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    move-object v9, v4

    goto :goto_1d

    :catch_5
    move-object v3, v9

    :catch_6
    if-eqz v3, :cond_41

    :try_start_8
    invoke-virtual {v3}, Lun2$a;->a()V

    goto :goto_1d

    :cond_40
    :goto_1c
    invoke-virtual {v0, v3}, Llx0;->a(Lb37;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_41
    :goto_1d
    if-nez v9, :cond_42

    goto :goto_1e

    :cond_42
    iget-object v0, v9, Llx0$d;->c:Llx0$d$a;

    iget-object v3, v1, Lz47;->h:Lb57;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lb57;->L()Lwu0;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lhy6;

    invoke-direct {v4, v0}, Lhy6;-><init>(Ls18;)V

    new-instance v0, Lqx0;

    invoke-direct {v0, v3, v9, v4}, Lqx0;-><init>(Lwu0;Llx0$d;Lhy6;)V

    const-string v3, "Content-Type"

    invoke-static {v1, v3}, Lz47;->n(Lz47;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lz47;->h:Lb57;

    invoke-virtual {v4}, Lb57;->o()J

    move-result-wide v7

    invoke-virtual {v1}, Lz47;->p()Lz47$a;

    move-result-object v1

    new-instance v4, Lhz6;

    new-instance v9, Liy6;

    invoke-direct {v9, v0}, Liy6;-><init>(Lv48;)V

    invoke-direct {v4, v3, v7, v8, v9}, Lhz6;-><init>(Ljava/lang/String;JLiy6;)V

    iput-object v4, v1, Lz47$a;->g:Lb57;

    invoke-virtual {v1}, Lz47$a;->a()Lz47;

    move-result-object v1

    :goto_1e
    if-eqz v5, :cond_43

    invoke-virtual {v6, v2}, Lokhttp3/b;->cacheMiss(Lokhttp3/a;)V

    :cond_43
    return-object v1

    :cond_44
    iget-object v2, v4, Lb37;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string v3, "PATCH"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string v3, "PUT"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string v3, "DELETE"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string v3, "MOVE"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    :cond_45
    :try_start_9
    iget-object v0, v0, Lpx0;->a:Llx0;

    invoke-virtual {v0, v4}, Llx0;->a(Lb37;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_46
    return-object v1

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_47

    iget-object v1, v3, Lz47;->h:Lb57;

    if-eqz v1, :cond_47

    invoke-static {v1}, Lgb9;->d(Ljava/io/Closeable;)V

    :cond_47
    throw v0
.end method

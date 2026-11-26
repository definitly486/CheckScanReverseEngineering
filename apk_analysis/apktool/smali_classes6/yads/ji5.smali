.class public abstract Lyads/ji5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/uk2;


# instance fields
.field private final a:Lyads/bd0;

.field private final b:Lyads/mc0;

.field private final c:Ljava/util/ArrayList;

.field private final d:Lyads/bw;

.field private final e:Lyads/yv;

.field private final f:Lyads/iw;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljava/util/ArrayList;

.field private volatile i:Z


# direct methods
.method public constructor <init>(Lyads/p04;Lyads/mc0;Lyads/bw;Ljava/util/concurrent/Executor;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v3, v1, Lyads/p04;->c:Lyads/k04;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lyads/p04;->c:Lyads/k04;

    iget-object v5, v3, Lyads/k04;->a:Landroid/net/Uri;

    sget-object v10, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-string v3, "The uri must be set."

    invoke-static {v5, v3}, Lyads/zj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lyads/bd0;

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-direct/range {v4 .. v17}, Lyads/bd0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    iput-object v4, v0, Lyads/ji5;->a:Lyads/bd0;

    move-object/from16 v3, p2

    iput-object v3, v0, Lyads/ji5;->b:Lyads/mc0;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, v1, Lyads/p04;->c:Lyads/k04;

    iget-object v1, v1, Lyads/k04;->b:Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lyads/ji5;->c:Ljava/util/ArrayList;

    iput-object v2, v0, Lyads/ji5;->d:Lyads/bw;

    move-object/from16 v1, p4

    iput-object v1, v0, Lyads/ji5;->g:Ljava/util/concurrent/Executor;

    iget-object v1, v2, Lyads/bw;->a:Lyads/yv;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lyads/ji5;->e:Lyads/yv;

    iget-object v1, v2, Lyads/bw;->b:Lyads/iw;

    iput-object v1, v0, Lyads/ji5;->f:Lyads/iw;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lyads/ji5;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic a(Lyads/ji5;)Lyads/mc0;
    .locals 0

    .line 435
    iget-object p0, p0, Lyads/ji5;->b:Lyads/mc0;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 472
    iget-object v0, p0, Lyads/ji5;->h:Ljava/util/ArrayList;

    monitor-enter v0

    .line 473
    :try_start_0
    iget-object p0, p0, Lyads/ji5;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 474
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(Ljava/util/ArrayList;Lyads/iw;)V
    .locals 16

    move-object/from16 v0, p0

    .line 475
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 476
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 477
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/hi5;

    .line 478
    iget-object v5, v4, Lyads/hi5;->c:Lyads/bd0;

    move-object/from16 v6, p1

    check-cast v6, Lxp;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lyads/iw;->b(Lyads/bd0;)Ljava/lang/String;

    move-result-object v5

    .line 479
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    .line 480
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/hi5;

    :goto_1
    if-eqz v7, :cond_2

    .line 481
    iget-wide v8, v4, Lyads/hi5;->b:J

    iget-wide v10, v7, Lyads/hi5;->b:J

    const-wide/32 v12, 0x1312d00

    add-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-gtz v8, :cond_2

    iget-object v8, v7, Lyads/hi5;->c:Lyads/bd0;

    iget-object v9, v4, Lyads/hi5;->c:Lyads/bd0;

    .line 482
    iget-object v10, v8, Lyads/bd0;->a:Landroid/net/Uri;

    iget-object v11, v9, Lyads/bd0;->a:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-wide v10, v8, Lyads/bd0;->g:J

    const-wide/16 v12, -0x1

    cmp-long v14, v10, v12

    if-eqz v14, :cond_2

    iget-wide v14, v8, Lyads/bd0;->f:J

    add-long/2addr v14, v10

    iget-wide v10, v9, Lyads/bd0;->f:J

    cmp-long v10, v14, v10

    if-nez v10, :cond_2

    iget-object v10, v8, Lyads/bd0;->h:Ljava/lang/String;

    iget-object v11, v9, Lyads/bd0;->h:Ljava/lang/String;

    .line 483
    invoke-static {v10, v11}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget v10, v8, Lyads/bd0;->i:I

    iget v11, v9, Lyads/bd0;->i:I

    if-ne v10, v11, :cond_2

    iget v10, v8, Lyads/bd0;->c:I

    iget v11, v9, Lyads/bd0;->c:I

    if-ne v10, v11, :cond_2

    iget-object v8, v8, Lyads/bd0;->e:Ljava/util/Map;

    iget-object v9, v9, Lyads/bd0;->e:Ljava/util/Map;

    .line 484
    invoke-interface {v8, v9}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 485
    iget-object v4, v4, Lyads/hi5;->c:Lyads/bd0;

    iget-wide v4, v4, Lyads/bd0;->g:J

    cmp-long v8, v4, v12

    if-nez v8, :cond_1

    goto :goto_2

    .line 486
    :cond_1
    iget-object v8, v7, Lyads/hi5;->c:Lyads/bd0;

    iget-wide v8, v8, Lyads/bd0;->g:J

    add-long v12, v8, v4

    .line 487
    :goto_2
    iget-object v4, v7, Lyads/hi5;->c:Lyads/bd0;

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9, v12, v13}, Lyads/bd0;->a(JJ)Lyads/bd0;

    move-result-object v4

    .line 488
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v6, Lyads/hi5;

    iget-wide v7, v7, Lyads/hi5;->b:J

    invoke-direct {v6, v7, v8, v4}, Lyads/hi5;-><init>(JLyads/bd0;)V

    .line 490
    invoke-virtual {v0, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 491
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 493
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lyads/u56;->a:I

    if-ltz v3, :cond_5

    .line 494
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_5

    if-gt v3, v1, :cond_5

    if-eq v3, v1, :cond_4

    .line 495
    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    return-void

    .line 496
    :cond_5
    invoke-static {}, Lmi2;->b()V

    return-void
.end method

.method private a(Lyads/rb5;)V
    .locals 2

    .line 466
    iget-object v0, p0, Lyads/ji5;->h:Ljava/util/ArrayList;

    monitor-enter v0

    .line 467
    :try_start_0
    iget-boolean v1, p0, Lyads/ji5;->i:Z

    if-nez v1, :cond_0

    .line 468
    iget-object p0, p0, Lyads/ji5;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 470
    :cond_0
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    .line 471
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private b(Lyads/rb5;)V
    .locals 1

    iget-object v0, p0, Lyads/ji5;->h:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lyads/ji5;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Lyads/rb5;Z)Ljava/lang/Object;
    .locals 2

    if-eqz p2, :cond_1

    .line 436
    invoke-virtual {p1}, Lyads/rb5;->run()V

    .line 437
    :try_start_0
    iget-object p0, p1, Lyads/rb5;->c:Lyads/m50;

    invoke-virtual {p0}, Lyads/m50;->a()V

    .line 438
    invoke-virtual {p1}, Lyads/rb5;->c()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 439
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 440
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_0

    .line 442
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 443
    :cond_0
    sget p1, Lyads/u56;->a:I

    .line 444
    throw p0

    .line 445
    :cond_1
    iget-boolean p2, p0, Lyads/ji5;->i:Z

    if-nez p2, :cond_3

    .line 446
    invoke-direct {p0, p1}, Lyads/ji5;->a(Lyads/rb5;)V

    .line 447
    iget-object p2, p0, Lyads/ji5;->g:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 448
    :try_start_1
    iget-object p2, p1, Lyads/rb5;->c:Lyads/m50;

    .line 449
    invoke-virtual {p2}, Lyads/m50;->a()V

    .line 450
    invoke-virtual {p1}, Lyads/rb5;->c()Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 451
    iget-object v0, p1, Lyads/rb5;->c:Lyads/m50;

    invoke-virtual {v0}, Lyads/m50;->b()V

    .line 452
    iget-object v0, p0, Lyads/ji5;->h:Ljava/util/ArrayList;

    monitor-enter v0

    .line 453
    :try_start_2
    iget-object p0, p0, Lyads/ji5;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 454
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    .line 455
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    .line 458
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 459
    :cond_2
    sget v0, Lyads/u56;->a:I

    .line 460
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 461
    :goto_0
    iget-object v0, p1, Lyads/rb5;->c:Lyads/m50;

    .line 462
    invoke-virtual {v0}, Lyads/m50;->b()V

    .line 463
    invoke-direct {p0, p1}, Lyads/ji5;->b(Lyads/rb5;)V

    .line 464
    throw p2

    .line 465
    :cond_3
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method public abstract a(Lyads/cw;Lyads/kc0;Z)Ljava/util/ArrayList;
.end method

.method public final a(Lyads/pk2;)V
    .locals 25

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget-object v5, v1, Lyads/ji5;->d:Lyads/bw;

    iget-object v6, v5, Lyads/bw;->c:Lyads/vc0;

    if-eqz v6, :cond_0

    invoke-interface {v6}, Lyads/vc0;->a()Lyads/wc0;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6, v4}, Lyads/bw;->a(Lyads/wc0;I)Lyads/cw;

    move-result-object v5

    iget-object v6, v1, Lyads/ji5;->a:Lyads/bd0;

    new-instance v8, Lyads/fi5;

    invoke-direct {v8, v1, v5, v6}, Lyads/fi5;-><init>(Lyads/ji5;Lyads/cw;Lyads/bd0;)V

    invoke-virtual {v1, v8, v3}, Lyads/ji5;->a(Lyads/rb5;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/kc0;

    iget-object v8, v1, Lyads/ji5;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v1, Lyads/ji5;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Lyads/kc0;->a(Ljava/util/List;)Lyads/kc0;

    move-result-object v6

    :cond_1
    invoke-virtual {v1, v5, v6, v3}, Lyads/ji5;->a(Lyads/cw;Lyads/kc0;Z)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v6, v1, Lyads/ji5;->f:Lyads/iw;

    invoke-static {v5, v6}, Lyads/ji5;->a(Ljava/util/ArrayList;Lyads/iw;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    const-wide/16 v8, 0x0

    move v15, v3

    move-wide v10, v8

    move-wide v13, v10

    :goto_1
    if-ltz v6, :cond_6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/hi5;

    iget-object v8, v8, Lyads/hi5;->c:Lyads/bd0;

    iget-object v9, v1, Lyads/ji5;->f:Lyads/iw;

    check-cast v9, Lxp;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lyads/iw;->b(Lyads/bd0;)Ljava/lang/String;

    move-result-object v9

    iget-wide v3, v8, Lyads/bd0;->g:J

    const-wide/16 v23, -0x1

    cmp-long v16, v3, v23

    if-nez v16, :cond_2

    iget-object v7, v1, Lyads/ji5;->e:Lyads/yv;

    check-cast v7, Lyads/ok5;

    invoke-virtual {v7, v9}, Lyads/ok5;->b(Ljava/lang/String;)Lyads/fk0;

    move-result-object v7

    invoke-static {v7}, Lyads/i60;->a(Lyads/i60;)J

    move-result-wide v16

    cmp-long v7, v16, v23

    if-eqz v7, :cond_2

    iget-wide v3, v8, Lyads/bd0;->f:J

    sub-long v3, v16, v3

    :cond_2
    move-wide/from16 v20, v3

    iget-object v3, v1, Lyads/ji5;->e:Lyads/yv;

    iget-wide v7, v8, Lyads/bd0;->f:J

    move-object/from16 v16, v3

    check-cast v16, Lyads/ok5;

    move-wide/from16 v18, v7

    move-object/from16 v17, v9

    invoke-virtual/range {v16 .. v21}, Lyads/ok5;->a(Ljava/lang/String;JJ)J

    move-result-wide v3

    add-long/2addr v13, v3

    cmp-long v7, v20, v23

    if-eqz v7, :cond_4

    cmp-long v3, v20, v3

    if-nez v3, :cond_3

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    cmp-long v3, v10, v23

    if-eqz v3, :cond_5

    add-long v10, v10, v20

    goto :goto_2

    :cond_4
    move-wide/from16 v10, v23

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    new-instance v8, Lyads/gi5;

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v15}, Lyads/gi5;-><init>(Lyads/pk2;JIJI)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    :goto_3
    iget-boolean v3, v1, Lyads/ji5;->i:Z

    if-nez v3, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/ii5;

    iget-object v4, v3, Lyads/ii5;->i:Lyads/cw;

    iget-object v3, v3, Lyads/ii5;->k:[B

    goto :goto_6

    :cond_7
    iget-object v3, v1, Lyads/ji5;->d:Lyads/bw;

    iget-object v4, v3, Lyads/bw;->c:Lyads/vc0;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lyads/vc0;->a()Lyads/wc0;

    move-result-object v4

    :goto_4
    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    :goto_5
    invoke-virtual {v3, v4, v5}, Lyads/bw;->a(Lyads/wc0;I)Lyads/cw;

    move-result-object v4

    const/high16 v3, 0x20000

    new-array v3, v3, [B

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/hi5;

    new-instance v6, Lyads/ii5;

    invoke-direct {v6, v5, v4, v8, v3}, Lyads/ii5;-><init>(Lyads/hi5;Lyads/cw;Lyads/gi5;[B)V

    invoke-direct {v1, v6}, Lyads/ji5;->a(Lyads/rb5;)V

    iget-object v3, v1, Lyads/ji5;->g:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v3, v1, Lyads/ji5;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v22, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_7
    if-ltz v3, :cond_c

    iget-object v4, v1, Lyads/ji5;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/ii5;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4}, Lyads/rb5;->isDone()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_a

    :cond_9
    :try_start_1
    iget-object v5, v4, Lyads/rb5;->c:Lyads/m50;

    invoke-virtual {v5}, Lyads/m50;->a()V

    invoke-virtual {v4}, Lyads/rb5;->c()Ljava/lang/Object;

    invoke-direct {v1, v3}, Lyads/ji5;->a(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_b

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_b
    throw v0

    :cond_c
    iget-object v3, v6, Lyads/rb5;->b:Lyads/m50;

    invoke-virtual {v3}, Lyads/m50;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :cond_d
    const/4 v3, 0x0

    :goto_8
    iget-object v0, v1, Lyads/ji5;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, v1, Lyads/ji5;->h:Ljava/util/ArrayList;

    if-ge v3, v0, :cond_e

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/rb5;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lyads/rb5;->cancel(Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_e
    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    :goto_9
    if-ltz v0, :cond_f

    iget-object v2, v1, Lyads/ji5;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/rb5;

    iget-object v2, v2, Lyads/rb5;->c:Lyads/m50;

    invoke-virtual {v2}, Lyads/m50;->b()V

    invoke-direct {v1, v0}, Lyads/ji5;->a(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_f
    return-void

    :goto_a
    const/4 v3, 0x0

    :goto_b
    iget-object v2, v1, Lyads/ji5;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v4, v1, Lyads/ji5;->h:Ljava/util/ArrayList;

    if-ge v3, v2, :cond_10

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/rb5;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lyads/rb5;->cancel(Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_10
    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_c
    if-ltz v2, :cond_11

    iget-object v3, v1, Lyads/ji5;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/rb5;

    iget-object v3, v3, Lyads/rb5;->c:Lyads/m50;

    invoke-virtual {v3}, Lyads/m50;->b()V

    invoke-direct {v1, v2}, Lyads/ji5;->a(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_11
    throw v0
.end method

.method public final cancel()V
    .locals 4

    iget-object v0, p0, Lyads/ji5;->h:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lyads/ji5;->i:Z

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lyads/ji5;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lyads/ji5;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/rb5;

    invoke-virtual {v3, v1}, Lyads/rb5;->cancel(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final remove()V
    .locals 5

    iget-object v0, p0, Lyads/ji5;->d:Lyads/bw;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lyads/bw;->a(Lyads/wc0;I)Lyads/cw;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lyads/ji5;->a:Lyads/bd0;

    new-instance v3, Lyads/fi5;

    invoke-direct {v3, p0, v0, v1}, Lyads/fi5;-><init>(Lyads/ji5;Lyads/cw;Lyads/bd0;)V

    invoke-virtual {p0, v3, v2}, Lyads/ji5;->a(Lyads/rb5;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/kc0;

    invoke-virtual {p0, v0, v1, v2}, Lyads/ji5;->a(Lyads/cw;Lyads/kc0;Z)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lyads/ji5;->e:Lyads/yv;

    iget-object v3, p0, Lyads/ji5;->f:Lyads/iw;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/hi5;

    iget-object v4, v4, Lyads/hi5;->c:Lyads/bd0;

    check-cast v3, Lxp;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lyads/iw;->b(Lyads/bd0;)Ljava/lang/String;

    move-result-object v3

    check-cast v2, Lyads/ok5;

    invoke-virtual {v2, v3}, Lyads/ok5;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :cond_0
    iget-object v0, p0, Lyads/ji5;->e:Lyads/yv;

    iget-object v1, p0, Lyads/ji5;->f:Lyads/iw;

    iget-object p0, p0, Lyads/ji5;->a:Lyads/bd0;

    check-cast v1, Lxp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lyads/iw;->b(Lyads/bd0;)Ljava/lang/String;

    move-result-object p0

    check-cast v0, Lyads/ok5;

    invoke-virtual {v0, p0}, Lyads/ok5;->c(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lyads/ji5;->e:Lyads/yv;

    iget-object v1, p0, Lyads/ji5;->f:Lyads/iw;

    iget-object p0, p0, Lyads/ji5;->a:Lyads/bd0;

    check-cast v1, Lxp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lyads/iw;->b(Lyads/bd0;)Ljava/lang/String;

    move-result-object p0

    check-cast v0, Lyads/ok5;

    invoke-virtual {v0, p0}, Lyads/ok5;->c(Ljava/lang/String;)V

    :goto_1
    return-void

    :goto_2
    iget-object v1, p0, Lyads/ji5;->e:Lyads/yv;

    iget-object v2, p0, Lyads/ji5;->f:Lyads/iw;

    iget-object p0, p0, Lyads/ji5;->a:Lyads/bd0;

    check-cast v2, Lxp;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lyads/iw;->b(Lyads/bd0;)Ljava/lang/String;

    move-result-object p0

    check-cast v1, Lyads/ok5;

    invoke-virtual {v1, p0}, Lyads/ok5;->c(Ljava/lang/String;)V

    throw v0
.end method

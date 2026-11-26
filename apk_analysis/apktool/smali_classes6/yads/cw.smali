.class public final Lyads/cw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wc0;


# instance fields
.field public final a:Lyads/yv;

.field public final b:Lyads/ex2;

.field public final c:Lyads/iv5;

.field public final d:Lyads/wc0;

.field public final e:Lyads/iw;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public i:Landroid/net/Uri;

.field public j:Lyads/bd0;

.field public k:Lyads/bd0;

.field public l:Lyads/wc0;

.field public m:J

.field public n:J

.field public o:J

.field public p:Lyads/qk5;

.field public q:Z

.field public r:Z

.field public s:J


# direct methods
.method public constructor <init>(Lyads/yv;Lyads/wc0;Lyads/ex2;Lyads/aw;Lyads/iw;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/cw;->a:Lyads/yv;

    iput-object p3, p0, Lyads/cw;->b:Lyads/ex2;

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    sget-object p5, Lyads/iw;->a:Lyads/iw;

    :goto_0
    iput-object p5, p0, Lyads/cw;->e:Lyads/iw;

    const/4 p1, 0x1

    and-int/lit8 p3, p6, 0x1

    const/4 p5, 0x0

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move p1, p5

    :goto_1
    iput-boolean p1, p0, Lyads/cw;->f:Z

    iput-boolean p5, p0, Lyads/cw;->g:Z

    iput-boolean p5, p0, Lyads/cw;->h:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    iput-object p2, p0, Lyads/cw;->d:Lyads/wc0;

    if-eqz p4, :cond_2

    new-instance p1, Lyads/iv5;

    invoke-direct {p1, p2, p4}, Lyads/iv5;-><init>(Lyads/wc0;Lyads/aw;)V

    :cond_2
    iput-object p1, p0, Lyads/cw;->c:Lyads/iv5;

    return-void

    :cond_3
    sget-object p2, Lyads/dv4;->a:Lyads/dv4;

    iput-object p2, p0, Lyads/cw;->d:Lyads/wc0;

    iput-object p1, p0, Lyads/cw;->c:Lyads/iv5;

    return-void
.end method


# virtual methods
.method public final a(Lyads/bd0;)J
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 452
    :try_start_0
    iget-object v3, v1, Lyads/cw;->e:Lyads/iw;

    check-cast v3, Lxp;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/iw;->b(Lyads/bd0;)Ljava/lang/String;

    move-result-object v15

    .line 453
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    iget-object v5, v0, Lyads/bd0;->a:Landroid/net/Uri;

    .line 455
    iget-wide v6, v0, Lyads/bd0;->b:J

    .line 456
    iget v8, v0, Lyads/bd0;->c:I

    .line 457
    iget-object v9, v0, Lyads/bd0;->d:[B

    .line 458
    iget-object v10, v0, Lyads/bd0;->e:Ljava/util/Map;

    .line 459
    iget-wide v11, v0, Lyads/bd0;->f:J

    .line 460
    iget-wide v13, v0, Lyads/bd0;->g:J

    .line 461
    iget v3, v0, Lyads/bd0;->i:I

    .line 462
    iget-object v4, v0, Lyads/bd0;->j:Ljava/lang/Object;

    .line 463
    const-string v2, "The uri must be set."

    invoke-static {v5, v2}, Lyads/zj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v4

    .line 464
    new-instance v4, Lyads/bd0;

    move/from16 v16, v3

    invoke-direct/range {v4 .. v17}, Lyads/bd0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 465
    iput-object v4, v1, Lyads/cw;->j:Lyads/bd0;

    .line 466
    iget-object v2, v1, Lyads/cw;->a:Lyads/yv;

    .line 467
    check-cast v2, Lyads/ok5;

    invoke-virtual {v2, v15}, Lyads/ok5;->b(Ljava/lang/String;)Lyads/fk0;

    move-result-object v2

    .line 468
    invoke-virtual {v2}, Lyads/fk0;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 469
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    move-object v5, v2

    .line 470
    :cond_1
    iput-object v5, v1, Lyads/cw;->i:Landroid/net/Uri;

    .line 471
    iget-wide v2, v0, Lyads/bd0;->f:J

    iput-wide v2, v1, Lyads/cw;->n:J

    .line 472
    iget-boolean v2, v1, Lyads/cw;->g:Z

    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lyads/cw;->q:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 473
    :cond_2
    iget-boolean v2, v1, Lyads/cw;->h:Z

    if-eqz v2, :cond_3

    iget-wide v7, v0, Lyads/bd0;->g:J

    cmp-long v2, v7, v5

    if-nez v2, :cond_3

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v3

    .line 474
    :goto_2
    iput-boolean v2, v1, Lyads/cw;->r:Z

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_4

    .line 475
    iput-wide v5, v1, Lyads/cw;->o:J

    move-wide v9, v5

    goto :goto_3

    .line 476
    :cond_4
    iget-object v2, v1, Lyads/cw;->a:Lyads/yv;

    check-cast v2, Lyads/ok5;

    invoke-virtual {v2, v15}, Lyads/ok5;->b(Ljava/lang/String;)Lyads/fk0;

    move-result-object v2

    invoke-static {v2}, Lyads/i60;->a(Lyads/i60;)J

    move-result-wide v9

    iput-wide v9, v1, Lyads/cw;->o:J

    cmp-long v2, v9, v5

    if-eqz v2, :cond_6

    .line 477
    iget-wide v11, v0, Lyads/bd0;->f:J

    sub-long/2addr v9, v11

    iput-wide v9, v1, Lyads/cw;->o:J

    cmp-long v2, v9, v7

    if-ltz v2, :cond_5

    goto :goto_3

    .line 478
    :cond_5
    new-instance v0, Lyads/xc0;

    const/16 v2, 0x7d8

    invoke-direct {v0, v2}, Lyads/xc0;-><init>(I)V

    throw v0

    .line 479
    :cond_6
    :goto_3
    iget-wide v11, v0, Lyads/bd0;->g:J

    cmp-long v2, v11, v5

    if-eqz v2, :cond_8

    cmp-long v2, v9, v5

    if-nez v2, :cond_7

    move-wide v9, v11

    goto :goto_4

    .line 480
    :cond_7
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :goto_4
    iput-wide v9, v1, Lyads/cw;->o:J

    :cond_8
    cmp-long v2, v9, v7

    if-gtz v2, :cond_9

    cmp-long v2, v9, v5

    if-nez v2, :cond_a

    .line 481
    :cond_9
    invoke-virtual {v1, v4, v3}, Lyads/cw;->a(Lyads/bd0;Z)V

    .line 482
    :cond_a
    iget-wide v2, v0, Lyads/bd0;->g:J

    cmp-long v0, v2, v5

    if-eqz v0, :cond_b

    return-wide v2

    :cond_b
    iget-wide v0, v1, Lyads/cw;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 483
    :goto_5
    invoke-virtual {v1}, Lyads/cw;->h()Z

    move-result v2

    if-nez v2, :cond_c

    instance-of v2, v0, Lyads/vv;

    if-eqz v2, :cond_d

    :cond_c
    const/4 v2, 0x1

    .line 484
    iput-boolean v2, v1, Lyads/cw;->q:Z

    .line 485
    :cond_d
    throw v0
.end method

.method public final a(Lyads/bd0;Z)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v3, v0, Lyads/bd0;->h:Ljava/lang/String;

    sget v2, Lyads/u56;->a:I

    iget-boolean v2, v1, Lyads/cw;->r:Z

    if-eqz v2, :cond_0

    const/4 v9, 0x0

    goto :goto_1

    :cond_0
    iget-boolean v2, v1, Lyads/cw;->f:Z

    iget-object v4, v1, Lyads/cw;->a:Lyads/yv;

    if-eqz v2, :cond_2

    move-object v2, v4

    :try_start_0
    iget-wide v4, v1, Lyads/cw;->n:J

    iget-wide v6, v1, Lyads/cw;->o:J

    check-cast v2, Lyads/ok5;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Lyads/ok5;->a()V

    :goto_0
    invoke-virtual/range {v2 .. v7}, Lyads/ok5;->c(Ljava/lang/String;JJ)Lyads/qk5;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_2
    move-object v2, v4

    iget-wide v4, v1, Lyads/cw;->n:J

    iget-wide v6, v1, Lyads/cw;->o:J

    check-cast v2, Lyads/ok5;

    invoke-virtual/range {v2 .. v7}, Lyads/ok5;->c(Ljava/lang/String;JJ)Lyads/qk5;

    move-result-object v9

    :goto_1
    if-nez v9, :cond_3

    iget-object v2, v1, Lyads/cw;->d:Lyads/wc0;

    iget-object v11, v0, Lyads/bd0;->a:Landroid/net/Uri;

    iget-wide v12, v0, Lyads/bd0;->b:J

    iget v14, v0, Lyads/bd0;->c:I

    iget-object v15, v0, Lyads/bd0;->d:[B

    iget-object v6, v0, Lyads/bd0;->e:Ljava/util/Map;

    iget-object v7, v0, Lyads/bd0;->h:Ljava/lang/String;

    iget v10, v0, Lyads/bd0;->i:I

    const-wide/16 v24, -0x1

    iget-object v4, v0, Lyads/bd0;->j:Ljava/lang/Object;

    move-object/from16 v26, v9

    iget-wide v8, v1, Lyads/cw;->n:J

    move-object/from16 v16, v6

    iget-wide v5, v1, Lyads/cw;->o:J

    move-object/from16 v27, v2

    const-string v2, "The uri must be set."

    invoke-static {v11, v2}, Lyads/zj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v22, v10

    new-instance v10, Lyads/bd0;

    move-object/from16 v23, v4

    move-wide/from16 v19, v5

    move-object/from16 v21, v7

    move-wide/from16 v17, v8

    invoke-direct/range {v10 .. v23}, Lyads/bd0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v9, v26

    move-object/from16 v2, v27

    goto/16 :goto_3

    :cond_3
    const-wide/16 v24, -0x1

    iget-boolean v2, v9, Lyads/jw;->e:Z

    if-eqz v2, :cond_5

    iget-object v2, v9, Lyads/jw;->f:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    iget-wide v12, v9, Lyads/jw;->c:J

    iget-wide v4, v1, Lyads/cw;->n:J

    sub-long v17, v4, v12

    iget-wide v4, v9, Lyads/jw;->d:J

    sub-long v4, v4, v17

    iget-wide v6, v1, Lyads/cw;->o:J

    cmp-long v2, v6, v24

    if-eqz v2, :cond_4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_4
    move-wide/from16 v19, v4

    iget v14, v0, Lyads/bd0;->c:I

    iget-object v15, v0, Lyads/bd0;->d:[B

    iget-object v2, v0, Lyads/bd0;->e:Ljava/util/Map;

    iget-object v4, v0, Lyads/bd0;->h:Ljava/lang/String;

    iget v5, v0, Lyads/bd0;->i:I

    iget-object v6, v0, Lyads/bd0;->j:Ljava/lang/Object;

    const-string v7, "The uri must be set."

    invoke-static {v11, v7}, Lyads/zj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lyads/bd0;

    move-object/from16 v16, v2

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    invoke-direct/range {v10 .. v23}, Lyads/bd0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    iget-object v2, v1, Lyads/cw;->b:Lyads/ex2;

    goto :goto_3

    :cond_5
    iget-wide v4, v9, Lyads/jw;->d:J

    cmp-long v2, v4, v24

    iget-wide v6, v1, Lyads/cw;->o:J

    if-nez v2, :cond_6

    move-wide/from16 v19, v6

    goto :goto_2

    :cond_6
    cmp-long v2, v6, v24

    if-eqz v2, :cond_7

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_7
    move-wide/from16 v19, v4

    :goto_2
    iget-object v11, v0, Lyads/bd0;->a:Landroid/net/Uri;

    iget-wide v12, v0, Lyads/bd0;->b:J

    iget v14, v0, Lyads/bd0;->c:I

    iget-object v15, v0, Lyads/bd0;->d:[B

    iget-object v2, v0, Lyads/bd0;->e:Ljava/util/Map;

    iget-object v4, v0, Lyads/bd0;->h:Ljava/lang/String;

    iget v5, v0, Lyads/bd0;->i:I

    iget-object v6, v0, Lyads/bd0;->j:Ljava/lang/Object;

    iget-wide v7, v1, Lyads/cw;->n:J

    const-string v10, "The uri must be set."

    invoke-static {v11, v10}, Lyads/zj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lyads/bd0;

    move-object/from16 v16, v2

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-wide/from16 v17, v7

    invoke-direct/range {v10 .. v23}, Lyads/bd0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    iget-object v2, v1, Lyads/cw;->c:Lyads/iv5;

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object v2, v1, Lyads/cw;->d:Lyads/wc0;

    iget-object v4, v1, Lyads/cw;->a:Lyads/yv;

    check-cast v4, Lyads/ok5;

    invoke-virtual {v4, v9}, Lyads/ok5;->b(Lyads/qk5;)V

    const/4 v9, 0x0

    :goto_3
    iget-boolean v4, v1, Lyads/cw;->r:Z

    if-nez v4, :cond_9

    iget-object v4, v1, Lyads/cw;->d:Lyads/wc0;

    if-ne v2, v4, :cond_9

    iget-wide v4, v1, Lyads/cw;->n:J

    const-wide/32 v6, 0x19000

    add-long/2addr v4, v6

    goto :goto_4

    :cond_9
    const-wide v4, 0x7fffffffffffffffL

    :goto_4
    iput-wide v4, v1, Lyads/cw;->s:J

    if-eqz p2, :cond_d

    iget-object v4, v1, Lyads/cw;->l:Lyads/wc0;

    iget-object v5, v1, Lyads/cw;->d:Lyads/wc0;

    if-ne v4, v5, :cond_c

    if-ne v2, v5, :cond_a

    goto/16 :goto_8

    :cond_a
    :try_start_5
    invoke-virtual {v1}, Lyads/cw;->g()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    iget-boolean v2, v9, Lyads/jw;->e:Z

    if-nez v2, :cond_b

    iget-object v1, v1, Lyads/cw;->a:Lyads/yv;

    check-cast v1, Lyads/ok5;

    invoke-virtual {v1, v9}, Lyads/ok5;->b(Lyads/qk5;)V

    :cond_b
    throw v0

    :cond_c
    invoke-static {}, Lud;->g()V

    return-void

    :cond_d
    :goto_5
    if-eqz v9, :cond_e

    iget-boolean v4, v9, Lyads/jw;->e:Z

    if-nez v4, :cond_e

    iput-object v9, v1, Lyads/cw;->p:Lyads/qk5;

    :cond_e
    iput-object v2, v1, Lyads/cw;->l:Lyads/wc0;

    iput-object v10, v1, Lyads/cw;->k:Lyads/bd0;

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lyads/cw;->m:J

    invoke-interface {v2, v10}, Lyads/wc0;->a(Lyads/bd0;)J

    move-result-wide v4

    new-instance v6, Lyads/j60;

    invoke-direct {v6}, Lyads/j60;-><init>()V

    iget-wide v7, v10, Lyads/bd0;->g:J

    cmp-long v7, v7, v24

    if-nez v7, :cond_f

    cmp-long v7, v4, v24

    if-eqz v7, :cond_f

    iput-wide v4, v1, Lyads/cw;->o:J

    iget-wide v7, v1, Lyads/cw;->n:J

    add-long/2addr v7, v4

    const-string v4, "exo_len"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v7, v6, Lyads/j60;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v6, Lyads/j60;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {v1}, Lyads/cw;->h()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-interface {v2}, Lyads/wc0;->d()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lyads/cw;->i:Landroid/net/Uri;

    iget-object v0, v0, Lyads/bd0;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v8, v1, Lyads/cw;->i:Landroid/net/Uri;

    goto :goto_6

    :cond_10
    const/4 v8, 0x0

    :goto_6
    if-nez v8, :cond_11

    const-string v0, "exo_redir"

    iget-object v2, v6, Lyads/j60;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v6, Lyads/j60;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_11
    const-string v0, "exo_redir"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v6, Lyads/j60;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v6, Lyads/j60;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_12
    :goto_7
    iget-object v0, v1, Lyads/cw;->l:Lyads/wc0;

    iget-object v2, v1, Lyads/cw;->c:Lyads/iv5;

    if-ne v0, v2, :cond_13

    iget-object v0, v1, Lyads/cw;->a:Lyads/yv;

    check-cast v0, Lyads/ok5;

    invoke-virtual {v0, v3, v6}, Lyads/ok5;->a(Ljava/lang/String;Lyads/j60;)V

    :cond_13
    :goto_8
    return-void
.end method

.method public final a(Lyads/p16;)V
    .locals 1

    .line 486
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    iget-object v0, p0, Lyads/cw;->b:Lyads/ex2;

    invoke-virtual {v0, p1}, Lyads/dq;->a(Lyads/p16;)V

    .line 488
    iget-object p0, p0, Lyads/cw;->d:Lyads/wc0;

    invoke-interface {p0, p1}, Lyads/wc0;->a(Lyads/p16;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lyads/cw;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lyads/cw;->d:Lyads/wc0;

    invoke-interface {p0}, Lyads/wc0;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public final c([BII)I
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-wide v3, v1, Lyads/cw;->o:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, -0x1

    if-nez v3, :cond_1

    return v4

    :cond_1
    iget-object v3, v1, Lyads/cw;->j:Lyads/bd0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v1, Lyads/cw;->k:Lyads/bd0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x1

    :try_start_0
    iget-wide v9, v1, Lyads/cw;->n:J

    iget-wide v11, v1, Lyads/cw;->s:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_2

    invoke-virtual {v1, v3, v8}, Lyads/cw;->a(Lyads/bd0;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    :goto_0
    iget-object v9, v1, Lyads/cw;->l:Lyads/wc0;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-interface {v9, v10, v11, v0}, Lyads/tc0;->c([BII)I

    move-result v9

    const-wide/16 v12, -0x1

    if-eq v9, v4, :cond_3

    iget-wide v2, v1, Lyads/cw;->n:J

    int-to-long v4, v9

    add-long/2addr v2, v4

    iput-wide v2, v1, Lyads/cw;->n:J

    iget-wide v2, v1, Lyads/cw;->m:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lyads/cw;->m:J

    iget-wide v2, v1, Lyads/cw;->o:J

    cmp-long v0, v2, v12

    if-eqz v0, :cond_8

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lyads/cw;->o:J

    return v9

    :cond_3
    invoke-virtual {v1}, Lyads/cw;->h()Z

    move-result v4

    if-nez v4, :cond_6

    iget-wide v14, v7, Lyads/bd0;->g:J

    cmp-long v4, v14, v12

    if-eqz v4, :cond_4

    move-wide/from16 v16, v12

    iget-wide v12, v1, Lyads/cw;->m:J

    cmp-long v4, v12, v14

    if-gez v4, :cond_7

    :cond_4
    iget-object v0, v3, Lyads/bd0;->h:Ljava/lang/String;

    sget v2, Lyads/u56;->a:I

    iput-wide v5, v1, Lyads/cw;->o:J

    iget-object v2, v1, Lyads/cw;->l:Lyads/wc0;

    iget-object v3, v1, Lyads/cw;->c:Lyads/iv5;

    if-ne v2, v3, :cond_5

    new-instance v2, Lyads/j60;

    invoke-direct {v2}, Lyads/j60;-><init>()V

    iget-wide v3, v1, Lyads/cw;->n:J

    const-string v5, "exo_len"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v2, Lyads/j60;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lyads/j60;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v1, Lyads/cw;->a:Lyads/yv;

    check-cast v3, Lyads/ok5;

    invoke-virtual {v3, v0, v2}, Lyads/ok5;->a(Ljava/lang/String;Lyads/j60;)V

    :cond_5
    return v9

    :cond_6
    move-wide/from16 v16, v12

    :cond_7
    iget-wide v12, v1, Lyads/cw;->o:J

    cmp-long v4, v12, v5

    if-gtz v4, :cond_9

    cmp-long v4, v12, v16

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    return v9

    :cond_9
    :goto_1
    invoke-virtual {v1}, Lyads/cw;->g()V

    invoke-virtual {v1, v3, v2}, Lyads/cw;->a(Lyads/bd0;Z)V

    invoke-virtual/range {p0 .. p3}, Lyads/cw;->c([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :goto_2
    invoke-virtual {v1}, Lyads/cw;->h()Z

    move-result v2

    if-nez v2, :cond_a

    instance-of v2, v0, Lyads/vv;

    if-eqz v2, :cond_b

    :cond_a
    iput-boolean v8, v1, Lyads/cw;->q:Z

    :cond_b
    throw v0
.end method

.method public final close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/cw;->j:Lyads/bd0;

    iput-object v0, p0, Lyads/cw;->i:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lyads/cw;->n:J

    :try_start_0
    invoke-virtual {p0}, Lyads/cw;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lyads/cw;->h()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lyads/vv;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lyads/cw;->q:Z

    :cond_1
    throw v0
.end method

.method public final d()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lyads/cw;->i:Landroid/net/Uri;

    return-object p0
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lyads/cw;->l:Lyads/wc0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lyads/wc0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lyads/cw;->k:Lyads/bd0;

    iput-object v1, p0, Lyads/cw;->l:Lyads/wc0;

    iget-object v0, p0, Lyads/cw;->p:Lyads/qk5;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lyads/cw;->a:Lyads/yv;

    check-cast v2, Lyads/ok5;

    invoke-virtual {v2, v0}, Lyads/ok5;->b(Lyads/qk5;)V

    iput-object v1, p0, Lyads/cw;->p:Lyads/qk5;

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lyads/cw;->k:Lyads/bd0;

    iput-object v1, p0, Lyads/cw;->l:Lyads/wc0;

    iget-object v2, p0, Lyads/cw;->p:Lyads/qk5;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lyads/cw;->a:Lyads/yv;

    check-cast v3, Lyads/ok5;

    invoke-virtual {v3, v2}, Lyads/ok5;->b(Lyads/qk5;)V

    iput-object v1, p0, Lyads/cw;->p:Lyads/qk5;

    :cond_2
    throw v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lyads/cw;->l:Lyads/wc0;

    iget-object p0, p0, Lyads/cw;->b:Lyads/ex2;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

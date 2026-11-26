.class public final Lyads/r15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/nu3;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lyads/rq5;

.field public final c:Lyads/ov;

.field public final d:Lyads/v15;

.field public final e:Lyads/m50;

.field public final f:Lyads/qx4;

.field public volatile g:Z

.field public h:Z

.field public i:J

.field public j:Lyads/bd0;

.field public k:Lyads/lc5;

.field public l:Z

.field public final synthetic m:Lyads/v15;


# direct methods
.method public constructor <init>(Lyads/v15;Landroid/net/Uri;Lyads/wc0;Lyads/ov;Lyads/v15;Lyads/m50;)V
    .locals 14

    move-object/from16 v1, p2

    iput-object p1, p0, Lyads/r15;->m:Lyads/v15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lyads/r15;->a:Landroid/net/Uri;

    new-instance v0, Lyads/rq5;

    move-object/from16 v2, p3

    invoke-direct {v0, v2}, Lyads/rq5;-><init>(Lyads/wc0;)V

    iput-object v0, p0, Lyads/r15;->b:Lyads/rq5;

    move-object/from16 v0, p4

    iput-object v0, p0, Lyads/r15;->c:Lyads/ov;

    move-object/from16 v0, p5

    iput-object v0, p0, Lyads/r15;->d:Lyads/v15;

    move-object/from16 v0, p6

    iput-object v0, p0, Lyads/r15;->e:Lyads/m50;

    new-instance v0, Lyads/qx4;

    invoke-direct {v0}, Lyads/qx4;-><init>()V

    iput-object v0, p0, Lyads/r15;->f:Lyads/qx4;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/r15;->h:Z

    sget-object v0, Lyads/cu3;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    iget-object v11, p1, Lyads/v15;->j:Ljava/lang/String;

    sget-object v6, Lyads/v15;->N:Ljava/util/Map;

    const-string p1, "The uri must be set."

    invoke-static {v1, p1}, Lyads/zj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyads/bd0;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, -0x1

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Lyads/bd0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    iput-object v0, p0, Lyads/r15;->j:Lyads/bd0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 21

    move-object/from16 v1, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-nez v2, :cond_e

    iget-boolean v3, v1, Lyads/r15;->g:Z

    if-nez v3, :cond_e

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    :try_start_0
    iget-object v6, v1, Lyads/r15;->f:Lyads/qx4;

    iget-wide v11, v6, Lyads/qx4;->a:J

    iget-object v8, v1, Lyads/r15;->a:Landroid/net/Uri;

    iget-object v6, v1, Lyads/r15;->m:Lyads/v15;

    iget-object v6, v6, Lyads/v15;->j:Ljava/lang/String;

    sget-object v13, Lyads/v15;->N:Ljava/util/Map;

    const-string v7, "The uri must be set."

    invoke-static {v8, v7}, Lyads/zj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lyads/bd0;

    const/16 v20, 0x0

    move-wide v14, v11

    const/4 v12, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const-wide/16 v16, -0x1

    const/16 v19, 0x6

    move-object/from16 v18, v6

    invoke-direct/range {v7 .. v20}, Lyads/bd0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    iput-object v7, v1, Lyads/r15;->j:Lyads/bd0;

    iget-object v6, v1, Lyads/r15;->b:Lyads/rq5;

    invoke-virtual {v6, v7}, Lyads/rq5;->a(Lyads/bd0;)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    add-long/2addr v6, v14

    iget-object v8, v1, Lyads/r15;->m:Lyads/v15;

    invoke-virtual {v8}, Lyads/v15;->h()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :goto_1
    iget-object v8, v1, Lyads/r15;->m:Lyads/v15;

    iget-object v9, v1, Lyads/r15;->b:Lyads/rq5;

    iget-object v9, v9, Lyads/rq5;->a:Lyads/wc0;

    invoke-interface {v9}, Lyads/wc0;->b()Ljava/util/Map;

    move-result-object v9

    invoke-static {v9}, Lyads/hb3;->a(Ljava/util/Map;)Lyads/hb3;

    move-result-object v9

    iput-object v9, v8, Lyads/v15;->s:Lyads/hb3;

    iget-object v8, v1, Lyads/r15;->b:Lyads/rq5;

    iget-object v9, v1, Lyads/r15;->m:Lyads/v15;

    iget-object v9, v9, Lyads/v15;->s:Lyads/hb3;

    if-eqz v9, :cond_1

    iget v9, v9, Lyads/hb3;->g:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    new-instance v10, Lyads/eb3;

    invoke-direct {v10, v8, v9, v1}, Lyads/eb3;-><init>(Lyads/wc0;ILyads/r15;)V

    iget-object v8, v1, Lyads/r15;->m:Lyads/v15;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lyads/t15;

    invoke-direct {v9, v0, v3}, Lyads/t15;-><init>(IZ)V

    invoke-virtual {v8, v9}, Lyads/v15;->a(Lyads/t15;)Lyads/lc5;

    move-result-object v8

    iput-object v8, v1, Lyads/r15;->k:Lyads/lc5;

    sget-object v9, Lyads/v15;->O:Lyads/vz2;

    invoke-virtual {v8, v9}, Lyads/lc5;->a(Lyads/vz2;)V

    move-object v8, v10

    :cond_1
    move-wide v11, v14

    move-wide v13, v6

    iget-object v7, v1, Lyads/r15;->c:Lyads/ov;

    iget-object v9, v1, Lyads/r15;->a:Landroid/net/Uri;

    iget-object v6, v1, Lyads/r15;->b:Lyads/rq5;

    iget-object v6, v6, Lyads/rq5;->a:Lyads/wc0;

    invoke-interface {v6}, Lyads/wc0;->b()Ljava/util/Map;

    move-result-object v10

    iget-object v15, v1, Lyads/r15;->d:Lyads/v15;

    invoke-virtual/range {v7 .. v15}, Lyads/ov;->a(Lyads/wc0;Landroid/net/Uri;Ljava/util/Map;JJLyads/v15;)V

    move-wide v14, v11

    iget-object v6, v1, Lyads/r15;->m:Lyads/v15;

    iget-object v6, v6, Lyads/v15;->s:Lyads/hb3;

    if-eqz v6, :cond_2

    iget-object v6, v1, Lyads/r15;->c:Lyads/ov;

    iget-object v6, v6, Lyads/ov;->b:Lyads/ws2;

    instance-of v7, v6, Lyads/ua4;

    if-eqz v7, :cond_2

    check-cast v6, Lyads/ua4;

    iput-boolean v3, v6, Lyads/ua4;->p:Z

    :cond_2
    iget-boolean v6, v1, Lyads/r15;->h:Z

    if-eqz v6, :cond_3

    iget-object v6, v1, Lyads/r15;->c:Lyads/ov;

    iget-wide v7, v1, Lyads/r15;->i:J

    iget-object v6, v6, Lyads/ov;->b:Lyads/ws2;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6, v14, v15, v7, v8}, Lyads/ws2;->a(JJ)V

    iput-boolean v0, v1, Lyads/r15;->h:Z

    :cond_3
    move-wide v11, v14

    :cond_4
    :goto_2
    if-nez v2, :cond_6

    iget-boolean v6, v1, Lyads/r15;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_6

    :try_start_1
    iget-object v6, v1, Lyads/r15;->e:Lyads/m50;

    invoke-virtual {v6}, Lyads/m50;->a()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v6, v1, Lyads/r15;->c:Lyads/ov;

    iget-object v7, v1, Lyads/r15;->f:Lyads/qx4;

    iget-object v8, v6, Lyads/ov;->b:Lyads/ws2;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Lyads/ov;->c:Lyads/wk0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8, v6, v7}, Lyads/ws2;->a(Lyads/xs2;Lyads/qx4;)I

    move-result v2

    iget-object v6, v1, Lyads/r15;->c:Lyads/ov;

    iget-object v6, v6, Lyads/ov;->c:Lyads/wk0;

    if-eqz v6, :cond_5

    iget-wide v6, v6, Lyads/wk0;->d:J

    goto :goto_3

    :cond_5
    move-wide v6, v4

    :goto_3
    iget-object v8, v1, Lyads/r15;->m:Lyads/v15;

    iget-wide v8, v8, Lyads/v15;->k:J

    add-long/2addr v8, v11

    cmp-long v8, v6, v8

    if-lez v8, :cond_4

    iget-object v8, v1, Lyads/r15;->e:Lyads/m50;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-boolean v0, v8, Lyads/m50;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v8

    iget-object v8, v1, Lyads/r15;->m:Lyads/v15;

    iget-object v9, v8, Lyads/v15;->q:Landroid/os/Handler;

    iget-object v8, v8, Lyads/v15;->p:Ljava/lang/Runnable;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v11, v6

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v8

    throw v0

    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    if-ne v2, v3, :cond_7

    move v2, v0

    goto :goto_5

    :cond_7
    iget-object v3, v1, Lyads/r15;->c:Lyads/ov;

    iget-object v3, v3, Lyads/ov;->c:Lyads/wk0;

    if-eqz v3, :cond_8

    iget-wide v6, v3, Lyads/wk0;->d:J

    goto :goto_4

    :cond_8
    move-wide v6, v4

    :goto_4
    cmp-long v6, v6, v4

    if-eqz v6, :cond_a

    iget-object v6, v1, Lyads/r15;->f:Lyads/qx4;

    if-eqz v3, :cond_9

    iget-wide v4, v3, Lyads/wk0;->d:J

    :cond_9
    iput-wide v4, v6, Lyads/qx4;->a:J

    :cond_a
    :goto_5
    iget-object v3, v1, Lyads/r15;->b:Lyads/rq5;

    invoke-static {v3}, Lyads/zc0;->a(Lyads/wc0;)V

    goto/16 :goto_0

    :goto_6
    if-eq v2, v3, :cond_d

    iget-object v2, v1, Lyads/r15;->c:Lyads/ov;

    iget-object v2, v2, Lyads/ov;->c:Lyads/wk0;

    if-eqz v2, :cond_b

    iget-wide v6, v2, Lyads/wk0;->d:J

    goto :goto_7

    :cond_b
    move-wide v6, v4

    :goto_7
    cmp-long v3, v6, v4

    if-eqz v3, :cond_d

    iget-object v3, v1, Lyads/r15;->f:Lyads/qx4;

    if-eqz v2, :cond_c

    iget-wide v4, v2, Lyads/wk0;->d:J

    :cond_c
    iput-wide v4, v3, Lyads/qx4;->a:J

    :cond_d
    iget-object v1, v1, Lyads/r15;->b:Lyads/rq5;

    invoke-static {v1}, Lyads/zc0;->a(Lyads/wc0;)V

    throw v0

    :cond_e
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/r15;->g:Z

    return-void
.end method

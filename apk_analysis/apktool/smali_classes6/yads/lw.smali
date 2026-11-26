.class public final Lyads/lw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/cw;

.field public final b:Lyads/yv;

.field public final c:Lyads/bd0;

.field public final d:Ljava/lang/String;

.field public final e:[B

.field public final f:Lyads/kw;

.field public g:J

.field public h:J

.field public i:J

.field public volatile j:Z


# direct methods
.method public constructor <init>(Lyads/cw;Lyads/bd0;[BLyads/kw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/lw;->a:Lyads/cw;

    iget-object v0, p1, Lyads/cw;->a:Lyads/yv;

    iput-object v0, p0, Lyads/lw;->b:Lyads/yv;

    iput-object p2, p0, Lyads/lw;->c:Lyads/bd0;

    if-nez p3, :cond_0

    const/high16 p3, 0x20000

    new-array p3, p3, [B

    :cond_0
    iput-object p3, p0, Lyads/lw;->e:[B

    iput-object p4, p0, Lyads/lw;->f:Lyads/kw;

    iget-object p1, p1, Lyads/cw;->e:Lyads/iw;

    check-cast p1, Lxp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lyads/iw;->b(Lyads/bd0;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lyads/lw;->d:Ljava/lang/String;

    iget-wide p1, p2, Lyads/bd0;->f:J

    iput-wide p1, p0, Lyads/lw;->g:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 33

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lyads/lw;->j:Z

    if-nez v0, :cond_1a

    iget-object v0, v1, Lyads/lw;->b:Lyads/yv;

    iget-object v3, v1, Lyads/lw;->d:Ljava/lang/String;

    iget-object v2, v1, Lyads/lw;->c:Lyads/bd0;

    iget-wide v4, v2, Lyads/bd0;->f:J

    iget-wide v6, v2, Lyads/bd0;->g:J

    move-object v2, v0

    check-cast v2, Lyads/ok5;

    invoke-virtual/range {v2 .. v7}, Lyads/ok5;->a(Ljava/lang/String;JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lyads/lw;->i:J

    iget-object v0, v1, Lyads/lw;->c:Lyads/bd0;

    iget-wide v2, v0, Lyads/bd0;->g:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-wide v6, v0, Lyads/bd0;->f:J

    add-long/2addr v6, v2

    iput-wide v6, v1, Lyads/lw;->h:J

    goto :goto_1

    :cond_0
    iget-object v0, v1, Lyads/lw;->b:Lyads/yv;

    iget-object v2, v1, Lyads/lw;->d:Ljava/lang/String;

    check-cast v0, Lyads/ok5;

    invoke-virtual {v0, v2}, Lyads/ok5;->b(Ljava/lang/String;)Lyads/fk0;

    move-result-object v0

    invoke-static {v0}, Lyads/i60;->a(Lyads/i60;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    iput-wide v6, v1, Lyads/lw;->h:J

    :goto_1
    iget-object v8, v1, Lyads/lw;->f:Lyads/kw;

    if-eqz v8, :cond_3

    cmp-long v0, v6, v4

    if-nez v0, :cond_2

    move-wide v9, v4

    goto :goto_2

    :cond_2
    iget-object v0, v1, Lyads/lw;->c:Lyads/bd0;

    iget-wide v2, v0, Lyads/bd0;->f:J

    sub-long/2addr v6, v2

    move-wide v9, v6

    :goto_2
    iget-wide v11, v1, Lyads/lw;->i:J

    const-wide/16 v13, 0x0

    invoke-interface/range {v8 .. v14}, Lyads/kw;->a(JJJ)V

    :cond_3
    :goto_3
    iget-wide v2, v1, Lyads/lw;->h:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    iget-wide v6, v1, Lyads/lw;->g:J

    cmp-long v0, v6, v2

    if-gez v0, :cond_4

    goto :goto_4

    :cond_4
    return-void

    :cond_5
    :goto_4
    iget-boolean v0, v1, Lyads/lw;->j:Z

    if-nez v0, :cond_19

    iget-wide v2, v1, Lyads/lw;->h:J

    cmp-long v0, v2, v4

    const-wide v6, 0x7fffffffffffffffL

    if-nez v0, :cond_6

    move-wide v12, v6

    goto :goto_5

    :cond_6
    iget-wide v8, v1, Lyads/lw;->g:J

    sub-long/2addr v2, v8

    move-wide v12, v2

    :goto_5
    iget-object v0, v1, Lyads/lw;->b:Lyads/yv;

    iget-object v9, v1, Lyads/lw;->d:Ljava/lang/String;

    iget-wide v10, v1, Lyads/lw;->g:J

    move-object v8, v0

    check-cast v8, Lyads/ok5;

    invoke-virtual/range {v8 .. v13}, Lyads/ok5;->b(Ljava/lang/String;JJ)J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-lez v0, :cond_7

    iget-wide v6, v1, Lyads/lw;->g:J

    add-long/2addr v6, v2

    iput-wide v6, v1, Lyads/lw;->g:J

    goto :goto_3

    :cond_7
    neg-long v2, v2

    cmp-long v0, v2, v6

    if-nez v0, :cond_8

    move-wide v15, v4

    goto :goto_6

    :cond_8
    move-wide v15, v2

    :goto_6
    iget-wide v13, v1, Lyads/lw;->g:J

    add-long v2, v13, v15

    iget-wide v6, v1, Lyads/lw;->h:J

    cmp-long v0, v2, v6

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    cmp-long v0, v15, v4

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    move v0, v3

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v0, 0x1

    :goto_8
    cmp-long v6, v15, v4

    const-string v7, "The uri must be set."

    if-eqz v6, :cond_b

    iget-object v6, v1, Lyads/lw;->c:Lyads/bd0;

    iget-object v8, v6, Lyads/bd0;->a:Landroid/net/Uri;

    iget-wide v9, v6, Lyads/bd0;->b:J

    move-wide v11, v9

    iget v10, v6, Lyads/bd0;->c:I

    move-wide/from16 v17, v11

    iget-object v11, v6, Lyads/bd0;->d:[B

    iget-object v12, v6, Lyads/bd0;->e:Ljava/util/Map;

    iget-object v9, v6, Lyads/bd0;->h:Ljava/lang/String;

    iget v2, v6, Lyads/bd0;->i:I

    iget-object v6, v6, Lyads/bd0;->j:Ljava/lang/Object;

    invoke-static {v8, v7}, Lyads/zj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v6

    new-instance v6, Lyads/bd0;

    move-wide/from16 v31, v17

    move/from16 v18, v2

    move-object v2, v7

    move-object v7, v8

    move-object/from16 v17, v9

    move-wide/from16 v8, v31

    invoke-direct/range {v6 .. v19}, Lyads/bd0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    move-wide/from16 v24, v13

    :try_start_0
    iget-object v7, v1, Lyads/lw;->a:Lyads/cw;

    invoke-virtual {v7, v6}, Lyads/cw;->a(Lyads/bd0;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v20, 0x1

    goto :goto_a

    :catch_0
    iget-object v6, v1, Lyads/lw;->a:Lyads/cw;

    invoke-static {v6}, Lyads/zc0;->a(Lyads/wc0;)V

    goto :goto_9

    :cond_b
    move-object v2, v7

    move-wide/from16 v24, v13

    :goto_9
    move/from16 v20, v3

    move-wide v6, v4

    :goto_a
    if-nez v20, :cond_d

    iget-boolean v6, v1, Lyads/lw;->j:Z

    if-nez v6, :cond_c

    iget-object v6, v1, Lyads/lw;->c:Lyads/bd0;

    iget-object v7, v6, Lyads/bd0;->a:Landroid/net/Uri;

    iget-wide v8, v6, Lyads/bd0;->b:J

    iget v10, v6, Lyads/bd0;->c:I

    iget-object v11, v6, Lyads/bd0;->d:[B

    iget-object v12, v6, Lyads/bd0;->e:Ljava/util/Map;

    iget-object v13, v6, Lyads/bd0;->h:Ljava/lang/String;

    iget v14, v6, Lyads/bd0;->i:I

    iget-object v6, v6, Lyads/bd0;->j:Ljava/lang/Object;

    invoke-static {v7, v2}, Lyads/zj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v17, Lyads/bd0;

    const-wide/16 v26, -0x1

    move-object/from16 v30, v6

    move-object/from16 v18, v7

    move-wide/from16 v19, v8

    move/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move-object/from16 v28, v13

    move/from16 v29, v14

    invoke-direct/range {v17 .. v30}, Lyads/bd0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    move-object/from16 v2, v17

    :try_start_1
    iget-object v6, v1, Lyads/lw;->a:Lyads/cw;

    invoke-virtual {v6, v2}, Lyads/cw;->a(Lyads/bd0;)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    iget-object v1, v1, Lyads/lw;->a:Lyads/cw;

    invoke-static {v1}, Lyads/zc0;->a(Lyads/wc0;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_d
    :goto_b
    if-eqz v0, :cond_10

    cmp-long v2, v6, v4

    if-eqz v2, :cond_10

    add-long v13, v24, v6

    :try_start_2
    iget-wide v6, v1, Lyads/lw;->h:J

    cmp-long v2, v6, v13

    if-nez v2, :cond_e

    goto :goto_d

    :cond_e
    iput-wide v13, v1, Lyads/lw;->h:J

    iget-object v6, v1, Lyads/lw;->f:Lyads/kw;

    if-eqz v6, :cond_10

    cmp-long v2, v13, v4

    if-nez v2, :cond_f

    move-wide v7, v4

    goto :goto_c

    :cond_f
    iget-object v2, v1, Lyads/lw;->c:Lyads/bd0;

    iget-wide v7, v2, Lyads/bd0;->f:J

    sub-long/2addr v13, v7

    move-wide v7, v13

    :goto_c
    iget-wide v9, v1, Lyads/lw;->i:J

    const-wide/16 v11, 0x0

    invoke-interface/range {v6 .. v12}, Lyads/kw;->a(JJJ)V

    goto :goto_d

    :catch_2
    move-exception v0

    goto/16 :goto_12

    :cond_10
    :goto_d
    move v2, v3

    move v6, v2

    :goto_e
    const/4 v7, -0x1

    if-eq v2, v7, :cond_15

    iget-boolean v2, v1, Lyads/lw;->j:Z

    if-nez v2, :cond_14

    iget-object v2, v1, Lyads/lw;->a:Lyads/cw;

    iget-object v8, v1, Lyads/lw;->e:[B

    array-length v9, v8

    invoke-virtual {v2, v8, v3, v9}, Lyads/cw;->c([BII)I

    move-result v2

    if-eq v2, v7, :cond_13

    int-to-long v13, v2

    iget-wide v7, v1, Lyads/lw;->i:J

    add-long v11, v7, v13

    iput-wide v11, v1, Lyads/lw;->i:J

    iget-object v8, v1, Lyads/lw;->f:Lyads/kw;

    if-eqz v8, :cond_12

    iget-wide v9, v1, Lyads/lw;->h:J

    cmp-long v7, v9, v4

    if-nez v7, :cond_11

    move-wide v9, v4

    move-wide v15, v9

    goto :goto_f

    :cond_11
    iget-object v7, v1, Lyads/lw;->c:Lyads/bd0;

    move-wide v15, v4

    iget-wide v3, v7, Lyads/bd0;->f:J

    sub-long/2addr v9, v3

    :goto_f
    invoke-interface/range {v8 .. v14}, Lyads/kw;->a(JJJ)V

    goto :goto_10

    :cond_12
    move-wide v15, v4

    :goto_10
    add-int/2addr v6, v2

    move-wide v4, v15

    const/4 v3, 0x0

    goto :goto_e

    :cond_13
    move-wide v15, v4

    goto :goto_e

    :cond_14
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_15
    move-wide v15, v4

    if-eqz v0, :cond_18

    int-to-long v2, v6

    add-long v13, v24, v2

    iget-wide v2, v1, Lyads/lw;->h:J

    cmp-long v0, v2, v13

    if-nez v0, :cond_16

    goto :goto_13

    :cond_16
    iput-wide v13, v1, Lyads/lw;->h:J

    iget-object v0, v1, Lyads/lw;->f:Lyads/kw;

    if-eqz v0, :cond_18

    cmp-long v2, v13, v15

    if-nez v2, :cond_17

    move-wide/from16 v18, v15

    goto :goto_11

    :cond_17
    iget-object v2, v1, Lyads/lw;->c:Lyads/bd0;

    iget-wide v2, v2, Lyads/bd0;->f:J

    sub-long/2addr v13, v2

    move-wide/from16 v18, v13

    :goto_11
    iget-wide v2, v1, Lyads/lw;->i:J

    const-wide/16 v22, 0x0

    move-object/from16 v17, v0

    move-wide/from16 v20, v2

    invoke-interface/range {v17 .. v23}, Lyads/kw;->a(JJJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_13

    :goto_12
    iget-object v1, v1, Lyads/lw;->a:Lyads/cw;

    invoke-static {v1}, Lyads/zc0;->a(Lyads/wc0;)V

    throw v0

    :cond_18
    :goto_13
    iget-object v0, v1, Lyads/lw;->a:Lyads/cw;

    invoke-virtual {v0}, Lyads/cw;->close()V

    int-to-long v2, v6

    add-long v13, v24, v2

    iput-wide v13, v1, Lyads/lw;->g:J

    move-wide v4, v15

    goto/16 :goto_3

    :cond_19
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_1a
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

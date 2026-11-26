.class public final Lcom/monetization/ads/exo/source/dash/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ku3;


# instance fields
.field public final synthetic b:Lcom/monetization/ads/exo/source/dash/i;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/exo/source/dash/i;)V
    .locals 0

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/e;->b:Lcom/monetization/ads/exo/source/dash/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/nu3;JJLjava/io/IOException;I)Lyads/lu3;
    .locals 20

    move-object/from16 v0, p6

    .line 542
    move-object/from16 v1, p1

    check-cast v1, Lyads/jt4;

    move-object/from16 v2, p0

    .line 543
    iget-object v2, v2, Lcom/monetization/ads/exo/source/dash/e;->b:Lcom/monetization/ads/exo/source/dash/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    new-instance v3, Lyads/cu3;

    iget-wide v4, v1, Lyads/jt4;->a:J

    .line 545
    iget-object v4, v1, Lyads/jt4;->d:Lyads/rq5;

    .line 546
    iget-object v4, v4, Lyads/rq5;->c:Landroid/net/Uri;

    .line 547
    invoke-direct {v3}, Lyads/cu3;-><init>()V

    .line 548
    iget-object v4, v2, Lcom/monetization/ads/exo/source/dash/i;->n:Lyads/ll0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    instance-of v4, v0, Lyads/xs4;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-nez v4, :cond_2

    instance-of v4, v0, Ljava/io/FileNotFoundException;

    if-nez v4, :cond_2

    instance-of v4, v0, Lyads/ia3;

    if-nez v4, :cond_2

    instance-of v4, v0, Lyads/qu3;

    if-nez v4, :cond_2

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_1

    .line 550
    instance-of v8, v4, Lyads/xc0;

    if-eqz v8, :cond_0

    .line 551
    move-object v8, v4

    check-cast v8, Lyads/xc0;

    iget v8, v8, Lyads/xc0;->b:I

    const/16 v9, 0x7d8

    if-ne v8, v9, :cond_0

    goto :goto_1

    .line 552
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_0

    :cond_1
    add-int/lit8 v4, p7, -0x1

    mul-int/lit16 v4, v4, 0x3e8

    const/16 v8, 0x1388

    .line 553
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v8, v4

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v8, v5

    :goto_2
    cmp-long v4, v8, v5

    const/4 v10, 0x0

    if-nez v4, :cond_3

    .line 554
    sget-object v4, Lyads/ru3;->e:Lyads/lu3;

    goto :goto_3

    .line 555
    :cond_3
    new-instance v4, Lyads/lu3;

    .line 556
    invoke-direct {v4, v10, v8, v9}, Lyads/lu3;-><init>(IJ)V

    .line 557
    :goto_3
    iget v8, v4, Lyads/lu3;->a:I

    if-eqz v8, :cond_5

    if-ne v8, v7, :cond_4

    goto :goto_4

    :cond_4
    move v7, v10

    :cond_5
    :goto_4
    xor-int/lit8 v8, v7, 0x1

    .line 558
    iget-object v9, v2, Lcom/monetization/ads/exo/source/dash/i;->q:Lyads/k14;

    iget v11, v1, Lyads/jt4;->c:I

    .line 559
    new-instance v10, Lyads/r04;

    .line 560
    invoke-virtual {v9, v5, v6}, Lyads/k14;->a(J)J

    move-result-wide v16

    .line 561
    invoke-virtual {v9, v5, v6}, Lyads/k14;->a(J)J

    move-result-wide v18

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v19}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    .line 562
    invoke-virtual {v9, v3, v10, v0, v8}, Lyads/k14;->a(Lyads/cu3;Lyads/r04;Ljava/io/IOException;Z)V

    if-nez v7, :cond_6

    .line 563
    iget-object v0, v2, Lcom/monetization/ads/exo/source/dash/i;->n:Lyads/ll0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    return-object v4
.end method

.method public final a(Lyads/nu3;JJ)V
    .locals 18

    move-object/from16 v2, p1

    check-cast v2, Lyads/jt4;

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/monetization/ads/exo/source/dash/e;->b:Lcom/monetization/ads/exo/source/dash/i;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lyads/cu3;

    iget-wide v5, v2, Lyads/jt4;->a:J

    iget-object v5, v2, Lyads/jt4;->d:Lyads/rq5;

    iget-object v5, v5, Lyads/rq5;->c:Landroid/net/Uri;

    invoke-direct {v4}, Lyads/cu3;-><init>()V

    iget-object v5, v3, Lcom/monetization/ads/exo/source/dash/i;->n:Lyads/ll0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v3, Lcom/monetization/ads/exo/source/dash/i;->q:Lyads/k14;

    iget v7, v2, Lyads/jt4;->c:I

    new-instance v6, Lyads/r04;

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v5, v8, v9}, Lyads/k14;->a(J)J

    move-result-wide v12

    invoke-virtual {v5, v8, v9}, Lyads/k14;->a(J)J

    move-result-wide v14

    move-wide v9, v8

    const/4 v8, -0x1

    move-wide v10, v9

    const/4 v9, 0x0

    move-wide/from16 v16, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v0, v16

    invoke-direct/range {v6 .. v15}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    invoke-virtual {v5, v4, v6}, Lyads/k14;->b(Lyads/cu3;Lyads/r04;)V

    iget-object v4, v2, Lyads/jt4;->f:Ljava/lang/Object;

    check-cast v4, Lyads/kc0;

    iget-object v5, v3, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    iget-object v5, v5, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    iget-object v7, v4, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/au4;

    iget-wide v7, v7, Lyads/au4;->b:J

    move v9, v6

    :goto_1
    if-ge v9, v5, :cond_1

    iget-object v10, v3, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-object v10, v10, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/au4;

    iget-wide v10, v10, Lyads/au4;->b:J

    cmp-long v10, v10, v7

    if-gez v10, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v7, v4, Lyads/kc0;->d:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_5

    sub-int v7, v5, v9

    iget-object v10, v4, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-le v7, v10, :cond_2

    const-string v0, "DashMediaSource"

    const-string v1, "Loaded out of sync manifest"

    invoke-static {v0, v1}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-wide v10, v3, Lcom/monetization/ads/exo/source/dash/i;->N:J

    cmp-long v7, v10, v0

    if-eqz v7, :cond_4

    iget-wide v12, v4, Lyads/kc0;->h:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    cmp-long v7, v12, v10

    if-gtz v7, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loaded stale dynamic manifest: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v4, Lyads/kc0;->h:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v3, Lcom/monetization/ads/exo/source/dash/i;->N:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DashMediaSource"

    invoke-static {v1, v0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget v0, v3, Lcom/monetization/ads/exo/source/dash/i;->M:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v3, Lcom/monetization/ads/exo/source/dash/i;->M:I

    iget-object v1, v3, Lcom/monetization/ads/exo/source/dash/i;->n:Lyads/ll0;

    iget v2, v2, Lyads/jt4;->c:I

    invoke-virtual {v1, v2}, Lyads/ll0;->a(I)I

    move-result v1

    if-ge v0, v1, :cond_3

    iget v0, v3, Lcom/monetization/ads/exo/source/dash/i;->M:I

    sub-int/2addr v0, v8

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, v3, Lcom/monetization/ads/exo/source/dash/i;->D:Landroid/os/Handler;

    iget-object v3, v3, Lcom/monetization/ads/exo/source/dash/i;->v:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    new-instance v0, Lyads/nc0;

    invoke-direct {v0}, Lyads/nc0;-><init>()V

    iput-object v0, v3, Lcom/monetization/ads/exo/source/dash/i;->C:Lyads/nc0;

    return-void

    :cond_4
    iput v6, v3, Lcom/monetization/ads/exo/source/dash/i;->M:I

    :cond_5
    iput-object v4, v3, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-boolean v6, v3, Lcom/monetization/ads/exo/source/dash/i;->I:Z

    iget-boolean v4, v4, Lyads/kc0;->d:Z

    and-int/2addr v4, v6

    iput-boolean v4, v3, Lcom/monetization/ads/exo/source/dash/i;->I:Z

    sub-long v6, p2, p4

    iput-wide v6, v3, Lcom/monetization/ads/exo/source/dash/i;->J:J

    move-wide/from16 v6, p2

    iput-wide v6, v3, Lcom/monetization/ads/exo/source/dash/i;->K:J

    iget-object v4, v3, Lcom/monetization/ads/exo/source/dash/i;->t:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v6, v2, Lyads/jt4;->b:Lyads/bd0;

    iget-object v6, v6, Lyads/bd0;->a:Landroid/net/Uri;

    iget-object v7, v3, Lcom/monetization/ads/exo/source/dash/i;->F:Landroid/net/Uri;

    if-ne v6, v7, :cond_7

    iget-object v6, v3, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-object v6, v6, Lyads/kc0;->k:Landroid/net/Uri;

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, v2, Lyads/jt4;->d:Lyads/rq5;

    iget-object v6, v2, Lyads/rq5;->c:Landroid/net/Uri;

    :goto_3
    iput-object v6, v3, Lcom/monetization/ads/exo/source/dash/i;->F:Landroid/net/Uri;

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_7
    :goto_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_12

    iget-object v2, v3, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-boolean v4, v2, Lyads/kc0;->d:Z

    if-eqz v4, :cond_11

    iget-object v2, v2, Lyads/kc0;->i:Lyads/t56;

    if-eqz v2, :cond_10

    iget-object v4, v2, Lyads/t56;->a:Ljava/lang/String;

    const-string v5, "urn:mpeg:dash:utc:direct:2014"

    invoke-static {v4, v5}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "urn:mpeg:dash:utc:direct:2012"

    invoke-static {v4, v5}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto/16 :goto_8

    :cond_8
    const-string v5, "urn:mpeg:dash:utc:http-iso:2014"

    invoke-static {v4, v5}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x5

    if-nez v5, :cond_e

    const-string v5, "urn:mpeg:dash:utc:http-iso:2012"

    invoke-static {v4, v5}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_7

    :cond_9
    const-string v5, "urn:mpeg:dash:utc:http-xsdate:2014"

    invoke-static {v4, v5}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "urn:mpeg:dash:utc:http-xsdate:2012"

    invoke-static {v4, v5}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_6

    :cond_a
    const-string v0, "urn:mpeg:dash:utc:ntp:2014"

    invoke-static {v4, v0}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "urn:mpeg:dash:utc:ntp:2012"

    invoke-static {v4, v0}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported UTC timing scheme"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/monetization/ads/exo/source/dash/i;->a(Ljava/io/IOException;)V

    return-void

    :cond_c
    :goto_5
    invoke-virtual {v3}, Lcom/monetization/ads/exo/source/dash/i;->g()V

    return-void

    :cond_d
    :goto_6
    new-instance v4, Lcom/monetization/ads/exo/source/dash/h;

    invoke-direct {v4}, Lcom/monetization/ads/exo/source/dash/h;-><init>()V

    new-instance v5, Lyads/jt4;

    iget-object v7, v3, Lcom/monetization/ads/exo/source/dash/i;->z:Lyads/wc0;

    iget-object v2, v2, Lyads/t56;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v5, v7, v2, v6, v4}, Lyads/jt4;-><init>(Lyads/wc0;Landroid/net/Uri;ILyads/it4;)V

    new-instance v2, Lcom/monetization/ads/exo/source/dash/g;

    invoke-direct {v2, v3}, Lcom/monetization/ads/exo/source/dash/g;-><init>(Lcom/monetization/ads/exo/source/dash/i;)V

    iget-object v4, v3, Lcom/monetization/ads/exo/source/dash/i;->A:Lyads/ru3;

    invoke-virtual {v4, v5, v2, v8}, Lyads/ru3;->a(Lyads/nu3;Lyads/ku3;I)J

    iget-object v2, v3, Lcom/monetization/ads/exo/source/dash/i;->q:Lyads/k14;

    new-instance v3, Lyads/cu3;

    iget-object v4, v5, Lyads/jt4;->b:Lyads/bd0;

    invoke-direct {v3, v4}, Lyads/cu3;-><init>(Lyads/bd0;)V

    iget v7, v5, Lyads/jt4;->c:I

    new-instance v6, Lyads/r04;

    invoke-virtual {v2, v0, v1}, Lyads/k14;->a(J)J

    move-result-wide v12

    invoke-virtual {v2, v0, v1}, Lyads/k14;->a(J)J

    move-result-wide v14

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v15}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    invoke-virtual {v2, v3, v6}, Lyads/k14;->c(Lyads/cu3;Lyads/r04;)V

    return-void

    :cond_e
    :goto_7
    new-instance v4, Lcom/monetization/ads/exo/source/dash/d;

    invoke-direct {v4}, Lcom/monetization/ads/exo/source/dash/d;-><init>()V

    new-instance v5, Lyads/jt4;

    iget-object v7, v3, Lcom/monetization/ads/exo/source/dash/i;->z:Lyads/wc0;

    iget-object v2, v2, Lyads/t56;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v5, v7, v2, v6, v4}, Lyads/jt4;-><init>(Lyads/wc0;Landroid/net/Uri;ILyads/it4;)V

    new-instance v2, Lcom/monetization/ads/exo/source/dash/g;

    invoke-direct {v2, v3}, Lcom/monetization/ads/exo/source/dash/g;-><init>(Lcom/monetization/ads/exo/source/dash/i;)V

    iget-object v4, v3, Lcom/monetization/ads/exo/source/dash/i;->A:Lyads/ru3;

    invoke-virtual {v4, v5, v2, v8}, Lyads/ru3;->a(Lyads/nu3;Lyads/ku3;I)J

    iget-object v2, v3, Lcom/monetization/ads/exo/source/dash/i;->q:Lyads/k14;

    new-instance v3, Lyads/cu3;

    iget-object v4, v5, Lyads/jt4;->b:Lyads/bd0;

    invoke-direct {v3, v4}, Lyads/cu3;-><init>(Lyads/bd0;)V

    iget v7, v5, Lyads/jt4;->c:I

    new-instance v6, Lyads/r04;

    invoke-virtual {v2, v0, v1}, Lyads/k14;->a(J)J

    move-result-wide v12

    invoke-virtual {v2, v0, v1}, Lyads/k14;->a(J)J

    move-result-wide v14

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v15}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    invoke-virtual {v2, v3, v6}, Lyads/k14;->c(Lyads/cu3;Lyads/r04;)V

    return-void

    :cond_f
    :goto_8
    :try_start_1
    iget-object v0, v2, Lyads/t56;->b:Ljava/lang/String;

    invoke-static {v0}, Lyads/u56;->f(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v4, v3, Lcom/monetization/ads/exo/source/dash/i;->K:J

    sub-long/2addr v0, v4

    iput-wide v0, v3, Lcom/monetization/ads/exo/source/dash/i;->L:J

    invoke-virtual {v3, v8}, Lcom/monetization/ads/exo/source/dash/i;->a(Z)V
    :try_end_1
    .catch Lyads/xs4; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v3, v0}, Lcom/monetization/ads/exo/source/dash/i;->a(Ljava/io/IOException;)V

    return-void

    :cond_10
    invoke-virtual {v3}, Lcom/monetization/ads/exo/source/dash/i;->g()V

    return-void

    :cond_11
    invoke-virtual {v3, v8}, Lcom/monetization/ads/exo/source/dash/i;->a(Z)V

    return-void

    :cond_12
    iget v0, v3, Lcom/monetization/ads/exo/source/dash/i;->O:I

    add-int/2addr v0, v9

    iput v0, v3, Lcom/monetization/ads/exo/source/dash/i;->O:I

    invoke-virtual {v3, v8}, Lcom/monetization/ads/exo/source/dash/i;->a(Z)V

    return-void

    :goto_9
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final a(Lyads/nu3;JJZ)V
    .locals 11

    .line 530
    check-cast p1, Lyads/jt4;

    .line 531
    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/e;->b:Lcom/monetization/ads/exo/source/dash/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    new-instance v0, Lyads/cu3;

    iget-wide v1, p1, Lyads/jt4;->a:J

    .line 533
    iget-object v1, p1, Lyads/jt4;->d:Lyads/rq5;

    .line 534
    iget-object v1, v1, Lyads/rq5;->c:Landroid/net/Uri;

    .line 535
    invoke-direct {v0}, Lyads/cu3;-><init>()V

    .line 536
    iget-object v1, p0, Lcom/monetization/ads/exo/source/dash/i;->n:Lyads/ll0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/i;->q:Lyads/k14;

    iget v2, p1, Lyads/jt4;->c:I

    .line 538
    new-instance v1, Lyads/r04;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 539
    invoke-virtual {p0, v3, v4}, Lyads/k14;->a(J)J

    move-result-wide v7

    .line 540
    invoke-virtual {p0, v3, v4}, Lyads/k14;->a(J)J

    move-result-wide v9

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v10}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    .line 541
    invoke-virtual {p0, v0, v1}, Lyads/k14;->a(Lyads/cu3;Lyads/r04;)V

    return-void
.end method

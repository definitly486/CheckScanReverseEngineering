.class public final Lcom/monetization/ads/exo/source/dash/b;
.super Lyads/kx5;
.source "SourceFile"


# instance fields
.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:Lyads/kc0;

.field public final k:Lyads/p04;

.field public final l:Lyads/j04;


# direct methods
.method public constructor <init>(JJJIJJJLyads/kc0;Lyads/p04;Lyads/j04;)V
    .locals 4

    move-object/from16 v0, p14

    move-object/from16 v1, p16

    invoke-direct {p0}, Lyads/kx5;-><init>()V

    iget-boolean v2, v0, Lyads/kc0;->d:Z

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ne v2, v3, :cond_1

    iput-wide p1, p0, Lcom/monetization/ads/exo/source/dash/b;->c:J

    iput-wide p3, p0, Lcom/monetization/ads/exo/source/dash/b;->d:J

    iput-wide p5, p0, Lcom/monetization/ads/exo/source/dash/b;->e:J

    iput p7, p0, Lcom/monetization/ads/exo/source/dash/b;->f:I

    iput-wide p8, p0, Lcom/monetization/ads/exo/source/dash/b;->g:J

    iput-wide p10, p0, Lcom/monetization/ads/exo/source/dash/b;->h:J

    move-wide/from16 p1, p12

    iput-wide p1, p0, Lcom/monetization/ads/exo/source/dash/b;->i:J

    iput-object v0, p0, Lcom/monetization/ads/exo/source/dash/b;->j:Lyads/kc0;

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/b;->k:Lyads/p04;

    iput-object v1, p0, Lcom/monetization/ads/exo/source/dash/b;->l:Lyads/j04;

    return-void

    :cond_1
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/b;->j:Lyads/kc0;

    .line 287
    iget-object p0, p0, Lyads/kc0;->m:Ljava/util/List;

    .line 288
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 2

    .line 289
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 290
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 291
    iget v0, p0, Lcom/monetization/ads/exo/source/dash/b;->f:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/monetization/ads/exo/source/dash/b;->a()I

    move-result p0

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/monetization/ads/exo/source/dash/b;->a()I

    move-result v0

    invoke-static {p1, v0}, Lyads/zj;->a(II)V

    .line 294
    iget p0, p0, Lcom/monetization/ads/exo/source/dash/b;->f:I

    add-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final a(ILyads/hx5;Z)Lyads/hx5;
    .locals 12

    .line 268
    invoke-virtual {p0}, Lcom/monetization/ads/exo/source/dash/b;->a()I

    move-result v0

    invoke-static {p1, v0}, Lyads/zj;->a(II)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 269
    iget-object v1, p0, Lcom/monetization/ads/exo/source/dash/b;->j:Lyads/kc0;

    .line 270
    iget-object v1, v1, Lyads/kc0;->m:Ljava/util/List;

    .line 271
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/au4;

    .line 272
    iget-object v1, v1, Lyads/au4;->a:Ljava/lang/String;

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 273
    iget p3, p0, Lcom/monetization/ads/exo/source/dash/b;->f:I

    add-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v4, v0

    .line 274
    iget-object p3, p0, Lcom/monetization/ads/exo/source/dash/b;->j:Lyads/kc0;

    .line 275
    invoke-virtual {p3, p1}, Lyads/kc0;->a(I)J

    move-result-wide v0

    .line 276
    invoke-static {v0, v1}, Lyads/u56;->a(J)J

    move-result-wide v6

    .line 277
    iget-object p3, p0, Lcom/monetization/ads/exo/source/dash/b;->j:Lyads/kc0;

    .line 278
    iget-object p3, p3, Lyads/kc0;->m:Ljava/util/List;

    .line 279
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/au4;

    .line 280
    iget-wide v0, p1, Lyads/au4;->b:J

    iget-object p1, p0, Lcom/monetization/ads/exo/source/dash/b;->j:Lyads/kc0;

    const/4 p3, 0x0

    .line 281
    iget-object p1, p1, Lyads/kc0;->m:Ljava/util/List;

    .line 282
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/au4;

    .line 283
    iget-wide v8, p1, Lyads/au4;->b:J

    sub-long/2addr v0, v8

    invoke-static {v0, v1}, Lyads/u56;->a(J)J

    move-result-wide v0

    iget-wide p0, p0, Lcom/monetization/ads/exo/source/dash/b;->g:J

    sub-long v8, v0, p0

    .line 284
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    sget-object v10, Lyads/a6;->g:Lyads/a6;

    const/4 v11, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v11}, Lyads/hx5;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLyads/a6;Z)Lyads/hx5;

    move-result-object p0

    return-object p0
.end method

.method public final a(ILyads/jx5;J)Lyads/jx5;
    .locals 40

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p1

    invoke-static {v2, v1}, Lyads/zj;->a(II)V

    iget-wide v2, v0, Lcom/monetization/ads/exo/source/dash/b;->i:J

    iget-object v4, v0, Lcom/monetization/ads/exo/source/dash/b;->j:Lyads/kc0;

    iget-boolean v5, v4, Lyads/kc0;->d:Z

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_7

    iget-wide v9, v4, Lyads/kc0;->e:J

    cmp-long v5, v9, v7

    if-eqz v5, :cond_7

    iget-wide v9, v4, Lyads/kc0;->b:J

    cmp-long v5, v9, v7

    if-nez v5, :cond_7

    const-wide/16 v9, 0x0

    cmp-long v5, p3, v9

    if-lez v5, :cond_0

    add-long v2, v2, p3

    iget-wide v11, v0, Lcom/monetization/ads/exo/source/dash/b;->h:J

    cmp-long v5, v2, v11

    if-lez v5, :cond_0

    move/from16 v16, v1

    move-wide/from16 v17, v7

    move-wide/from16 v32, v17

    goto/16 :goto_4

    :cond_0
    iget-wide v11, v0, Lcom/monetization/ads/exo/source/dash/b;->g:J

    add-long/2addr v11, v2

    invoke-virtual {v4, v6}, Lyads/kc0;->a(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lyads/u56;->a(J)J

    move-result-wide v4

    move v13, v6

    :goto_0
    iget-object v14, v0, Lcom/monetization/ads/exo/source/dash/b;->j:Lyads/kc0;

    iget-object v14, v14, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v1

    if-ge v13, v14, :cond_1

    cmp-long v14, v11, v4

    if-ltz v14, :cond_1

    sub-long/2addr v11, v4

    add-int/lit8 v13, v13, 0x1

    iget-object v4, v0, Lcom/monetization/ads/exo/source/dash/b;->j:Lyads/kc0;

    invoke-virtual {v4, v13}, Lyads/kc0;->a(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lyads/u56;->a(J)J

    move-result-wide v4

    goto :goto_0

    :cond_1
    iget-object v14, v0, Lcom/monetization/ads/exo/source/dash/b;->j:Lyads/kc0;

    iget-object v14, v14, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lyads/au4;

    iget-object v14, v13, Lyads/au4;->c:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move/from16 v16, v1

    move v15, v6

    :goto_1
    const/4 v1, -0x1

    if-ge v15, v14, :cond_3

    move-wide/from16 v17, v7

    iget-object v7, v13, Lyads/au4;->c:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/eb;

    iget v7, v7, Lyads/eb;->b:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v7, v17

    goto :goto_1

    :cond_3
    move-wide/from16 v17, v7

    move v15, v1

    :goto_2
    if-ne v15, v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, v13, Lyads/au4;->c:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/eb;

    iget-object v1, v1, Lyads/eb;->c:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/o75;

    invoke-virtual {v1}, Lyads/o75;->d()Lyads/qc0;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1, v4, v5}, Lyads/qc0;->c(J)J

    move-result-wide v7

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v1, v11, v12, v4, v5}, Lyads/qc0;->a(JJ)J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lyads/qc0;->a(J)J

    move-result-wide v4

    add-long/2addr v4, v2

    sub-long v2, v4, v11

    :cond_6
    :goto_3
    move-wide/from16 v32, v2

    goto :goto_4

    :cond_7
    move/from16 v16, v1

    move-wide/from16 v17, v7

    goto :goto_3

    :goto_4
    sget-object v20, Lyads/jx5;->s:Ljava/lang/Object;

    iget-object v1, v0, Lcom/monetization/ads/exo/source/dash/b;->k:Lyads/p04;

    iget-object v2, v0, Lcom/monetization/ads/exo/source/dash/b;->j:Lyads/kc0;

    iget-wide v3, v0, Lcom/monetization/ads/exo/source/dash/b;->c:J

    iget-wide v7, v0, Lcom/monetization/ads/exo/source/dash/b;->d:J

    iget-wide v9, v0, Lcom/monetization/ads/exo/source/dash/b;->e:J

    iget-boolean v5, v2, Lyads/kc0;->d:Z

    if-eqz v5, :cond_8

    iget-wide v11, v2, Lyads/kc0;->e:J

    cmp-long v5, v11, v17

    if-eqz v5, :cond_8

    iget-wide v11, v2, Lyads/kc0;->b:J

    cmp-long v5, v11, v17

    if-nez v5, :cond_8

    move/from16 v30, v16

    goto :goto_5

    :cond_8
    move/from16 v30, v6

    :goto_5
    iget-object v5, v0, Lcom/monetization/ads/exo/source/dash/b;->l:Lyads/j04;

    iget-wide v11, v0, Lcom/monetization/ads/exo/source/dash/b;->h:J

    invoke-virtual {v0}, Lcom/monetization/ads/exo/source/dash/b;->a()I

    move-result v6

    add-int/lit8 v37, v6, -0x1

    iget-wide v13, v0, Lcom/monetization/ads/exo/source/dash/b;->g:J

    const/16 v36, 0x0

    const/16 v29, 0x1

    move-object/from16 v19, p2

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-wide/from16 v23, v3

    move-object/from16 v31, v5

    move-wide/from16 v25, v7

    move-wide/from16 v27, v9

    move-wide/from16 v34, v11

    move-wide/from16 v38, v13

    invoke-virtual/range {v19 .. v39}, Lyads/jx5;->a(Ljava/lang/Object;Lyads/p04;Ljava/lang/Object;JJJZZLyads/j04;JJIIJ)Lyads/jx5;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

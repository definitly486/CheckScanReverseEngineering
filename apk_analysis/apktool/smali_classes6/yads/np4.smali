.class public final Lyads/np4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ws2;


# instance fields
.field public a:Lyads/zs2;

.field public b:Lyads/fs5;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()[Lyads/ws2;
    .locals 3

    .line 389
    new-instance v0, Lyads/np4;

    invoke-direct {v0}, Lyads/np4;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lyads/ws2;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public final a(Lyads/xs2;Lyads/qx4;)I
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/np4;->a:Lyads/zs2;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    iget-object v1, v0, Lyads/np4;->b:Lyads/fs5;

    if-nez v1, :cond_1

    move-object/from16 v1, p1

    check-cast v1, Lyads/wk0;

    invoke-virtual {v0, v1}, Lyads/np4;->a(Lyads/wk0;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v2, v1, Lyads/wk0;->f:I

    goto :goto_0

    :cond_0
    const-string v0, "Failed to determine bitstream type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v2

    :cond_1
    :goto_0
    iget-boolean v1, v0, Lyads/np4;->c:Z

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-object v1, v0, Lyads/np4;->a:Lyads/zs2;

    invoke-interface {v1, v2, v3}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v1

    iget-object v4, v0, Lyads/np4;->a:Lyads/zs2;

    invoke-interface {v4}, Lyads/zs2;->a()V

    iget-object v4, v0, Lyads/np4;->b:Lyads/fs5;

    iget-object v5, v0, Lyads/np4;->a:Lyads/zs2;

    iput-object v5, v4, Lyads/fs5;->c:Lyads/zs2;

    iput-object v1, v4, Lyads/fs5;->b:Lyads/k06;

    invoke-virtual {v4, v3}, Lyads/fs5;->a(Z)V

    iput-boolean v3, v0, Lyads/np4;->c:Z

    :cond_2
    iget-object v7, v0, Lyads/np4;->b:Lyads/fs5;

    iget-object v0, v7, Lyads/fs5;->b:Lyads/k06;

    if-eqz v0, :cond_14

    sget v0, Lyads/u56;->a:I

    iget v0, v7, Lyads/fs5;->h:I

    const/4 v1, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, 0x3

    const/4 v8, 0x2

    if-eqz v0, :cond_d

    if-eq v0, v3, :cond_c

    if-eq v0, v8, :cond_4

    if-ne v0, v6, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-static {}, Lud;->g()V

    return v2

    :cond_4
    iget-object v0, v7, Lyads/fs5;->d:Lyads/qp4;

    move-object/from16 v8, p1

    check-cast v8, Lyads/wk0;

    invoke-interface {v0, v8}, Lyads/qp4;->a(Lyads/wk0;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-ltz v0, :cond_5

    move-object/from16 v0, p2

    iput-wide v9, v0, Lyads/qx4;->a:J

    return v3

    :cond_5
    cmp-long v0, v9, v4

    if-gez v0, :cond_6

    const-wide/16 v13, 0x2

    add-long/2addr v9, v13

    neg-long v9, v9

    invoke-virtual {v7, v9, v10}, Lyads/fs5;->a(J)V

    :cond_6
    iget-boolean v0, v7, Lyads/fs5;->l:Z

    if-nez v0, :cond_8

    iget-object v0, v7, Lyads/fs5;->d:Lyads/qp4;

    invoke-interface {v0}, Lyads/qp4;->a()Lyads/sh5;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v9, v7, Lyads/fs5;->c:Lyads/zs2;

    invoke-interface {v9, v0}, Lyads/zs2;->a(Lyads/sh5;)V

    iput-boolean v3, v7, Lyads/fs5;->l:Z

    goto :goto_1

    :cond_7
    invoke-static {}, Lud;->g()V

    return v2

    :cond_8
    :goto_1
    iget-wide v9, v7, Lyads/fs5;->k:J

    cmp-long v0, v9, v11

    if-gtz v0, :cond_a

    iget-object v0, v7, Lyads/fs5;->a:Lyads/op4;

    invoke-virtual {v0, v8}, Lyads/op4;->a(Lyads/wk0;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    iput v6, v7, Lyads/fs5;->h:I

    return v1

    :cond_a
    :goto_2
    iput-wide v11, v7, Lyads/fs5;->k:J

    iget-object v0, v7, Lyads/fs5;->a:Lyads/op4;

    iget-object v0, v0, Lyads/op4;->b:Lyads/os4;

    invoke-virtual {v7, v0}, Lyads/fs5;->a(Lyads/os4;)J

    move-result-wide v8

    cmp-long v1, v8, v11

    if-ltz v1, :cond_b

    iget-wide v10, v7, Lyads/fs5;->g:J

    add-long v12, v10, v8

    iget-wide v14, v7, Lyads/fs5;->e:J

    cmp-long v1, v12, v14

    if-ltz v1, :cond_b

    const-wide/32 v12, 0xf4240

    mul-long/2addr v10, v12

    iget v1, v7, Lyads/fs5;->i:I

    int-to-long v12, v1

    div-long v15, v10, v12

    iget-object v1, v7, Lyads/fs5;->b:Lyads/k06;

    iget v3, v0, Lyads/os4;->c:I

    invoke-interface {v1, v3, v0}, Lyads/k06;->a(ILyads/os4;)V

    iget-object v14, v7, Lyads/fs5;->b:Lyads/k06;

    iget v0, v0, Lyads/os4;->c:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x1

    move/from16 v18, v0

    invoke-interface/range {v14 .. v20}, Lyads/k06;->a(JIIILyads/j06;)V

    iput-wide v4, v7, Lyads/fs5;->e:J

    :cond_b
    iget-wide v0, v7, Lyads/fs5;->g:J

    add-long/2addr v0, v8

    iput-wide v0, v7, Lyads/fs5;->g:J

    return v2

    :cond_c
    iget-wide v0, v7, Lyads/fs5;->f:J

    long-to-int v0, v0

    move-object/from16 v1, p1

    check-cast v1, Lyads/wk0;

    invoke-virtual {v1, v0}, Lyads/wk0;->a(I)V

    iput v8, v7, Lyads/fs5;->h:I

    return v2

    :cond_d
    :goto_3
    iget-object v0, v7, Lyads/fs5;->a:Lyads/op4;

    move-object/from16 v9, p1

    check-cast v9, Lyads/wk0;

    invoke-virtual {v0, v9}, Lyads/op4;->a(Lyads/wk0;)Z

    move-result v0

    if-nez v0, :cond_e

    iput v6, v7, Lyads/fs5;->h:I

    :goto_4
    return v1

    :cond_e
    iget-wide v10, v9, Lyads/wk0;->d:J

    iget-wide v12, v7, Lyads/fs5;->f:J

    sub-long/2addr v10, v12

    iput-wide v10, v7, Lyads/fs5;->k:J

    iget-object v0, v7, Lyads/fs5;->a:Lyads/op4;

    iget-object v0, v0, Lyads/op4;->b:Lyads/os4;

    iget-object v10, v7, Lyads/fs5;->j:Lyads/ds5;

    invoke-virtual {v7, v0, v12, v13, v10}, Lyads/fs5;->a(Lyads/os4;JLyads/ds5;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-wide v9, v9, Lyads/wk0;->d:J

    iput-wide v9, v7, Lyads/fs5;->f:J

    goto :goto_3

    :cond_f
    iget-object v0, v7, Lyads/fs5;->j:Lyads/ds5;

    iget-object v0, v0, Lyads/ds5;->a:Lyads/vz2;

    iget v1, v0, Lyads/vz2;->A:I

    iput v1, v7, Lyads/fs5;->i:I

    iget-boolean v1, v7, Lyads/fs5;->m:Z

    if-nez v1, :cond_10

    iget-object v1, v7, Lyads/fs5;->b:Lyads/k06;

    invoke-interface {v1, v0}, Lyads/k06;->a(Lyads/vz2;)V

    iput-boolean v3, v7, Lyads/fs5;->m:Z

    :cond_10
    iget-object v0, v7, Lyads/fs5;->j:Lyads/ds5;

    iget-object v0, v0, Lyads/ds5;->b:Lyads/gy2;

    if-eqz v0, :cond_11

    iput-object v0, v7, Lyads/fs5;->d:Lyads/qp4;

    :goto_5
    move v1, v8

    goto :goto_7

    :cond_11
    iget-wide v10, v9, Lyads/wk0;->c:J

    cmp-long v0, v10, v4

    if-nez v0, :cond_12

    new-instance v0, Lyads/es5;

    invoke-direct {v0}, Lyads/es5;-><init>()V

    iput-object v0, v7, Lyads/fs5;->d:Lyads/qp4;

    goto :goto_5

    :cond_12
    iget-object v0, v7, Lyads/fs5;->a:Lyads/op4;

    iget-object v0, v0, Lyads/op4;->a:Lyads/pp4;

    iget v1, v0, Lyads/pp4;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_13

    move/from16 v16, v3

    goto :goto_6

    :cond_13
    move/from16 v16, v2

    :goto_6
    new-instance v6, Lyads/ul0;

    move v1, v8

    iget-wide v8, v7, Lyads/fs5;->f:J

    iget v3, v0, Lyads/pp4;->d:I

    iget v4, v0, Lyads/pp4;->e:I

    add-int/2addr v3, v4

    int-to-long v12, v3

    iget-wide v14, v0, Lyads/pp4;->b:J

    invoke-direct/range {v6 .. v16}, Lyads/ul0;-><init>(Lyads/fs5;JJJJZ)V

    iput-object v6, v7, Lyads/fs5;->d:Lyads/qp4;

    :goto_7
    iput v1, v7, Lyads/fs5;->h:I

    iget-object v0, v7, Lyads/fs5;->a:Lyads/op4;

    invoke-virtual {v0}, Lyads/op4;->a()V

    return v2

    :cond_14
    invoke-static {}, Lud;->g()V

    return v2

    :cond_15
    invoke-static {}, Lud;->g()V

    return v2
.end method

.method public final a(JJ)V
    .locals 5

    .line 372
    iget-object p0, p0, Lyads/np4;->b:Lyads/fs5;

    if-eqz p0, :cond_1

    .line 373
    iget-object v0, p0, Lyads/fs5;->a:Lyads/op4;

    .line 374
    iget-object v1, v0, Lyads/op4;->a:Lyads/pp4;

    const/4 v2, 0x0

    .line 375
    iput v2, v1, Lyads/pp4;->a:I

    const-wide/16 v3, 0x0

    .line 376
    iput-wide v3, v1, Lyads/pp4;->b:J

    .line 377
    iput v2, v1, Lyads/pp4;->c:I

    .line 378
    iput v2, v1, Lyads/pp4;->d:I

    .line 379
    iput v2, v1, Lyads/pp4;->e:I

    .line 380
    iget-object v1, v0, Lyads/op4;->b:Lyads/os4;

    invoke-virtual {v1, v2}, Lyads/os4;->c(I)V

    const/4 v1, -0x1

    .line 381
    iput v1, v0, Lyads/op4;->c:I

    .line 382
    iput-boolean v2, v0, Lyads/op4;->e:Z

    cmp-long p1, p1, v3

    if-nez p1, :cond_0

    .line 383
    iget-boolean p1, p0, Lyads/fs5;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lyads/fs5;->a(Z)V

    return-void

    .line 384
    :cond_0
    iget p1, p0, Lyads/fs5;->h:I

    if-eqz p1, :cond_1

    .line 385
    iget p1, p0, Lyads/fs5;->i:I

    int-to-long p1, p1

    mul-long/2addr p1, p3

    const-wide/32 p3, 0xf4240

    div-long/2addr p1, p3

    .line 386
    iput-wide p1, p0, Lyads/fs5;->e:J

    .line 387
    iget-object p3, p0, Lyads/fs5;->d:Lyads/qp4;

    sget p4, Lyads/u56;->a:I

    invoke-interface {p3, p1, p2}, Lyads/qp4;->a(J)V

    const/4 p1, 0x2

    .line 388
    iput p1, p0, Lyads/fs5;->h:I

    :cond_1
    return-void
.end method

.method public final a(Lyads/zs2;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lyads/np4;->a:Lyads/zs2;

    return-void
.end method

.method public final a(Lyads/wk0;)Z
    .locals 8

    .line 390
    new-instance v0, Lyads/pp4;

    invoke-direct {v0}, Lyads/pp4;-><init>()V

    const/4 v1, 0x1

    .line 391
    invoke-virtual {v0, p1, v1}, Lyads/pp4;->a(Lyads/wk0;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lyads/pp4;->a:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_2

    .line 392
    :cond_0
    iget v0, v0, Lyads/pp4;->e:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 393
    new-instance v2, Lyads/os4;

    invoke-direct {v2, v0}, Lyads/os4;-><init>(I)V

    .line 394
    iget-object v4, v2, Lyads/os4;->a:[B

    .line 395
    invoke-virtual {p1, v4, v3, v0, v3}, Lyads/wk0;->b([BIIZ)Z

    .line 396
    invoke-virtual {v2, v3}, Lyads/os4;->e(I)V

    .line 397
    iget p1, v2, Lyads/os4;->c:I

    .line 398
    iget v0, v2, Lyads/os4;->b:I

    sub-int/2addr p1, v0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    .line 399
    invoke-virtual {v2}, Lyads/os4;->k()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    .line 400
    invoke-virtual {v2}, Lyads/os4;->l()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    .line 401
    new-instance p1, Lyads/hy2;

    invoke-direct {p1}, Lyads/hy2;-><init>()V

    iput-object p1, p0, Lyads/np4;->b:Lyads/fs5;

    goto :goto_1

    .line 402
    :cond_1
    invoke-virtual {v2, v3}, Lyads/os4;->e(I)V

    .line 403
    :try_start_0
    invoke-static {v1, v2, v1}, Lyads/dj6;->a(ILyads/os4;Z)Z

    move-result p1
    :try_end_0
    .catch Lyads/xs4; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p1, v3

    :goto_0
    if-eqz p1, :cond_2

    .line 404
    new-instance p1, Lyads/zi6;

    invoke-direct {p1}, Lyads/zi6;-><init>()V

    iput-object p1, p0, Lyads/np4;->b:Lyads/fs5;

    goto :goto_1

    .line 405
    :cond_2
    invoke-virtual {v2, v3}, Lyads/os4;->e(I)V

    .line 406
    sget-object p1, Lyads/vq4;->o:[B

    invoke-static {v2, p1}, Lyads/vq4;->a(Lyads/os4;[B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 407
    new-instance p1, Lyads/vq4;

    invoke-direct {p1}, Lyads/vq4;-><init>()V

    iput-object p1, p0, Lyads/np4;->b:Lyads/fs5;

    :goto_1
    return v1

    :cond_3
    :goto_2
    return v3
.end method

.method public final a(Lyads/xs2;)Z
    .locals 0

    .line 370
    :try_start_0
    check-cast p1, Lyads/wk0;

    invoke-virtual {p0, p1}, Lyads/np4;->a(Lyads/wk0;)Z

    move-result p0
    :try_end_0
    .catch Lyads/xs4; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final release()V
    .locals 0

    return-void
.end method

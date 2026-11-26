.class public final Lyads/xc5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/id6;
.implements Lyads/wx;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Lyads/e25;

.field public final e:Lyads/h03;

.field public final f:Lyads/fx5;

.field public final g:Lyads/fx5;

.field public final h:[F

.field public final i:[F

.field public j:I

.field public k:Landroid/graphics/SurfaceTexture;

.field public volatile l:I

.field public m:I

.field public n:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lyads/xc5;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lyads/xc5;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lyads/e25;

    invoke-direct {v0}, Lyads/e25;-><init>()V

    iput-object v0, p0, Lyads/xc5;->d:Lyads/e25;

    new-instance v0, Lyads/h03;

    invoke-direct {v0}, Lyads/h03;-><init>()V

    iput-object v0, p0, Lyads/xc5;->e:Lyads/h03;

    new-instance v0, Lyads/fx5;

    invoke-direct {v0}, Lyads/fx5;-><init>()V

    iput-object v0, p0, Lyads/xc5;->f:Lyads/fx5;

    new-instance v0, Lyads/fx5;

    invoke-direct {v0}, Lyads/fx5;-><init>()V

    iput-object v0, p0, Lyads/xc5;->g:Lyads/fx5;

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lyads/xc5;->h:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lyads/xc5;->i:[F

    const/4 v0, 0x0

    iput v0, p0, Lyads/xc5;->l:I

    const/4 v0, -0x1

    iput v0, p0, Lyads/xc5;->m:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 494
    iget-object v0, p0, Lyads/xc5;->f:Lyads/fx5;

    invoke-virtual {v0}, Lyads/fx5;->a()V

    .line 495
    iget-object v0, p0, Lyads/xc5;->e:Lyads/h03;

    .line 496
    iget-object v1, v0, Lyads/h03;->c:Lyads/fx5;

    .line 497
    invoke-virtual {v1}, Lyads/fx5;->a()V

    const/4 v1, 0x0

    .line 498
    iput-boolean v1, v0, Lyads/h03;->d:Z

    .line 499
    iget-object p0, p0, Lyads/xc5;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final a(JJLyads/vz2;Landroid/media/MediaFormat;)V
    .locals 33

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    iget-object v4, v0, Lyads/xc5;->f:Lyads/fx5;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v2}, Lyads/fx5;->a(Ljava/lang/Object;J)V

    iget-object v4, v3, Lyads/vz2;->w:[B

    iget v3, v3, Lyads/vz2;->x:I

    iget-object v5, v0, Lyads/xc5;->n:[B

    iget v6, v0, Lyads/xc5;->m:I

    iput-object v4, v0, Lyads/xc5;->n:[B

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget v3, v0, Lyads/xc5;->l:I

    :cond_0
    iput v3, v0, Lyads/xc5;->m:I

    if-ne v6, v3, :cond_1

    iget-object v3, v0, Lyads/xc5;->n:[B

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget-object v3, v0, Lyads/xc5;->n:[B

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_a

    iget v8, v0, Lyads/xc5;->m:I

    new-instance v9, Lyads/os4;

    invoke-direct {v9, v3}, Lyads/os4;-><init>([B)V

    :try_start_0
    iget v3, v9, Lyads/os4;->b:I

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v9, v3}, Lyads/os4;->e(I)V

    invoke-virtual {v9}, Lyads/os4;->a()I

    move-result v3

    invoke-virtual {v9, v7}, Lyads/os4;->e(I)V

    const v10, 0x70726f6a

    if-ne v3, v10, :cond_6

    iget v3, v9, Lyads/os4;->b:I

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v9, v3}, Lyads/os4;->e(I)V

    iget v3, v9, Lyads/os4;->b:I

    iget v10, v9, Lyads/os4;->c:I

    :goto_0
    if-ge v3, v10, :cond_5

    invoke-virtual {v9}, Lyads/os4;->a()I

    move-result v11

    add-int/2addr v11, v3

    if-le v11, v3, :cond_5

    if-le v11, v10, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Lyads/os4;->a()I

    move-result v3

    const v12, 0x79746d70

    if-eq v3, v12, :cond_4

    const v12, 0x6d736870

    if-ne v3, v12, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v9, v11}, Lyads/os4;->e(I)V

    move v3, v11

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v9, v11}, Lyads/os4;->d(I)V

    invoke-static {v9}, Lyads/c25;->a(Lyads/os4;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_3

    :catch_0
    :cond_5
    :goto_2
    move-object v3, v4

    goto :goto_3

    :cond_6
    invoke-static {v9}, Lyads/c25;->a(Lyads/os4;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v9, v6, :cond_9

    if-eq v9, v5, :cond_8

    goto :goto_4

    :cond_8
    new-instance v4, Lyads/b25;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/z15;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/z15;

    invoke-direct {v4, v9, v3, v8}, Lyads/b25;-><init>(Lyads/z15;Lyads/z15;I)V

    goto :goto_4

    :cond_9
    new-instance v4, Lyads/b25;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/z15;

    invoke-direct {v4, v3, v3, v8}, Lyads/b25;-><init>(Lyads/z15;Lyads/z15;I)V

    :cond_a
    :goto_4
    if-eqz v4, :cond_b

    invoke-static {v4}, Lyads/e25;->a(Lyads/b25;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto/16 :goto_a

    :cond_b
    iget v3, v0, Lyads/xc5;->m:I

    const-wide v8, 0x4066800000000000L    # 180.0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v4, v8

    const-wide v8, 0x4076800000000000L    # 360.0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x42100000    # 36.0f

    div-float v9, v4, v9

    const/high16 v10, 0x42900000    # 72.0f

    div-float v10, v8, v10

    const/16 v11, 0x3e70

    new-array v11, v11, [F

    const/16 v12, 0x29a0

    new-array v12, v12, [F

    move v13, v7

    move v14, v13

    move v15, v14

    :goto_5
    const/16 v7, 0x24

    if-ge v13, v7, :cond_12

    int-to-float v7, v13

    mul-float/2addr v7, v9

    const/high16 v16, 0x40000000    # 2.0f

    div-float v17, v4, v16

    sub-float v7, v7, v17

    add-int/lit8 v6, v13, 0x1

    int-to-float v5, v6

    mul-float/2addr v5, v9

    sub-float v5, v5, v17

    move/from16 v17, v4

    move/from16 p6, v5

    const/4 v4, 0x0

    :goto_6
    const/16 v5, 0x49

    if-ge v4, v5, :cond_11

    move/from16 v18, v6

    const/4 v5, 0x0

    const/4 v6, 0x2

    :goto_7
    if-ge v5, v6, :cond_10

    if-nez v5, :cond_c

    move v6, v7

    move/from16 v19, v6

    goto :goto_8

    :cond_c
    move/from16 v6, p6

    move/from16 v19, v7

    :goto_8
    int-to-float v7, v4

    mul-float/2addr v7, v10

    const v20, 0x40490fdb    # (float)Math.PI

    add-float v20, v7, v20

    div-float v21, v8, v16

    move/from16 v22, v7

    sub-float v7, v20, v21

    add-int/lit8 v20, v14, 0x1

    move/from16 v21, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    const-wide/high16 v25, 0x4049000000000000L    # 50.0

    mul-double v23, v23, v25

    move-wide/from16 v27, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    move-wide/from16 v31, v6

    mul-double v6, v29, v23

    double-to-float v6, v6

    neg-float v6, v6

    aput v6, v11, v14

    add-int/lit8 v6, v14, 0x2

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v7, v7, v25

    double-to-float v7, v7

    aput v7, v11, v20

    add-int/lit8 v7, v14, 0x3

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v23, v23, v25

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    move/from16 v20, v9

    mul-double v8, v25, v23

    double-to-float v8, v8

    aput v8, v11, v6

    add-int/lit8 v6, v15, 0x1

    div-float v8, v22, v21

    aput v8, v12, v15

    add-int/lit8 v8, v15, 0x2

    add-int v9, v13, v5

    int-to-float v9, v9

    mul-float v9, v9, v20

    div-float v9, v9, v17

    aput v9, v12, v6

    if-nez v4, :cond_d

    if-eqz v5, :cond_e

    :cond_d
    const/16 v6, 0x48

    if-ne v4, v6, :cond_f

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    :cond_e
    const/4 v6, 0x3

    invoke-static {v11, v14, v11, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x6

    const/4 v6, 0x2

    invoke-static {v12, v15, v12, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v15, v15, 0x4

    goto :goto_9

    :cond_f
    const/4 v6, 0x2

    move v14, v7

    move v15, v8

    :goto_9
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v19

    move/from16 v9, v20

    move/from16 v8, v21

    goto/16 :goto_7

    :cond_10
    move/from16 v19, v7

    move/from16 v21, v8

    move/from16 v20, v9

    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v18

    goto/16 :goto_6

    :cond_11
    move/from16 v18, v6

    move/from16 v4, v17

    move/from16 v13, v18

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_12
    new-instance v4, Lyads/a25;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v11, v12, v6}, Lyads/a25;-><init>(I[F[FI)V

    new-instance v5, Lyads/b25;

    new-instance v6, Lyads/z15;

    filled-new-array {v4}, [Lyads/a25;

    move-result-object v4

    invoke-direct {v6, v4}, Lyads/z15;-><init>([Lyads/a25;)V

    invoke-direct {v5, v6, v6, v3}, Lyads/b25;-><init>(Lyads/z15;Lyads/z15;I)V

    move-object v4, v5

    :goto_a
    iget-object v0, v0, Lyads/xc5;->g:Lyads/fx5;

    invoke-virtual {v0, v4, v1, v2}, Lyads/fx5;->a(Ljava/lang/Object;J)V

    return-void
.end method

.method public final a(J[F)V
    .locals 0

    .line 491
    iget-object p0, p0, Lyads/xc5;->e:Lyads/h03;

    .line 492
    iget-object p0, p0, Lyads/h03;->c:Lyads/fx5;

    .line 493
    invoke-virtual {p0, p3, p1, p2}, Lyads/fx5;->a(Ljava/lang/Object;J)V

    return-void
.end method

.method public final synthetic a(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 490
    iget-object p0, p0, Lyads/xc5;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final a([F)V
    .locals 18

    move-object/from16 v0, p0

    const/16 v1, 0x4000

    .line 444
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 445
    invoke-static {}, Lyads/k73;->a()V

    .line 446
    iget-object v1, v0, Lyads/xc5;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 447
    iget-object v1, v0, Lyads/xc5;->k:Landroid/graphics/SurfaceTexture;

    .line 448
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 450
    invoke-static {}, Lyads/k73;->a()V

    .line 451
    iget-object v1, v0, Lyads/xc5;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, v0, Lyads/xc5;->h:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 453
    :cond_0
    iget-object v1, v0, Lyads/xc5;->k:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v4

    .line 454
    iget-object v1, v0, Lyads/xc5;->f:Lyads/fx5;

    monitor-enter v1

    .line 455
    :try_start_0
    invoke-virtual {v1, v4, v5, v3}, Lyads/fx5;->a(JZ)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 456
    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_1

    .line 457
    iget-object v1, v0, Lyads/xc5;->e:Lyads/h03;

    iget-object v7, v0, Lyads/xc5;->h:[F

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9, v7}, Lyads/h03;->a(J[F)V

    .line 458
    :cond_1
    iget-object v1, v0, Lyads/xc5;->g:Lyads/fx5;

    invoke-virtual {v1, v4, v5}, Lyads/fx5;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/b25;

    if-eqz v1, :cond_4

    .line 459
    iget-object v4, v0, Lyads/xc5;->d:Lyads/e25;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    invoke-static {v1}, Lyads/e25;->a(Lyads/b25;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 461
    :cond_2
    iget v5, v1, Lyads/b25;->c:I

    iput v5, v4, Lyads/e25;->a:I

    .line 462
    new-instance v5, Lyads/d25;

    iget-object v6, v1, Lyads/b25;->a:Lyads/z15;

    .line 463
    iget-object v6, v6, Lyads/z15;->a:[Lyads/a25;

    .line 464
    aget-object v6, v6, v3

    .line 465
    invoke-direct {v5, v6}, Lyads/d25;-><init>(Lyads/a25;)V

    iput-object v5, v4, Lyads/e25;->b:Lyads/d25;

    .line 466
    iget-boolean v4, v1, Lyads/b25;->d:Z

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance v4, Lyads/d25;

    iget-object v1, v1, Lyads/b25;->b:Lyads/z15;

    .line 467
    iget-object v1, v1, Lyads/z15;->a:[Lyads/a25;

    .line 468
    aget-object v1, v1, v3

    .line 469
    invoke-direct {v4, v1}, Lyads/d25;-><init>(Lyads/a25;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 470
    monitor-exit v1

    throw v0

    .line 471
    :cond_4
    :goto_0
    iget-object v4, v0, Lyads/xc5;->i:[F

    iget-object v8, v0, Lyads/xc5;->h:[F

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 472
    iget-object v1, v0, Lyads/xc5;->d:Lyads/e25;

    iget v4, v0, Lyads/xc5;->j:I

    iget-object v0, v0, Lyads/xc5;->i:[F

    .line 473
    iget-object v5, v1, Lyads/e25;->b:Lyads/d25;

    if-nez v5, :cond_5

    return-void

    .line 474
    :cond_5
    iget v6, v1, Lyads/e25;->a:I

    if-ne v6, v2, :cond_6

    .line 475
    sget-object v6, Lyads/e25;->j:[F

    goto :goto_1

    :cond_6
    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 476
    sget-object v6, Lyads/e25;->k:[F

    goto :goto_1

    .line 477
    :cond_7
    sget-object v6, Lyads/e25;->i:[F

    .line 478
    :goto_1
    iget v7, v1, Lyads/e25;->e:I

    invoke-static {v7, v2, v3, v6, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 479
    iget v6, v1, Lyads/e25;->d:I

    invoke-static {v6, v2, v3, v0, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x84c0

    .line 480
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v0, 0x8d65

    .line 481
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 482
    iget v0, v1, Lyads/e25;->h:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 483
    invoke-static {}, Lyads/k73;->a()V

    .line 484
    iget v6, v1, Lyads/e25;->f:I

    iget-object v11, v5, Lyads/d25;->b:Ljava/nio/FloatBuffer;

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v7, 0x3

    const/16 v8, 0x1406

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 485
    invoke-static {}, Lyads/k73;->a()V

    .line 486
    iget v12, v1, Lyads/e25;->g:I

    iget-object v0, v5, Lyads/d25;->c:Ljava/nio/FloatBuffer;

    const/4 v15, 0x0

    const/16 v16, 0x8

    const/4 v13, 0x2

    const/16 v14, 0x1406

    move-object/from16 v17, v0

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 487
    invoke-static {}, Lyads/k73;->a()V

    .line 488
    iget v0, v5, Lyads/d25;->d:I

    iget v1, v5, Lyads/d25;->a:I

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 489
    invoke-static {}, Lyads/k73;->a()V

    return-void
.end method

.method public final b()Landroid/graphics/SurfaceTexture;
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static {}, Lyads/k73;->a()V

    iget-object v0, p0, Lyads/xc5;->d:Lyads/e25;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/j73;

    invoke-direct {v1}, Lyads/j73;-><init>()V

    iput-object v1, v0, Lyads/e25;->c:Lyads/j73;

    const-string v2, "uMvpMatrix"

    iget v1, v1, Lyads/j73;->a:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lyads/e25;->d:I

    iget-object v1, v0, Lyads/e25;->c:Lyads/j73;

    const-string v2, "uTexMatrix"

    iget v1, v1, Lyads/j73;->a:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lyads/e25;->e:I

    iget-object v1, v0, Lyads/e25;->c:Lyads/j73;

    const-string v2, "aPosition"

    invoke-virtual {v1, v2}, Lyads/j73;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lyads/e25;->f:I

    iget-object v1, v0, Lyads/e25;->c:Lyads/j73;

    const-string v2, "aTexCoords"

    invoke-virtual {v1, v2}, Lyads/j73;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lyads/e25;->g:I

    iget-object v1, v0, Lyads/e25;->c:Lyads/j73;

    const-string v2, "uTexture"

    iget v1, v1, Lyads/j73;->a:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lyads/e25;->h:I

    invoke-static {}, Lyads/k73;->a()V

    invoke-static {}, Lyads/k73;->b()I

    move-result v0

    iput v0, p0, Lyads/xc5;->j:I

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lyads/xc5;->j:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lyads/xc5;->k:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lnha;

    invoke-direct {v1, p0}, Lnha;-><init>(Lyads/xc5;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object p0, p0, Lyads/xc5;->k:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

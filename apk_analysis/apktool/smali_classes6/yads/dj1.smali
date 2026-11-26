.class public final Lyads/dj1;
.super Lyads/oh2;
.source "SourceFile"


# instance fields
.field public final b:Lyads/es4;


# direct methods
.method public constructor <init>(Lyads/v41;Lyads/es4;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/oh2;-><init>(Lyads/v41;)V

    iput-object p2, p0, Lyads/dj1;->b:Lyads/es4;

    return-void
.end method

.method public static final a(Lyads/dj1;Lyads/ds1;Lyads/fs2;Lyads/bj1;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lyads/dj1;->a(Lyads/ds1;Lyads/fs2;Lyads/bj1;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Lyads/gy1;Landroid/util/DisplayMetrics;Lyads/fs2;Lyads/as2;F)Lyads/ag3;
    .locals 5

    .line 360
    iget-object v0, p0, Lyads/gy1;->e:Lyads/l42;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lyads/l42;->c:Lyads/as2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/g12;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lyads/g12;->e:Lyads/g12;

    .line 361
    :cond_1
    iget-object v1, p0, Lyads/gy1;->e:Lyads/l42;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v1, Lyads/l42;->d:Lyads/as2;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 362
    invoke-static {v1, p1, v0}, Lyads/pq;->b(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lyads/g12;)F

    move-result v0

    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    .line 363
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 364
    :goto_0
    iget-object v1, p0, Lyads/gy1;->a:Lyads/as2;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p3, v1

    :goto_1
    invoke-virtual {p3, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 365
    iget-object v1, p0, Lyads/gy1;->d:Lyads/af1;

    invoke-static {v1, p1, p2}, Lyads/pq;->b(Lyads/af1;Landroid/util/DisplayMetrics;Lyads/fs2;)F

    move-result v1

    .line 366
    iget-object v3, p0, Lyads/gy1;->c:Lyads/af1;

    invoke-static {v3, p1, p2}, Lyads/pq;->b(Lyads/af1;Landroid/util/DisplayMetrics;Lyads/fs2;)F

    move-result v3

    .line 367
    iget-object v4, p0, Lyads/gy1;->b:Lyads/af1;

    invoke-static {v4, p1, p2}, Lyads/pq;->b(Lyads/af1;Landroid/util/DisplayMetrics;Lyads/fs2;)F

    move-result p1

    if-eqz v0, :cond_4

    .line 368
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 369
    :goto_2
    iget-object p0, p0, Lyads/gy1;->e:Lyads/l42;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lyads/l42;->a:Lyads/as2;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/Integer;

    .line 370
    :cond_5
    new-instance p0, Lyads/ag3;

    .line 371
    new-instance p2, Lyads/xf3;

    mul-float/2addr v1, p4

    mul-float/2addr v3, p4

    mul-float/2addr p1, p4

    invoke-direct {p2, v1, v3, p1}, Lyads/xf3;-><init>(FFF)V

    if-eqz v0, :cond_6

    .line 372
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    if-eqz v2, :cond_7

    .line 373
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p4

    goto :goto_4

    :cond_7
    const/4 p4, 0x0

    .line 374
    :goto_4
    invoke-direct {p0, p3, p2, p1, p4}, Lyads/ag3;-><init>(ILyads/xf3;FI)V

    return-object p0
.end method

.method public static a(Lyads/bg3;FLjava/lang/Integer;)Lyads/bg3;
    .locals 6

    .line 375
    instance-of v0, p0, Lyads/ag3;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 376
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    move-object p2, p0

    check-cast p2, Lyads/ag3;

    .line 377
    iget p2, p2, Lyads/ag3;->a:I

    .line 378
    :goto_0
    check-cast p0, Lyads/ag3;

    .line 379
    iget-object v0, p0, Lyads/ag3;->b:Lyads/xf3;

    .line 380
    iget v1, v0, Lyads/xf3;->a:F

    .line 381
    iget v2, v0, Lyads/xf3;->b:F

    .line 382
    iget v0, v0, Lyads/xf3;->c:F

    .line 383
    iget v3, p0, Lyads/ag3;->c:F

    .line 384
    iget p0, p0, Lyads/ag3;->d:I

    .line 385
    new-instance v4, Lyads/ag3;

    .line 386
    new-instance v5, Lyads/xf3;

    mul-float/2addr v1, p1

    mul-float/2addr v2, p1

    mul-float/2addr v0, p1

    invoke-direct {v5, v1, v2, v0}, Lyads/xf3;-><init>(FFF)V

    .line 387
    invoke-direct {v4, p2, v5, v3, p0}, Lyads/ag3;-><init>(ILyads/xf3;FI)V

    return-object v4

    .line 388
    :cond_1
    instance-of v0, p0, Lyads/zf3;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 389
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_2
    move-object p2, p0

    check-cast p2, Lyads/zf3;

    .line 390
    iget p2, p2, Lyads/zf3;->a:I

    .line 391
    :goto_1
    check-cast p0, Lyads/zf3;

    .line 392
    iget-object p0, p0, Lyads/zf3;->b:Lyads/wf3;

    .line 393
    iget p0, p0, Lyads/wf3;->a:F

    .line 394
    invoke-static {p2, p0, p1}, Lyads/cj1;->a(IFF)Lyads/zf3;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lyads/ds1;Lyads/fs2;Lyads/bj1;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v3, v1, Lyads/bj1;->d:Lyads/gy1;

    iget-object v4, v1, Lyads/bj1;->u:Lyads/gy1;

    iget-object v5, v1, Lyads/bj1;->t:Lyads/gy1;

    iget-object v6, v1, Lyads/bj1;->c:Lyads/as2;

    invoke-virtual {v6, v0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    double-to-float v6, v6

    iget-object v7, v1, Lyads/bj1;->y:Lyads/as2;

    invoke-virtual {v7, v0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    double-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v4, :cond_1

    iget-object v10, v1, Lyads/bj1;->s:Lyads/as2;

    invoke-static {v4, v2, v0, v10, v8}, Lyads/dj1;->a(Lyads/gy1;Landroid/util/DisplayMetrics;Lyads/fs2;Lyads/as2;F)Lyads/ag3;

    move-result-object v4

    :cond_0
    :goto_0
    move-object v13, v4

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    iget-object v4, v1, Lyads/bj1;->s:Lyads/as2;

    div-float v10, v8, v6

    invoke-static {v3, v2, v0, v4, v10}, Lyads/dj1;->a(Lyads/gy1;Landroid/util/DisplayMetrics;Lyads/fs2;Lyads/as2;F)Lyads/ag3;

    move-result-object v4

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    iget-object v4, v1, Lyads/bj1;->s:Lyads/as2;

    invoke-static {v5, v2, v0, v4, v7}, Lyads/dj1;->a(Lyads/gy1;Landroid/util/DisplayMetrics;Lyads/fs2;Lyads/as2;F)Lyads/ag3;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v9

    :goto_1
    if-nez v4, :cond_0

    iget-object v4, v1, Lyads/bj1;->E:Lyads/f02;

    iget-object v10, v1, Lyads/bj1;->s:Lyads/as2;

    instance-of v11, v4, Lyads/e02;

    if-eqz v11, :cond_4

    check-cast v4, Lyads/e02;

    iget-object v4, v4, Lyads/e02;->a:Lyads/gy1;

    invoke-static {v4, v2, v0, v10, v8}, Lyads/dj1;->a(Lyads/gy1;Landroid/util/DisplayMetrics;Lyads/fs2;Lyads/as2;F)Lyads/ag3;

    move-result-object v4

    goto :goto_0

    :cond_4
    instance-of v11, v4, Lyads/d02;

    if-eqz v11, :cond_5

    check-cast v4, Lyads/d02;

    iget-object v4, v4, Lyads/d02;->a:Lyads/q61;

    iget-object v4, v4, Lyads/q61;->b:Lyads/af1;

    invoke-static {v4, v2, v0}, Lyads/pq;->b(Lyads/af1;Landroid/util/DisplayMetrics;Lyads/fs2;)F

    move-result v4

    invoke-virtual {v10, v0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-static {v10, v4, v8}, Lyads/cj1;->a(IFF)Lyads/zf3;

    move-result-object v4

    goto :goto_0

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-void

    :goto_2
    iget-object v4, v1, Lyads/bj1;->b:Lyads/as2;

    if-eqz v3, :cond_6

    invoke-static {v3, v2, v0, v4, v8}, Lyads/dj1;->a(Lyads/gy1;Landroid/util/DisplayMetrics;Lyads/fs2;Lyads/as2;F)Lyads/ag3;

    move-result-object v3

    :goto_3
    move-object v12, v3

    goto :goto_4

    :cond_6
    invoke-virtual {v4, v0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v13, v6, v3}, Lyads/dj1;->a(Lyads/bg3;FLjava/lang/Integer;)Lyads/bg3;

    move-result-object v3

    goto :goto_3

    :goto_4
    if-eqz v5, :cond_7

    iget-object v3, v1, Lyads/bj1;->s:Lyads/as2;

    invoke-static {v5, v2, v0, v3, v8}, Lyads/dj1;->a(Lyads/gy1;Landroid/util/DisplayMetrics;Lyads/fs2;Lyads/as2;F)Lyads/ag3;

    move-result-object v3

    :goto_5
    move-object v14, v3

    goto :goto_6

    :cond_7
    invoke-static {v13, v7, v9}, Lyads/dj1;->a(Lyads/bg3;FLjava/lang/Integer;)Lyads/bg3;

    move-result-object v3

    goto :goto_5

    :goto_6
    new-instance v10, Lyads/cg3;

    iget-object v3, v1, Lyads/bj1;->h:Lyads/as2;

    invoke-virtual {v3, v0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/aj1;

    sget-object v4, Lyads/aj1;->f:Lyads/aj1;

    if-ne v3, v4, :cond_8

    sget-object v3, Lyads/sf3;->c:Lyads/sf3;

    :goto_7
    move-object v11, v3

    goto :goto_8

    :cond_8
    sget-object v4, Lyads/aj1;->g:Lyads/aj1;

    if-ne v3, v4, :cond_9

    sget-object v3, Lyads/sf3;->d:Lyads/sf3;

    goto :goto_7

    :cond_9
    sget-object v3, Lyads/sf3;->b:Lyads/sf3;

    goto :goto_7

    :goto_8
    iget-object v3, v1, Lyads/bj1;->v:Lyads/gj1;

    if-nez v3, :cond_a

    new-instance v3, Lyads/ej1;

    new-instance v4, Lyads/ub1;

    iget-object v1, v1, Lyads/bj1;->F:Lyads/af1;

    invoke-direct {v4, v1}, Lyads/ub1;-><init>(Lyads/af1;)V

    invoke-direct {v3, v4}, Lyads/ej1;-><init>(Lyads/ub1;)V

    :cond_a
    instance-of v1, v3, Lyads/ej1;

    if-eqz v1, :cond_b

    new-instance v1, Lyads/tf3;

    check-cast v3, Lyads/ej1;

    iget-object v3, v3, Lyads/ej1;->a:Lyads/ub1;

    iget-object v3, v3, Lyads/ub1;->a:Lyads/af1;

    invoke-static {v3, v2, v0}, Lyads/pq;->a(Lyads/af1;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v1, v0}, Lyads/tf3;-><init>(F)V

    :goto_9
    move-object v15, v1

    goto :goto_c

    :cond_b
    instance-of v1, v3, Lyads/fj1;

    if-eqz v1, :cond_f

    new-instance v1, Lyads/uf3;

    check-cast v3, Lyads/fj1;

    invoke-virtual {v3}, Lyads/fj1;->a()Lyads/f42;

    move-result-object v4

    iget-object v4, v4, Lyads/f42;->a:Lyads/af1;

    invoke-static {v4, v2, v0}, Lyads/pq;->a(Lyads/af1;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3}, Lyads/fj1;->a()Lyads/f42;

    move-result-object v3

    iget-object v3, v3, Lyads/f42;->b:Lyads/as2;

    invoke-virtual {v3, v0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const/16 v0, 0x1f

    shr-long v5, v3, v0

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_e

    const-wide/16 v15, -0x1

    cmp-long v0, v5, v15

    if-nez v0, :cond_c

    goto :goto_a

    :cond_c
    cmp-long v0, v3, v7

    if-lez v0, :cond_d

    const v0, 0x7fffffff

    goto :goto_b

    :cond_d
    const/high16 v0, -0x80000000

    goto :goto_b

    :cond_e
    :goto_a
    long-to-int v0, v3

    :goto_b
    invoke-direct {v1, v0, v2}, Lyads/uf3;-><init>(IF)V

    goto :goto_9

    :goto_c
    invoke-direct/range {v10 .. v15}, Lyads/cg3;-><init>(Lyads/sf3;Lyads/bg3;Lyads/bg3;Lyads/bg3;Lyads/vf3;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lyads/gs4;->setStyle(Lyads/cg3;)V

    return-void

    :cond_f
    invoke-static {}, Lme0;->e()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;)V
    .locals 0

    .line 313
    check-cast p1, Lyads/ds1;

    check-cast p3, Lyads/bj1;

    check-cast p4, Lyads/bj1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/dj1;->a(Lyads/ds1;Lyads/tt;Lyads/bj1;)V

    return-void
.end method

.method public final a(Lyads/ds1;Lyads/tt;Lyads/bj1;)V
    .locals 3

    .line 315
    iget-object p2, p2, Lyads/tt;->b:Lyads/fs2;

    .line 316
    invoke-static {p1, p2, p3}, Lyads/dj1;->a(Lyads/ds1;Lyads/fs2;Lyads/bj1;)V

    .line 317
    new-instance v0, Llt9;

    invoke-direct {v0, p0, p1, p2, p3}, Llt9;-><init>(Lyads/dj1;Lyads/ds1;Lyads/fs2;Lyads/bj1;)V

    .line 318
    iget-object p0, p3, Lyads/bj1;->h:Lyads/as2;

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 319
    iget-object v1, p1, Lyads/ds1;->f:Lyads/xh1;

    invoke-interface {v1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 320
    iget-object p0, p3, Lyads/bj1;->b:Lyads/as2;

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 321
    iget-object v1, p1, Lyads/ds1;->f:Lyads/xh1;

    invoke-interface {v1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 322
    iget-object p0, p3, Lyads/bj1;->c:Lyads/as2;

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 323
    iget-object v1, p1, Lyads/ds1;->f:Lyads/xh1;

    invoke-interface {v1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 324
    iget-object p0, p3, Lyads/bj1;->s:Lyads/as2;

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 325
    iget-object v1, p1, Lyads/ds1;->f:Lyads/xh1;

    invoke-interface {v1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 326
    iget-object p0, p3, Lyads/bj1;->y:Lyads/as2;

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 327
    iget-object v1, p1, Lyads/ds1;->f:Lyads/xh1;

    invoke-interface {v1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 328
    iget-object p0, p3, Lyads/bj1;->E:Lyads/f02;

    invoke-static {p1, p0, p2, v0}, Lyads/js2;->a(Lyads/hs2;Lyads/f02;Lyads/fs2;Lnl3;)V

    .line 329
    iget-object p0, p3, Lyads/bj1;->d:Lyads/gy1;

    invoke-static {p1, p0, p2, v0}, Lyads/js2;->a(Lyads/hs2;Lyads/gy1;Lyads/fs2;Lnl3;)V

    .line 330
    iget-object p0, p3, Lyads/bj1;->u:Lyads/gy1;

    invoke-static {p1, p0, p2, v0}, Lyads/js2;->a(Lyads/hs2;Lyads/gy1;Lyads/fs2;Lnl3;)V

    .line 331
    iget-object p0, p3, Lyads/bj1;->t:Lyads/gy1;

    invoke-static {p1, p0, p2, v0}, Lyads/js2;->a(Lyads/hs2;Lyads/gy1;Lyads/fs2;Lnl3;)V

    .line 332
    iget-object p0, p3, Lyads/bj1;->v:Lyads/gj1;

    if-nez p0, :cond_0

    new-instance p0, Lyads/ej1;

    new-instance v1, Lyads/ub1;

    iget-object v2, p3, Lyads/bj1;->F:Lyads/af1;

    invoke-direct {v1, v2}, Lyads/ub1;-><init>(Lyads/af1;)V

    invoke-direct {p0, v1}, Lyads/ej1;-><init>(Lyads/ub1;)V

    .line 333
    :cond_0
    instance-of v1, p0, Lyads/ej1;

    if-eqz v1, :cond_1

    .line 334
    check-cast p0, Lyads/ej1;

    .line 335
    iget-object v1, p0, Lyads/ej1;->a:Lyads/ub1;

    .line 336
    iget-object v1, v1, Lyads/ub1;->a:Lyads/af1;

    iget-object v1, v1, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    .line 337
    iget-object v2, p1, Lyads/ds1;->f:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 338
    iget-object p0, p0, Lyads/ej1;->a:Lyads/ub1;

    .line 339
    iget-object p0, p0, Lyads/ub1;->a:Lyads/af1;

    iget-object p0, p0, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 340
    iget-object v1, p1, Lyads/ds1;->f:Lyads/xh1;

    invoke-interface {v1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    goto :goto_0

    .line 341
    :cond_1
    instance-of v1, p0, Lyads/fj1;

    if-eqz v1, :cond_2

    .line 342
    check-cast p0, Lyads/fj1;

    .line 343
    iget-object v1, p0, Lyads/fj1;->a:Lyads/f42;

    .line 344
    iget-object v1, v1, Lyads/f42;->a:Lyads/af1;

    iget-object v1, v1, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    .line 345
    iget-object v2, p1, Lyads/ds1;->f:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 346
    iget-object v1, p0, Lyads/fj1;->a:Lyads/f42;

    .line 347
    iget-object v1, v1, Lyads/f42;->a:Lyads/af1;

    iget-object v1, v1, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    .line 348
    iget-object v2, p1, Lyads/ds1;->f:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 349
    iget-object p0, p0, Lyads/fj1;->a:Lyads/f42;

    .line 350
    iget-object p0, p0, Lyads/f42;->b:Lyads/as2;

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 351
    iget-object v1, p1, Lyads/ds1;->f:Lyads/xh1;

    invoke-interface {v1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 352
    :cond_2
    :goto_0
    iget-object p0, p3, Lyads/bj1;->R:Lyads/x02;

    .line 353
    invoke-virtual {p0}, Lyads/x02;->a()Ljava/lang/Object;

    move-result-object p0

    .line 354
    instance-of v1, p0, Lyads/af1;

    if-eqz v1, :cond_3

    .line 355
    check-cast p0, Lyads/af1;

    invoke-static {p1, p0, p2, v0}, Lyads/js2;->a(Lyads/hs2;Lyads/af1;Lyads/fs2;Lnl3;)V

    .line 356
    :cond_3
    iget-object p0, p3, Lyads/bj1;->q:Lyads/x02;

    .line 357
    invoke-virtual {p0}, Lyads/x02;->a()Ljava/lang/Object;

    move-result-object p0

    .line 358
    instance-of p3, p0, Lyads/af1;

    if-eqz p3, :cond_4

    .line 359
    check-cast p0, Lyads/af1;

    invoke-static {p1, p0, p2, v0}, Lyads/js2;->a(Lyads/hs2;Lyads/af1;Lyads/fs2;Lnl3;)V

    :cond_4
    return-void
.end method

.method public final b(Lyads/tt;Lyads/ds1;Lyads/aq0;)V
    .locals 11

    invoke-virtual {p1}, Lyads/tt;->a()Lyads/vq0;

    move-result-object v0

    invoke-virtual {v0}, Lyads/vq0;->x()Lyads/br0;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lyads/tt;->b()Lyads/fs2;

    move-result-object v1

    invoke-virtual {p3}, Lyads/br0;->a()Lyads/p41;

    move-result-object v2

    new-instance v3, Lr07;

    invoke-direct {v3}, Lr07;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0, v1}, Lyads/xd2;->a(Lyads/br0;Lyads/fs2;)Lyads/wd2;

    move-result-object v0

    new-instance v1, Lyads/mh5;

    invoke-direct {v1, v4, v3}, Lyads/mh5;-><init>(Ljava/util/ArrayList;Lr07;)V

    invoke-virtual {v0, v1}, Lyads/wd2;->a(Lnl3;)Lyads/wd2;

    move-result-object v0

    new-instance v1, Lyads/nh5;

    invoke-direct {v1, v4, v3}, Lyads/nh5;-><init>(Ljava/util/ArrayList;Lr07;)V

    invoke-virtual {v0, v1}, Lyads/wd2;->b(Lnl3;)Lyads/wd2;

    move-result-object v0

    invoke-virtual {v0}, Lyads/wd2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    add-int/lit8 v6, v1, 0x1

    if-ltz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/cn1;

    invoke-virtual {v1}, Lyads/cn1;->a()Lyads/br0;

    move-result-object v1

    invoke-virtual {v1}, Lyads/br0;->a()Lyads/p41;

    move-result-object v1

    if-ne v1, v2, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/lh5;

    invoke-virtual {v9}, Lyads/lh5;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/p41;

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Lyads/lh5;->b()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9}, Lyads/lh5;->a()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    new-instance v8, Lyads/lh5;

    invoke-direct {v8, v7}, Lyads/lh5;-><init>(Lyads/ur1;)V

    iput-object v8, v3, Lr07;->b:Ljava/lang/Object;

    :cond_2
    instance-of v7, v1, Lyads/ur1;

    if-eqz v7, :cond_3

    move-object v7, v1

    check-cast v7, Lyads/ur1;

    invoke-virtual {p3}, Lyads/aq0;->b()Lyads/bj1;

    move-result-object v8

    iget-object v8, v8, Lyads/bj1;->A:Ljava/lang/String;

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lyads/ur1;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lyads/aq0;->b()Lyads/bj1;

    move-result-object v9

    iget-object v9, v9, Lyads/bj1;->A:Ljava/lang/String;

    invoke-static {v8, v9}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v6

    goto :goto_0

    :cond_4
    :goto_3
    iget-object v8, v3, Lr07;->b:Ljava/lang/Object;

    if-eqz v8, :cond_5

    check-cast v8, Lyads/lh5;

    invoke-virtual {v8}, Lyads/lh5;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    new-instance v1, Lyads/lh5;

    invoke-direct {v1, v7}, Lyads/lh5;-><init>(Lyads/ur1;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {}, Lu96;->o()V

    throw v7

    :cond_7
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lqn1;->e0(Ljava/util/Collection;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_b

    const-class v1, Lyads/ur1;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-virtual {v1}, Lzk1;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Distance clash when searching for the nearest "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". First found is taken"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-static {v0}, Lqn1;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lyads/p41;

    :cond_c
    :goto_5
    check-cast v7, Lyads/ur1;

    if-eqz v7, :cond_d

    iget-object v0, p0, Lyads/dj1;->b:Lyads/es4;

    invoke-virtual {v0, p2, v7}, Lyads/es4;->a(Lyads/ds1;Lyads/ur1;)V

    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lyads/oh2;->a(Lyads/tt;Lyads/ds1;Lyads/aq0;)V

    return-void
.end method

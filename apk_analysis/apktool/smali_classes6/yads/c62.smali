.class public final Lyads/c62;
.super Lyads/oh2;
.source "SourceFile"


# static fields
.field public static final o:Lyads/x52;


# instance fields
.field public final b:Lyads/v41;

.field public final c:Lyads/qh2;

.field public final d:Lws6;

.field public final e:Lyads/qg6;

.field public final f:Lyads/pu5;

.field public final g:Lyads/bt0;

.field public final h:Lyads/oi1;

.field public final i:Lyads/bj2;

.field public final j:Lyads/rt1;

.field public final k:Landroid/content/Context;

.field public final l:Lyads/my1;

.field public final m:Lyads/zu5;

.field public n:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lyads/x52;

    sget-object v1, Lyads/x52;->u:Lyads/xr2;

    sget-object v4, Lyads/x52;->v:Lyads/xr2;

    sget-object v5, Lyads/x52;->w:Lyads/xr2;

    sget-object v6, Lyads/x52;->x:Lyads/xr2;

    sget-object v10, Lyads/x52;->y:Lyads/xr2;

    sget-object v11, Lyads/x52;->z:Lyads/xr2;

    sget-object v12, Lyads/x52;->A:Lyads/xr2;

    sget-object v16, Lyads/x52;->B:Lyads/xr2;

    sget-object v17, Lyads/x52;->C:Lyads/xr2;

    sget-object v18, Lyads/x52;->D:Lyads/xr2;

    sget-object v20, Lyads/x52;->E:Lyads/yc1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v20}, Lyads/x52;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/p91;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/yc1;)V

    sput-object v0, Lyads/c62;->o:Lyads/x52;

    return-void
.end method

.method public constructor <init>(Lyads/v41;Lyads/qh2;Lws6;Lyads/qg6;Lyads/pu5;Lyads/bt0;Lyads/oi1;Lyads/bj2;Lyads/rt1;Landroid/content/Context;Lyads/my1;Lyads/zu5;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/oh2;-><init>(Lyads/v41;)V

    iput-object p1, p0, Lyads/c62;->b:Lyads/v41;

    iput-object p2, p0, Lyads/c62;->c:Lyads/qh2;

    iput-object p3, p0, Lyads/c62;->d:Lws6;

    iput-object p4, p0, Lyads/c62;->e:Lyads/qg6;

    iput-object p5, p0, Lyads/c62;->f:Lyads/pu5;

    iput-object p6, p0, Lyads/c62;->g:Lyads/bt0;

    iput-object p7, p0, Lyads/c62;->h:Lyads/oi1;

    iput-object p8, p0, Lyads/c62;->i:Lyads/bj2;

    iput-object p9, p0, Lyads/c62;->j:Lyads/rt1;

    iput-object p10, p0, Lyads/c62;->k:Landroid/content/Context;

    iput-object p11, p0, Lyads/c62;->l:Lyads/my1;

    iput-object p12, p0, Lyads/c62;->m:Lyads/zu5;

    new-instance p1, Lyads/tu5;

    invoke-direct {p1, p10}, Lyads/tu5;-><init>(Landroid/content/Context;)V

    const-string p2, "DIV2.TAB_HEADER_VIEW"

    const/16 p3, 0xc

    invoke-interface {p4, p2, p1, p3}, Lyads/qg6;->a(Ljava/lang/String;Lyads/gg6;I)V

    new-instance p1, Lxp9;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lxp9;-><init>(Ljava/lang/Object;I)V

    const-string p0, "DIV2.TAB_ITEM_VIEW"

    const/4 p2, 0x2

    invoke-interface {p4, p0, p1, p2}, Lyads/qg6;->a(Ljava/lang/String;Lyads/gg6;I)V

    return-void
.end method

.method public static final a(Lyads/c62;Lyads/m62;J)Lj59;
    .locals 6

    .line 471
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lyads/c62;->n:Ljava/lang/Long;

    .line 472
    invoke-virtual {p1}, Lyads/yu5;->h()Lyads/a62;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lyads/a62;->c()Lyads/cs4;

    move-result-object p0

    if-eqz p0, :cond_3

    const/16 p1, 0x1f

    shr-long v0, p2, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    const-wide/16 v4, -0x1

    cmp-long p1, v0, v4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    cmp-long p1, p2, v2

    if-lez p1, :cond_1

    const p1, 0x7fffffff

    goto :goto_1

    :cond_1
    const/high16 p1, -0x80000000

    goto :goto_1

    :cond_2
    :goto_0
    long-to-int p1, p2

    .line 473
    :goto_1
    invoke-virtual {p0}, Lyads/cs4;->a()I

    move-result p2

    if-eq p2, p1, :cond_3

    .line 474
    iget-object p0, p0, Lyads/cs4;->a:Lyads/ld5;

    const/4 p2, 0x1

    .line 475
    invoke-virtual {p0, p1, p2}, Lyads/pb5;->setCurrentItem(IZ)V

    .line 476
    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/c62;Lyads/m62;Lyads/fs2;Lyads/u52;Lyads/tt;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 426
    iget-object p1, p1, Lyads/yu5;->a:Lyads/uu5;

    .line 427
    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/c62;->a(Lyads/uu5;Lyads/fs2;Lyads/u52;Lyads/tt;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/c62;Lyads/m62;Lyads/fs2;Lyads/x52;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 443
    iget-object p1, p1, Lyads/yu5;->a:Lyads/uu5;

    if-nez p3, :cond_0

    .line 444
    sget-object p3, Lyads/c62;->o:Lyads/x52;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lyads/c62;->a(Lyads/uu5;Lyads/fs2;Lyads/x52;)V

    .line 445
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/e62;I)Lj59;
    .locals 0

    .line 508
    invoke-virtual {p0, p1}, Lyads/e62;->a(I)V

    .line 509
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/m62;I)Lj59;
    .locals 0

    .line 446
    iget-object p0, p0, Lyads/yu5;->b:Landroid/view/View;

    .line 447
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/m62;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 451
    iget-object p0, p0, Lyads/yu5;->e:Lyads/a62;

    if-eqz p0, :cond_0

    .line 452
    invoke-virtual {p0}, Lyads/a62;->d()V

    .line 453
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/m62;Lyads/c62;Lyads/y52;Z)Lj59;
    .locals 1

    .line 454
    iget-object p0, p0, Lyads/yu5;->e:Lyads/a62;

    if-eqz p0, :cond_1

    .line 455
    iget-object p2, p2, Lyads/y52;->q:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .line 456
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_0

    .line 457
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Ly74;

    const/4 p3, 0x0

    .line 458
    invoke-direct {p1, p3, p2, v0}, Lw74;-><init>(III)V

    .line 459
    invoke-static {p1}, Lqn1;->x0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 460
    :goto_0
    iget-object p0, p0, Lyads/oq;->c:Lyads/ld5;

    invoke-virtual {p0, p1}, Lyads/ld5;->setDisabledScrollPages(Ljava/util/Set;)V

    .line 461
    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/m62;Lyads/y52;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 414
    iget-object p0, p0, Lyads/yu5;->a:Lyads/uu5;

    .line 415
    iget-object p1, p1, Lyads/y52;->E:Lyads/yc1;

    .line 416
    invoke-static {p0, p1, p2}, Lyads/tq;->b(Landroid/view/View;Lyads/yc1;Lyads/fs2;)V

    .line 417
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/m62;Lyads/y52;Lyads/fs2;Lyads/c62;Lyads/tt;Lyads/w41;Lyads/n32;Ljava/util/List;Z)Lj59;
    .locals 8

    .line 477
    invoke-virtual {p0}, Lyads/yu5;->h()Lyads/a62;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    iget-boolean v0, v0, Lyads/a62;->p:Z

    move/from16 v1, p8

    if-ne v0, v1, :cond_0

    .line 479
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    .line 480
    :cond_0
    invoke-virtual {p0}, Lyads/yu5;->h()Lyads/a62;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lyads/a62;->c()Lyads/cs4;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lyads/cs4;->a()I

    move-result p2

    :goto_0
    move-object v3, p0

    move-object v2, p1

    move v7, p2

    move-object v0, p3

    move-object v1, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    goto :goto_2

    .line 481
    :cond_1
    iget-object v0, p1, Lyads/y52;->y:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 p2, 0x1f

    shr-long v2, v0, p2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_4

    const-wide/16 v6, -0x1

    cmp-long p2, v2, v6

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    cmp-long p2, v0, v4

    if-lez p2, :cond_3

    const p2, 0x7fffffff

    goto :goto_0

    :cond_3
    const/high16 p2, -0x80000000

    goto :goto_0

    :cond_4
    :goto_1
    long-to-int p2, v0

    goto :goto_0

    .line 482
    :goto_2
    invoke-static/range {v0 .. v7}, Lyads/c62;->a(Lyads/c62;Lyads/tt;Lyads/y52;Lyads/m62;Lyads/w41;Lyads/n32;Ljava/util/List;I)V

    .line 483
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/m62;Z)Lj59;
    .locals 0

    .line 448
    iget-object p0, p0, Lyads/yu5;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 449
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 450
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/y52;Lyads/fs2;Lyads/uu5;Ljava/lang/Object;)Lj59;
    .locals 5

    .line 519
    iget-object p3, p0, Lyads/y52;->D:Lyads/x52;

    if-nez p3, :cond_0

    sget-object p3, Lyads/c62;->o:Lyads/x52;

    .line 520
    :cond_0
    iget-object v0, p3, Lyads/x52;->t:Lyads/yc1;

    .line 521
    iget-object p0, p0, Lyads/y52;->E:Lyads/yc1;

    .line 522
    iget-object v1, p3, Lyads/x52;->s:Lyads/as2;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 523
    :cond_1
    iget-object p3, p3, Lyads/x52;->j:Lyads/as2;

    invoke-virtual {p3, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr p3, v1

    float-to-long v1, p3

    .line 524
    :goto_0
    iget-object p3, v0, Lyads/yc1;->f:Lyads/as2;

    invoke-virtual {p3, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v1

    iget-object p3, v0, Lyads/yc1;->a:Lyads/as2;

    invoke-virtual {p3, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v3

    iget-object p3, p0, Lyads/yc1;->f:Lyads/as2;

    invoke-virtual {p3, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-object p0, p0, Lyads/yc1;->a:Lyads/as2;

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    add-long/2addr p0, v2

    .line 525
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 526
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 527
    invoke-static {p0, p3}, Lyads/uq;->b(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    .line 528
    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 529
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 467
    return-object p0
.end method

.method public static final a(Lyads/c62;)Lyads/lu5;
    .locals 2

    .line 463
    new-instance v0, Lyads/lu5;

    iget-object p0, p0, Lyads/c62;->k:Landroid/content/Context;

    const/4 v1, 0x0

    .line 464
    invoke-direct {v0, p0, v1}, Lyads/lu5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public static final a(Lyads/c62;Lyads/tt;)V
    .locals 0

    .line 465
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    iget-object p0, p1, Lyads/tt;->a:Lyads/vq0;

    return-void
.end method

.method public static final a(Lyads/c62;Lyads/tt;Lyads/y52;Lyads/m62;Lyads/w41;Lyads/n32;Ljava/util/List;I)V
    .locals 0

    .line 468
    invoke-virtual/range {p0 .. p5}, Lyads/c62;->a(Lyads/tt;Lyads/y52;Lyads/m62;Lyads/w41;Lyads/n32;)Lyads/a62;

    move-result-object p0

    .line 469
    new-instance p1, Lah1;

    const/4 p2, 0x2

    invoke-direct {p1, p6, p2}, Lah1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, p7}, Lyads/a62;->a(Lyads/lq;I)V

    .line 470
    invoke-virtual {p3, p0}, Lyads/yu5;->setDivTabsAdapter(Lyads/a62;)V

    return-void
.end method

.method public static a(Lyads/uu5;Lyads/fs2;Lyads/x52;)V
    .locals 8

    .line 530
    iget-object v0, p2, Lyads/x52;->d:Lyads/as2;

    invoke-virtual {v0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 531
    iget-object v1, p2, Lyads/x52;->a:Lyads/as2;

    invoke-virtual {v1, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 532
    iget-object v2, p2, Lyads/x52;->p:Lyads/as2;

    invoke-virtual {v2, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 533
    iget-object v3, p2, Lyads/x52;->m:Lyads/as2;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 534
    :goto_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lyads/uu5;->setTabColors(IIII)V

    .line 535
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 536
    iget-object v1, p2, Lyads/x52;->g:Lyads/as2;

    if-eqz v1, :cond_1

    .line 537
    invoke-virtual {v1, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 538
    invoke-static {v1, v0}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    goto :goto_1

    .line 539
    :cond_1
    iget-object v1, p2, Lyads/x52;->h:Lyads/p91;

    if-nez v1, :cond_2

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 540
    :goto_1
    iget-object v2, p2, Lyads/x52;->h:Lyads/p91;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lyads/p91;->c:Lyads/as2;

    if-eqz v2, :cond_3

    .line 541
    invoke-virtual {v2, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 542
    invoke-static {v2, v0}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v2

    int-to-float v2, v2

    goto :goto_2

    :cond_3
    move v2, v1

    .line 543
    :goto_2
    iget-object v3, p2, Lyads/x52;->h:Lyads/p91;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lyads/p91;->d:Lyads/as2;

    if-eqz v3, :cond_4

    .line 544
    invoke-virtual {v3, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 545
    invoke-static {v3, v0}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v3

    int-to-float v3, v3

    goto :goto_3

    :cond_4
    move v3, v1

    .line 546
    :goto_3
    iget-object v5, p2, Lyads/x52;->h:Lyads/p91;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lyads/p91;->a:Lyads/as2;

    if-eqz v5, :cond_5

    .line 547
    invoke-virtual {v5, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 548
    invoke-static {v5, v0}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v5

    int-to-float v5, v5

    goto :goto_4

    :cond_5
    move v5, v1

    .line 549
    :goto_4
    iget-object v6, p2, Lyads/x52;->h:Lyads/p91;

    if-eqz v6, :cond_6

    iget-object v6, v6, Lyads/p91;->b:Lyads/as2;

    if-eqz v6, :cond_6

    .line 550
    invoke-virtual {v6, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 551
    invoke-static {v1, v0}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    :cond_6
    const/16 v6, 0x8

    .line 552
    new-array v6, v6, [F

    aput v2, v6, v4

    const/4 v4, 0x1

    aput v2, v6, v4

    const/4 v2, 0x2

    aput v3, v6, v2

    const/4 v7, 0x3

    aput v3, v6, v7

    const/4 v3, 0x4

    aput v1, v6, v3

    const/4 v3, 0x5

    aput v1, v6, v3

    const/4 v1, 0x6

    aput v5, v6, v1

    const/4 v1, 0x7

    aput v5, v6, v1

    .line 553
    invoke-virtual {p0, v6}, Lyads/nr;->setTabIndicatorCornersRadii([F)V

    .line 554
    iget-object v1, p2, Lyads/x52;->q:Lyads/as2;

    invoke-virtual {v1, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 555
    invoke-static {v1, v0}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v0

    .line 556
    invoke-virtual {p0, v0}, Lyads/nr;->setTabItemSpacing(I)V

    .line 557
    iget-object v0, p2, Lyads/x52;->f:Lyads/as2;

    invoke-virtual {v0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/w52;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_8

    if-ne v0, v2, :cond_7

    .line 558
    sget-object v0, Lyads/er;->d:Lyads/er;

    goto :goto_5

    :cond_7
    invoke-static {}, Lme0;->e()V

    return-void

    .line 559
    :cond_8
    sget-object v0, Lyads/er;->c:Lyads/er;

    goto :goto_5

    .line 560
    :cond_9
    sget-object v0, Lyads/er;->b:Lyads/er;

    .line 561
    :goto_5
    invoke-virtual {p0, v0}, Lyads/nr;->setAnimationType(Lyads/er;)V

    .line 562
    iget-object v0, p2, Lyads/x52;->e:Lyads/as2;

    invoke-virtual {v0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lyads/nr;->setAnimationDuration(J)V

    .line 563
    invoke-virtual {p0, p2}, Lyads/uu5;->setTabTitleStyle(Lyads/x52;)V

    return-void
.end method

.method public static a(Lyads/uu5;Lyads/y52;Lyads/fs2;)V
    .locals 3

    .line 510
    new-instance v0, Laq9;

    invoke-direct {v0, p0, p1, p2}, Laq9;-><init>(Lyads/uu5;Lyads/y52;Lyads/fs2;)V

    const/4 v1, 0x0

    .line 511
    invoke-virtual {v0, v1}, Laq9;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    invoke-static {p0}, Lyads/s55;->a(Landroid/view/View;)Lyads/hs2;

    move-result-object p0

    .line 513
    iget-object v2, p1, Lyads/y52;->D:Lyads/x52;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lyads/x52;->s:Lyads/as2;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-interface {p0, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 514
    iget-object v2, p1, Lyads/y52;->D:Lyads/x52;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lyads/x52;->j:Lyads/as2;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {p0, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 515
    iget-object v2, p1, Lyads/y52;->D:Lyads/x52;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lyads/x52;->t:Lyads/yc1;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lyads/yc1;->f:Lyads/as2;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-interface {p0, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 516
    iget-object v2, p1, Lyads/y52;->D:Lyads/x52;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lyads/x52;->t:Lyads/yc1;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lyads/yc1;->a:Lyads/as2;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    :cond_3
    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 517
    iget-object v1, p1, Lyads/y52;->E:Lyads/yc1;

    iget-object v1, v1, Lyads/yc1;->f:Lyads/as2;

    invoke-virtual {v1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 518
    iget-object p1, p1, Lyads/y52;->E:Lyads/yc1;

    iget-object p1, p1, Lyads/yc1;->a:Lyads/as2;

    invoke-virtual {p1, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public static final b(Lyads/m62;Lyads/y52;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 14
    iget-object p0, p0, Lyads/yu5;->b:Landroid/view/View;

    .line 15
    iget-object p1, p1, Lyads/y52;->A:Lyads/yc1;

    .line 16
    invoke-static {p0, p1, p2}, Lyads/tq;->a(Landroid/view/View;Lyads/yc1;Lyads/fs2;)V

    .line 17
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Lyads/m62;Z)Lj59;
    .locals 0

    iget-object p0, p0, Lyads/yu5;->d:Lyads/ld5;

    if-eqz p1, :cond_0

    sget-object p1, Lyads/ms4;->a:Lyads/ms4;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lyads/ld5;->setOnInterceptTouchEventListener(Lyads/oq4;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 18
    return-object p0
.end method


# virtual methods
.method public final a(Lyads/tt;Lyads/y52;Lyads/m62;Lyads/w41;Lyads/n32;)Lyads/a62;
    .locals 17

    move-object/from16 v0, p0

    .line 484
    new-instance v10, Lyads/e62;

    iget-object v3, v0, Lyads/c62;->g:Lyads/bt0;

    iget-object v4, v0, Lyads/c62;->i:Lyads/bj2;

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lyads/e62;-><init>(Lyads/tt;Lyads/bt0;Lyads/bj2;Lyads/m62;Lyads/y52;)V

    move-object v2, v5

    .line 485
    iget-object v1, v6, Lyads/y52;->j:Lyads/as2;

    move-object/from16 v12, p1

    .line 486
    iget-object v3, v12, Lyads/tt;->b:Lyads/fs2;

    .line 487
    invoke-virtual {v1, v3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 488
    new-instance v1, Le2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :goto_0
    move-object v4, v1

    goto :goto_1

    .line 489
    :cond_0
    new-instance v1, Lf2;

    const/16 v3, 0x9

    invoke-direct {v1, v3}, Lf2;-><init>(I)V

    goto :goto_0

    .line 490
    :goto_1
    iget-object v1, v2, Lyads/yu5;->d:Lyads/ld5;

    .line 491
    invoke-virtual {v1}, Lyads/pb5;->getCurrentItem()I

    move-result v1

    .line 492
    iget-object v3, v2, Lyads/yu5;->d:Lyads/ld5;

    .line 493
    invoke-virtual {v3}, Lyads/pb5;->getCurrentItem()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 494
    new-instance v1, Lbq9;

    invoke-direct {v1, v10, v3}, Lbq9;-><init>(Lyads/e62;I)V

    invoke-static {v1}, Lyads/d46;->a(Lll3;)V

    .line 495
    :cond_1
    new-instance v11, Lyads/z52;

    .line 496
    iget-object v14, v0, Lyads/c62;->m:Lyads/zu5;

    iget-object v15, v0, Lyads/c62;->l:Lyads/my1;

    move-object/from16 v13, p5

    move-object/from16 v16, v6

    .line 497
    invoke-direct/range {v11 .. v16}, Lyads/z52;-><init>(Lyads/tt;Lyads/n32;Lyads/zu5;Lyads/my1;Lyads/y52;)V

    .line 498
    new-instance v1, Lyads/a62;

    move-object v3, v1

    .line 499
    iget-object v1, v0, Lyads/c62;->e:Lyads/qg6;

    move-object v6, v3

    .line 500
    new-instance v3, Lyads/nq;

    .line 501
    sget v7, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_base_tabbed_title_container_scroller:I

    .line 502
    sget v8, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_tabs_pager_container:I

    .line 503
    sget v9, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_tabs_container_helper:I

    .line 504
    invoke-direct {v3, v7, v8, v9}, Lyads/nq;-><init>(III)V

    .line 505
    iget-object v7, v0, Lyads/c62;->f:Lyads/pu5;

    iget-object v8, v0, Lyads/c62;->c:Lyads/qh2;

    .line 506
    iget-object v13, v0, Lyads/c62;->j:Lyads/rt1;

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    move-object v0, v6

    move-object/from16 v6, p1

    .line 507
    invoke-direct/range {v0 .. v13}, Lyads/a62;-><init>(Lyads/qg6;Lyads/m62;Lyads/nq;Lyads/a93;ZLyads/tt;Lyads/pu5;Lyads/qh2;Lyads/w41;Lyads/e62;Lyads/z52;Lyads/n32;Lyads/rt1;)V

    return-object v0
.end method

.method public final bridge synthetic a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;)V
    .locals 0

    .line 462
    check-cast p1, Lyads/m62;

    check-cast p3, Lyads/y52;

    check-cast p4, Lyads/y52;

    invoke-virtual {p0, p1, p2, p3}, Lyads/c62;->a(Lyads/m62;Lyads/tt;Lyads/y52;)V

    return-void
.end method

.method public final a(Lyads/m62;Lyads/fs2;Lyads/u52;Lyads/tt;)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    .line 418
    :cond_0
    iget-object v0, p1, Lyads/yu5;->a:Lyads/uu5;

    .line 419
    invoke-virtual {p0, v0, p2, p3, p4}, Lyads/c62;->a(Lyads/uu5;Lyads/fs2;Lyads/u52;Lyads/tt;)V

    .line 420
    new-instance v1, Lyp9;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lyp9;-><init>(Lyads/c62;Lyads/m62;Lyads/fs2;Lyads/u52;Lyads/tt;)V

    .line 421
    iget-object p0, v5, Lyads/u52;->c:Lyads/af1;

    iget-object p0, p0, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {p0, v4, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    .line 422
    iget-object p0, v5, Lyads/u52;->c:Lyads/af1;

    iget-object p0, p0, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {p0, v4, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    .line 423
    iget-object p0, v5, Lyads/u52;->a:Lyads/af1;

    iget-object p0, p0, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {p0, v4, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    .line 424
    iget-object p0, v5, Lyads/u52;->a:Lyads/af1;

    iget-object p0, p0, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {p0, v4, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    .line 425
    iget-object p0, v5, Lyads/u52;->b:Lyads/as2;

    invoke-virtual {p0, v4, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    return-void
.end method

.method public final a(Lyads/m62;Lyads/fs2;Lyads/x52;)V
    .locals 2

    .line 428
    iget-object v0, p1, Lyads/yu5;->a:Lyads/uu5;

    if-nez p3, :cond_0

    .line 429
    sget-object v1, Lyads/c62;->o:Lyads/x52;

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    invoke-static {v0, p2, v1}, Lyads/c62;->a(Lyads/uu5;Lyads/fs2;Lyads/x52;)V

    .line 430
    new-instance v0, Lzp9;

    invoke-direct {v0, p0, p1, p2, p3}, Lzp9;-><init>(Lyads/c62;Lyads/m62;Lyads/fs2;Lyads/x52;)V

    if-eqz p3, :cond_1

    .line 431
    iget-object p0, p3, Lyads/x52;->d:Lyads/as2;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    :cond_1
    if-eqz p3, :cond_2

    .line 432
    iget-object p0, p3, Lyads/x52;->a:Lyads/as2;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    :cond_2
    if-eqz p3, :cond_3

    .line 433
    iget-object p0, p3, Lyads/x52;->p:Lyads/as2;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    :cond_3
    if-eqz p3, :cond_4

    .line 434
    iget-object p0, p3, Lyads/x52;->m:Lyads/as2;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    :cond_4
    if-eqz p3, :cond_5

    .line 435
    iget-object p0, p3, Lyads/x52;->g:Lyads/as2;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    :cond_5
    if-eqz p3, :cond_6

    .line 436
    iget-object p0, p3, Lyads/x52;->h:Lyads/p91;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lyads/p91;->c:Lyads/as2;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    :cond_6
    if-eqz p3, :cond_7

    .line 437
    iget-object p0, p3, Lyads/x52;->h:Lyads/p91;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lyads/p91;->d:Lyads/as2;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    :cond_7
    if-eqz p3, :cond_8

    .line 438
    iget-object p0, p3, Lyads/x52;->h:Lyads/p91;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lyads/p91;->b:Lyads/as2;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    :cond_8
    if-eqz p3, :cond_9

    .line 439
    iget-object p0, p3, Lyads/x52;->h:Lyads/p91;

    if-eqz p0, :cond_9

    iget-object p0, p0, Lyads/p91;->a:Lyads/as2;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    :cond_9
    if-eqz p3, :cond_a

    .line 440
    iget-object p0, p3, Lyads/x52;->q:Lyads/as2;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    :cond_a
    if-eqz p3, :cond_b

    .line 441
    iget-object p0, p3, Lyads/x52;->f:Lyads/as2;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    :cond_b
    if-eqz p3, :cond_c

    .line 442
    iget-object p0, p3, Lyads/x52;->e:Lyads/as2;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p2, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    :cond_c
    return-void
.end method

.method public final a(Lyads/m62;Lyads/tt;Lyads/y52;)V
    .locals 6

    .line 374
    iget-object v0, p2, Lyads/tt;->b:Lyads/fs2;

    const/4 v1, 0x0

    .line 375
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 376
    new-instance v2, Lwp9;

    invoke-direct {v2, p1, p3, v0, v1}, Lwp9;-><init>(Landroid/view/View;Ljava/lang/Object;Lyads/fs2;I)V

    const/4 v3, 0x0

    .line 377
    invoke-virtual {v2, v3}, Lwp9;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v4, p3, Lyads/y52;->E:Lyads/yc1;

    iget-object v4, v4, Lyads/yc1;->c:Lyads/as2;

    invoke-virtual {v4, v0, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v4

    .line 379
    iget-object v5, p1, Lyads/m62;->f:Lyads/xh1;

    invoke-interface {v5, v4}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 380
    iget-object v4, p3, Lyads/y52;->E:Lyads/yc1;

    iget-object v4, v4, Lyads/yc1;->d:Lyads/as2;

    invoke-virtual {v4, v0, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v4

    .line 381
    iget-object v5, p1, Lyads/m62;->f:Lyads/xh1;

    invoke-interface {v5, v4}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 382
    iget-object v4, p3, Lyads/y52;->E:Lyads/yc1;

    iget-object v4, v4, Lyads/yc1;->f:Lyads/as2;

    invoke-virtual {v4, v0, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v4

    .line 383
    iget-object v5, p1, Lyads/m62;->f:Lyads/xh1;

    invoke-interface {v5, v4}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 384
    iget-object v4, p3, Lyads/y52;->E:Lyads/yc1;

    iget-object v4, v4, Lyads/yc1;->a:Lyads/as2;

    invoke-virtual {v4, v0, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v2

    .line 385
    iget-object v4, p1, Lyads/m62;->f:Lyads/xh1;

    invoke-interface {v4, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 386
    iget-object v2, p1, Lyads/yu5;->a:Lyads/uu5;

    .line 387
    invoke-static {v2, p3, v0}, Lyads/c62;->a(Lyads/uu5;Lyads/y52;Lyads/fs2;)V

    .line 388
    iget-object v2, p3, Lyads/y52;->D:Lyads/x52;

    invoke-virtual {p0, p1, v0, v2}, Lyads/c62;->a(Lyads/m62;Lyads/fs2;Lyads/x52;)V

    .line 389
    iget-object v2, p3, Lyads/y52;->C:Lyads/u52;

    invoke-virtual {p0, p1, v0, v2, p2}, Lyads/c62;->a(Lyads/m62;Lyads/fs2;Lyads/u52;Lyads/tt;)V

    .line 390
    iget-object v2, p1, Lyads/yu5;->c:Lyads/pg6;

    .line 391
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 392
    iget-object v2, p3, Lyads/y52;->A:Lyads/yc1;

    new-instance v4, Lcq9;

    invoke-direct {v4, p1, p3, v0, v1}, Lcq9;-><init>(Landroid/view/View;Ljava/lang/Object;Lyads/fs2;I)V

    .line 393
    iget-object v1, v2, Lyads/yc1;->c:Lyads/as2;

    invoke-virtual {v1, v0, v4}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    .line 394
    iget-object v5, p1, Lyads/m62;->f:Lyads/xh1;

    invoke-interface {v5, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 395
    iget-object v1, v2, Lyads/yc1;->d:Lyads/as2;

    invoke-virtual {v1, v0, v4}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    .line 396
    iget-object v5, p1, Lyads/m62;->f:Lyads/xh1;

    invoke-interface {v5, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 397
    iget-object v1, v2, Lyads/yc1;->f:Lyads/as2;

    invoke-virtual {v1, v0, v4}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    .line 398
    iget-object v5, p1, Lyads/m62;->f:Lyads/xh1;

    invoke-interface {v5, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 399
    iget-object v1, v2, Lyads/yc1;->a:Lyads/as2;

    invoke-virtual {v1, v0, v4}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    .line 400
    iget-object v2, p1, Lyads/m62;->f:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 401
    invoke-virtual {v4, v3}, Lcq9;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v1, p3, Lyads/y52;->z:Lyads/as2;

    new-instance v2, Lus;

    const/4 v3, 0x4

    invoke-direct {v2, p1, v3}, Lus;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0, v2}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    .line 403
    iget-object v2, p1, Lyads/m62;->f:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 404
    iget-object v1, p3, Lyads/y52;->n:Lyads/as2;

    new-instance v2, Lws2;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v3}, Lws2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0, v2}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    .line 405
    iget-object v2, p1, Lyads/m62;->f:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 406
    iget-object v1, p1, Lyads/yu5;->a:Lyads/uu5;

    .line 407
    new-instance v2, Lps7;

    invoke-direct {v2, p0, p2}, Lps7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lyads/uu5;->setOnScrollChangedListener(Lyads/su5;)V

    .line 408
    iget-object p0, p1, Lyads/yu5;->a:Lyads/uu5;

    .line 409
    iget-object p2, p2, Lyads/tt;->a:Lyads/vq0;

    .line 410
    iget-object p2, p2, Lyads/vq0;->K:Lyads/sg3;

    .line 411
    invoke-virtual {p0, p2}, Lyads/nr;->setFocusTracker(Lyads/sg3;)V

    .line 412
    iget-object p0, p3, Lyads/y52;->u:Lyads/as2;

    new-instance p2, Lxs;

    const/4 p3, 0x5

    invoke-direct {p2, p1, p3}, Lxs;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, p2}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 413
    iget-object p1, p1, Lyads/m62;->f:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final a(Lyads/n32;Lyads/tt;Lyads/m62;Lyads/y52;Lyads/y52;Lyads/w41;Lyads/m62;)V
    .locals 18

    move-object/from16 v2, p5

    move-object/from16 v9, p7

    invoke-virtual/range {p2 .. p2}, Lyads/tt;->b()Lyads/fs2;

    move-result-object v8

    iget-object v0, v2, Lyads/y52;->q:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/t52;

    new-instance v3, Lyads/t02;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-direct {v3, v1, v4, v8}, Lyads/t02;-><init>(Lyads/t52;Landroid/util/DisplayMetrics;Lyads/fs2;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lyads/yu5;->h()Lyads/a62;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v1, v0, Lyads/a62;->p:Z

    iget-object v3, v2, Lyads/y52;->j:Lyads/as2;

    invoke-virtual {v3, v8}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v1, v3, :cond_2

    :goto_1
    const/4 v0, 0x0

    :cond_2
    const/4 v10, 0x4

    if-eqz v0, :cond_4

    move-object/from16 v1, p2

    iput-object v1, v0, Lyads/a62;->q:Lyads/tt;

    move-object/from16 v5, p1

    iput-object v5, v0, Lyads/a62;->v:Lyads/n32;

    iget-object v3, v0, Lyads/a62;->y:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v3, v0, Lyads/a62;->t:Lyads/e62;

    iput-object v2, v3, Lyads/e62;->e:Lyads/y52;

    iget-object v3, v0, Lyads/a62;->u:Lyads/z52;

    iput-object v2, v3, Lyads/z52;->e:Lyads/y52;

    move-object/from16 v3, p4

    if-ne v3, v2, :cond_3

    invoke-virtual {v0}, Lyads/a62;->d()V

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    goto :goto_6

    :cond_3
    new-instance v3, Low0;

    invoke-direct {v3, v6, v10}, Low0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3, v8, v9}, Lyads/oq;->a(Lyads/lq;Lyads/fs2;Lyads/hs2;)V

    goto :goto_2

    :cond_4
    move-object/from16 v5, p1

    move-object/from16 v1, p2

    iget-object v0, v2, Lyads/y52;->y:Lyads/as2;

    invoke-virtual {v0, v8}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const/16 v0, 0x1f

    shr-long v11, v3, v0

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-eqz v0, :cond_7

    const-wide/16 v15, -0x1

    cmp-long v0, v11, v15

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    cmp-long v0, v3, v13

    if-lez v0, :cond_6

    const v0, 0x7fffffff

    :goto_3
    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move v7, v0

    move-object/from16 v0, p0

    goto :goto_5

    :cond_6
    const/high16 v0, -0x80000000

    goto :goto_3

    :cond_7
    :goto_4
    long-to-int v0, v3

    goto :goto_3

    :goto_5
    invoke-static/range {v0 .. v7}, Lyads/c62;->a(Lyads/c62;Lyads/tt;Lyads/y52;Lyads/m62;Lyads/w41;Lyads/n32;Ljava/util/List;I)V

    move-object v1, v3

    :goto_6
    iget-object v3, v2, Lyads/y52;->q:Ljava/util/List;

    new-instance v4, Lnx1;

    invoke-direct {v4, v1, v10}, Lnx1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/t52;

    iget-object v5, v5, Lyads/t52;->a:Lyads/br0;

    invoke-virtual {v5}, Lyads/br0;->a()Lyads/p41;

    move-result-object v5

    invoke-interface {v5}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object v5

    instance-of v7, v5, Lyads/u02;

    if-eqz v7, :cond_8

    check-cast v5, Lyads/u02;

    iget-object v7, v5, Lyads/u02;->a:Lyads/af1;

    iget-object v7, v7, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {v7, v8, v4}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v7

    iget-object v10, v9, Lyads/m62;->f:Lyads/xh1;

    invoke-interface {v10, v7}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v5, v5, Lyads/u02;->a:Lyads/af1;

    iget-object v5, v5, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {v5, v8, v4}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v5

    iget-object v7, v9, Lyads/m62;->f:Lyads/xh1;

    invoke-interface {v7, v5}, Lyads/hs2;->a(Lyads/tp0;)V

    goto :goto_7

    :cond_9
    new-instance v10, Lpn7;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v0, v1}, Lpn7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v12, v2, Lyads/y52;->j:Lyads/as2;

    new-instance v0, Ldq9;

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v5, p2

    move-object v3, v8

    move-object v8, v6

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Ldq9;-><init>(Lyads/m62;Lyads/y52;Lyads/fs2;Lyads/c62;Lyads/tt;Lyads/w41;Lyads/n32;Ljava/util/ArrayList;)V

    move-object/from16 v17, v4

    move-object v4, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v3, v4}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v4

    invoke-virtual {v9, v4}, Lyads/m62;->a(Lyads/tp0;)V

    iget-object v4, v2, Lyads/y52;->y:Lyads/as2;

    invoke-virtual {v4, v3, v10}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v4

    invoke-virtual {v9, v4}, Lyads/m62;->a(Lyads/tp0;)V

    invoke-virtual/range {p2 .. p2}, Lyads/tt;->a()Lyads/vq0;

    move-result-object v4

    invoke-virtual {v4}, Lyads/vq0;->t()Lyads/qb1;

    move-result-object v5

    sget-object v6, Lyads/qb1;->b:Lyads/qb1;

    invoke-static {v5, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Lyads/vq0;->o()Lyads/qb1;

    move-result-object v5

    invoke-virtual {v4}, Lyads/vq0;->t()Lyads/qb1;

    move-result-object v4

    invoke-static {v5, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    move v4, v11

    :goto_9
    iget-object v5, v2, Lyads/y52;->y:Lyads/as2;

    invoke-virtual {v5, v3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    if-eqz v4, :cond_d

    iget-object v4, v0, Lyads/c62;->n:Ljava/lang/Long;

    if-nez v4, :cond_c

    goto :goto_a

    :cond_c
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_d

    goto :goto_b

    :cond_d
    :goto_a
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v4}, Lpn7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    iget-object v4, v2, Lyads/y52;->B:Lyads/as2;

    new-instance v5, Lux;

    invoke-direct {v5, v1, v0, v2, v11}, Lux;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v3, v5}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    invoke-virtual {v9, v0}, Lyads/m62;->a(Lyads/tp0;)V

    return-void
.end method

.method public final a(Lyads/uu5;Lyads/fs2;Lyads/u52;Lyads/tt;)V
    .locals 5

    .line 564
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 565
    iget-object v1, p3, Lyads/u52;->c:Lyads/af1;

    .line 566
    iget-object v2, v1, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {v2, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object v1, v1, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/g12;

    .line 567
    invoke-static {v2, v3, v1, v0}, Lyads/uq;->a(JLyads/g12;Landroid/util/DisplayMetrics;)I

    move-result v1

    .line 568
    iget-object v2, p3, Lyads/u52;->a:Lyads/af1;

    .line 569
    iget-object v3, v2, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {v3, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v2, v2, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {v2, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/g12;

    .line 570
    invoke-static {v3, v4, v2, v0}, Lyads/uq;->a(JLyads/g12;Landroid/util/DisplayMetrics;)I

    move-result v0

    .line 571
    iget-object p0, p0, Lyads/c62;->h:Lyads/oi1;

    .line 572
    iget-object p3, p3, Lyads/u52;->b:Lyads/as2;

    invoke-virtual {p3, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 573
    iget-object p3, p4, Lyads/tt;->a:Lyads/vq0;

    .line 574
    new-instance v2, Lyads/b62;

    invoke-direct {v2, p1, v1, v0, p3}, Lyads/b62;-><init>(Lyads/uu5;IILyads/vq0;)V

    .line 575
    invoke-interface {p0, p2, v2}, Lyads/oi1;->b(Ljava/lang/String;Lyads/ji1;)Lyads/du3;

    move-result-object p0

    .line 576
    iget-object p1, p4, Lyads/tt;->a:Lyads/vq0;

    .line 577
    invoke-virtual {p1, p0}, Lyads/vq0;->a(Lyads/du3;)V

    return-void
.end method

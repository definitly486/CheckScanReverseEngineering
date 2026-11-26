.class public final Lyads/pj4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly22;

.field public final b:Lyads/t5;

.field public final c:Lyads/uk;

.field public final d:Lyads/wd3;

.field public final e:Lyads/sc3;

.field public final f:Lyads/fe3;

.field public final g:Lnl3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly22;Lyads/t5;)V
    .locals 6

    new-instance v0, Lyads/uk;

    invoke-direct {v0}, Lyads/uk;-><init>()V

    new-instance v1, Lyads/wd3;

    invoke-direct {v1}, Lyads/wd3;-><init>()V

    new-instance v2, Lyads/sc3;

    invoke-direct {v2, p1}, Lyads/sc3;-><init>(Landroid/content/Context;)V

    new-instance v3, Lyads/fe3;

    invoke-direct {v3}, Lyads/fe3;-><init>()V

    new-instance v4, Llk;

    const/4 v5, 0x5

    invoke-direct {v4, p1, v5}, Llk;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/pj4;->a:Ly22;

    iput-object p3, p0, Lyads/pj4;->b:Lyads/t5;

    iput-object v0, p0, Lyads/pj4;->c:Lyads/uk;

    iput-object v1, p0, Lyads/pj4;->d:Lyads/wd3;

    iput-object v2, p0, Lyads/pj4;->e:Lyads/sc3;

    iput-object v3, p0, Lyads/pj4;->f:Lyads/fe3;

    iput-object v4, p0, Lyads/pj4;->g:Lnl3;

    return-void
.end method

.method public static final a(Landroid/content/Context;Lyads/b05;)Lyads/fd3;
    .locals 3

    .line 494
    new-instance v0, Lyads/fd3;

    .line 495
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_1

    .line 496
    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_0
    sget-object v2, Lyads/zg5;->l:Lyads/zg5;

    if-nez v2, :cond_0

    .line 498
    new-instance v2, Lyads/zg5;

    invoke-direct {v2}, Lyads/zg5;-><init>()V

    .line 499
    sput-object v2, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 500
    :cond_0
    :goto_0
    monitor-exit v1

    move-object v1, v2

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    .line 501
    :cond_1
    :goto_2
    invoke-virtual {v1, p0}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p0

    .line 502
    invoke-direct {v0, p1, p0}, Lyads/fd3;-><init>(Lyads/b05;Lyads/fe5;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Set;Lyads/b05;Lyads/ee4;Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p4, Lyads/mj4;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lyads/mj4;

    iget v1, v0, Lyads/mj4;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/mj4;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/mj4;

    invoke-direct {v0, p0, p4}, Lyads/mj4;-><init>(Lyads/pj4;Lf02;)V

    :goto_0
    iget-object p4, v0, Lyads/mj4;->f:Ljava/lang/Object;

    .line 456
    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    .line 457
    iget v2, v0, Lyads/mj4;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lyads/mj4;->e:Lyads/s5;

    iget-object p2, v0, Lyads/mj4;->d:Lyads/t5;

    iget-object p3, v0, Lyads/mj4;->c:Lyads/ee4;

    iget-object v0, v0, Lyads/mj4;->b:Lyads/b05;

    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p4}, Lr57;->b(Ljava/lang/Object;)V

    .line 458
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 459
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    .line 460
    :cond_3
    iget-object p4, p0, Lyads/pj4;->b:Lyads/t5;

    sget-object v2, Lyads/s5;->q:Lyads/s5;

    .line 461
    invoke-virtual {p4, v2, v3}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    .line 462
    iget-object v3, p0, Lyads/pj4;->e:Lyads/sc3;

    iput-object p2, v0, Lyads/mj4;->b:Lyads/b05;

    iput-object p3, v0, Lyads/mj4;->c:Lyads/ee4;

    iput-object p4, v0, Lyads/mj4;->d:Lyads/t5;

    iput-object v2, v0, Lyads/mj4;->e:Lyads/s5;

    iput v4, v0, Lyads/mj4;->h:I

    invoke-virtual {v3, p1, v0}, Lyads/sc3;->a(Ljava/util/Set;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p2

    move-object p2, p4

    move-object p4, p1

    move-object p1, v2

    .line 463
    :goto_1
    check-cast p4, Lyads/ee3;

    .line 464
    instance-of v1, p4, Lyads/de3;

    if-eqz v1, :cond_a

    .line 465
    check-cast p4, Lyads/de3;

    .line 466
    iget-object p4, p4, Lyads/de3;->a:Ljava/util/Map;

    .line 467
    iget-object v1, p3, Lyads/ee4;->b:Lyads/d9;

    .line 468
    iget-object v2, v1, Lyads/d9;->w:Ljava/lang/String;

    .line 469
    sget-object v3, Lyads/jj4;->c:Lyads/jj4;

    .line 470
    const-string v3, "loading_on_show"

    .line 471
    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 472
    iget-object v1, v1, Lyads/d9;->w:Ljava/lang/String;

    .line 473
    const-string v2, "loading_on_back"

    .line 474
    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    .line 475
    :cond_5
    iget-object v1, p0, Lyads/pj4;->d:Lyads/wd3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    iget-object v2, p3, Lyads/ee4;->a:Lyads/vg4;

    .line 477
    iget-object v2, v2, Lyads/vg4;->a:Ljava/util/List;

    .line 478
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/sd4;

    .line 479
    iget-object v3, v3, Lyads/sd4;->b:Ljava/util/List;

    .line 480
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 481
    invoke-virtual {v1, v3, p4}, Lyads/wd3;->a(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_2

    .line 482
    :cond_7
    iget-object p0, p0, Lyads/pj4;->c:Lyads/uk;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    iget-object p3, p3, Lyads/ee4;->a:Lyads/vg4;

    .line 484
    iget-object p3, p3, Lyads/vg4;->a:Ljava/util/List;

    .line 485
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/sd4;

    .line 486
    iget-object v2, v1, Lyads/sd4;->b:Ljava/util/List;

    .line 487
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 488
    invoke-virtual {p0, v2, p4}, Lyads/uk;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    .line 489
    iput-object v2, v1, Lyads/sd4;->b:Ljava/util/List;

    goto :goto_3

    .line 490
    :cond_9
    :goto_4
    iget-object p0, v0, Lyads/b05;->b:Ljava/util/LinkedHashMap;

    .line 491
    invoke-interface {p0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 492
    :cond_a
    sget-object p0, Lj59;->a:Lj59;

    .line 493
    invoke-virtual {p2, p1}, Lyads/t5;->a(Lyads/s5;)V

    return-object p0
.end method

.method public final a(Lyads/ee4;Lyads/b05;Lf02;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lyads/lj4;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lyads/lj4;

    iget v5, v4, Lyads/lj4;->h:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lyads/lj4;->h:I

    goto :goto_0

    :cond_0
    new-instance v4, Lyads/lj4;

    invoke-direct {v4, v0, v3}, Lyads/lj4;-><init>(Lyads/pj4;Lf02;)V

    :goto_0
    iget-object v3, v4, Lyads/lj4;->f:Ljava/lang/Object;

    sget-object v5, La32;->COROUTINE_SUSPENDED:La32;

    iget v6, v4, Lyads/lj4;->h:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    invoke-static {v3}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v9

    :cond_2
    iget-object v1, v4, Lyads/lj4;->e:Ljava/util/Set;

    iget-object v2, v4, Lyads/lj4;->d:Ljava/util/HashSet;

    iget-object v6, v4, Lyads/lj4;->c:Lyads/b05;

    iget-object v8, v4, Lyads/lj4;->b:Lyads/ee4;

    invoke-static {v3}, Lr57;->b(Ljava/lang/Object;)V

    move-object v10, v2

    move-object v2, v6

    move-object v6, v1

    move-object v1, v8

    goto/16 :goto_9

    :cond_3
    invoke-static {v3}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v3, v0, Lyads/pj4;->g:Lnl3;

    invoke-interface {v3, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/fd3;

    iget-object v6, v0, Lyads/pj4;->f:Lyads/fe3;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v1, Lyads/ee4;->b:Lyads/d9;

    iget-object v11, v1, Lyads/ee4;->a:Lyads/vg4;

    iget-object v12, v11, Lyads/vg4;->a:Ljava/util/List;

    iget-object v13, v6, Lyads/fe3;->a:Lyads/yd3;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Ljava/util/LinkedHashSet;

    invoke-direct {v14}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lyads/sd4;

    iget-object v15, v15, Lyads/sd4;->b:Ljava/util/List;

    invoke-virtual {v13, v15}, Lyads/yd3;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v15

    invoke-static {v15, v14}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_1

    :cond_4
    iget-object v12, v6, Lyads/fe3;->a:Lyads/yd3;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v11, Lyads/vg4;->f:Ljava/util/List;

    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lyads/fo1;

    iget-object v15, v15, Lyads/fo1;->d:Ljava/util/ArrayList;

    if-nez v15, :cond_5

    sget-object v15, Lkx2;->b:Lkx2;

    :cond_5
    invoke-static {v15, v13}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_2

    :cond_6
    invoke-static {v14, v13}, Lmr7;->l(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v12

    iget-object v6, v6, Lyads/fe3;->b:Lyads/zl4;

    invoke-virtual {v6, v11}, Lyads/zl4;->c(Lyads/vg4;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v12, v6}, Lmr7;->l(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v11

    iget-boolean v10, v10, Lyads/d9;->B:Z

    if-eqz v10, :cond_7

    goto :goto_3

    :cond_7
    move-object v12, v9

    :goto_3
    if-nez v12, :cond_8

    sget-object v12, Lox2;->b:Lox2;

    :cond_8
    invoke-static {v6, v12}, Lmr7;->l(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v6

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lyads/rd3;

    iget-boolean v13, v13, Lyads/rd3;->f:Z

    if-eqz v13, :cond_9

    invoke-virtual {v10, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-static {v11, v10}, Lmr7;->j(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    iput-object v1, v4, Lyads/lj4;->b:Lyads/ee4;

    iput-object v2, v4, Lyads/lj4;->c:Lyads/b05;

    iput-object v10, v4, Lyads/lj4;->d:Ljava/util/HashSet;

    iput-object v6, v4, Lyads/lj4;->e:Ljava/util/Set;

    iput v8, v4, Lyads/lj4;->h:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lyads/rd3;

    iget-object v15, v14, Lyads/rd3;->g:Ljava/lang/String;

    if-eqz v15, :cond_b

    invoke-static {v15}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v15

    xor-int/2addr v15, v8

    if-ne v15, v8, :cond_b

    iget-object v15, v3, Lyads/fd3;->a:Lyads/b05;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lyads/b05;->b(Lyads/rd3;)Lyads/a05;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v15, v15, Lyads/b05;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    goto :goto_6

    :cond_c
    move-object v7, v9

    :goto_6
    if-nez v7, :cond_d

    iget-object v7, v3, Lyads/fd3;->a:Lyads/b05;

    invoke-virtual {v7, v14}, Lyads/b05;->a(Lyads/rd3;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_d

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const/4 v7, 0x2

    goto :goto_5

    :cond_e
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_f

    sget-object v3, Lj59;->a:Lj59;

    goto :goto_8

    :cond_f
    iget-object v7, v3, Lyads/fd3;->b:Lyads/fe5;

    if-eqz v7, :cond_11

    iget-boolean v7, v7, Lyads/fe5;->Z0:Z

    if-ne v7, v8, :cond_11

    invoke-virtual {v3, v12, v4}, Lyads/fd3;->a(Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;

    move-result-object v3

    sget-object v7, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v3, v7, :cond_10

    goto :goto_8

    :cond_10
    sget-object v3, Lj59;->a:Lj59;

    goto :goto_8

    :cond_11
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_12
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/rd3;

    iget-object v11, v3, Lyads/fd3;->c:Lyads/bd3;

    invoke-virtual {v11, v8}, Lyads/bd3;->a(Lyads/rd3;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_12

    iget-object v12, v3, Lyads/fd3;->a:Lyads/b05;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lyads/b05;->b(Lyads/rd3;)Lyads/a05;

    move-result-object v8

    if-eqz v8, :cond_12

    iget-object v12, v12, Lyads/b05;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v12, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_13
    sget-object v3, Lj59;->a:Lj59;

    :goto_8
    if-ne v3, v5, :cond_14

    goto :goto_a

    :cond_14
    :goto_9
    iget-object v3, v1, Lyads/ee4;->b:Lyads/d9;

    iget-object v3, v3, Lyads/d9;->w:Ljava/lang/String;

    sget-object v7, Lyads/jj4;->c:Lyads/jj4;

    const-string v7, "loading_on_back"

    invoke-static {v3, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v0, Lyads/pj4;->e:Lyads/sc3;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lyads/lc3;

    invoke-direct {v7, v3, v6, v9}, Lyads/lc3;-><init>(Lyads/sc3;Ljava/util/Set;Le02;)V

    new-instance v3, Le91;

    const/4 v6, -0x2

    sget-object v8, Lcu0;->SUSPEND:Lcu0;

    sget-object v11, Lgx2;->b:Lgx2;

    invoke-direct {v3, v7, v11, v6, v8}, Le91;-><init>(Lbm3;Lo22;ILcu0;)V

    iget-object v6, v0, Lyads/pj4;->a:Ly22;

    new-instance v7, Lyads/oj4;

    invoke-direct {v7, v3, v2, v9}, Lyads/oj4;-><init>(Lhd3;Lyads/b05;Le02;)V

    const/4 v3, 0x3

    invoke-static {v6, v9, v9, v7, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_15
    iput-object v9, v4, Lyads/lj4;->b:Lyads/ee4;

    iput-object v9, v4, Lyads/lj4;->c:Lyads/b05;

    iput-object v9, v4, Lyads/lj4;->d:Ljava/util/HashSet;

    iput-object v9, v4, Lyads/lj4;->e:Ljava/util/Set;

    const/4 v3, 0x2

    iput v3, v4, Lyads/lj4;->h:I

    invoke-virtual {v0, v10, v2, v1, v4}, Lyads/pj4;->a(Ljava/util/Set;Lyads/b05;Lyads/ee4;Lf02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_16

    :goto_a
    return-object v5

    :cond_16
    :goto_b
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

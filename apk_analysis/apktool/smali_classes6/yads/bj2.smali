.class public final Lyads/bj2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/fh6;

.field public final b:Lyads/ti2;

.field public final c:Landroid/os/Handler;

.field public final d:Lyads/cj2;

.field public final e:Lyads/cj2;

.field public final f:Lyads/kk5;

.field public final g:Ljava/util/WeakHashMap;

.field public final h:Ljava/util/WeakHashMap;

.field public final i:Ljava/util/WeakHashMap;

.field public final j:Lyads/au5;

.field public final k:Ljava/util/WeakHashMap;

.field public l:Z

.field public final m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lyads/fh6;Lyads/ti2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bj2;->a:Lyads/fh6;

    iput-object p2, p0, Lyads/bj2;->b:Lyads/ti2;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lyads/bj2;->c:Landroid/os/Handler;

    new-instance p1, Lyads/cj2;

    invoke-direct {p1}, Lyads/cj2;-><init>()V

    iput-object p1, p0, Lyads/bj2;->d:Lyads/cj2;

    new-instance p1, Lyads/cj2;

    invoke-direct {p1}, Lyads/cj2;-><init>()V

    iput-object p1, p0, Lyads/bj2;->e:Lyads/cj2;

    new-instance p1, Lyads/kk5;

    new-instance p2, Lno9;

    invoke-direct {p2, p0}, Lno9;-><init>(Lyads/bj2;)V

    new-instance v0, Loo9;

    invoke-direct {v0, p0}, Loo9;-><init>(Lyads/bj2;)V

    invoke-direct {p1, p2, v0}, Lyads/kk5;-><init>(Lgm3;Lgm3;)V

    iput-object p1, p0, Lyads/bj2;->f:Lyads/kk5;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lyads/bj2;->g:Ljava/util/WeakHashMap;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lyads/bj2;->h:Ljava/util/WeakHashMap;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lyads/bj2;->i:Ljava/util/WeakHashMap;

    new-instance p1, Lyads/au5;

    invoke-direct {p1}, Lyads/au5;-><init>()V

    iput-object p1, p0, Lyads/bj2;->j:Lyads/au5;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lyads/bj2;->k:Ljava/util/WeakHashMap;

    new-instance p1, Lpo9;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lpo9;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lyads/bj2;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public static final a(Lyads/bj2;Ljava/util/Map;)Lj59;
    .locals 0

    .line 574
    iget-object p0, p0, Lyads/bj2;->c:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 575
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/bj2;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Lyads/r02;)Lj59;
    .locals 8

    .line 497
    instance-of v0, p5, Lyads/si2;

    sget-object v6, Lkx2;->b:Lkx2;

    if-eqz v0, :cond_0

    move-object v7, v6

    invoke-static {p5}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lyads/bj2;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, v6

    .line 498
    instance-of p0, p5, Lyads/gc1;

    if-eqz p0, :cond_1

    invoke-static {p5}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    move-object v6, v7

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lyads/bj2;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Ljava/util/List;Ljava/util/List;)V

    .line 499
    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Ljava/util/List;Lyads/fs2;)Ljava/util/ArrayList;
    .locals 3

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 577
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lyads/r02;

    .line 578
    invoke-interface {v2}, Lyads/r02;->d()Lyads/as2;

    move-result-object v2

    invoke-virtual {v2, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final synthetic a(Lyads/bj2;)Ljava/util/WeakHashMap;
    .locals 0

    .line 528
    iget-object p0, p0, Lyads/bj2;->k:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method public static a(Lyads/bj2;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;)V
    .locals 10

    .line 511
    invoke-virtual {p4}, Lyads/br0;->a()Lyads/p41;

    move-result-object v0

    .line 512
    invoke-interface {v0}, Lyads/p41;->m()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lkx2;->b:Lkx2;

    if-nez v1, :cond_1

    invoke-interface {v0}, Lyads/p41;->k()Lyads/si2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-nez v1, :cond_1

    move-object v8, v2

    goto :goto_2

    :cond_1
    move-object v8, v1

    .line 513
    :goto_2
    invoke-virtual {p4}, Lyads/br0;->a()Lyads/p41;

    move-result-object v0

    .line 514
    invoke-interface {v0}, Lyads/p41;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v9, v2

    :goto_3
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    goto :goto_4

    :cond_2
    move-object v9, v0

    goto :goto_3

    .line 515
    :goto_4
    invoke-virtual/range {v3 .. v9}, Lyads/bj2;->b(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static a(Lyads/tt;Landroid/view/View;Lyads/br0;Lbm3;)V
    .locals 1

    .line 521
    invoke-interface {p3, p1, p2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    goto :goto_1

    .line 522
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object p1

    .line 523
    invoke-interface {p1}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 524
    iget-object v0, p0, Lyads/tt;->a:Lyads/vq0;

    .line 525
    iget-object v0, v0, Lyads/vq0;->w:Ljava/util/WeakHashMap;

    .line 526
    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/br0;

    .line 527
    invoke-static {p0, p2, v0, p3}, Lyads/bj2;->a(Lyads/tt;Landroid/view/View;Lyads/br0;Lbm3;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static final a(Lyads/bj2;Lyads/tt;Landroid/view/View;Lyads/br0;)Z
    .locals 1

    .line 517
    iget-object v0, p0, Lyads/bj2;->i:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 518
    iget-object p2, p1, Lyads/tt;->a:Lyads/vq0;

    .line 519
    iget-object p1, p1, Lyads/tt;->b:Lyads/fs2;

    const/4 v0, 0x0

    .line 520
    invoke-static {p0, p2, p1, v0, p3}, Lyads/bj2;->a(Lyads/bj2;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Lyads/bj2;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Lyads/r02;)Lj59;
    .locals 7

    .line 253
    instance-of v1, p5, Lyads/si2;

    if-eqz v1, :cond_0

    iget-object v6, p0, Lyads/bj2;->d:Lyads/cj2;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    invoke-virtual/range {v0 .. v6}, Lyads/bj2;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/r02;ILyads/cj2;)Z

    goto :goto_0

    .line 254
    :cond_0
    instance-of v1, p5, Lyads/gc1;

    if-eqz v1, :cond_1

    iget-object v6, p0, Lyads/bj2;->e:Lyads/cj2;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    invoke-virtual/range {v0 .. v6}, Lyads/bj2;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/r02;ILyads/cj2;)Z

    .line 255
    :cond_1
    :goto_0
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public static final b(Lyads/bj2;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lyads/bj2;->b:Lyads/ti2;

    .line 247
    iget-object v0, v0, Lyads/ti2;->a:Ljava/util/ArrayList;

    .line 248
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lyads/bj2;->l:Z

    return-void

    .line 250
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static final b(Lyads/bj2;Lyads/tt;Landroid/view/View;Lyads/br0;)Z
    .locals 5

    .line 257
    iget-object v0, p0, Lyads/bj2;->a:Lyads/fh6;

    .line 258
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lyads/fh6;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v4, v0, Lyads/fh6;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v1, v4, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v0, v0, Lyads/fh6;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne v1, v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 260
    iget-object v1, p0, Lyads/bj2;->i:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 261
    :cond_2
    iget-object v1, p0, Lyads/bj2;->i:Ljava/util/WeakHashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_3

    .line 262
    iget-object v0, p1, Lyads/tt;->a:Lyads/vq0;

    .line 263
    iget-object p1, p1, Lyads/tt;->b:Lyads/fs2;

    .line 264
    invoke-static {p0, v0, p1, p2, p3}, Lyads/bj2;->a(Lyads/bj2;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;)V

    :cond_3
    return v3
.end method


# virtual methods
.method public final a()Ljava/util/LinkedHashMap;
    .locals 4

    .line 500
    iget-object p0, p0, Lyads/bj2;->j:Lyads/au5;

    .line 501
    iget-object v0, p0, Lyads/au5;->b:Ljava/lang/Object;

    .line 502
    monitor-enter v0

    .line 503
    :try_start_0
    invoke-virtual {p0}, Lyads/au5;->entrySet()Ljava/util/Set;

    move-result-object p0

    const/16 v1, 0xa

    .line 504
    invoke-static {p0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lm05;->b(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    .line 505
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 506
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 507
    check-cast v1, Ljava/util/Map$Entry;

    .line 508
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 509
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 510
    :cond_1
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final a(Lyads/b50;Landroid/view/View;Lyads/r02;Lyads/cj2;)V
    .locals 3

    .line 559
    sget v0, Lyads/cr3;->a:I

    .line 560
    sget-object v0, Lyads/vj5;->b:[Lyads/vj5;

    invoke-static {}, Lyads/cr3;->a()V

    .line 561
    iget-object v0, p4, Lyads/cj2;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 562
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    .line 563
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 564
    :goto_0
    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_2

    goto :goto_1

    .line 565
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 566
    move-object p1, v1

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1}, Lyads/bj2;->a(Lyads/bj2;Ljava/util/Map;)Lj59;

    .line 567
    iget-object p1, p4, Lyads/cj2;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 568
    :cond_3
    :goto_1
    iget-object p1, p0, Lyads/bj2;->k:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 569
    instance-of p4, p3, Lyads/gc1;

    if-eqz p4, :cond_4

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 570
    invoke-interface {p1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 571
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 572
    iget-object p1, p0, Lyads/bj2;->k:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object p0, p0, Lyads/bj2;->j:Lyads/au5;

    invoke-virtual {p0, p2}, Lyads/au5;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final a(Lyads/tt;Landroid/view/View;Lyads/br0;)V
    .locals 1

    .line 516
    new-instance v0, Lmo9;

    invoke-direct {v0, p0, p1}, Lmo9;-><init>(Lyads/bj2;Lyads/tt;)V

    invoke-static {p1, p2, p3, v0}, Lyads/bj2;->a(Lyads/tt;Landroid/view/View;Lyads/br0;Lbm3;)V

    return-void
.end method

.method public final a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Ljava/util/ArrayList;JLyads/cj2;)V
    .locals 14

    move-wide/from16 v0, p5

    .line 544
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    .line 545
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 546
    check-cast v4, Lyads/r02;

    .line 547
    invoke-interface {v4}, Lyads/r02;->g()Lyads/as2;

    move-result-object v5

    move-object/from16 v11, p2

    invoke-virtual {v5, v11}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, p1}, Lyads/c50;->a(Ljava/lang/String;Lyads/vq0;)Lyads/b50;

    move-result-object v5

    .line 548
    sget v6, Lyads/cr3;->a:I

    .line 549
    sget-object v6, Lyads/vj5;->b:[Lyads/vj5;

    invoke-static {}, Lyads/cr3;->a()V

    .line 550
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object/from16 v11, p2

    .line 551
    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    move-object/from16 v2, p7

    .line 552
    iget-object v2, v2, Lyads/cj2;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 553
    invoke-virtual {v2, v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 554
    invoke-virtual {p1}, Lyads/vq0;->s()Ljava/lang/String;

    move-result-object v10

    .line 555
    iget-object v2, p0, Lyads/bj2;->c:Landroid/os/Handler;

    .line 556
    new-instance v6, Lyads/zi2;

    move-object v7, p0

    move-object v9, p1

    move-object/from16 v8, p3

    move-object/from16 v13, p4

    invoke-direct/range {v6 .. v13}, Lyads/zi2;-><init>(Lyads/bj2;Landroid/view/View;Lyads/vq0;Ljava/lang/String;Lyads/fs2;Ljava/util/Map;Ljava/util/ArrayList;)V

    if-nez v12, :cond_1

    .line 557
    invoke-virtual {v2, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 558
    :cond_1
    invoke-static {v2, v6, v12, v0, v1}, Landroidx/core/os/HandlerCompat;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public final a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Ljava/util/List;Ljava/util/List;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v8, p4

    iget-object v1, v0, Lyads/bj2;->a:Lyads/fh6;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lyads/fh6;->a:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int/2addr v5, v4

    iget-object v4, v1, Lyads/fh6;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, v1, Lyads/fh6;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v5

    move v5, v1

    :goto_1
    iget-object v1, v0, Lyads/bj2;->g:Ljava/util/WeakHashMap;

    if-lez v5, :cond_2

    invoke-virtual {v1, v3, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-boolean v1, v0, Lyads/bj2;->l:Z

    const/4 v10, 0x1

    if-nez v1, :cond_3

    iput-boolean v10, v0, Lyads/bj2;->l:Z

    iget-object v1, v0, Lyads/bj2;->c:Landroid/os/Handler;

    iget-object v4, v0, Lyads/bj2;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lyads/si2;

    invoke-static {v7}, Lyads/s02;->a(Lyads/r02;)Lyads/as2;

    move-result-object v7

    invoke-virtual {v7, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_4

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v4, v15

    check-cast v4, Lyads/si2;

    iget-object v6, v0, Lyads/bj2;->d:Lyads/cj2;

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lyads/bj2;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/r02;ILyads/cj2;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_5

    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    move-object v4, v7

    iget-object v7, v0, Lyads/bj2;->d:Lyads/cj2;

    move-wide v1, v12

    move v12, v5

    move-wide v5, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v7}, Lyads/bj2;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Ljava/util/ArrayList;JLyads/cj2;)V

    move v5, v12

    goto :goto_4

    :cond_8
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_4

    :cond_9
    move v12, v5

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface/range {p6 .. p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lyads/gc1;

    invoke-static {v6}, Lyads/s02;->a(Lyads/r02;)Lyads/as2;

    move-result-object v6

    invoke-virtual {v6, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_a

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/gc1;

    iget-object v7, v6, Lyads/gc1;->k:Lyads/as2;

    invoke-virtual {v7, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    int-to-long v9, v12

    cmp-long v7, v9, v15

    if-lez v7, :cond_c

    const/4 v7, 0x1

    goto :goto_9

    :cond_c
    const/4 v7, 0x0

    :goto_9
    if-nez v5, :cond_e

    if-eqz v7, :cond_d

    goto :goto_a

    :cond_d
    const/4 v5, 0x0

    goto :goto_b

    :cond_e
    :goto_a
    const/4 v5, 0x1

    :goto_b
    if-eqz v7, :cond_10

    iget-object v7, v0, Lyads/bj2;->k:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_f

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v7, v3, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    check-cast v9, Ljava/util/Set;

    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_10
    const/4 v10, 0x1

    goto :goto_8

    :cond_11
    if-eqz v5, :cond_12

    iget-object v4, v0, Lyads/bj2;->j:Lyads/au5;

    invoke-virtual {v4, v3, v8}, Lyads/au5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v4, v10

    check-cast v4, Lyads/gc1;

    iget-object v6, v0, Lyads/bj2;->e:Lyads/cj2;

    move-object/from16 v1, p1

    move v5, v12

    invoke-virtual/range {v0 .. v6}, Lyads/bj2;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/r02;ILyads/cj2;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_c

    :cond_14
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    move-object v4, v7

    iget-object v7, v0, Lyads/bj2;->e:Lyads/cj2;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide v5, v13

    invoke-virtual/range {v0 .. v7}, Lyads/bj2;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Ljava/util/ArrayList;JLyads/cj2;)V

    move-object/from16 v0, p0

    :goto_d
    const/4 v10, 0x1

    goto/16 :goto_7

    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_d

    :cond_16
    return-void
.end method

.method public final a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/r02;ILyads/cj2;)Z
    .locals 7

    .line 529
    instance-of v0, p4, Lyads/si2;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    int-to-long v3, p5

    .line 530
    move-object p5, p4

    check-cast p5, Lyads/si2;

    iget-object p5, p5, Lyads/si2;->k:Lyads/as2;

    invoke-virtual {p5, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long p5, v3, v5

    if-ltz p5, :cond_2

    goto :goto_1

    .line 531
    :cond_0
    instance-of v0, p4, Lyads/gc1;

    if-eqz v0, :cond_2

    .line 532
    iget-object v0, p0, Lyads/bj2;->k:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    int-to-long v3, p5

    .line 533
    move-object p5, p4

    check-cast p5, Lyads/gc1;

    iget-object p5, p5, Lyads/gc1;->k:Lyads/as2;

    invoke-virtual {p5, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long p5, v3, v5

    if-gtz p5, :cond_2

    :goto_1
    move p5, v1

    goto :goto_2

    :cond_2
    move p5, v2

    .line 534
    :goto_2
    invoke-interface {p4}, Lyads/r02;->g()Lyads/as2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2, p1}, Lyads/c50;->a(Ljava/lang/String;Lyads/vq0;)Lyads/b50;

    move-result-object p1

    .line 535
    iget-object p2, p6, Lyads/cj2;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 536
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    .line 537
    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_4
    move-object v0, v3

    .line 538
    :goto_3
    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 539
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 540
    new-array v0, v2, [Lyads/b50;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 541
    check-cast p2, [Lyads/b50;

    if-eqz p2, :cond_6

    array-length v0, p2

    move v4, v2

    :goto_4
    if-ge v4, v0, :cond_6

    aget-object v5, p2, v4

    invoke-static {v5, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    move-object v5, v3

    :goto_5
    if-eqz p3, :cond_7

    if-nez v5, :cond_7

    if-eqz p5, :cond_7

    return v1

    :cond_7
    if-eqz p3, :cond_8

    if-nez v5, :cond_8

    if-eqz p5, :cond_b

    :cond_8
    if-eqz p3, :cond_9

    if-eqz v5, :cond_9

    if-nez p5, :cond_b

    :cond_9
    if-eqz p3, :cond_a

    if-eqz v5, :cond_a

    if-nez p5, :cond_a

    .line 542
    invoke-virtual {p0, v5, p3, p4, p6}, Lyads/bj2;->a(Lyads/b50;Landroid/view/View;Lyads/r02;Lyads/cj2;)V

    goto :goto_6

    :cond_a
    if-nez p3, :cond_b

    if-eqz v5, :cond_b

    .line 543
    invoke-virtual {p0, v5, v3, p4, p6}, Lyads/bj2;->a(Lyads/b50;Landroid/view/View;Lyads/r02;Lyads/cj2;)V

    :cond_b
    :goto_6
    return v2
.end method

.method public final b(Lyads/tt;Landroid/view/View;Lyads/br0;)V
    .locals 1

    .line 256
    new-instance v0, Llo9;

    invoke-direct {v0, p0, p1}, Llo9;-><init>(Lyads/bj2;Lyads/tt;)V

    invoke-static {p1, p2, p3, v0}, Lyads/bj2;->a(Lyads/tt;Landroid/view/View;Lyads/br0;Lbm3;)V

    return-void
.end method

.method public final b(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Ljava/util/List;Ljava/util/List;)V
    .locals 11

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static {v9, v8}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v3, p1, Lyads/vq0;->O:Lyads/qb1;

    if-eqz p3, :cond_d

    iget-object v4, p0, Lyads/bj2;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v4, 0x0

    move-object v5, p3

    move-object v7, v4

    :goto_0
    if-eqz v5, :cond_5

    invoke-static {v5}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    move-object v7, v5

    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v10, v5, Landroid/view/View;

    if-eqz v10, :cond_4

    check-cast v5, Landroid/view/View;

    goto :goto_0

    :cond_4
    move-object v5, v4

    goto :goto_0

    :cond_5
    if-nez v7, :cond_7

    invoke-virtual {p3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v4, p1, Lyads/vq0;->O:Lyads/qb1;

    invoke-static {v4, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v1, p0, Lyads/bj2;->f:Lyads/kk5;

    move-object v3, p1

    move-object v4, p2

    move-object v2, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lyads/kk5;->a(Landroid/view/View;Lyads/vq0;Lyads/fs2;Lyads/br0;Ljava/util/List;)V

    invoke-static {v8, p2}, Lyads/bj2;->a(Ljava/util/List;Lyads/fs2;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v9, p2}, Lyads/bj2;->a(Ljava/util/List;Lyads/fs2;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lyads/bj2;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Ljava/util/List;Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lyads/bj2;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7
    move-object v1, p3

    move-object v10, v4

    :goto_1
    if-eqz v1, :cond_b

    invoke-static {v1}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    move-object v10, v1

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v5, v1, Landroid/view/View;

    if-eqz v5, :cond_a

    check-cast v1, Landroid/view/View;

    goto :goto_1

    :cond_a
    move-object v1, v4

    goto :goto_1

    :cond_b
    if-eqz v10, :cond_c

    new-instance v0, Lyads/aj2;

    move-object v1, p1

    move-object v5, p2

    move-object v4, p3

    move-object v2, v3

    move-object v7, v6

    move-object v3, p0

    move-object v6, p4

    invoke-direct/range {v0 .. v9}, Lyads/aj2;-><init>(Lyads/vq0;Lyads/qb1;Lyads/bj2;Landroid/view/View;Lyads/fs2;Lyads/br0;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object v1, v0

    invoke-virtual {v10, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget-object v1, Lj59;->a:Lj59;

    :cond_c
    iget-object v0, p0, Lyads/bj2;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p3, p4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_d
    iget-object v1, p0, Lyads/bj2;->f:Lyads/kk5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/r02;

    invoke-virtual {v1, v3}, Lyads/kk5;->a(Lyads/r02;)V

    goto :goto_2

    :cond_e
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lyads/si2;

    iget-object v6, p0, Lyads/bj2;->d:Lyads/cj2;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lyads/bj2;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/r02;ILyads/cj2;)Z

    goto :goto_3

    :cond_f
    invoke-interface/range {p6 .. p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lyads/gc1;

    iget-object v6, p0, Lyads/bj2;->e:Lyads/cj2;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lyads/bj2;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/r02;ILyads/cj2;)Z

    goto :goto_4

    :cond_10
    :goto_5
    return-void
.end method

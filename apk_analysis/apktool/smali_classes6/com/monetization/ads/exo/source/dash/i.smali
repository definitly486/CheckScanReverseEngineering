.class public final Lcom/monetization/ads/exo/source/dash/i;
.super Lyads/cs;
.source "SourceFile"


# instance fields
.field public A:Lyads/ru3;

.field public B:Lyads/p16;

.field public C:Lyads/nc0;

.field public D:Landroid/os/Handler;

.field public E:Lyads/j04;

.field public F:Landroid/net/Uri;

.field public final G:Landroid/net/Uri;

.field public H:Lyads/kc0;

.field public I:Z

.field public J:J

.field public K:J

.field public L:J

.field public M:I

.field public N:J

.field public O:I

.field public final h:Lyads/p04;

.field public final i:Z

.field public final j:Lyads/vc0;

.field public final k:Lyads/gk0;

.field public final l:Lyads/dk0;

.field public final m:Lyads/xl2;

.field public final n:Lyads/ll0;

.field public final o:Lyads/ns;

.field public final p:J

.field public final q:Lyads/k14;

.field public final r:Lyads/it4;

.field public final s:Lcom/monetization/ads/exo/source/dash/e;

.field public final t:Ljava/lang/Object;

.field public final u:Landroid/util/SparseArray;

.field public final v:Ljava/lang/Runnable;

.field public final w:Ljava/lang/Runnable;

.field public final x:Lcom/monetization/ads/exo/source/dash/c;

.field public final y:Lyads/su3;

.field public z:Lyads/wc0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.dash"

    invoke-static {v0}, Lyads/nq2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lyads/p04;Lyads/vc0;Lyads/it4;Lyads/gk0;Lyads/dk0;Lyads/xl2;Lyads/ll0;J)V
    .locals 1

    invoke-direct {p0}, Lyads/cs;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->h:Lyads/p04;

    iget-object v0, p1, Lyads/p04;->d:Lyads/j04;

    iput-object v0, p0, Lcom/monetization/ads/exo/source/dash/i;->E:Lyads/j04;

    iget-object v0, p1, Lyads/p04;->c:Lyads/k04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lyads/k04;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/monetization/ads/exo/source/dash/i;->F:Landroid/net/Uri;

    iget-object p1, p1, Lyads/p04;->c:Lyads/k04;

    iget-object p1, p1, Lyads/k04;->a:Landroid/net/Uri;

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->G:Landroid/net/Uri;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iput-object p2, p0, Lcom/monetization/ads/exo/source/dash/i;->j:Lyads/vc0;

    iput-object p3, p0, Lcom/monetization/ads/exo/source/dash/i;->r:Lyads/it4;

    iput-object p4, p0, Lcom/monetization/ads/exo/source/dash/i;->k:Lyads/gk0;

    iput-object p6, p0, Lcom/monetization/ads/exo/source/dash/i;->m:Lyads/xl2;

    iput-object p7, p0, Lcom/monetization/ads/exo/source/dash/i;->n:Lyads/ll0;

    iput-wide p8, p0, Lcom/monetization/ads/exo/source/dash/i;->p:J

    iput-object p5, p0, Lcom/monetization/ads/exo/source/dash/i;->l:Lyads/dk0;

    new-instance p1, Lyads/ns;

    invoke-direct {p1}, Lyads/ns;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->o:Lyads/ns;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/monetization/ads/exo/source/dash/i;->i:Z

    iget-object p1, p0, Lyads/cs;->c:Lyads/k14;

    new-instance p2, Lyads/k14;

    iget-object p3, p1, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p4, 0x0

    const/4 p5, 0x0

    const-wide/16 p6, 0x0

    invoke-direct/range {p2 .. p7}, Lyads/k14;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILyads/h14;J)V

    iput-object p2, p0, Lcom/monetization/ads/exo/source/dash/i;->q:Lyads/k14;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->t:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->u:Landroid/util/SparseArray;

    new-instance p1, Lcom/monetization/ads/exo/source/dash/c;

    invoke-direct {p1, p0}, Lcom/monetization/ads/exo/source/dash/c;-><init>(Lcom/monetization/ads/exo/source/dash/i;)V

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->x:Lcom/monetization/ads/exo/source/dash/c;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/monetization/ads/exo/source/dash/i;->N:J

    iput-wide p1, p0, Lcom/monetization/ads/exo/source/dash/i;->L:J

    new-instance p1, Lcom/monetization/ads/exo/source/dash/e;

    invoke-direct {p1, p0}, Lcom/monetization/ads/exo/source/dash/e;-><init>(Lcom/monetization/ads/exo/source/dash/i;)V

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->s:Lcom/monetization/ads/exo/source/dash/e;

    new-instance p1, Lcom/monetization/ads/exo/source/dash/f;

    invoke-direct {p1, p0}, Lcom/monetization/ads/exo/source/dash/f;-><init>(Lcom/monetization/ads/exo/source/dash/i;)V

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->y:Lyads/su3;

    new-instance p1, Ly29;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Ly29;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->v:Ljava/lang/Runnable;

    new-instance p1, Le7;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Le7;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->w:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Lyads/h14;Lyads/aj0;J)Lyads/z04;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    .line 1438
    iget-object v1, v4, Lyads/b14;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, v0, Lcom/monetization/ads/exo/source/dash/i;->O:I

    sub-int v7, v1, v2

    .line 1439
    iget-object v1, v0, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    .line 1440
    iget-object v1, v1, Lyads/kc0;->m:Ljava/util/List;

    .line 1441
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/au4;

    .line 1442
    iget-wide v5, v1, Lyads/au4;->b:J

    .line 1443
    iget-object v1, v0, Lyads/cs;->c:Lyads/k14;

    .line 1444
    new-instance v13, Lyads/k14;

    .line 1445
    iget-object v2, v1, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x0

    move-object v1, v13

    .line 1446
    invoke-direct/range {v1 .. v6}, Lyads/k14;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILyads/h14;J)V

    .line 1447
    iget-object v1, v0, Lyads/cs;->d:Lyads/tl2;

    .line 1448
    new-instance v11, Lyads/tl2;

    .line 1449
    iget-object v1, v1, Lyads/tl2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    .line 1450
    invoke-direct {v11, v1, v2, v4}, Lyads/tl2;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILyads/h14;)V

    .line 1451
    new-instance v3, Lyads/pc0;

    iget v1, v0, Lcom/monetization/ads/exo/source/dash/i;->O:I

    add-int v4, v1, v7

    iget-object v5, v0, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-object v6, v0, Lcom/monetization/ads/exo/source/dash/i;->o:Lyads/ns;

    iget-object v8, v0, Lcom/monetization/ads/exo/source/dash/i;->k:Lyads/gk0;

    iget-object v9, v0, Lcom/monetization/ads/exo/source/dash/i;->B:Lyads/p16;

    iget-object v10, v0, Lcom/monetization/ads/exo/source/dash/i;->m:Lyads/xl2;

    iget-object v12, v0, Lcom/monetization/ads/exo/source/dash/i;->n:Lyads/ll0;

    iget-wide v14, v0, Lcom/monetization/ads/exo/source/dash/i;->L:J

    iget-object v1, v0, Lcom/monetization/ads/exo/source/dash/i;->y:Lyads/su3;

    iget-object v2, v0, Lcom/monetization/ads/exo/source/dash/i;->l:Lyads/dk0;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/monetization/ads/exo/source/dash/i;->x:Lcom/monetization/ads/exo/source/dash/c;

    move-object/from16 v19, v1

    .line 1452
    iget-object v1, v0, Lyads/cs;->g:Lyads/rw4;

    if-eqz v1, :cond_0

    move-object/from16 v17, p2

    move-object/from16 v20, v1

    move-object/from16 v18, v2

    .line 1453
    invoke-direct/range {v3 .. v20}, Lyads/pc0;-><init>(ILyads/kc0;Lyads/ns;ILyads/gk0;Lyads/p16;Lyads/xl2;Lyads/tl2;Lyads/ll0;Lyads/k14;JLyads/su3;Lyads/aj0;Lyads/dk0;Lcom/monetization/ads/exo/source/dash/c;Lyads/rw4;)V

    .line 1454
    iget-object v0, v0, Lcom/monetization/ads/exo/source/dash/i;->u:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v3

    .line 1455
    :cond_0
    invoke-static {}, Lud;->g()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 1

    .line 1471
    const-string v0, "Failed to resolve time offset."

    .line 1472
    invoke-static {v0, p1}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DashMediaSource"

    invoke-static {v0, p1}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1473
    invoke-virtual {p0, p1}, Lcom/monetization/ads/exo/source/dash/i;->a(Z)V

    return-void
.end method

.method public final a(Lyads/p16;)V
    .locals 2

    .line 1474
    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->B:Lyads/p16;

    .line 1475
    iget-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->m:Lyads/xl2;

    invoke-interface {p1}, Lyads/xl2;->prepare()V

    .line 1476
    iget-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->m:Lyads/xl2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1477
    iget-object v1, p0, Lyads/cs;->g:Lyads/rw4;

    if-eqz v1, :cond_1

    .line 1478
    invoke-interface {p1, v0, v1}, Lyads/xl2;->a(Landroid/os/Looper;Lyads/rw4;)V

    .line 1479
    iget-boolean p1, p0, Lcom/monetization/ads/exo/source/dash/i;->i:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1480
    invoke-virtual {p0, p1}, Lcom/monetization/ads/exo/source/dash/i;->a(Z)V

    return-void

    .line 1481
    :cond_0
    iget-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->j:Lyads/vc0;

    invoke-interface {p1}, Lyads/vc0;->a()Lyads/wc0;

    move-result-object p1

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->z:Lyads/wc0;

    .line 1482
    new-instance p1, Lyads/ru3;

    const-string v0, "DashMediaSource"

    invoke-direct {p1, v0}, Lyads/ru3;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->A:Lyads/ru3;

    const/4 p1, 0x0

    .line 1483
    invoke-static {p1}, Lyads/u56;->a(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    .line 1484
    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/i;->D:Landroid/os/Handler;

    .line 1485
    invoke-virtual {p0}, Lcom/monetization/ads/exo/source/dash/i;->h()V

    return-void

    .line 1486
    :cond_1
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/z04;)V
    .locals 10

    .line 1456
    check-cast p1, Lyads/pc0;

    .line 1457
    iget-object v0, p1, Lyads/pc0;->n:Lyads/ow4;

    const/4 v1, 0x1

    .line 1458
    iput-boolean v1, v0, Lyads/ow4;->j:Z

    .line 1459
    iget-object v0, v0, Lyads/ow4;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1460
    iget-object v0, p1, Lyads/pc0;->t:[Lyads/jz;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 1461
    iput-object p1, v5, Lyads/jz;->s:Lyads/pc0;

    .line 1462
    iget-object v6, v5, Lyads/jz;->n:Lyads/lc5;

    .line 1463
    invoke-virtual {v6}, Lyads/lc5;->a()V

    .line 1464
    invoke-virtual {v6}, Lyads/lc5;->d()V

    .line 1465
    iget-object v6, v5, Lyads/jz;->o:[Lyads/lc5;

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 1466
    invoke-virtual {v9}, Lyads/lc5;->a()V

    .line 1467
    invoke-virtual {v9}, Lyads/lc5;->d()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1468
    :cond_0
    iget-object v6, v5, Lyads/jz;->j:Lyads/ru3;

    invoke-virtual {v6, v5}, Lyads/ru3;->a(Lyads/ou3;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1469
    :cond_1
    iput-object v1, p1, Lyads/pc0;->s:Lyads/y04;

    .line 1470
    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/i;->u:Landroid/util/SparseArray;

    iget p1, p1, Lyads/pc0;->b:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final a(Z)V
    .locals 41

    move-object/from16 v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v0, v1, Lcom/monetization/ads/exo/source/dash/i;->u:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    iget-object v0, v1, Lcom/monetization/ads/exo/source/dash/i;->u:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget v5, v1, Lcom/monetization/ads/exo/source/dash/i;->O:I

    if-lt v0, v5, :cond_9

    iget-object v5, v1, Lcom/monetization/ads/exo/source/dash/i;->u:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/pc0;

    iget-object v6, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget v7, v1, Lcom/monetization/ads/exo/source/dash/i;->O:I

    sub-int v7, v0, v7

    iput-object v6, v5, Lyads/pc0;->w:Lyads/kc0;

    iput v7, v5, Lyads/pc0;->x:I

    iget-object v0, v5, Lyads/pc0;->n:Lyads/ow4;

    iput-boolean v2, v0, Lyads/ow4;->i:Z

    iput-object v6, v0, Lyads/ow4;->g:Lyads/kc0;

    iget-object v8, v0, Lyads/ow4;->f:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, v0, Lyads/ow4;->g:Lyads/kc0;

    iget-wide v11, v11, Lyads/kc0;->h:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    iget-object v8, v5, Lyads/pc0;->t:[Lyads/jz;

    if-eqz v8, :cond_5

    array-length v9, v8

    move v10, v2

    :goto_2
    if-ge v10, v9, :cond_4

    aget-object v0, v8, v10

    iget-object v11, v0, Lyads/jz;->f:Lyads/jk0;

    :try_start_0
    iput-object v6, v11, Lyads/jk0;->k:Lyads/kc0;

    iput v7, v11, Lyads/jk0;->l:I

    invoke-virtual {v6, v7}, Lyads/kc0;->a(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Lyads/u56;->a(J)J

    move-result-wide v12

    iget-object v0, v11, Lyads/jk0;->k:Lyads/kc0;

    iget v14, v11, Lyads/jk0;->l:I

    iget-object v0, v0, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/au4;

    iget-object v0, v0, Lyads/au4;->c:Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v11, Lyads/jk0;->c:[I
    :try_end_0
    .catch Lyads/vs; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v16, 0x1

    :try_start_1
    array-length v4, v15

    :goto_3
    if-ge v2, v4, :cond_2

    move/from16 v17, v2

    aget v2, v15, v17

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/eb;

    iget-object v2, v2, Lyads/eb;->c:Ljava/util/List;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v17, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_2
    const/4 v0, 0x0

    :goto_4
    iget-object v2, v11, Lyads/jk0;->i:[Lyads/hk0;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, v11, Lyads/jk0;->j:Lyads/er2;

    invoke-interface {v2, v0}, Lyads/er2;->b(I)I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/o75;

    iget-object v4, v11, Lyads/jk0;->i:[Lyads/hk0;

    aget-object v15, v4, v0

    invoke-virtual {v15, v12, v13, v2}, Lyads/hk0;->a(JLyads/o75;)Lyads/hk0;

    move-result-object v2

    aput-object v2, v4, v0
    :try_end_1
    .catch Lyads/vs; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_1
    move-exception v0

    const/16 v16, 0x1

    :goto_5
    iput-object v0, v11, Lyads/jk0;->m:Lyads/vs;

    :cond_3
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const/16 v16, 0x1

    iget-object v0, v5, Lyads/pc0;->s:Lyads/y04;

    invoke-interface {v0, v5}, Lyads/ti5;->a(Lyads/ui5;)V

    goto :goto_6

    :cond_5
    const/16 v16, 0x1

    :goto_6
    iget-object v0, v6, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/au4;

    iget-object v0, v0, Lyads/au4;->d:Ljava/util/List;

    iput-object v0, v5, Lyads/pc0;->y:Ljava/util/List;

    iget-object v0, v5, Lyads/pc0;->u:[Lyads/hp2;

    array-length v2, v0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v2, :cond_9

    aget-object v8, v0, v4

    iget-object v9, v5, Lyads/pc0;->y:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/ip2;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v10, Lyads/ip2;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lyads/ip2;->d:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v13, v8, Lyads/hp2;->f:Lyads/ip2;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v13, Lyads/ip2;->c:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v13, Lyads/ip2;->d:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v9, v6, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    iget-boolean v11, v6, Lyads/kc0;->d:Z

    if-eqz v11, :cond_7

    if-ne v7, v9, :cond_7

    move/from16 v9, v16

    goto :goto_8

    :cond_7
    const/4 v9, 0x0

    :goto_8
    invoke-virtual {v8, v10, v9}, Lyads/hp2;->a(Lyads/ip2;Z)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    const/16 v16, 0x1

    iget-object v0, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-object v0, v0, Lyads/kc0;->m:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/au4;

    iget-object v2, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-object v2, v2, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-object v3, v3, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/au4;

    iget-object v4, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    invoke-virtual {v4, v2}, Lyads/kc0;->a(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lyads/u56;->a(J)J

    move-result-wide v4

    iget-wide v6, v1, Lcom/monetization/ads/exo/source/dash/i;->L:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v6, v8

    if-nez v2, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_9

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    add-long/2addr v6, v10

    :goto_9
    invoke-static {v6, v7}, Lyads/u56;->a(J)J

    move-result-wide v6

    iget-object v2, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lyads/kc0;->a(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Lyads/u56;->a(J)J

    move-result-wide v10

    iget-wide v12, v0, Lyads/au4;->b:J

    invoke-static {v12, v13}, Lyads/u56;->a(J)J

    move-result-wide v12

    const/4 v2, 0x0

    :goto_a
    iget-object v14, v0, Lyads/au4;->c:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x2

    if-ge v2, v14, :cond_e

    iget-object v14, v0, Lyads/au4;->c:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyads/eb;

    iget v14, v14, Lyads/eb;->b:I

    move-wide/from16 v17, v8

    move/from16 v8, v16

    if-eq v14, v8, :cond_d

    if-ne v14, v15, :cond_c

    goto :goto_b

    :cond_c
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v8, v17

    const/16 v16, 0x1

    goto :goto_a

    :cond_d
    :goto_b
    const/4 v2, 0x1

    goto :goto_c

    :cond_e
    move-wide/from16 v17, v8

    const/4 v2, 0x0

    :goto_c
    move-wide/from16 v19, v12

    const/4 v8, 0x0

    :goto_d
    iget-object v9, v0, Lyads/au4;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_14

    iget-object v9, v0, Lyads/au4;->c:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/eb;

    const-wide/16 v22, 0x0

    iget-object v14, v9, Lyads/eb;->c:Ljava/util/List;

    if-eqz v2, :cond_f

    iget v9, v9, Lyads/eb;->b:I

    const/4 v15, 0x3

    if-eq v9, v15, :cond_13

    :cond_f
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_f

    :cond_10
    const/4 v9, 0x0

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyads/o75;

    invoke-virtual {v14}, Lyads/o75;->d()Lyads/qc0;

    move-result-object v9

    if-nez v9, :cond_11

    goto :goto_e

    :cond_11
    invoke-interface {v9, v10, v11, v6, v7}, Lyads/qc0;->e(JJ)J

    move-result-wide v14

    cmp-long v14, v14, v22

    if-nez v14, :cond_12

    :goto_e
    move-wide/from16 v12, v19

    goto :goto_10

    :cond_12
    invoke-interface {v9, v10, v11, v6, v7}, Lyads/qc0;->c(JJ)J

    move-result-wide v14

    invoke-interface {v9, v14, v15}, Lyads/qc0;->a(J)J

    move-result-wide v14

    add-long v14, v14, v19

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    :cond_13
    :goto_f
    add-int/lit8 v8, v8, 0x1

    const/4 v15, 0x2

    goto :goto_d

    :cond_14
    const-wide/16 v22, 0x0

    :goto_10
    iget-wide v8, v3, Lyads/au4;->b:J

    invoke-static {v8, v9}, Lyads/u56;->a(J)J

    move-result-wide v8

    const/4 v2, 0x0

    :goto_11
    iget-object v10, v3, Lyads/au4;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_17

    iget-object v10, v3, Lyads/au4;->c:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyads/eb;

    iget v10, v10, Lyads/eb;->b:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_16

    const/4 v11, 0x2

    if-ne v10, v11, :cond_15

    goto :goto_12

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_16
    :goto_12
    const/4 v2, 0x1

    goto :goto_13

    :cond_17
    const/4 v2, 0x0

    :goto_13
    const-wide v10, 0x7fffffffffffffffL

    const/4 v14, 0x0

    :goto_14
    iget-object v15, v3, Lyads/au4;->c:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_1d

    iget-object v15, v3, Lyads/au4;->c:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lyads/eb;

    move/from16 v19, v2

    iget-object v2, v15, Lyads/eb;->c:Ljava/util/List;

    if-eqz v19, :cond_18

    iget v15, v15, Lyads/eb;->b:I

    move-wide/from16 v20, v8

    const/4 v8, 0x3

    if-eq v15, v8, :cond_1c

    goto :goto_15

    :cond_18
    move-wide/from16 v20, v8

    const/4 v8, 0x3

    :goto_15
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_19

    goto :goto_16

    :cond_19
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/o75;

    invoke-virtual {v2}, Lyads/o75;->d()Lyads/qc0;

    move-result-object v2

    if-nez v2, :cond_1a

    add-long v8, v20, v4

    goto :goto_17

    :cond_1a
    invoke-interface {v2, v4, v5, v6, v7}, Lyads/qc0;->e(JJ)J

    move-result-wide v24

    cmp-long v9, v24, v22

    if-nez v9, :cond_1b

    move-wide/from16 v8, v20

    goto :goto_17

    :cond_1b
    invoke-interface {v2, v4, v5, v6, v7}, Lyads/qc0;->c(JJ)J

    move-result-wide v26

    add-long v26, v26, v24

    const-wide/16 v24, 0x1

    sub-long v8, v26, v24

    invoke-interface {v2, v8, v9}, Lyads/qc0;->a(J)J

    move-result-wide v24

    add-long v24, v24, v20

    invoke-interface {v2, v8, v9, v4, v5}, Lyads/qc0;->b(JJ)J

    move-result-wide v8

    add-long v8, v8, v24

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-wide v10, v8

    :cond_1c
    :goto_16
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v19

    move-wide/from16 v8, v20

    goto :goto_14

    :cond_1d
    move-wide v8, v10

    :goto_17
    iget-object v2, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-boolean v2, v2, Lyads/kc0;->d:Z

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    :goto_18
    iget-object v4, v3, Lyads/au4;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1f

    iget-object v4, v3, Lyads/au4;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/eb;

    iget-object v4, v4, Lyads/eb;->c:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/o75;

    invoke-virtual {v4}, Lyads/o75;->d()Lyads/qc0;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-interface {v4}, Lyads/qc0;->a()Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_19

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_1f
    const/4 v2, 0x1

    goto :goto_1a

    :cond_20
    :goto_19
    const/4 v2, 0x0

    :goto_1a
    if-eqz v2, :cond_21

    iget-object v3, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-wide v3, v3, Lyads/kc0;->f:J

    cmp-long v5, v3, v17

    if-eqz v5, :cond_21

    invoke-static {v3, v4}, Lyads/u56;->a(J)J

    move-result-wide v3

    sub-long v3, v8, v3

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    :cond_21
    sub-long v34, v8, v12

    iget-object v3, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-boolean v4, v3, Lyads/kc0;->d:Z

    if-eqz v4, :cond_36

    iget-wide v3, v3, Lyads/kc0;->a:J

    cmp-long v5, v3, v17

    if-eqz v5, :cond_35

    invoke-static {v3, v4}, Lyads/u56;->a(J)J

    move-result-wide v3

    sub-long/2addr v6, v3

    sub-long/2addr v6, v12

    invoke-static {v6, v7}, Lyads/u56;->b(J)J

    move-result-wide v3

    iget-object v5, v1, Lcom/monetization/ads/exo/source/dash/i;->h:Lyads/p04;

    iget-object v5, v5, Lyads/p04;->d:Lyads/j04;

    iget-wide v8, v5, Lyads/j04;->d:J

    cmp-long v5, v8, v17

    if-eqz v5, :cond_22

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_1b

    :cond_22
    iget-object v5, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-object v5, v5, Lyads/kc0;->j:Lyads/bj5;

    if-eqz v5, :cond_23

    iget-wide v8, v5, Lyads/bj5;->c:J

    cmp-long v5, v8, v17

    if-eqz v5, :cond_23

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_1b

    :cond_23
    move-wide v8, v3

    :goto_1b
    sub-long v10, v6, v34

    invoke-static {v10, v11}, Lyads/u56;->b(J)J

    move-result-wide v10

    cmp-long v5, v10, v22

    if-gez v5, :cond_24

    cmp-long v5, v8, v22

    if-lez v5, :cond_24

    move-wide/from16 v10, v22

    :cond_24
    iget-object v5, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-wide v14, v5, Lyads/kc0;->c:J

    cmp-long v5, v14, v17

    if-eqz v5, :cond_25

    add-long/2addr v10, v14

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    :cond_25
    iget-object v5, v1, Lcom/monetization/ads/exo/source/dash/i;->h:Lyads/p04;

    iget-object v5, v5, Lyads/p04;->d:Lyads/j04;

    iget-wide v14, v5, Lyads/j04;->c:J

    cmp-long v5, v14, v17

    if-eqz v5, :cond_26

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_1c

    :cond_26
    iget-object v5, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-object v5, v5, Lyads/kc0;->j:Lyads/bj5;

    if-eqz v5, :cond_27

    iget-wide v14, v5, Lyads/bj5;->b:J

    cmp-long v5, v14, v17

    if-eqz v5, :cond_27

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :cond_27
    :goto_1c
    cmp-long v3, v10, v8

    if-lez v3, :cond_28

    move-wide v8, v10

    :cond_28
    iget-object v3, v1, Lcom/monetization/ads/exo/source/dash/i;->E:Lyads/j04;

    iget-wide v3, v3, Lyads/j04;->b:J

    cmp-long v5, v3, v17

    if-eqz v5, :cond_29

    goto :goto_1d

    :cond_29
    iget-object v3, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-object v4, v3, Lyads/kc0;->j:Lyads/bj5;

    if-eqz v4, :cond_2a

    iget-wide v4, v4, Lyads/bj5;->a:J

    cmp-long v14, v4, v17

    if-eqz v14, :cond_2a

    move-wide v3, v4

    goto :goto_1d

    :cond_2a
    iget-wide v3, v3, Lyads/kc0;->g:J

    cmp-long v5, v3, v17

    if-eqz v5, :cond_2b

    goto :goto_1d

    :cond_2b
    iget-wide v3, v1, Lcom/monetization/ads/exo/source/dash/i;->p:J

    :goto_1d
    cmp-long v5, v3, v10

    if-gez v5, :cond_2c

    move-wide v3, v10

    :cond_2c
    cmp-long v5, v3, v8

    const-wide/32 v14, 0x4c4b40

    const-wide/16 v19, 0x2

    if-lez v5, :cond_2d

    div-long v3, v34, v19

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    sub-long v3, v6, v3

    invoke-static {v3, v4}, Lyads/u56;->b(J)J

    move-result-wide v3

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_2d
    move-wide/from16 v25, v3

    iget-object v3, v1, Lcom/monetization/ads/exo/source/dash/i;->h:Lyads/p04;

    iget-object v3, v3, Lyads/p04;->d:Lyads/j04;

    iget v4, v3, Lyads/j04;->e:F

    const v5, -0x800001

    cmpl-float v21, v4, v5

    if-eqz v21, :cond_2e

    goto :goto_1e

    :cond_2e
    iget-object v4, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-object v4, v4, Lyads/kc0;->j:Lyads/bj5;

    if-eqz v4, :cond_2f

    iget v4, v4, Lyads/bj5;->d:F

    goto :goto_1e

    :cond_2f
    move v4, v5

    :goto_1e
    iget v3, v3, Lyads/j04;->f:F

    cmpl-float v21, v3, v5

    if-eqz v21, :cond_30

    goto :goto_1f

    :cond_30
    iget-object v3, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-object v3, v3, Lyads/kc0;->j:Lyads/bj5;

    if-eqz v3, :cond_31

    iget v3, v3, Lyads/bj5;->e:F

    goto :goto_1f

    :cond_31
    move v3, v5

    :goto_1f
    cmpl-float v21, v4, v5

    if-nez v21, :cond_33

    cmpl-float v5, v3, v5

    if-nez v5, :cond_33

    iget-object v5, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-object v5, v5, Lyads/kc0;->j:Lyads/bj5;

    if-eqz v5, :cond_32

    iget-wide v14, v5, Lyads/bj5;->a:J

    cmp-long v5, v14, v17

    if-nez v5, :cond_33

    :cond_32
    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v31, v4

    move/from16 v32, v31

    goto :goto_20

    :cond_33
    move/from16 v32, v3

    move/from16 v31, v4

    :goto_20
    new-instance v24, Lyads/j04;

    move-wide/from16 v29, v8

    move-wide/from16 v27, v10

    invoke-direct/range {v24 .. v32}, Lyads/j04;-><init>(JJJFF)V

    move-object/from16 v3, v24

    iput-object v3, v1, Lcom/monetization/ads/exo/source/dash/i;->E:Lyads/j04;

    iget-object v3, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-wide v3, v3, Lyads/kc0;->a:J

    invoke-static {v12, v13}, Lyads/u56;->b(J)J

    move-result-wide v8

    add-long/2addr v8, v3

    iget-object v3, v1, Lcom/monetization/ads/exo/source/dash/i;->E:Lyads/j04;

    iget-wide v3, v3, Lyads/j04;->b:J

    invoke-static {v3, v4}, Lyads/u56;->a(J)J

    move-result-wide v3

    sub-long/2addr v6, v3

    div-long v3, v34, v19

    const-wide/32 v10, 0x4c4b40

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-gez v5, :cond_34

    move-wide/from16 v36, v3

    :goto_21
    move-wide/from16 v27, v8

    goto :goto_22

    :cond_34
    move-wide/from16 v36, v6

    goto :goto_21

    :cond_35
    invoke-static {}, Lud;->g()V

    return-void

    :cond_36
    move-wide/from16 v27, v17

    move-wide/from16 v36, v22

    :goto_22
    iget-wide v3, v0, Lyads/au4;->b:J

    invoke-static {v3, v4}, Lyads/u56;->a(J)J

    move-result-wide v3

    sub-long v32, v12, v3

    new-instance v24, Lcom/monetization/ads/exo/source/dash/b;

    iget-object v0, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-wide v3, v0, Lyads/kc0;->a:J

    iget-wide v5, v1, Lcom/monetization/ads/exo/source/dash/i;->L:J

    iget v7, v1, Lcom/monetization/ads/exo/source/dash/i;->O:I

    iget-object v8, v1, Lcom/monetization/ads/exo/source/dash/i;->h:Lyads/p04;

    iget-boolean v9, v0, Lyads/kc0;->d:Z

    if-eqz v9, :cond_37

    iget-object v9, v1, Lcom/monetization/ads/exo/source/dash/i;->E:Lyads/j04;

    :goto_23
    move-object/from16 v38, v0

    move-wide/from16 v25, v3

    move-wide/from16 v29, v5

    move/from16 v31, v7

    move-object/from16 v39, v8

    move-object/from16 v40, v9

    goto :goto_24

    :cond_37
    const/4 v9, 0x0

    goto :goto_23

    :goto_24
    invoke-direct/range {v24 .. v40}, Lcom/monetization/ads/exo/source/dash/b;-><init>(JJJIJJJLyads/kc0;Lyads/p04;Lyads/j04;)V

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Lyads/cs;->a(Lyads/kx5;)V

    iget-boolean v0, v1, Lcom/monetization/ads/exo/source/dash/i;->i:Z

    if-nez v0, :cond_45

    iget-object v0, v1, Lcom/monetization/ads/exo/source/dash/i;->D:Landroid/os/Handler;

    iget-object v3, v1, Lcom/monetization/ads/exo/source/dash/i;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x1388

    if-eqz v2, :cond_42

    iget-object v0, v1, Lcom/monetization/ads/exo/source/dash/i;->D:Landroid/os/Handler;

    iget-object v2, v1, Lcom/monetization/ads/exo/source/dash/i;->w:Ljava/lang/Runnable;

    iget-object v5, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-wide v6, v1, Lcom/monetization/ads/exo/source/dash/i;->L:J

    cmp-long v8, v6, v17

    if-nez v8, :cond_38

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_25

    :cond_38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v6, v8

    :goto_25
    iget-object v8, v5, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    iget-object v9, v5, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/au4;

    iget-wide v10, v9, Lyads/au4;->b:J

    invoke-static {v10, v11}, Lyads/u56;->a(J)J

    move-result-wide v10

    invoke-virtual {v5, v8}, Lyads/kc0;->a(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Lyads/u56;->a(J)J

    move-result-wide v12

    invoke-static {v6, v7}, Lyads/u56;->a(J)J

    move-result-wide v6

    iget-wide v14, v5, Lyads/kc0;->a:J

    invoke-static {v14, v15}, Lyads/u56;->a(J)J

    move-result-wide v14

    invoke-static {v3, v4}, Lyads/u56;->a(J)J

    move-result-wide v19

    const/4 v5, 0x0

    :goto_26
    iget-object v8, v9, Lyads/au4;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_3c

    iget-object v8, v9, Lyads/au4;->c:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/eb;

    iget-object v8, v8, Lyads/eb;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_39

    const/4 v3, 0x0

    goto :goto_27

    :cond_39
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/o75;

    invoke-virtual {v4}, Lyads/o75;->d()Lyads/qc0;

    move-result-object v4

    if-eqz v4, :cond_3b

    add-long v24, v14, v10

    invoke-interface {v4, v12, v13, v6, v7}, Lyads/qc0;->d(JJ)J

    move-result-wide v26

    add-long v26, v26, v24

    sub-long v26, v26, v6

    const-wide/32 v24, 0x186a0

    sub-long v28, v19, v24

    cmp-long v4, v26, v28

    if-ltz v4, :cond_3a

    cmp-long v4, v26, v19

    if-lez v4, :cond_3b

    add-long v24, v19, v24

    cmp-long v4, v26, v24

    if-gez v4, :cond_3b

    :cond_3a
    move-wide/from16 v19, v26

    :cond_3b
    :goto_27
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v3, 0x1388

    goto :goto_26

    :cond_3c
    const/4 v3, 0x0

    sget-object v4, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v5, 0x3e8

    div-long v7, v19, v5

    mul-long v9, v7, v5

    sub-long v9, v19, v9

    cmp-long v11, v9, v22

    if-nez v11, :cond_3d

    goto :goto_2a

    :cond_3d
    xor-long v12, v19, v5

    const/16 v14, 0x3f

    shr-long/2addr v12, v14

    long-to-int v12, v12

    const/16 v16, 0x1

    or-int/lit8 v12, v12, 0x1

    sget-object v13, Lyads/wv3;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v13, v4

    packed-switch v4, :pswitch_data_0

    invoke-static {}, Lxp;->g()V

    return-void

    :pswitch_0
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long/2addr v4, v9

    sub-long/2addr v9, v4

    cmp-long v4, v9, v22

    if-nez v4, :cond_3e

    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    sget-object v4, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    goto :goto_29

    :cond_3e
    if-lez v4, :cond_3f

    goto :goto_28

    :pswitch_1
    if-lez v12, :cond_3f

    goto :goto_28

    :pswitch_2
    if-gez v12, :cond_3f

    :goto_28
    :pswitch_3
    move/from16 v3, v16

    goto :goto_29

    :pswitch_4
    if-nez v11, :cond_41

    :cond_3f
    :goto_29
    :pswitch_5
    if-eqz v3, :cond_40

    int-to-long v3, v12

    add-long/2addr v7, v3

    :cond_40
    :goto_2a
    invoke-virtual {v0, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2b

    :cond_41
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    :goto_2b
    iget-boolean v0, v1, Lcom/monetization/ads/exo/source/dash/i;->I:Z

    if-eqz v0, :cond_43

    invoke-virtual {v1}, Lcom/monetization/ads/exo/source/dash/i;->h()V

    goto :goto_2d

    :cond_43
    if-eqz p1, :cond_45

    iget-object v0, v1, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-boolean v2, v0, Lyads/kc0;->d:Z

    if-eqz v2, :cond_45

    iget-wide v2, v0, Lyads/kc0;->e:J

    cmp-long v0, v2, v17

    if-eqz v0, :cond_45

    cmp-long v0, v2, v22

    if-nez v0, :cond_44

    const-wide/16 v3, 0x1388

    goto :goto_2c

    :cond_44
    move-wide v3, v2

    :goto_2c
    iget-wide v5, v1, Lcom/monetization/ads/exo/source/dash/i;->J:J

    add-long/2addr v5, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v5, v2

    move-wide/from16 v2, v22

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v0, v1, Lcom/monetization/ads/exo/source/dash/i;->D:Landroid/os/Handler;

    iget-object v1, v1, Lcom/monetization/ads/exo/source/dash/i;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_45
    :goto_2d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Lyads/p04;
    .locals 0

    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/i;->h:Lyads/p04;

    return-object p0
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/i;->y:Lyads/su3;

    invoke-interface {p0}, Lyads/su3;->a()V

    return-void
.end method

.method public final e()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/monetization/ads/exo/source/dash/i;->I:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/monetization/ads/exo/source/dash/i;->z:Lyads/wc0;

    iget-object v2, p0, Lcom/monetization/ads/exo/source/dash/i;->A:Lyads/ru3;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lyads/ru3;->a(Lyads/ou3;)V

    iput-object v1, p0, Lcom/monetization/ads/exo/source/dash/i;->A:Lyads/ru3;

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/monetization/ads/exo/source/dash/i;->J:J

    iput-wide v2, p0, Lcom/monetization/ads/exo/source/dash/i;->K:J

    iget-boolean v2, p0, Lcom/monetization/ads/exo/source/dash/i;->i:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/monetization/ads/exo/source/dash/i;->H:Lyads/kc0;

    iget-object v2, p0, Lcom/monetization/ads/exo/source/dash/i;->G:Landroid/net/Uri;

    iput-object v2, p0, Lcom/monetization/ads/exo/source/dash/i;->F:Landroid/net/Uri;

    iput-object v1, p0, Lcom/monetization/ads/exo/source/dash/i;->C:Lyads/nc0;

    iget-object v2, p0, Lcom/monetization/ads/exo/source/dash/i;->D:Landroid/os/Handler;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/monetization/ads/exo/source/dash/i;->D:Landroid/os/Handler;

    :cond_2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/monetization/ads/exo/source/dash/i;->L:J

    iput v0, p0, Lcom/monetization/ads/exo/source/dash/i;->M:I

    iput-wide v1, p0, Lcom/monetization/ads/exo/source/dash/i;->N:J

    iput v0, p0, Lcom/monetization/ads/exo/source/dash/i;->O:I

    iget-object v0, p0, Lcom/monetization/ads/exo/source/dash/i;->u:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/monetization/ads/exo/source/dash/i;->o:Lyads/ns;

    iget-object v1, v0, Lyads/ns;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, v0, Lyads/ns;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v0, v0, Lyads/ns;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/i;->m:Lyads/xl2;

    invoke-interface {p0}, Lyads/xl2;->release()V

    return-void
.end method

.method public final synthetic f()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/monetization/ads/exo/source/dash/i;->a(Z)V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcom/monetization/ads/exo/source/dash/i;->A:Lyads/ru3;

    new-instance v1, Lcom/monetization/ads/exo/source/dash/a;

    invoke-direct {v1, p0}, Lcom/monetization/ads/exo/source/dash/a;-><init>(Lcom/monetization/ads/exo/source/dash/i;)V

    sget-object p0, Lyads/jo5;->b:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lyads/jo5;->c:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/monetization/ads/exo/source/dash/a;->a()V

    return-void

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lyads/ru3;

    const-string p0, "SntpClient"

    invoke-direct {v0, p0}, Lyads/ru3;-><init>(Ljava/lang/String;)V

    :cond_1
    new-instance p0, Lyads/io5;

    invoke-direct {p0}, Lyads/io5;-><init>()V

    new-instance v2, Lyads/ho5;

    invoke-direct {v2, v1}, Lyads/ho5;-><init>(Lcom/monetization/ads/exo/source/dash/a;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v2, v1}, Lyads/ru3;->a(Lyads/nu3;Lyads/ku3;I)J

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final h()V
    .locals 13

    iget-object v0, p0, Lcom/monetization/ads/exo/source/dash/i;->D:Landroid/os/Handler;

    iget-object v1, p0, Lcom/monetization/ads/exo/source/dash/i;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/monetization/ads/exo/source/dash/i;->A:Lyads/ru3;

    iget-object v1, v0, Lyads/ru3;->c:Ljava/io/IOException;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lyads/ru3;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/monetization/ads/exo/source/dash/i;->I:Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/monetization/ads/exo/source/dash/i;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/monetization/ads/exo/source/dash/i;->F:Landroid/net/Uri;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/monetization/ads/exo/source/dash/i;->I:Z

    new-instance v1, Lyads/jt4;

    iget-object v2, p0, Lcom/monetization/ads/exo/source/dash/i;->z:Lyads/wc0;

    iget-object v3, p0, Lcom/monetization/ads/exo/source/dash/i;->r:Lyads/it4;

    const/4 v4, 0x4

    invoke-direct {v1, v2, v0, v4, v3}, Lyads/jt4;-><init>(Lyads/wc0;Landroid/net/Uri;ILyads/it4;)V

    iget-object v0, p0, Lcom/monetization/ads/exo/source/dash/i;->s:Lcom/monetization/ads/exo/source/dash/e;

    iget-object v2, p0, Lcom/monetization/ads/exo/source/dash/i;->n:Lyads/ll0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/monetization/ads/exo/source/dash/i;->A:Lyads/ru3;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v0, v3}, Lyads/ru3;->a(Lyads/nu3;Lyads/ku3;I)J

    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/i;->q:Lyads/k14;

    new-instance v0, Lyads/cu3;

    iget-object v2, v1, Lyads/jt4;->b:Lyads/bd0;

    invoke-direct {v0, v2}, Lyads/cu3;-><init>(Lyads/bd0;)V

    iget v4, v1, Lyads/jt4;->c:I

    new-instance v3, Lyads/r04;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v1, v2}, Lyads/k14;->a(J)J

    move-result-wide v9

    invoke-virtual {p0, v1, v2}, Lyads/k14;->a(J)J

    move-result-wide v11

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v12}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v3}, Lyads/k14;->c(Lyads/cu3;Lyads/r04;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

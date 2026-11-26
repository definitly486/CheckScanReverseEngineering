.class public final Lyads/c26;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/yr2;

.field public final b:Ljava/util/List;

.field public final c:Lyads/as2;

.field public final d:Lyads/gs2;

.field public final e:Lyads/ao2;

.field public final f:Lyads/bt0;

.field public final g:Lnl3;

.field public h:Lyads/tp0;

.field public i:Lyads/zd2;

.field public final j:Ljava/util/WeakHashMap;

.field public k:Lyads/tp0;

.field public l:Lyads/tp0;

.field public m:Lyads/tp0;

.field public final n:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Lyads/yr2;Ljava/util/List;Lyads/as2;Lyads/gs2;Lyads/ao2;Lyads/bt0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/c26;->a:Lyads/yr2;

    iput-object p2, p0, Lyads/c26;->b:Ljava/util/List;

    iput-object p3, p0, Lyads/c26;->c:Lyads/as2;

    iput-object p4, p0, Lyads/c26;->d:Lyads/gs2;

    iput-object p5, p0, Lyads/c26;->e:Lyads/ao2;

    iput-object p6, p0, Lyads/c26;->f:Lyads/bt0;

    new-instance p1, Lu;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Lu;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lyads/c26;->g:Lnl3;

    new-instance p1, Lca2;

    invoke-direct {p1, p0, p2}, Lca2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, p4, p1}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    iput-object p1, p0, Lyads/c26;->h:Lyads/tp0;

    sget-object p1, Lyads/zd2;->e:Lyads/zd2;

    iput-object p1, p0, Lyads/c26;->i:Lyads/zd2;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lyads/c26;->j:Ljava/util/WeakHashMap;

    sget-object p1, Lyads/tp0;->a:Lyads/tp0;

    iput-object p1, p0, Lyads/c26;->k:Lyads/tp0;

    iput-object p1, p0, Lyads/c26;->l:Lyads/tp0;

    iput-object p1, p0, Lyads/c26;->m:Lyads/tp0;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lyads/c26;->n:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static final a(Lyads/c26;Lyads/u66;)Lj59;
    .locals 8

    .line 380
    iget-object p1, p0, Lyads/c26;->h:Lyads/tp0;

    .line 381
    instance-of v0, p1, Ljava/lang/AutoCloseable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move v7, v6

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    :try_start_0
    invoke-interface {p1, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v7, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move v7, v2

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_4
    instance-of v0, p1, Landroid/content/res/TypedArray;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_5
    instance-of v0, p1, Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_6

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :cond_6
    instance-of v0, p1, Landroid/media/MediaDrm;

    if-eqz v0, :cond_23

    check-cast p1, Landroid/media/MediaDrm;

    invoke-virtual {p1}, Landroid/media/MediaDrm;->release()V

    .line 382
    :cond_7
    :goto_1
    iget-object p1, p0, Lyads/c26;->k:Lyads/tp0;

    instance-of v0, p1, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_3

    :cond_8
    instance-of v0, p1, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_c

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p1, v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move v7, v6

    :cond_a
    :goto_2
    if-nez v0, :cond_b

    :try_start_1
    invoke-interface {p1, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    if-nez v7, :cond_a

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move v7, v2

    goto :goto_2

    :cond_b
    if-eqz v7, :cond_f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    :cond_c
    instance-of v0, p1, Landroid/content/res/TypedArray;

    if-eqz v0, :cond_d

    check-cast p1, Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_d
    instance-of v0, p1, Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_3

    :cond_e
    instance-of v0, p1, Landroid/media/MediaDrm;

    if-eqz v0, :cond_22

    check-cast p1, Landroid/media/MediaDrm;

    invoke-virtual {p1}, Landroid/media/MediaDrm;->release()V

    .line 383
    :cond_f
    :goto_3
    iget-object p1, p0, Lyads/c26;->l:Lyads/tp0;

    instance-of v0, p1, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_5

    :cond_10
    instance-of v0, p1, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_14

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p1, v0, :cond_11

    goto :goto_5

    :cond_11
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move v7, v6

    :cond_12
    :goto_4
    if-nez v0, :cond_13

    :try_start_2
    invoke-interface {p1, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    if-nez v7, :cond_12

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move v7, v2

    goto :goto_4

    :cond_13
    if-eqz v7, :cond_17

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_5

    :cond_14
    instance-of v0, p1, Landroid/content/res/TypedArray;

    if-eqz v0, :cond_15

    check-cast p1, Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_5

    :cond_15
    instance-of v0, p1, Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_16

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_5

    :cond_16
    instance-of v0, p1, Landroid/media/MediaDrm;

    if-eqz v0, :cond_21

    check-cast p1, Landroid/media/MediaDrm;

    invoke-virtual {p1}, Landroid/media/MediaDrm;->release()V

    .line 384
    :cond_17
    :goto_5
    iget-object p0, p0, Lyads/c26;->m:Lyads/tp0;

    instance-of p1, p0, Ljava/lang/AutoCloseable;

    if-eqz p1, :cond_18

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_7

    :cond_18
    instance-of p1, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_1c

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object p1

    if-ne p0, p1, :cond_19

    goto :goto_7

    :cond_19
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1a
    :goto_6
    if-nez p1, :cond_1b

    :try_start_3
    invoke-interface {p0, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    if-nez v6, :cond_1a

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move v6, v2

    goto :goto_6

    :cond_1b
    if-eqz v6, :cond_1f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_7

    :cond_1c
    instance-of p1, p0, Landroid/content/res/TypedArray;

    if-eqz p1, :cond_1d

    check-cast p0, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_7

    :cond_1d
    instance-of p1, p0, Landroid/media/MediaMetadataRetriever;

    if-eqz p1, :cond_1e

    check-cast p0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_7

    :cond_1e
    instance-of p1, p0, Landroid/media/MediaDrm;

    if-eqz p1, :cond_20

    check-cast p0, Landroid/media/MediaDrm;

    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    .line 385
    :cond_1f
    :goto_7
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    .line 386
    :cond_20
    invoke-static {}, Lmi2;->b()V

    return-object v1

    .line 387
    :cond_21
    invoke-static {}, Lmi2;->b()V

    return-object v1

    .line 388
    :cond_22
    invoke-static {}, Lmi2;->b()V

    return-object v1

    .line 389
    :cond_23
    invoke-static {}, Lmi2;->b()V

    return-object v1
.end method

.method public static final a(Lyads/c26;Lyads/zd2;)Lj59;
    .locals 0

    .line 378
    iput-object p1, p0, Lyads/c26;->i:Lyads/zd2;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/c26;Z)Lj59;
    .locals 0

    .line 379
    invoke-virtual {p0}, Lyads/c26;->c()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/vq0;Lyads/b26;)V
    .locals 1

    .line 411
    iget-object v0, p0, Lyads/vq0;->E:Ljava/lang/Object;

    .line 412
    monitor-enter v0

    .line 413
    :try_start_0
    iget-object p0, p0, Lyads/vq0;->v:Lyads/gp4;

    invoke-virtual {p0, p1}, Lyads/gp4;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final b(Lyads/c26;Lyads/zd2;)Lj59;
    .locals 0

    .line 148
    iput-object p1, p0, Lyads/c26;->i:Lyads/zd2;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lyads/c26;->n:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lyads/c26;->h:Lyads/tp0;

    instance-of v1, v0, Ljava/lang/AutoCloseable;

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move v7, v6

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    :try_start_0
    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v7, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move v7, v2

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Landroid/content/res/TypedArray;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_5
    instance-of v1, v0, Landroid/media/MediaMetadataRetriever;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :cond_6
    instance-of v1, v0, Landroid/media/MediaDrm;

    if-eqz v1, :cond_23

    check-cast v0, Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    :cond_7
    :goto_1
    iget-object v0, p0, Lyads/c26;->k:Lyads/tp0;

    instance-of v1, v0, Ljava/lang/AutoCloseable;

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_3

    :cond_8
    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_c

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v1

    if-ne v0, v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move v7, v6

    :cond_a
    :goto_2
    if-nez v1, :cond_b

    :try_start_1
    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    if-nez v7, :cond_a

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move v7, v2

    goto :goto_2

    :cond_b
    if-eqz v7, :cond_f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    :cond_c
    instance-of v1, v0, Landroid/content/res/TypedArray;

    if-eqz v1, :cond_d

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_d
    instance-of v1, v0, Landroid/media/MediaMetadataRetriever;

    if-eqz v1, :cond_e

    check-cast v0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_3

    :cond_e
    instance-of v1, v0, Landroid/media/MediaDrm;

    if-eqz v1, :cond_22

    check-cast v0, Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    :cond_f
    :goto_3
    iget-object v0, p0, Lyads/c26;->l:Lyads/tp0;

    instance-of v1, v0, Ljava/lang/AutoCloseable;

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_5

    :cond_10
    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_14

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v1

    if-ne v0, v1, :cond_11

    goto :goto_5

    :cond_11
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move v7, v6

    :cond_12
    :goto_4
    if-nez v1, :cond_13

    :try_start_2
    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    if-nez v7, :cond_12

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move v7, v2

    goto :goto_4

    :cond_13
    if-eqz v7, :cond_17

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_5

    :cond_14
    instance-of v1, v0, Landroid/content/res/TypedArray;

    if-eqz v1, :cond_15

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_5

    :cond_15
    instance-of v1, v0, Landroid/media/MediaMetadataRetriever;

    if-eqz v1, :cond_16

    check-cast v0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_5

    :cond_16
    instance-of v1, v0, Landroid/media/MediaDrm;

    if-eqz v1, :cond_21

    check-cast v0, Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    :cond_17
    :goto_5
    iget-object p0, p0, Lyads/c26;->m:Lyads/tp0;

    instance-of v0, p0, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_7

    :cond_18
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1c

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p0, v0, :cond_19

    goto :goto_7

    :cond_19
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1a
    :goto_6
    if-nez v0, :cond_1b

    :try_start_3
    invoke-interface {p0, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    if-nez v6, :cond_1a

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move v6, v2

    goto :goto_6

    :cond_1b
    if-eqz v6, :cond_1f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_7

    :cond_1c
    instance-of v0, p0, Landroid/content/res/TypedArray;

    if-eqz v0, :cond_1d

    check-cast p0, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_7

    :cond_1d
    instance-of v0, p0, Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_1e

    check-cast p0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_7

    :cond_1e
    instance-of v0, p0, Landroid/media/MediaDrm;

    if-eqz v0, :cond_20

    check-cast p0, Landroid/media/MediaDrm;

    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    :cond_1f
    :goto_7
    return-void

    :cond_20
    invoke-static {}, Lmi2;->b()V

    return-void

    :cond_21
    invoke-static {}, Lmi2;->b()V

    return-void

    :cond_22
    invoke-static {}, Lmi2;->b()V

    return-void

    :cond_23
    invoke-static {}, Lmi2;->b()V

    return-void

    :cond_24
    invoke-virtual {p0}, Lyads/c26;->b()V

    return-void
.end method

.method public final a(Lyads/vq0;)V
    .locals 6

    .line 390
    iget-object v0, p0, Lyads/c26;->m:Lyads/tp0;

    instance-of v1, v0, Ljava/lang/AutoCloseable;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v2, 0x0

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Landroid/content/res/TypedArray;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_5
    instance-of v1, v0, Landroid/media/MediaMetadataRetriever;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :cond_6
    instance-of v1, v0, Landroid/media/MediaDrm;

    if-eqz v1, :cond_8

    check-cast v0, Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    .line 391
    :cond_7
    :goto_1
    new-instance v0, Lyads/b26;

    invoke-direct {v0, p1, p0}, Lyads/b26;-><init>(Lyads/vq0;Lyads/c26;)V

    .line 392
    new-instance v1, Lqp9;

    invoke-direct {v1, p1, v0}, Lqp9;-><init>(Lyads/vq0;Lyads/b26;)V

    iput-object v1, p0, Lyads/c26;->m:Lyads/tp0;

    .line 393
    iget-object p0, p1, Lyads/vq0;->E:Ljava/lang/Object;

    monitor-enter p0

    .line 394
    :try_start_1
    iget-object p1, p1, Lyads/vq0;->v:Lyads/gp4;

    invoke-virtual {p1, v0}, Lyads/gp4;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 396
    :cond_8
    invoke-static {}, Lmi2;->b()V

    return-void
.end method

.method public final a(Lyads/vh2;)Z
    .locals 5

    const/4 v0, 0x0

    .line 397
    :try_start_0
    iget-object v1, p0, Lyads/c26;->a:Lyads/yr2;

    iget-object v2, p0, Lyads/c26;->d:Lyads/gs2;

    invoke-virtual {v1, v2}, Lyads/yr2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    iget-object v3, p0, Lyads/c26;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-nez v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 399
    iget-object v4, p0, Lyads/c26;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_1

    return v0

    .line 400
    :cond_1
    iget-object p0, p0, Lyads/c26;->i:Lyads/zd2;

    sget-object p1, Lyads/zd2;->e:Lyads/zd2;

    if-ne p0, p1, :cond_2

    if-eqz v3, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 401
    instance-of v1, p1, Ljava/lang/ClassCastException;

    const-string v2, "\')"

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/RuntimeException;

    .line 402
    iget-object v3, p0, Lyads/c26;->a:Lyads/yr2;

    invoke-virtual {v3}, Lyads/yr2;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Condition evaluated in non-boolean result! (expression: \'"

    .line 403
    invoke-static {v4, v3, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 405
    :cond_3
    instance-of v1, p1, Lyads/vo2;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/RuntimeException;

    .line 406
    iget-object v3, p0, Lyads/c26;->a:Lyads/yr2;

    invoke-virtual {v3}, Lyads/yr2;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Condition evaluation failed! (expression: \'"

    .line 407
    invoke-static {v4, v3, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    :goto_0
    iget-object p0, p0, Lyads/c26;->e:Lyads/ao2;

    invoke-virtual {p0, v1}, Lyads/ao2;->a(Ljava/lang/RuntimeException;)V

    return v0

    .line 410
    :cond_4
    throw p1
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, Lyads/c26;->h:Lyads/tp0;

    instance-of v1, v0, Ljava/lang/AutoCloseable;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v3, 0x0

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-interface {v0, v5, v6, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v3, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move v3, v2

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Landroid/content/res/TypedArray;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_5
    instance-of v1, v0, Landroid/media/MediaMetadataRetriever;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :cond_6
    instance-of v1, v0, Landroid/media/MediaDrm;

    if-eqz v1, :cond_8

    check-cast v0, Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    :cond_7
    :goto_1
    iget-object v0, p0, Lyads/c26;->a:Lyads/yr2;

    iget-object v1, p0, Lyads/c26;->d:Lyads/gs2;

    iget-object v3, p0, Lyads/c26;->g:Lnl3;

    invoke-virtual {v0, v1, v3}, Lyads/yr2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    iput-object v0, p0, Lyads/c26;->k:Lyads/tp0;

    iget-object v0, p0, Lyads/c26;->d:Lyads/gs2;

    iget-object v1, v0, Lyads/gs2;->d:Lyads/z66;

    iget-object v3, p0, Lyads/c26;->a:Lyads/yr2;

    invoke-virtual {v3, v0}, Lyads/yr2;->b(Lyads/fs2;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lg26;

    invoke-direct {v3, p0, v2}, Lg26;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v0, v3}, Lyads/z66;->a(Ljava/util/List;Lnl3;)Lyads/tp0;

    move-result-object v0

    iput-object v0, p0, Lyads/c26;->l:Lyads/tp0;

    iget-object v0, p0, Lyads/c26;->c:Lyads/as2;

    iget-object v1, p0, Lyads/c26;->d:Lyads/gs2;

    new-instance v2, Lvr3;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lvr3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    iput-object v0, p0, Lyads/c26;->h:Lyads/tp0;

    invoke-virtual {p0}, Lyads/c26;->c()V

    return-void

    :cond_8
    invoke-static {}, Lmi2;->b()V

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lyads/c26;->n:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/vh2;

    instance-of v2, v1, Lyads/vq0;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lyads/vq0;

    goto :goto_1

    :cond_0
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_2

    iget-boolean v4, v2, Lyads/vq0;->A:Z

    if-eqz v4, :cond_1

    move-object v3, v2

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Lyads/c26;->a(Lyads/vq0;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lyads/c26;->a(Lyads/vh2;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lyads/c26;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/xr0;

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lyads/c26;->f:Lyads/bt0;

    iget-object v3, p0, Lyads/c26;->d:Lyads/gs2;

    iget-object v4, p0, Lyads/c26;->b:Ljava/util/List;

    invoke-static {v2, v1, v3, v4}, Lyads/bt0;->a(Lyads/bt0;Lyads/vh2;Lyads/fs2;Ljava/util/List;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.class public final Lyads/kk5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lgm3;

.field public final b:Lgm3;

.field public final c:Ljava/util/WeakHashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>(Lgm3;Lgm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/kk5;->a:Lgm3;

    iput-object p2, p0, Lyads/kk5;->b:Lgm3;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lyads/kk5;->c:Ljava/util/WeakHashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lyads/kk5;->d:Ljava/util/HashMap;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lyads/kk5;->e:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static final a(Lyads/kk5;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Lyads/r02;Z)Lj59;
    .locals 0

    if-eqz p6, :cond_0

    .line 220
    iget-object p0, p0, Lyads/kk5;->a:Lgm3;

    invoke-interface/range {p0 .. p5}, Lgm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 221
    :cond_0
    iget-object p0, p0, Lyads/kk5;->b:Lgm3;

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-interface/range {p1 .. p6}, Lgm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/kk5;Landroid/view/View;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lyads/kk5;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lox2;->b:Lox2;

    .line 227
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/r02;

    .line 228
    invoke-virtual {p0, v0}, Lyads/kk5;->a(Lyads/r02;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lyads/kk5;->e:Ljava/util/WeakHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lyads/hs2;

    if-eqz v0, :cond_0

    .line 224
    move-object v0, p1

    check-cast v0, Lyads/hs2;

    new-instance v1, Ly0a;

    invoke-direct {v1, p0, p1}, Ly0a;-><init>(Lyads/kk5;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 225
    iget-object p0, p0, Lyads/kk5;->e:Ljava/util/WeakHashMap;

    sget-object v0, Lj59;->a:Lj59;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Lyads/vq0;Lyads/fs2;Lyads/br0;Ljava/util/List;)V
    .locals 14

    invoke-virtual/range {p0 .. p1}, Lyads/kk5;->a(Landroid/view/View;)V

    iget-object v0, p0, Lyads/kk5;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    sget-object v1, Lox2;->b:Lox2;

    :cond_0
    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lqn1;->X(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-static {v3}, Lqn1;->x0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/r02;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lyads/kk5;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/jk5;

    if-eqz v5, :cond_1

    iget-object v5, v5, Lyads/jk5;->a:Lyads/tp0;

    instance-of v6, v5, Ljava/lang/AutoCloseable;

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_0

    :cond_2
    instance-of v6, v5, Ljava/util/concurrent/ExecutorService;

    if-eqz v6, :cond_6

    check-cast v5, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v6

    if-ne v5, v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v7, 0x0

    :cond_4
    :goto_1
    if-nez v6, :cond_5

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1

    invoke-interface {v5, v9, v10, v8}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    if-nez v7, :cond_4

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    if-eqz v7, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_6
    instance-of v6, v5, Landroid/content/res/TypedArray;

    if-eqz v6, :cond_7

    check-cast v5, Landroid/content/res/TypedArray;

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_7
    instance-of v6, v5, Landroid/media/MediaMetadataRetriever;

    if-eqz v6, :cond_8

    check-cast v5, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :cond_8
    instance-of v6, v5, Landroid/media/MediaDrm;

    if-eqz v6, :cond_9

    check-cast v5, Landroid/media/MediaDrm;

    invoke-virtual {v5}, Landroid/media/MediaDrm;->release()V

    goto :goto_0

    :cond_9
    invoke-static {}, Lmi2;->b()V

    return-void

    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lyads/r02;

    invoke-interface {v3, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v11}, Lyads/kk5;->a(Lyads/r02;)V

    iget-object v2, p0, Lyads/kk5;->d:Ljava/util/HashMap;

    new-instance v12, Lyads/jk5;

    invoke-interface {v11}, Lyads/r02;->d()Lyads/as2;

    move-result-object v13

    new-instance v5, Lx0a;

    move-object v6, p0

    move-object v9, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lx0a;-><init>(Lyads/kk5;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Lyads/r02;)V

    invoke-virtual {v13, v8, v5}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v5

    invoke-direct {v12, v5, p1}, Lyads/jk5;-><init>(Lyads/tp0;Landroid/view/View;)V

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_b
    move-object/from16 v8, p3

    goto :goto_2

    :cond_c
    invoke-virtual {v0, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lyads/r02;)V
    .locals 7

    .line 229
    iget-object v0, p0, Lyads/kk5;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/jk5;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 230
    :cond_0
    iget-object v1, v0, Lyads/jk5;->a:Lyads/tp0;

    instance-of v2, v1, Ljava/lang/AutoCloseable;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_1
    instance-of v2, v1, Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v2

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v3, 0x0

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-interface {v1, v5, v6, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v3, :cond_3

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_5
    instance-of v2, v1, Landroid/content/res/TypedArray;

    if-eqz v2, :cond_6

    check-cast v1, Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_6
    instance-of v2, v1, Landroid/media/MediaMetadataRetriever;

    if-eqz v2, :cond_7

    check-cast v1, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :cond_7
    instance-of v2, v1, Landroid/media/MediaDrm;

    if-eqz v2, :cond_b

    check-cast v1, Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->release()V

    .line 231
    :cond_8
    :goto_1
    iget-object v0, v0, Lyads/jk5;->b:Ljava/lang/ref/WeakReference;

    .line 232
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_9

    goto :goto_2

    .line 233
    :cond_9
    iget-object p0, p0, Lyads/kk5;->c:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_a

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_a
    :goto_2
    return-void

    .line 234
    :cond_b
    invoke-static {}, Lmi2;->b()V

    return-void
.end method

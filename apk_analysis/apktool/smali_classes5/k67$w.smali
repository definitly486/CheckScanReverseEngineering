.class public final Lk67$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "w"
.end annotation


# instance fields
.field public final a:Lk67$x;

.field public final synthetic b:Lk67;


# direct methods
.method public constructor <init>(Lk67;Lk67$x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk67$w;->b:Lk67;

    iput-object p2, p0, Lk67$w;->a:Lk67$x;

    return-void
.end method


# virtual methods
.method public final a(Lj98$a;)V
    .locals 3

    iget-object v0, p0, Lk67$w;->b:Lk67;

    iget-object v0, v0, Lk67;->p:Lk67$v;

    iget-object v1, v0, Lk67$v;->f:Lk67$x;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Headers should be received prior to messages."

    invoke-static {v1, v2}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v0, v0, Lk67$v;->f:Lk67$x;

    iget-object v1, p0, Lk67$w;->a:Lk67$x;

    if-eq v0, v1, :cond_2

    sget-object p0, Lvs3;->a:Ljava/util/logging/Logger;

    :goto_1
    invoke-interface {p1}, Lj98$a;->next()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lvs3;->b(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lk67$w;->b:Lk67;

    iget-object v0, v0, Lk67;->d:Lch8;

    new-instance v1, Lk67$w$e;

    invoke-direct {v1, p0, p1}, Lk67$w$e;-><init>(Lk67$w;Lj98$a;)V

    invoke-virtual {v0, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lla5;)V
    .locals 5

    iget-object v0, p0, Lk67$w;->a:Lk67$x;

    iget v0, v0, Lk67$x;->d:I

    if-lez v0, :cond_0

    sget-object v0, Lk67;->B:Lla5$b;

    invoke-virtual {p1, v0}, Lla5;->a(Lla5$d;)V

    iget-object v1, p0, Lk67$w;->a:Lk67$x;

    iget v1, v1, Lk67$x;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lla5;->e(Lla5$d;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lk67$w;->b:Lk67;

    iget-object v1, p0, Lk67$w;->a:Lk67$x;

    sget-object v2, Lk67;->B:Lla5$b;

    invoke-virtual {v0, v1}, Lk67;->k(Lk67$x;)Ll67;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lk67;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lk67$w;->b:Lk67;

    iget-object v0, v0, Lk67;->p:Lk67$v;

    iget-object v0, v0, Lk67$v;->f:Lk67$x;

    iget-object v1, p0, Lk67$w;->a:Lk67$x;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lk67$w;->b:Lk67;

    iget-object v0, v0, Lk67;->n:Lk67$y;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lk67$y;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, v0, Lk67$y;->a:I

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    iget v4, v0, Lk67$y;->c:I

    add-int/2addr v4, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_4
    :goto_0
    iget-object v0, p0, Lk67$w;->b:Lk67;

    iget-object v0, v0, Lk67;->d:Lch8;

    new-instance v1, Lk67$w$a;

    invoke-direct {v1, p0, p1}, Lk67$w$a;-><init>(Lk67$w;Lla5;)V

    invoke-virtual {v0, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public final c(Lh88;Ldm1$a;Lla5;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lk67$w;->b:Lk67;

    iget-object v5, v5, Lk67;->j:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, v0, Lk67$w;->b:Lk67;

    iget-object v7, v6, Lk67;->p:Lk67$v;

    iget-object v8, v0, Lk67$w;->a:Lk67$x;

    invoke-virtual {v7, v8}, Lk67$v;->c(Lk67$x;)Lk67$v;

    move-result-object v7

    iput-object v7, v6, Lk67;->p:Lk67$v;

    iget-object v6, v0, Lk67$w;->b:Lk67;

    iget-object v6, v6, Lk67;->o:Ly54;

    iget-object v7, v1, Lh88;->a:Lh88$a;

    iget-object v6, v6, Ly54;->a:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v5, v0, Lk67$w;->b:Lk67;

    iget-object v5, v5, Lk67;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v5

    const/high16 v6, -0x80000000

    if-ne v5, v6, :cond_0

    iget-object v1, v0, Lk67$w;->b:Lk67;

    iget-object v1, v1, Lk67;->d:Lch8;

    new-instance v2, Lk67$w$c;

    invoke-direct {v2, v0}, Lk67$w$c;-><init>(Lk67$w;)V

    invoke-virtual {v1, v2}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v5, v0, Lk67$w;->a:Lk67$x;

    iget-boolean v6, v5, Lk67$x;->c:Z

    if-eqz v6, :cond_2

    iget-object v4, v0, Lk67$w;->b:Lk67;

    invoke-virtual {v4, v5}, Lk67;->k(Lk67$x;)Ll67;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v4, v4, Lk67;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v4, v0, Lk67$w;->b:Lk67;

    iget-object v4, v4, Lk67;->p:Lk67$v;

    iget-object v4, v4, Lk67$v;->f:Lk67$x;

    iget-object v5, v0, Lk67$w;->a:Lk67$x;

    if-ne v4, v5, :cond_1d

    iget-object v0, v0, Lk67$w;->b:Lk67;

    invoke-virtual {v0, v1, v2, v3}, Lk67;->w(Lh88;Ldm1$a;Lla5;)V

    return-void

    :cond_2
    sget-object v5, Ldm1$a;->MISCARRIED:Ldm1$a;

    if-ne v2, v5, :cond_4

    iget-object v6, v0, Lk67$w;->b:Lk67;

    iget-object v6, v6, Lk67;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    const/16 v7, 0x3e8

    if-le v6, v7, :cond_4

    iget-object v4, v0, Lk67$w;->b:Lk67;

    iget-object v5, v0, Lk67$w;->a:Lk67$x;

    invoke-virtual {v4, v5}, Lk67;->k(Lk67$x;)Ll67;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v4, v4, Lk67;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v4, v0, Lk67$w;->b:Lk67;

    iget-object v4, v4, Lk67;->p:Lk67$v;

    iget-object v4, v4, Lk67$v;->f:Lk67$x;

    iget-object v5, v0, Lk67$w;->a:Lk67$x;

    if-ne v4, v5, :cond_1d

    sget-object v4, Lh88$a;->INTERNAL:Lh88$a;

    const-string v5, "Too many transparent retries. Might be a bug in gRPC"

    invoke-static {v4, v5, v1}, Lvs3;->h(Lh88$a;Ljava/lang/String;Lh88;)Lh88;

    move-result-object v1

    iget-object v0, v0, Lk67$w;->b:Lk67;

    invoke-virtual {v0, v1, v2, v3}, Lk67;->w(Lh88;Ldm1$a;Lla5;)V

    return-void

    :cond_4
    iget-object v6, v0, Lk67$w;->b:Lk67;

    iget-object v6, v6, Lk67;->p:Lk67$v;

    iget-object v6, v6, Lk67$v;->f:Lk67$x;

    if-nez v6, :cond_1b

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v2, v5, :cond_18

    sget-object v5, Ldm1$a;->REFUSED:Ldm1$a;

    if-ne v2, v5, :cond_5

    iget-object v5, v0, Lk67$w;->b:Lk67;

    iget-object v5, v5, Lk67;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_b

    :cond_5
    sget-object v5, Ldm1$a;->DROPPED:Ldm1$a;

    iget-object v8, v0, Lk67$w;->b:Lk67;

    if-ne v2, v5, :cond_6

    iget-boolean v4, v8, Lk67;->i:Z

    if-eqz v4, :cond_1b

    invoke-virtual {v8}, Lk67;->q()V

    goto/16 :goto_d

    :cond_6
    iget-object v5, v8, Lk67;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v5, v0, Lk67$w;->b:Lk67;

    iget-boolean v8, v5, Lk67;->i:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_f

    sget-object v5, Lk67;->C:Lla5$b;

    invoke-virtual {v3, v5}, Lla5;->c(Lla5$d;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_7

    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_7
    move-object v4, v9

    :catch_0
    :goto_0
    iget-object v5, v0, Lk67$w;->b:Lk67;

    iget-object v8, v5, Lk67;->h:Lsv3;

    iget-object v8, v8, Lsv3;->c:Lcom/google/common/collect/n;

    iget-object v9, v1, Lh88;->a:Lh88$a;

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, v5, Lk67;->n:Lk67$y;

    if-eqz v9, :cond_9

    if-nez v8, :cond_8

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gez v9, :cond_9

    :cond_8
    iget-object v5, v5, Lk67;->n:Lk67$y;

    invoke-virtual {v5}, Lk67$y;->a()Z

    move-result v5

    xor-int/2addr v5, v6

    goto :goto_1

    :cond_9
    move v5, v7

    :goto_1
    if-eqz v8, :cond_a

    if-nez v5, :cond_a

    invoke-virtual {v1}, Lh88;->f()Z

    move-result v9

    if-nez v9, :cond_a

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_a
    if-eqz v8, :cond_b

    if-nez v5, :cond_b

    goto :goto_2

    :cond_b
    move v6, v7

    :goto_2
    if-eqz v6, :cond_c

    iget-object v5, v0, Lk67$w;->b:Lk67;

    invoke-virtual {v5, v4}, Lk67;->v(Ljava/lang/Integer;)V

    :cond_c
    iget-object v4, v0, Lk67$w;->b:Lk67;

    iget-object v8, v4, Lk67;->j:Ljava/lang/Object;

    monitor-enter v8

    :try_start_2
    iget-object v4, v0, Lk67$w;->b:Lk67;

    iget-object v5, v4, Lk67;->p:Lk67$v;

    iget-object v7, v0, Lk67$w;->a:Lk67$x;

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v5, Lk67$v;->d:Ljava/util/Collection;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v14

    new-instance v11, Lk67$v;

    iget-object v12, v5, Lk67$v;->b:Ljava/util/List;

    iget-object v13, v5, Lk67$v;->c:Ljava/util/Collection;

    iget-object v15, v5, Lk67$v;->f:Lk67$x;

    iget-boolean v7, v5, Lk67$v;->g:Z

    iget-boolean v9, v5, Lk67$v;->a:Z

    iget-boolean v10, v5, Lk67$v;->h:Z

    iget v5, v5, Lk67$v;->e:I

    move/from16 v19, v5

    move/from16 v16, v7

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-direct/range {v11 .. v19}, Lk67$v;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lk67$x;ZZZI)V

    iput-object v11, v4, Lk67;->p:Lk67$v;

    if-eqz v6, :cond_e

    iget-object v4, v0, Lk67$w;->b:Lk67;

    iget-object v5, v4, Lk67;->p:Lk67$v;

    invoke-virtual {v4, v5}, Lk67;->r(Lk67$v;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v0, Lk67$w;->b:Lk67;

    iget-object v4, v4, Lk67;->p:Lk67$v;

    iget-object v4, v4, Lk67$v;->d:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_d
    :goto_3
    monitor-exit v8

    return-void

    :cond_e
    monitor-exit v8

    goto/16 :goto_d

    :goto_4
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_f
    iget-object v8, v5, Lk67;->g:Lq67;

    const-wide/16 v10, 0x0

    if-nez v8, :cond_10

    new-instance v4, Lk67$s;

    invoke-direct {v4, v7, v10, v11}, Lk67$s;-><init>(ZJ)V

    goto/16 :goto_a

    :cond_10
    iget-object v8, v8, Lq67;->f:Lcom/google/common/collect/n;

    iget-object v12, v1, Lh88;->a:Lh88$a;

    invoke-interface {v8, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    sget-object v12, Lk67;->C:Lla5$b;

    invoke-virtual {v3, v12}, Lla5;->c(Lla5$d;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_11

    :try_start_3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :cond_11
    move-object v4, v9

    :catch_1
    :goto_5
    iget-object v9, v5, Lk67;->n:Lk67$y;

    if-eqz v9, :cond_13

    if-nez v8, :cond_12

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gez v9, :cond_13

    :cond_12
    iget-object v9, v5, Lk67;->n:Lk67$y;

    invoke-virtual {v9}, Lk67$y;->a()Z

    move-result v9

    xor-int/2addr v9, v6

    goto :goto_6

    :cond_13
    move v9, v7

    :goto_6
    iget-object v12, v5, Lk67;->g:Lq67;

    iget v12, v12, Lq67;->a:I

    iget-object v13, v0, Lk67$w;->a:Lk67$x;

    iget v13, v13, Lk67$x;->d:I

    add-int/2addr v13, v6

    if-le v12, v13, :cond_16

    if-nez v9, :cond_16

    if-nez v4, :cond_15

    if-eqz v8, :cond_16

    iget-wide v8, v5, Lk67;->y:J

    sget-object v4, Lk67;->E:Ljava/util/Random;

    sget-boolean v10, Lk67;->F:Z

    if-eqz v10, :cond_14

    const-wide v10, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v12

    mul-double/2addr v12, v10

    const-wide v10, 0x3fe999999999999aL    # 0.8

    add-double/2addr v12, v10

    goto :goto_7

    :cond_14
    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v12

    :goto_7
    long-to-double v8, v8

    mul-double/2addr v8, v12

    double-to-long v10, v8

    iget-wide v8, v5, Lk67;->y:J

    long-to-double v8, v8

    iget-object v4, v5, Lk67;->g:Lq67;

    iget-wide v12, v4, Lq67;->d:D

    mul-double/2addr v8, v12

    double-to-long v8, v8

    iget-wide v12, v4, Lq67;->c:J

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, v5, Lk67;->y:J

    :goto_8
    move v4, v6

    goto :goto_9

    :cond_15
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_16

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    iget-object v4, v5, Lk67;->g:Lq67;

    iget-wide v8, v4, Lq67;->b:J

    iput-wide v8, v5, Lk67;->y:J

    goto :goto_8

    :cond_16
    move v4, v7

    :goto_9
    new-instance v5, Lk67$s;

    invoke-direct {v5, v4, v10, v11}, Lk67$s;-><init>(ZJ)V

    move-object v4, v5

    :goto_a
    iget-boolean v5, v4, Lk67$s;->a:Z

    if-eqz v5, :cond_1b

    iget-object v1, v0, Lk67$w;->b:Lk67;

    iget-object v2, v0, Lk67$w;->a:Lk67$x;

    iget v2, v2, Lk67$x;->d:I

    add-int/2addr v2, v6

    invoke-virtual {v1, v2, v7, v7}, Lk67;->n(IZZ)Lk67$x;

    move-result-object v1

    if-nez v1, :cond_17

    goto/16 :goto_e

    :cond_17
    iget-object v2, v0, Lk67$w;->b:Lk67;

    iget-object v5, v2, Lk67;->j:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iget-object v2, v0, Lk67$w;->b:Lk67;

    new-instance v3, Lk67$q;

    iget-object v6, v2, Lk67;->j:Ljava/lang/Object;

    invoke-direct {v3, v6}, Lk67$q;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lk67;->w:Lk67$q;

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v2, v2, Lk67;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lk67$w$b;

    invoke-direct {v5, v0, v3, v1}, Lk67$w$b;-><init>(Lk67$w;Lk67$q;Lk67$x;)V

    iget-wide v0, v4, Lk67$s;->b:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v3, v0}, Lk67$q;->a(Ljava/util/concurrent/ScheduledFuture;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_18
    :goto_b
    iget-object v1, v0, Lk67$w;->b:Lk67;

    iget-object v2, v0, Lk67$w;->a:Lk67$x;

    iget v2, v2, Lk67$x;->d:I

    invoke-virtual {v1, v2, v6, v7}, Lk67;->n(IZZ)Lk67$x;

    move-result-object v1

    if-nez v1, :cond_19

    goto :goto_e

    :cond_19
    iget-object v2, v0, Lk67$w;->b:Lk67;

    iget-boolean v3, v2, Lk67;->i:Z

    if-eqz v3, :cond_1a

    iget-object v2, v2, Lk67;->j:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v3, v0, Lk67$w;->b:Lk67;

    iget-object v4, v3, Lk67;->p:Lk67$v;

    iget-object v5, v0, Lk67$w;->a:Lk67$x;

    invoke-virtual {v4, v5, v1}, Lk67$v;->b(Lk67$x;Lk67$x;)Lk67$v;

    move-result-object v4

    iput-object v4, v3, Lk67;->p:Lk67$v;

    monitor-exit v2

    goto :goto_c

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_1a
    :goto_c
    iget-object v2, v0, Lk67$w;->b:Lk67;

    iget-object v2, v2, Lk67;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Lk67$w$d;

    invoke-direct {v3, v0, v1}, Lk67$w$d;-><init>(Lk67$w;Lk67$x;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1b
    :goto_d
    iget-object v4, v0, Lk67$w;->b:Lk67;

    iget-object v5, v0, Lk67$w;->a:Lk67$x;

    invoke-virtual {v4, v5}, Lk67;->k(Lk67$x;)Ll67;

    move-result-object v5

    if-eqz v5, :cond_1c

    iget-object v4, v4, Lk67;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1c
    iget-object v4, v0, Lk67$w;->b:Lk67;

    iget-object v4, v4, Lk67;->p:Lk67$v;

    iget-object v4, v4, Lk67$v;->f:Lk67$x;

    iget-object v5, v0, Lk67$w;->a:Lk67$x;

    if-ne v4, v5, :cond_1d

    iget-object v0, v0, Lk67$w;->b:Lk67;

    invoke-virtual {v0, v1, v2, v3}, Lk67;->w(Lh88;Ldm1$a;Lla5;)V

    :cond_1d
    :goto_e
    return-void

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lk67$w;->b:Lk67;

    invoke-virtual {v0}, Lk67;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lk67;->d:Lch8;

    new-instance v1, Lk67$w$f;

    invoke-direct {v1, p0}, Lk67$w$f;-><init>(Lk67$w;)V

    invoke-virtual {v0, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

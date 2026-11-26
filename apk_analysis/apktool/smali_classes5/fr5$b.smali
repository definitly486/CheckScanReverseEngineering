.class public final Lfr5$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lcp2;
.implements Lls5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lcp2;",
        "Lls5<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final q:[Lfr5$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lfr5$a<",
            "**>;"
        }
    .end annotation
.end field

.field public static final r:[Lfr5$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lfr5$a<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lls5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls5<",
            "-TU;>;"
        }
    .end annotation
.end field

.field public final c:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;+",
            "Lwr5<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public volatile f:Lhz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhz7<",
            "TU;>;"
        }
    .end annotation
.end field

.field public volatile g:Z

.field public final h:Lpt;

.field public volatile i:Z

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lfr5$a<",
            "**>;>;"
        }
    .end annotation
.end field

.field public k:Lcp2;

.field public l:J

.field public m:J

.field public n:I

.field public final o:Ljava/util/ArrayDeque;

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lfr5$a;

    sput-object v1, Lfr5$b;->q:[Lfr5$a;

    new-array v0, v0, [Lfr5$a;

    sput-object v0, Lfr5$b;->r:[Lfr5$a;

    return-void
.end method

.method public constructor <init>(Lls5;Lxl3;II)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Lpt;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lfr5$b;->h:Lpt;

    iput-object p1, p0, Lfr5$b;->b:Lls5;

    iput-object p2, p0, Lfr5$b;->c:Lxl3;

    iput p3, p0, Lfr5$b;->d:I

    iput p4, p0, Lfr5$b;->e:I

    const p1, 0x7fffffff

    if-eq p3, p1, :cond_0

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1, p3}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lfr5$b;->o:Ljava/util/ArrayDeque;

    :cond_0
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lfr5$b;->q:[Lfr5$a;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lfr5$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-boolean v0, p0, Lfr5$b;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfr5$b;->h:Lpt;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lfr5$b;->b()Z

    iget-object v0, p0, Lfr5$b;->h:Lpt;

    invoke-static {v0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    sget-object v2, Lk13;->a:Lk13$a;

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lfr5$b;->b:Lls5;

    invoke-interface {p0, v0}, Lls5;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lfr5$b;->k:Lcp2;

    invoke-interface {v0}, Lcp2;->dispose()V

    iget-object p0, p0, Lfr5$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr5$a;

    const/4 v1, 0x0

    sget-object v2, Lfr5$b;->r:[Lfr5$a;

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lfr5$a;

    if-eq p0, v2, :cond_1

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfr5$b;->e()V

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lfr5$b;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr5$b;->i:Z

    invoke-virtual {p0}, Lfr5$b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfr5$b;->h:Lpt;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lk13;->a:Lk13$a;

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 13

    iget-object v0, p0, Lfr5$b;->b:Lls5;

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lfr5$b;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v2, p0, Lfr5$b;->f:Lhz7;

    const/4 v3, 0x0

    move v4, v3

    if-eqz v2, :cond_4

    :goto_1
    invoke-virtual {p0}, Lfr5$b;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-interface {v2}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0, v5}, Lls5;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const v2, 0x7fffffff

    if-eqz v4, :cond_5

    iget v3, p0, Lfr5$b;->d:I

    if-eq v3, v2, :cond_0

    invoke-virtual {p0, v4}, Lfr5$b;->i(I)V

    goto :goto_0

    :cond_5
    iget-boolean v5, p0, Lfr5$b;->g:Z

    iget-object v6, p0, Lfr5$b;->f:Lhz7;

    iget-object v7, p0, Lfr5$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lfr5$a;

    array-length v8, v7

    iget v9, p0, Lfr5$b;->d:I

    if-eq v9, v2, :cond_6

    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lfr5$b;->o:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->size()I

    move-result v9

    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    move v9, v3

    :goto_3
    if-eqz v5, :cond_9

    if-eqz v6, :cond_7

    invoke-interface {v6}, Liz7;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_7
    if-nez v8, :cond_9

    if-nez v9, :cond_9

    iget-object p0, p0, Lfr5$b;->h:Lpt;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    sget-object v1, Lk13;->a:Lk13$a;

    if-eq p0, v1, :cond_1c

    if-nez p0, :cond_8

    invoke-interface {v0}, Lls5;->onComplete()V

    goto/16 :goto_9

    :cond_8
    invoke-interface {v0, p0}, Lls5;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_9
    if-eqz v8, :cond_1a

    iget-wide v5, p0, Lfr5$b;->m:J

    iget v9, p0, Lfr5$b;->n:I

    if-le v8, v9, :cond_a

    aget-object v10, v7, v9

    iget-wide v10, v10, Lfr5$a;->b:J

    cmp-long v10, v10, v5

    if-eqz v10, :cond_f

    :cond_a
    if-gt v8, v9, :cond_b

    move v9, v3

    :cond_b
    move v10, v3

    :goto_4
    if-ge v10, v8, :cond_e

    aget-object v11, v7, v9

    iget-wide v11, v11, Lfr5$a;->b:J

    cmp-long v11, v11, v5

    if-nez v11, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 v9, v9, 0x1

    if-ne v9, v8, :cond_d

    move v9, v3

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    iput v9, p0, Lfr5$b;->n:I

    aget-object v5, v7, v9

    iget-wide v5, v5, Lfr5$a;->b:J

    iput-wide v5, p0, Lfr5$b;->m:J

    :cond_f
    move v5, v3

    :goto_6
    if-ge v5, v8, :cond_19

    invoke-virtual {p0}, Lfr5$b;->a()Z

    move-result v6

    if-eqz v6, :cond_10

    goto/16 :goto_9

    :cond_10
    aget-object v6, v7, v9

    iget-object v10, v6, Lfr5$a;->e:Liz7;

    if-eqz v10, :cond_14

    :cond_11
    :try_start_1
    invoke-interface {v10}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v11, :cond_12

    goto :goto_7

    :cond_12
    invoke-interface {v0, v11}, Lls5;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lfr5$b;->a()Z

    move-result v11

    if-eqz v11, :cond_11

    goto :goto_9

    :catchall_1
    move-exception v10

    invoke-static {v10}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-static {v6}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v11, p0, Lfr5$b;->h:Lpt;

    invoke-static {v11, v10}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Lfr5$b;->a()Z

    move-result v10

    if-eqz v10, :cond_13

    goto :goto_9

    :cond_13
    invoke-virtual {p0, v6}, Lfr5$b;->f(Lfr5$a;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v8, :cond_18

    goto :goto_8

    :cond_14
    :goto_7
    iget-boolean v10, v6, Lfr5$a;->d:Z

    iget-object v11, v6, Lfr5$a;->e:Liz7;

    if-eqz v10, :cond_17

    if-eqz v11, :cond_15

    invoke-interface {v11}, Liz7;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_17

    :cond_15
    invoke-virtual {p0, v6}, Lfr5$b;->f(Lfr5$a;)V

    invoke-virtual {p0}, Lfr5$b;->a()Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_9

    :cond_16
    add-int/lit8 v4, v4, 0x1

    :cond_17
    add-int/lit8 v9, v9, 0x1

    if-ne v9, v8, :cond_18

    :goto_8
    move v9, v3

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_19
    iput v9, p0, Lfr5$b;->n:I

    aget-object v3, v7, v9

    iget-wide v5, v3, Lfr5$a;->b:J

    iput-wide v5, p0, Lfr5$b;->m:J

    :cond_1a
    if-eqz v4, :cond_1b

    iget v3, p0, Lfr5$b;->d:I

    if-eq v3, v2, :cond_0

    invoke-virtual {p0, v4}, Lfr5$b;->i(I)V

    goto/16 :goto_0

    :cond_1b
    neg-int v1, v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    :cond_1c
    :goto_9
    return-void
.end method

.method public final f(Lfr5$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfr5$a<",
            "TT;TU;>;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lfr5$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lfr5$a;

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    if-ne v5, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    :goto_2
    if-gez v4, :cond_3

    goto :goto_4

    :cond_3
    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    sget-object v2, Lfr5$b;->q:[Lfr5$a;

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v2, -0x1

    new-array v6, v6, [Lfr5$a;

    invoke-static {v1, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v4, 0x1

    sub-int/2addr v2, v4

    sub-int/2addr v2, v5

    invoke-static {v1, v3, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v6

    :cond_5
    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_5

    goto :goto_0
.end method

.method public final g(Lwr5;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwr5<",
            "+TU;>;)V"
        }
    .end annotation

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/Callable;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Ljava/util/concurrent/Callable;

    const v0, 0x7fffffff

    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lfr5$b;->b:Lls5;

    invoke-interface {v3, p1}, Lls5;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lfr5$b;->f:Lhz7;

    if-nez v3, :cond_4

    iget v3, p0, Lfr5$b;->d:I

    if-ne v3, v0, :cond_3

    new-instance v3, Ln68;

    iget v4, p0, Lfr5$b;->e:I

    invoke-direct {v3, v4}, Ln68;-><init>(I)V

    goto :goto_0

    :cond_3
    new-instance v3, Lm68;

    iget v4, p0, Lfr5$b;->d:I

    invoke-direct {v3, v4}, Lm68;-><init>(I)V

    :goto_0
    iput-object v3, p0, Lfr5$b;->f:Lhz7;

    :cond_4
    invoke-interface {v3, p1}, Liz7;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v3, "Scalar queue full?!"

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lfr5$b;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lfr5$b;->e()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v3, p0, Lfr5$b;->h:Lpt;

    invoke-static {v3, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Lfr5$b;->d()V

    :goto_1
    iget p1, p0, Lfr5$b;->d:I

    if-eq p1, v0, :cond_b

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lfr5$b;->o:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwr5;

    if-nez p1, :cond_7

    iget v0, p0, Lfr5$b;->p:I

    sub-int/2addr v0, v2

    iput v0, p0, Lfr5$b;->p:I

    move v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_7
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lfr5$b;->d()V

    goto :goto_5

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_8
    new-instance v0, Lfr5$a;

    iget-wide v2, p0, Lfr5$b;->l:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lfr5$b;->l:J

    invoke-direct {v0, p0, v2, v3}, Lfr5$a;-><init>(Lfr5$b;J)V

    iget-object p0, p0, Lfr5$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lfr5$a;

    sget-object v3, Lfr5$b;->r:[Lfr5$a;

    if-ne v2, v3, :cond_9

    invoke-static {v0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    goto :goto_5

    :cond_9
    array-length v3, v2

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lfr5$a;

    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v4, v3

    :cond_a
    invoke-virtual {p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p1, v0}, Lwr5;->a(Lls5;)V

    :cond_b
    :goto_5
    return-void

    :cond_c
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_a

    goto :goto_4
.end method

.method public final i(I)V
    .locals 1

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lfr5$b;->o:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwr5;

    if-nez p1, :cond_0

    iget p1, p0, Lfr5$b;->p:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lfr5$b;->p:I

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lfr5$b;->g(Lwr5;)V

    :goto_1
    move p1, v0

    goto :goto_0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lfr5$b;->i:Z

    return p0
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lfr5$b;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr5$b;->g:Z

    invoke-virtual {p0}, Lfr5$b;->d()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lfr5$b;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lfr5$b;->h:Lpt;

    invoke-static {v0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lfr5$b;->g:Z

    invoke-virtual {p0}, Lfr5$b;->d()V

    return-void

    :cond_1
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lfr5$b;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lfr5$b;->c:Lxl3;

    invoke-interface {v0, p1}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null ObservableSource"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lwr5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget v0, p0, Lfr5$b;->d:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lfr5$b;->p:I

    iget v1, p0, Lfr5$b;->d:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lfr5$b;->o:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr5$b;->p:I

    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lfr5$b;->g(Lwr5;)V

    return-void

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lfr5$b;->k:Lcp2;

    invoke-interface {v0}, Lcp2;->dispose()V

    invoke-virtual {p0, p1}, Lfr5$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 1

    iget-object v0, p0, Lfr5$b;->k:Lcp2;

    invoke-static {v0, p1}, Lip2;->i(Lcp2;Lcp2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lfr5$b;->k:Lcp2;

    iget-object p1, p0, Lfr5$b;->b:Lls5;

    invoke-interface {p1, p0}, Lls5;->onSubscribe(Lcp2;)V

    :cond_0
    return-void
.end method

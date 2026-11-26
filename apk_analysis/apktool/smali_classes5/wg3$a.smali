.class public final Lwg3$a;
.super Lye0;
.source "SourceFile"

# interfaces
.implements Lrh3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lye0<",
        "TR;>;",
        "Lrh3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lwb8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb8<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;

.field public g:Lbc8;

.field public h:Liz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liz7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile i:Z

.field public volatile j:Z

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TR;>;"
        }
    .end annotation
.end field

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Lwb8;Lrm3$i;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lwg3$a;->b:Lwb8;

    iput-object p2, p0, Lwg3$a;->c:Lxl3;

    iput p3, p0, Lwg3$a;->d:I

    shr-int/lit8 p1, p3, 0x2

    sub-int/2addr p3, p1

    iput p3, p0, Lwg3$a;->e:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lwg3$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lwg3$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 3

    iget-object v0, p0, Lwg3$a;->g:Lbc8;

    invoke-static {v0, p1}, Lhc8;->f(Lbc8;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lwg3$a;->g:Lbc8;

    instance-of v0, p1, Lmw6;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lmw6;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ldw6;->d(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, Lwg3$a;->n:I

    iput-object v0, p0, Lwg3$a;->h:Liz7;

    iput-boolean v2, p0, Lwg3$a;->i:Z

    iget-object p1, p0, Lwg3$a;->b:Lwb8;

    invoke-interface {p1, p0}, Lwb8;->a(Lbc8;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, Lwg3$a;->n:I

    iput-object v0, p0, Lwg3$a;->h:Liz7;

    iget-object v0, p0, Lwg3$a;->b:Lwb8;

    invoke-interface {v0, p0}, Lwb8;->a(Lbc8;)V

    iget p0, p0, Lwg3$a;->d:I

    int-to-long v0, p0

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    return-void

    :cond_1
    new-instance v0, Lm68;

    iget v1, p0, Lwg3$a;->d:I

    invoke-direct {v0, v1}, Lm68;-><init>(I)V

    iput-object v0, p0, Lwg3$a;->h:Liz7;

    iget-object v0, p0, Lwg3$a;->b:Lwb8;

    invoke-interface {v0, p0}, Lwb8;->a(Lbc8;)V

    iget p0, p0, Lwg3$a;->d:I

    int-to-long v0, p0

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    :cond_2
    return-void
.end method

.method public final b(ZZLwb8;Liz7;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lwb8<",
            "*>;",
            "Liz7<",
            "*>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lwg3$a;->j:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-object v1, p0, Lwg3$a;->l:Ljava/util/Iterator;

    invoke-interface {p4}, Liz7;->clear()V

    return v2

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lwg3$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lwg3$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    iput-object v1, p0, Lwg3$a;->l:Ljava/util/Iterator;

    invoke-interface {p4}, Liz7;->clear()V

    invoke-interface {p3, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return v2

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p3}, Lwb8;->onComplete()V

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Lwg3$a;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwg3$a;->j:Z

    iget-object v0, p0, Lwg3$a;->g:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lwg3$a;->h:Liz7;

    invoke-interface {p0}, Liz7;->clear()V

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lwg3$a;->l:Ljava/util/Iterator;

    iget-object p0, p0, Lwg3$a;->h:Liz7;

    invoke-interface {p0}, Liz7;->clear()V

    return-void
.end method

.method public final d(I)I
    .locals 0

    iget p0, p0, Lwg3$a;->n:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f()V
    .locals 19

    move-object/from16 v1, p0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v2, v1, Lwg3$a;->b:Lwb8;

    iget-object v3, v1, Lwg3$a;->h:Liz7;

    iget v0, v1, Lwg3$a;->n:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iget-object v6, v1, Lwg3$a;->l:Ljava/util/Iterator;

    move v7, v5

    :goto_1
    const/4 v8, 0x0

    if-nez v6, :cond_7

    iget-boolean v9, v1, Lwg3$a;->i:Z

    :try_start_0
    invoke-interface {v3}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v10, :cond_2

    move v11, v5

    goto :goto_2

    :cond_2
    move v11, v4

    :goto_2
    invoke-virtual {v1, v9, v11, v2, v3}, Lwg3$a;->b(ZZLwb8;Liz7;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_9

    :cond_3
    if-eqz v10, :cond_7

    :try_start_1
    iget-object v6, v1, Lwg3$a;->c:Lxl3;

    invoke-interface {v6, v10}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_6

    if-eqz v0, :cond_5

    iget v6, v1, Lwg3$a;->m:I

    add-int/2addr v6, v5

    iget v9, v1, Lwg3$a;->e:I

    if-ne v6, v9, :cond_4

    iput v4, v1, Lwg3$a;->m:I

    iget-object v9, v1, Lwg3$a;->g:Lbc8;

    int-to-long v10, v6

    invoke-interface {v9, v10, v11}, Lbc8;->request(J)V

    goto :goto_3

    :cond_4
    iput v6, v1, Lwg3$a;->m:I

    :cond_5
    :goto_3
    move-object v6, v8

    goto :goto_1

    :cond_6
    iput-object v6, v1, Lwg3$a;->l:Ljava/util/Iterator;

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v3, v1, Lwg3$a;->g:Lbc8;

    invoke-interface {v3}, Lbc8;->cancel()V

    iget-object v3, v1, Lwg3$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, v1, Lwg3$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v4, v1, Lwg3$a;->g:Lbc8;

    invoke-interface {v4}, Lbc8;->cancel()V

    iget-object v4, v1, Lwg3$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v4, v0}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, v1, Lwg3$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    iput-object v8, v1, Lwg3$a;->l:Ljava/util/Iterator;

    invoke-interface {v3}, Liz7;->clear()V

    invoke-interface {v2, v0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    :goto_4
    if-eqz v6, :cond_12

    iget-object v9, v1, Lwg3$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    move-wide v13, v11

    :goto_5
    cmp-long v15, v13, v9

    if-eqz v15, :cond_d

    iget-boolean v15, v1, Lwg3$a;->i:Z

    invoke-virtual {v1, v15, v4, v2, v3}, Lwg3$a;->b(ZZLwb8;Liz7;)Z

    move-result v15

    if-eqz v15, :cond_8

    goto/16 :goto_9

    :cond_8
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v5

    const-string v5, "The iterator returned a null value"

    invoke-static {v15, v5}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-interface {v2, v15}, Lwb8;->onNext(Ljava/lang/Object;)V

    iget-boolean v5, v1, Lwg3$a;->i:Z

    invoke-virtual {v1, v5, v4, v2, v3}, Lwg3$a;->b(ZZLwb8;Liz7;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto/16 :goto_9

    :cond_9
    const-wide/16 v17, 0x1

    add-long v13, v13, v17

    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v5, :cond_c

    if-eqz v0, :cond_b

    iget v5, v1, Lwg3$a;->m:I

    add-int/lit8 v5, v5, 0x1

    iget v6, v1, Lwg3$a;->e:I

    if-ne v5, v6, :cond_a

    iput v4, v1, Lwg3$a;->m:I

    iget-object v6, v1, Lwg3$a;->g:Lbc8;

    int-to-long v4, v5

    invoke-interface {v6, v4, v5}, Lbc8;->request(J)V

    goto :goto_6

    :cond_a
    iput v5, v1, Lwg3$a;->m:I

    :cond_b
    :goto_6
    iput-object v8, v1, Lwg3$a;->l:Ljava/util/Iterator;

    move-object v6, v8

    goto :goto_7

    :cond_c
    move/from16 v5, v16

    goto :goto_5

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    iput-object v8, v1, Lwg3$a;->l:Ljava/util/Iterator;

    iget-object v3, v1, Lwg3$a;->g:Lbc8;

    invoke-interface {v3}, Lbc8;->cancel()V

    iget-object v3, v1, Lwg3$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, v1, Lwg3$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_3
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    iput-object v8, v1, Lwg3$a;->l:Ljava/util/Iterator;

    iget-object v3, v1, Lwg3$a;->g:Lbc8;

    invoke-interface {v3}, Lbc8;->cancel()V

    iget-object v3, v1, Lwg3$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, v1, Lwg3$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_d
    move/from16 v16, v5

    :goto_7
    cmp-long v4, v13, v9

    if-nez v4, :cond_f

    iget-boolean v4, v1, Lwg3$a;->i:Z

    invoke-interface {v3}, Liz7;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    if-nez v6, :cond_e

    move/from16 v5, v16

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    :goto_8
    invoke-virtual {v1, v4, v5, v2, v3}, Lwg3$a;->b(ZZLwb8;Liz7;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_9

    :cond_f
    cmp-long v4, v13, v11

    if-eqz v4, :cond_10

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v9, v4

    if-eqz v4, :cond_10

    iget-object v4, v1, Lwg3$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v8, v13

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_10
    if-nez v6, :cond_13

    :cond_11
    move/from16 v5, v16

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_12
    move/from16 v16, v5

    :cond_13
    neg-int v4, v7

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_11

    :goto_9
    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lwg3$a;->l:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object p0, p0, Lwg3$a;->h:Liz7;

    invoke-interface {p0}, Liz7;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lwg3$a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lwg3$a;->i:Z

    invoke-virtual {p0}, Lwg3$a;->f()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lwg3$a;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lwg3$a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lwg3$a;->i:Z

    invoke-virtual {p0}, Lwg3$a;->f()V

    return-void

    :cond_0
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lwg3$a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lwg3$a;->n:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lwg3$a;->h:Liz7;

    invoke-interface {v0, p1}, Liz7;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lwg3$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lwg3$a;->f()V

    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lwg3$a;->l:Ljava/util/Iterator;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lwg3$a;->h:Liz7;

    invoke-interface {v0}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lwg3$a;->c:Lxl3;

    invoke-interface {v2, v0}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lwg3$a;->l:Ljava/util/Iterator;

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The iterator returned a null value"

    invoke-static {v2, v3}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v1, p0, Lwg3$a;->l:Ljava/util/Iterator;

    :cond_3
    return-object v2
.end method

.method public final request(J)V
    .locals 1

    invoke-static {p1, p2}, Lhc8;->e(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwg3$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lm00;->c(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Lwg3$a;->f()V

    :cond_0
    return-void
.end method

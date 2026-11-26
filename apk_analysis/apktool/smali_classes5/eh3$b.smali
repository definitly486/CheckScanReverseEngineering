.class public final Leh3$b;
.super Leh3$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Leh3$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final n:Lgv1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgv1<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public o:J


# direct methods
.method public constructor <init>(Lgv1;Lhe7$c;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Leh3$a;-><init>(Lhe7$c;I)V

    iput-object p1, p0, Leh3$b;->n:Lgv1;

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 3

    iget-object v0, p0, Leh3$a;->f:Lbc8;

    invoke-static {v0, p1}, Lhc8;->f(Lbc8;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Leh3$a;->f:Lbc8;

    instance-of v0, p1, Lmw6;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lmw6;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ldw6;->d(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v2, p0, Leh3$a;->k:I

    iput-object v0, p0, Leh3$a;->g:Liz7;

    iput-boolean v2, p0, Leh3$a;->i:Z

    iget-object p1, p0, Leh3$b;->n:Lgv1;

    invoke-interface {p1, p0}, Lwb8;->a(Lbc8;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v2, p0, Leh3$a;->k:I

    iput-object v0, p0, Leh3$a;->g:Liz7;

    iget-object v0, p0, Leh3$b;->n:Lgv1;

    invoke-interface {v0, p0}, Lwb8;->a(Lbc8;)V

    iget p0, p0, Leh3$a;->c:I

    int-to-long v0, p0

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    return-void

    :cond_1
    new-instance v0, Lm68;

    iget v1, p0, Leh3$a;->c:I

    invoke-direct {v0, v1}, Lm68;-><init>(I)V

    iput-object v0, p0, Leh3$a;->g:Liz7;

    iget-object v0, p0, Leh3$b;->n:Lgv1;

    invoke-interface {v0, p0}, Lwb8;->a(Lbc8;)V

    iget p0, p0, Leh3$a;->c:I

    int-to-long v0, p0

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 14

    iget-object v0, p0, Leh3$b;->n:Lgv1;

    iget-object v1, p0, Leh3$a;->g:Liz7;

    iget-wide v2, p0, Leh3$a;->l:J

    iget-wide v4, p0, Leh3$b;->o:J

    const/4 v6, 0x1

    move v7, v6

    :cond_0
    :goto_0
    iget-object v8, p0, Leh3$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    :cond_1
    :goto_1
    cmp-long v10, v2, v8

    if-eqz v10, :cond_6

    iget-boolean v11, p0, Leh3$a;->i:Z

    :try_start_0
    invoke-interface {v1}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_2

    move v13, v6

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {p0, v11, v13, v0}, Leh3$a;->b(ZZLwb8;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v0, v12}, Lgv1;->e(Ljava/lang/Object;)Z

    move-result v10

    const-wide/16 v11, 0x1

    if-eqz v10, :cond_5

    add-long/2addr v2, v11

    :cond_5
    add-long/2addr v4, v11

    iget v10, p0, Leh3$a;->d:I

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-nez v10, :cond_1

    iget-object v10, p0, Leh3$a;->f:Lbc8;

    invoke-interface {v10, v4, v5}, Lbc8;->request(J)V

    const-wide/16 v4, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v2}, Lm13;->d(Ljava/lang/Throwable;)V

    iput-boolean v6, p0, Leh3$a;->h:Z

    iget-object v3, p0, Leh3$a;->f:Lbc8;

    invoke-interface {v3}, Lbc8;->cancel()V

    invoke-interface {v1}, Liz7;->clear()V

    invoke-interface {v0, v2}, Lwb8;->onError(Ljava/lang/Throwable;)V

    iget-object p0, p0, Leh3$a;->b:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void

    :cond_6
    :goto_3
    if-nez v10, :cond_7

    iget-boolean v8, p0, Leh3$a;->i:Z

    invoke-interface {v1}, Liz7;->isEmpty()Z

    move-result v9

    invoke-virtual {p0, v8, v9, v0}, Leh3$a;->b(ZZLwb8;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-ne v7, v8, :cond_8

    iput-wide v2, p0, Leh3$a;->l:J

    iput-wide v4, p0, Leh3$b;->o:J

    neg-int v7, v7

    invoke-virtual {p0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_0

    :goto_4
    return-void

    :cond_8
    move v7, v8

    goto :goto_0
.end method

.method public final g()V
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    iget-boolean v2, p0, Leh3$a;->h:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Leh3$a;->i:Z

    iget-object v3, p0, Leh3$b;->n:Lgv1;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lwb8;->onNext(Ljava/lang/Object;)V

    if-eqz v2, :cond_3

    iput-boolean v0, p0, Leh3$a;->h:Z

    iget-object v0, p0, Leh3$a;->j:Ljava/lang/Throwable;

    iget-object v1, p0, Leh3$b;->n:Lgv1;

    if-eqz v0, :cond_2

    invoke-interface {v1, v0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lwb8;->onComplete()V

    :goto_0
    iget-object p0, p0, Leh3$a;->b:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void

    :cond_3
    neg-int v1, v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return-void
.end method

.method public final i()V
    .locals 10

    iget-object v0, p0, Leh3$b;->n:Lgv1;

    iget-object v1, p0, Leh3$a;->g:Liz7;

    iget-wide v2, p0, Leh3$a;->l:J

    const/4 v4, 0x1

    move v5, v4

    :cond_0
    :goto_0
    iget-object v6, p0, Leh3$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    :cond_1
    :goto_1
    cmp-long v8, v2, v6

    if-eqz v8, :cond_4

    :try_start_0
    invoke-interface {v1}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v9, p0, Leh3$a;->h:Z

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    if-nez v8, :cond_3

    iput-boolean v4, p0, Leh3$a;->h:Z

    invoke-interface {v0}, Lwb8;->onComplete()V

    iget-object p0, p0, Leh3$a;->b:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void

    :cond_3
    invoke-interface {v0, v8}, Lgv1;->e(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lm13;->d(Ljava/lang/Throwable;)V

    iput-boolean v4, p0, Leh3$a;->h:Z

    iget-object v2, p0, Leh3$a;->f:Lbc8;

    invoke-interface {v2}, Lbc8;->cancel()V

    invoke-interface {v0, v1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    iget-object p0, p0, Leh3$a;->b:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void

    :cond_4
    iget-boolean v6, p0, Leh3$a;->h:Z

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Liz7;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    iput-boolean v4, p0, Leh3$a;->h:Z

    invoke-interface {v0}, Lwb8;->onComplete()V

    iget-object p0, p0, Leh3$a;->b:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void

    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-ne v5, v6, :cond_7

    iput-wide v2, p0, Leh3$a;->l:J

    neg-int v5, v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_0

    :goto_2
    return-void

    :cond_7
    move v5, v6

    goto :goto_0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Leh3$a;->g:Liz7;

    invoke-interface {v0}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Leh3$a;->k:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-wide v1, p0, Leh3$b;->o:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget v3, p0, Leh3$a;->d:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Leh3$b;->o:J

    iget-object p0, p0, Leh3$a;->f:Lbc8;

    invoke-interface {p0, v1, v2}, Lbc8;->request(J)V

    return-object v0

    :cond_0
    iput-wide v1, p0, Leh3$b;->o:J

    :cond_1
    return-object v0
.end method

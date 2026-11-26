.class public final Ljg3$d;
.super Ljg3$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljg3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljg3$b<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final n:Lwb8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb8<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lwb8;Lup0;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljg3$b;-><init>(Lxl3;I)V

    iput-object p1, p0, Ljg3$d;->n:Lwb8;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ljg3$d;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Ljg3$b;->f:Lbc8;

    invoke-interface {p1}, Lbc8;->cancel()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Ljg3$d;->n:Lwb8;

    invoke-static {v0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Ljg3$b;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljg3$b;->j:Z

    iget-object v0, p0, Ljg3$b;->b:Ljg3$e;

    invoke-virtual {v0}, Ldc8;->cancel()V

    iget-object p0, p0, Ljg3$b;->f:Lbc8;

    invoke-interface {p0}, Lbc8;->cancel()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljg3$d;->n:Lwb8;

    invoke-interface {v2, p1}, Lwb8;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v2, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 7

    iget-object v0, p0, Ljg3$d;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_a

    :cond_0
    :goto_0
    iget-boolean v0, p0, Ljg3$b;->j:Z

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-boolean v0, p0, Ljg3$b;->l:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Ljg3$b;->i:Z

    :try_start_0
    iget-object v1, p0, Ljg3$b;->h:Liz7;

    invoke-interface {v1}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    iget-object p0, p0, Ljg3$d;->n:Lwb8;

    invoke-interface {p0}, Lwb8;->onComplete()V

    return-void

    :cond_3
    if-nez v4, :cond_9

    :try_start_1
    iget-object v0, p0, Ljg3$b;->c:Lxl3;

    invoke-interface {v0, v1}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ldt6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget v1, p0, Ljg3$b;->m:I

    if-eq v1, v3, :cond_5

    iget v1, p0, Ljg3$b;->g:I

    add-int/2addr v1, v3

    iget v4, p0, Ljg3$b;->e:I

    if-ne v1, v4, :cond_4

    iput v2, p0, Ljg3$b;->g:I

    iget-object v4, p0, Ljg3$b;->f:Lbc8;

    int-to-long v5, v1

    invoke-interface {v4, v5, v6}, Lbc8;->request(J)V

    goto :goto_2

    :cond_4
    iput v1, p0, Ljg3$b;->g:I

    :cond_5
    :goto_2
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_8

    check-cast v0, Ljava/util/concurrent/Callable;

    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v1, p0, Ljg3$b;->b:Ljg3$e;

    iget-boolean v1, v1, Ldc8;->h:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljg3$d;->n:Lwb8;

    invoke-interface {v1, v0}, Lwb8;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljg3$d;->n:Lwb8;

    iget-object p0, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v0, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    iput-boolean v3, p0, Ljg3$b;->l:Z

    iget-object v1, p0, Ljg3$b;->b:Ljg3$e;

    new-instance v2, Ljg3$g;

    iget-object v3, p0, Ljg3$b;->b:Ljg3$e;

    invoke-direct {v2, v3, v0}, Ljg3$g;-><init>(Lwb8;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ldc8;->g(Lbc8;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v1, p0, Ljg3$b;->f:Lbc8;

    invoke-interface {v1}, Lbc8;->cancel()V

    iget-object v1, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, p0, Ljg3$d;->n:Lwb8;

    iget-object p0, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v0, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    iput-boolean v3, p0, Ljg3$b;->l:Z

    iget-object v1, p0, Ljg3$b;->b:Ljg3$e;

    invoke-interface {v0, v1}, Ldt6;->a(Lwb8;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v1, p0, Ljg3$b;->f:Lbc8;

    invoke-interface {v1}, Lbc8;->cancel()V

    iget-object v1, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, p0, Ljg3$d;->n:Lwb8;

    iget-object p0, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v0, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v1, p0, Ljg3$b;->f:Lbc8;

    invoke-interface {v1}, Lbc8;->cancel()V

    iget-object v1, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, p0, Ljg3$d;->n:Lwb8;

    iget-object p0, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v0, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_9
    :goto_3
    iget-object v0, p0, Ljg3$d;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_a
    :goto_4
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Ljg3$d;->n:Lwb8;

    invoke-interface {v0, p0}, Lwb8;->a(Lbc8;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Ljg3$b;->b:Ljg3$e;

    invoke-virtual {p1}, Ldc8;->cancel()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Ljg3$d;->n:Lwb8;

    invoke-static {v0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final request(J)V
    .locals 0

    iget-object p0, p0, Ljg3$b;->b:Ljg3$e;

    invoke-virtual {p0, p1, p2}, Ldc8;->request(J)V

    return-void
.end method

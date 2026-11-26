.class public final Ljg3$c;
.super Ljg3$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljg3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
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

.field public final o:Z


# direct methods
.method public constructor <init>(Lwb8;Lup0;IZ)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljg3$b;-><init>(Lxl3;I)V

    iput-object p1, p0, Ljg3$c;->n:Lwb8;

    iput-boolean p4, p0, Ljg3$c;->o:Z

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Ljg3$c;->o:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Ljg3$b;->f:Lbc8;

    invoke-interface {p1}, Lbc8;->cancel()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljg3$b;->i:Z

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljg3$b;->l:Z

    invoke-virtual {p0}, Ljg3$c;->f()V

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object p0, p0, Ljg3$c;->n:Lwb8;

    invoke-interface {p0, p1}, Lwb8;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 6

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_d

    :cond_0
    :goto_0
    iget-boolean v0, p0, Ljg3$b;->j:Z

    if-eqz v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-boolean v0, p0, Ljg3$b;->l:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Ljg3$b;->i:Z

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Ljg3$c;->o:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    iget-object v0, p0, Ljg3$c;->n:Lwb8;

    iget-object p0, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v0, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Ljg3$b;->h:Liz7;

    invoke-interface {v1}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    iget-object v0, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    iget-object p0, p0, Ljg3$c;->n:Lwb8;

    if-eqz v0, :cond_4

    invoke-interface {p0, v0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_4
    invoke-interface {p0}, Lwb8;->onComplete()V

    goto/16 :goto_5

    :cond_5
    if-nez v4, :cond_c

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

    if-eq v1, v3, :cond_7

    iget v1, p0, Ljg3$b;->g:I

    add-int/2addr v1, v3

    iget v4, p0, Ljg3$b;->e:I

    if-ne v1, v4, :cond_6

    iput v2, p0, Ljg3$b;->g:I

    iget-object v2, p0, Ljg3$b;->f:Lbc8;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lbc8;->request(J)V

    goto :goto_2

    :cond_6
    iput v1, p0, Ljg3$b;->g:I

    :cond_7
    :goto_2
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/util/concurrent/Callable;

    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v1, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-boolean v0, p0, Ljg3$c;->o:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Ljg3$b;->f:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    iget-object v0, p0, Ljg3$c;->n:Lwb8;

    iget-object p0, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v0, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Ljg3$b;->b:Ljg3$e;

    iget-boolean v1, v1, Ldc8;->h:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Ljg3$c;->n:Lwb8;

    invoke-interface {v1, v0}, Lwb8;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    iput-boolean v3, p0, Ljg3$b;->l:Z

    iget-object v1, p0, Ljg3$b;->b:Ljg3$e;

    new-instance v2, Ljg3$g;

    iget-object v3, p0, Ljg3$b;->b:Ljg3$e;

    invoke-direct {v2, v3, v0}, Ljg3$g;-><init>(Lwb8;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ldc8;->g(Lbc8;)V

    goto :goto_4

    :cond_b
    iput-boolean v3, p0, Ljg3$b;->l:Z

    iget-object v1, p0, Ljg3$b;->b:Ljg3$e;

    invoke-interface {v0, v1}, Ldt6;->a(Lwb8;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v1, p0, Ljg3$b;->f:Lbc8;

    invoke-interface {v1}, Lbc8;->cancel()V

    iget-object v1, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    iget-object v0, p0, Ljg3$c;->n:Lwb8;

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

    iget-object v0, p0, Ljg3$c;->n:Lwb8;

    iget-object p0, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v0, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_c
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_d
    :goto_5
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Ljg3$c;->n:Lwb8;

    invoke-interface {v0, p0}, Lwb8;->a(Lbc8;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ljg3$b;->k:Lpt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljg3$b;->i:Z

    invoke-virtual {p0}, Ljg3$c;->f()V

    return-void

    :cond_0
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final request(J)V
    .locals 0

    iget-object p0, p0, Ljg3$b;->b:Ljg3$e;

    invoke-virtual {p0, p1, p2}, Ldc8;->request(J)V

    return-void
.end method

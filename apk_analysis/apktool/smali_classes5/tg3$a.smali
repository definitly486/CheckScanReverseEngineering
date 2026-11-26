.class public final Ltg3$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lrh3;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltg3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lbc8;",
        ">;",
        "Lrh3<",
        "TU;>;",
        "Lcp2;"
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:Ltg3$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltg3$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public volatile f:Z

.field public volatile g:Liz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liz7<",
            "TU;>;"
        }
    .end annotation
.end field

.field public h:J

.field public i:I


# direct methods
.method public constructor <init>(Ltg3$b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltg3$b<",
            "TT;TU;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-wide p2, p0, Ltg3$a;->b:J

    iput-object p1, p0, Ltg3$a;->c:Ltg3$b;

    iget p1, p1, Ltg3$b;->f:I

    iput p1, p0, Ltg3$a;->e:I

    shr-int/lit8 p1, p1, 0x2

    iput p1, p0, Ltg3$a;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 3

    invoke-static {p0, p1}, Lhc8;->d(Ljava/util/concurrent/atomic/AtomicReference;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lmw6;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lmw6;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ldw6;->d(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, Ltg3$a;->i:I

    iput-object v0, p0, Ltg3$a;->g:Liz7;

    iput-boolean v2, p0, Ltg3$a;->f:Z

    iget-object p0, p0, Ltg3$a;->c:Ltg3$b;

    invoke-virtual {p0}, Ltg3$b;->d()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, Ltg3$a;->i:I

    iput-object v0, p0, Ltg3$a;->g:Liz7;

    :cond_1
    iget p0, p0, Ltg3$a;->e:I

    int-to-long v0, p0

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    :cond_2
    return-void
.end method

.method public final b(J)V
    .locals 2

    iget v0, p0, Ltg3$a;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Ltg3$a;->h:J

    add-long/2addr v0, p1

    iget p1, p0, Ltg3$a;->d:I

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ltg3$a;->h:J

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbc8;

    invoke-interface {p0, v0, v1}, Lbc8;->request(J)V

    return-void

    :cond_0
    iput-wide v0, p0, Ltg3$a;->h:J

    :cond_1
    return-void
.end method

.method public final dispose()V
    .locals 0

    invoke-static {p0}, Lhc8;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lhc8;->CANCELLED:Lhc8;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltg3$a;->f:Z

    iget-object p0, p0, Ltg3$a;->c:Ltg3$b;

    invoke-virtual {p0}, Ltg3$b;->d()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lhc8;->CANCELLED:Lhc8;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Ltg3$a;->c:Ltg3$b;

    iget-object v1, v0, Ltg3$b;->i:Lpt;

    invoke-static {v1, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltg3$a;->f:Z

    iget-boolean p0, v0, Ltg3$b;->d:Z

    if-nez p0, :cond_0

    iget-object p0, v0, Ltg3$b;->m:Lbc8;

    invoke-interface {p0}, Lbc8;->cancel()V

    iget-object p0, v0, Ltg3$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p1, Ltg3$b;->t:[Ltg3$a;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ltg3$a;

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lhc8;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ltg3$b;->d()V

    return-void

    :cond_1
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget v0, p0, Ltg3$a;->i:I

    iget-object v1, p0, Ltg3$a;->c:Ltg3$b;

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v2, "Inner queue full?!"

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Ltg3$b;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iget-object v0, p0, Ltg3$a;->g:Liz7;

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Liz7;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v0, v1, Ltg3$b;->b:Lwb8;

    invoke-interface {v0, p1}, Lwb8;->onNext(Ljava/lang/Object;)V

    const-wide v5, 0x7fffffffffffffffL

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    iget-object p1, v1, Ltg3$b;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_1
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Ltg3$a;->b(J)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Ltg3$a;->g:Liz7;

    if-nez v0, :cond_3

    new-instance v0, Lm68;

    iget v3, v1, Ltg3$b;->f:I

    invoke-direct {v0, v3}, Lm68;-><init>(I)V

    iput-object v0, p0, Ltg3$a;->g:Liz7;

    :cond_3
    invoke-interface {v0, p1}, Liz7;->offer(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ltg3$b;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_5
    iget-object v0, p0, Ltg3$a;->g:Liz7;

    if-nez v0, :cond_6

    new-instance v0, Lm68;

    iget v3, v1, Ltg3$b;->f:I

    invoke-direct {v0, v3}, Lm68;-><init>(I)V

    iput-object v0, p0, Ltg3$a;->g:Liz7;

    :cond_6
    invoke-interface {v0, p1}, Liz7;->offer(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ltg3$b;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    if-eqz p0, :cond_8

    :goto_1
    return-void

    :cond_8
    invoke-virtual {v1}, Ltg3$b;->f()V

    return-void

    :cond_9
    invoke-virtual {v1}, Ltg3$b;->d()V

    return-void
.end method

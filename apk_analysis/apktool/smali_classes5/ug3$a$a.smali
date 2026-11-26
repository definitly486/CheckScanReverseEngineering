.class public final Lug3$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lt75;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lug3$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcp2;",
        ">;",
        "Lt75<",
        "TR;>;",
        "Lcp2;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lug3$a;


# direct methods
.method public constructor <init>(Lug3$a;)V
    .locals 0

    iput-object p1, p0, Lug3$a$a;->b:Lug3$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    invoke-static {p0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcp2;

    invoke-static {p0}, Lip2;->d(Lcp2;)Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 8

    iget-object v0, p0, Lug3$a$a;->b:Lug3$a;

    iget v1, v0, Lug3$a;->c:I

    iget-object v2, v0, Lug3$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, v0, Lug3$a;->e:Lfu1;

    invoke-virtual {v3, p0}, Lfu1;->a(Lcp2;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const-wide/16 v3, 0x1

    const v5, 0x7fffffff

    if-nez p0, :cond_6

    const/4 p0, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, p0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_0

    move p0, v6

    :cond_0
    iget-object v2, v0, Lug3$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln68;

    if-eqz p0, :cond_3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ln68;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    iget-object p0, v0, Lug3$a;->g:Lpt;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    iget-object v0, v0, Lug3$a;->b:Lwb8;

    if-eqz p0, :cond_2

    invoke-interface {v0, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-interface {v0}, Lwb8;->onComplete()V

    return-void

    :cond_3
    if-eq v1, v5, :cond_4

    iget-object p0, v0, Lug3$a;->j:Lbc8;

    invoke-interface {p0, v3, v4}, Lbc8;->request(J)V

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lug3$a;->f()V

    return-void

    :cond_6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eq v1, v5, :cond_7

    iget-object p0, v0, Lug3$a;->j:Lbc8;

    invoke-interface {p0, v3, v4}, Lbc8;->request(J)V

    :cond_7
    invoke-virtual {v0}, Lug3$a;->d()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lug3$a$a;->b:Lug3$a;

    iget-object v1, v0, Lug3$a;->e:Lfu1;

    invoke-virtual {v1, p0}, Lfu1;->a(Lcp2;)Z

    iget-object p0, v0, Lug3$a;->g:Lpt;

    invoke-static {p0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lug3$a;->j:Lbc8;

    invoke-interface {p0}, Lbc8;->cancel()V

    invoke-virtual {v1}, Lfu1;->dispose()V

    iget-object p0, v0, Lug3$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {v0}, Lug3$a;->d()V

    return-void

    :cond_0
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    invoke-static {p0, p1}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lug3$a$a;->b:Lug3$a;

    iget-object v1, v0, Lug3$a;->e:Lfu1;

    invoke-virtual {v1, p0}, Lfu1;->a(Lcp2;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_6

    const/4 p0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lug3$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_0

    move p0, v1

    :cond_0
    iget-object v1, v0, Lug3$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    iget-object v1, v0, Lug3$a;->b:Lwb8;

    invoke-interface {v1, p1}, Lwb8;->onNext(Ljava/lang/Object;)V

    iget-object p1, v0, Lug3$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln68;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ln68;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    iget-object p0, v0, Lug3$a;->g:Lpt;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    iget-object p1, v0, Lug3$a;->b:Lwb8;

    if-eqz p0, :cond_2

    invoke-interface {p1, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-interface {p1}, Lwb8;->onComplete()V

    return-void

    :cond_3
    iget-object p0, v0, Lug3$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-static {p0, v1, v2}, Lm00;->e(Ljava/util/concurrent/atomic/AtomicLong;J)V

    iget p0, v0, Lug3$a;->c:I

    const p1, 0x7fffffff

    if-eq p0, p1, :cond_5

    iget-object p0, v0, Lug3$a;->j:Lbc8;

    invoke-interface {p0, v1, v2}, Lbc8;->request(J)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lug3$a;->g()Ln68;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ln68;->offer(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    invoke-virtual {v0}, Lug3$a;->g()Ln68;

    move-result-object p0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0, p1}, Ln68;->offer(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, v0, Lug3$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    if-eqz p0, :cond_7

    :goto_1
    return-void

    :cond_7
    invoke-virtual {v0}, Lug3$a;->f()V

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

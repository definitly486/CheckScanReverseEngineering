.class public final Lir5$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lt75;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir5$a;
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
.field public final synthetic b:Lir5$a;


# direct methods
.method public constructor <init>(Lir5$a;)V
    .locals 0

    iput-object p1, p0, Lir5$a$a;->b:Lir5$a;

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
    .locals 4

    iget-object v0, p0, Lir5$a$a;->b:Lir5$a;

    iget-object v1, v0, Lir5$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, v0, Lir5$a;->c:Lfu1;

    invoke-virtual {v2, p0}, Lfu1;->a(Lcp2;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    move p0, v2

    :cond_0
    iget-object v1, v0, Lir5$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln68;

    if-eqz p0, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ln68;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    iget-object p0, v0, Lir5$a;->e:Lpt;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    iget-object v0, v0, Lir5$a;->b:Lls5;

    if-eqz p0, :cond_2

    invoke-interface {v0, p0}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-interface {v0}, Lls5;->onComplete()V

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Lir5$a;->b()V

    return-void

    :cond_5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {v0}, Lir5$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lir5$a$a;->b:Lir5$a;

    iget-object v1, v0, Lir5$a;->c:Lfu1;

    invoke-virtual {v1, p0}, Lfu1;->a(Lcp2;)Z

    iget-object p0, v0, Lir5$a;->e:Lpt;

    invoke-static {p0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lir5$a;->h:Lcp2;

    invoke-interface {p0}, Lcp2;->dispose()V

    invoke-virtual {v1}, Lfu1;->dispose()V

    iget-object p0, v0, Lir5$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {v0}, Lir5$a;->a()V

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lir5$a$a;->b:Lir5$a;

    iget-object v1, v0, Lir5$a;->c:Lfu1;

    invoke-virtual {v1, p0}, Lfu1;->a(Lcp2;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lir5$a;->b:Lls5;

    invoke-interface {v2, p1}, Lls5;->onNext(Ljava/lang/Object;)V

    iget-object p1, v0, Lir5$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    move p0, v1

    :cond_0
    iget-object p1, v0, Lir5$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln68;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ln68;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    iget-object p0, v0, Lir5$a;->e:Lpt;

    invoke-static {p0}, Lk13;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    iget-object p1, v0, Lir5$a;->b:Lls5;

    if-eqz p0, :cond_2

    invoke-interface {p1, p0}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-interface {p1}, Lls5;->onComplete()V

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_7

    goto :goto_3

    :cond_4
    iget-object p0, v0, Lir5$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln68;

    if-eqz v1, :cond_5

    :goto_1
    move-object v2, v1

    goto :goto_2

    :cond_5
    new-instance v1, Ln68;

    sget v2, Lgg3;->b:I

    invoke-direct {v1, v2}, Ln68;-><init>(I)V

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :goto_2
    monitor-enter v2

    :try_start_0
    invoke-virtual {v2, p1}, Ln68;->offer(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v0, Lir5$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    if-eqz p0, :cond_7

    :goto_3
    return-void

    :cond_7
    invoke-virtual {v0}, Lir5$a;->b()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_8
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    goto :goto_0
.end method

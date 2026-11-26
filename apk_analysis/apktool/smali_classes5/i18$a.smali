.class public final Li18$a;
.super Lqk2;
.source "SourceFile"

# interfaces
.implements Lt08;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lqk2<",
        "TT;>;",
        "Lt08<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public d:Lcp2;


# virtual methods
.method public final dispose()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lqk2;->c:Ljava/lang/Object;

    iget-object p0, p0, Li18$a;->d:Lcp2;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    and-int/lit8 v0, v0, 0x36

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object p0, p0, Lqk2;->b:Lls5;

    invoke-interface {p0, p1}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 1

    iget-object v0, p0, Li18$a;->d:Lcp2;

    invoke-static {v0, p1}, Lip2;->i(Lcp2;Lcp2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Li18$a;->d:Lcp2;

    iget-object p1, p0, Lqk2;->b:Lls5;

    invoke-interface {p1, p0}, Lls5;->onSubscribe(Lcp2;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    and-int/lit8 v1, v0, 0x36

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    iget-object v2, p0, Lqk2;->b:Lls5;

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Lqk2;->c:Ljava/lang/Object;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    const/4 p1, 0x0

    invoke-interface {v2, p1}, Lls5;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    invoke-interface {v2, p1}, Lls5;->onNext(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    invoke-interface {v2}, Lls5;->onComplete()V

    :cond_2
    :goto_1
    return-void
.end method

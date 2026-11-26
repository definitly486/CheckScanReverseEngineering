.class public final Lqr5$a;
.super Lxe0;
.source "SourceFile"

# interfaces
.implements Lls5;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqr5;
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
        "Lxe0<",
        "TT;>;",
        "Lls5<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final b:Lls5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls5<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Lhe7$c;

.field public final d:I

.field public e:Liz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liz7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:Lcp2;

.field public g:Ljava/lang/Throwable;

.field public volatile h:Z

.field public volatile i:Z

.field public j:I

.field public k:Z


# direct methods
.method public constructor <init>(Lls5;Lhe7$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lqr5$a;->b:Lls5;

    iput-object p2, p0, Lqr5$a;->c:Lhe7$c;

    iput p3, p0, Lqr5$a;->d:I

    return-void
.end method


# virtual methods
.method public final a(ZZLls5;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lls5<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lqr5$a;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lqr5$a;->e:Liz7;

    invoke-interface {p0}, Liz7;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lqr5$a;->g:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lqr5$a;->i:Z

    iget-object p2, p0, Lqr5$a;->e:Liz7;

    invoke-interface {p2}, Liz7;->clear()V

    invoke-interface {p3, p1}, Lls5;->onError(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lqr5$a;->c:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return v1

    :cond_1
    if-eqz p2, :cond_2

    iput-boolean v1, p0, Lqr5$a;->i:Z

    invoke-interface {p3}, Lls5;->onComplete()V

    iget-object p0, p0, Lqr5$a;->c:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lqr5$a;->e:Liz7;

    invoke-interface {p0}, Liz7;->clear()V

    return-void
.end method

.method public final d(I)I
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lqr5$a;->k:Z

    const/4 p0, 0x2

    return p0
.end method

.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lqr5$a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqr5$a;->i:Z

    iget-object v0, p0, Lqr5$a;->f:Lcp2;

    invoke-interface {v0}, Lcp2;->dispose()V

    iget-object v0, p0, Lqr5$a;->c:Lhe7$c;

    invoke-interface {v0}, Lcp2;->dispose()V

    iget-boolean v0, p0, Lqr5$a;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lqr5$a;->e:Liz7;

    invoke-interface {p0}, Liz7;->clear()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lqr5$a;->i:Z

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lqr5$a;->e:Liz7;

    invoke-interface {p0}, Liz7;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lqr5$a;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqr5$a;->h:Z

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lqr5$a;->c:Lhe7$c;

    invoke-virtual {v0, p0}, Lhe7$c;->a(Ljava/lang/Runnable;)Lcp2;

    :cond_1
    :goto_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lqr5$a;->h:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, Lqr5$a;->g:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lqr5$a;->h:Z

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lqr5$a;->c:Lhe7$c;

    invoke-virtual {p1, p0}, Lhe7$c;->a(Ljava/lang/Runnable;)Lcp2;

    :cond_1
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lqr5$a;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lqr5$a;->j:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lqr5$a;->e:Liz7;

    invoke-interface {v0, p1}, Liz7;->offer(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lqr5$a;->c:Lhe7$c;

    invoke-virtual {p1, p0}, Lhe7$c;->a(Ljava/lang/Runnable;)Lcp2;

    :cond_2
    :goto_0
    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 2

    iget-object v0, p0, Lqr5$a;->f:Lcp2;

    invoke-static {v0, p1}, Lip2;->i(Lcp2;Lcp2;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lqr5$a;->f:Lcp2;

    instance-of v0, p1, Lyv6;

    if-eqz v0, :cond_1

    check-cast p1, Lyv6;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ldw6;->d(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, Lqr5$a;->j:I

    iput-object p1, p0, Lqr5$a;->e:Liz7;

    iput-boolean v1, p0, Lqr5$a;->h:Z

    iget-object p1, p0, Lqr5$a;->b:Lls5;

    invoke-interface {p1, p0}, Lls5;->onSubscribe(Lcp2;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lqr5$a;->c:Lhe7$c;

    invoke-virtual {p1, p0}, Lhe7$c;->a(Ljava/lang/Runnable;)Lcp2;

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lqr5$a;->j:I

    iput-object p1, p0, Lqr5$a;->e:Liz7;

    iget-object p1, p0, Lqr5$a;->b:Lls5;

    invoke-interface {p1, p0}, Lls5;->onSubscribe(Lcp2;)V

    return-void

    :cond_1
    new-instance p1, Ln68;

    iget v0, p0, Lqr5$a;->d:I

    invoke-direct {p1, v0}, Ln68;-><init>(I)V

    iput-object p1, p0, Lqr5$a;->e:Liz7;

    iget-object p1, p0, Lqr5$a;->b:Lls5;

    invoke-interface {p1, p0}, Lls5;->onSubscribe(Lcp2;)V

    :cond_2
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lqr5$a;->e:Liz7;

    invoke-interface {p0}, Liz7;->poll()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final run()V
    .locals 7

    iget-boolean v0, p0, Lqr5$a;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    move v0, v1

    :cond_0
    iget-boolean v2, p0, Lqr5$a;->i:Z

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-boolean v2, p0, Lqr5$a;->h:Z

    iget-object v3, p0, Lqr5$a;->g:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    iput-boolean v1, p0, Lqr5$a;->i:Z

    iget-object v0, p0, Lqr5$a;->b:Lls5;

    iget-object v1, p0, Lqr5$a;->g:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lls5;->onError(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lqr5$a;->c:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void

    :cond_2
    iget-object v3, p0, Lqr5$a;->b:Lls5;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lls5;->onNext(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    iput-boolean v1, p0, Lqr5$a;->i:Z

    iget-object v0, p0, Lqr5$a;->g:Ljava/lang/Throwable;

    iget-object v1, p0, Lqr5$a;->b:Lls5;

    if-eqz v0, :cond_3

    invoke-interface {v1, v0}, Lls5;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lls5;->onComplete()V

    :goto_0
    iget-object p0, p0, Lqr5$a;->c:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void

    :cond_4
    neg-int v0, v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lqr5$a;->e:Liz7;

    iget-object v2, p0, Lqr5$a;->b:Lls5;

    move v3, v1

    :cond_6
    iget-boolean v4, p0, Lqr5$a;->h:Z

    invoke-interface {v0}, Liz7;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v2}, Lqr5$a;->a(ZZLls5;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    :goto_1
    iget-boolean v4, p0, Lqr5$a;->h:Z

    :try_start_0
    invoke-interface {v0}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_8

    move v6, v1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p0, v4, v6, v2}, Lqr5$a;->a(ZZLls5;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    if-eqz v6, :cond_a

    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_6

    :goto_3
    return-void

    :cond_a
    invoke-interface {v2, v5}, Lls5;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v3}, Lm13;->d(Ljava/lang/Throwable;)V

    iput-boolean v1, p0, Lqr5$a;->i:Z

    iget-object v1, p0, Lqr5$a;->f:Lcp2;

    invoke-interface {v1}, Lcp2;->dispose()V

    invoke-interface {v0}, Liz7;->clear()V

    invoke-interface {v2, v3}, Lls5;->onError(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lqr5$a;->c:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void
.end method

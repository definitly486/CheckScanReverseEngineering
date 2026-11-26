.class public final Lfr5$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lls5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr5;
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
        "Lcp2;",
        ">;",
        "Lls5<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:Lfr5$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfr5$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field public volatile d:Z

.field public volatile e:Liz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liz7<",
            "TU;>;"
        }
    .end annotation
.end field

.field public f:I


# direct methods
.method public constructor <init>(Lfr5$b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfr5$b<",
            "TT;TU;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-wide p2, p0, Lfr5$a;->b:J

    iput-object p1, p0, Lfr5$a;->c:Lfr5$b;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr5$a;->d:Z

    iget-object p0, p0, Lfr5$a;->c:Lfr5$b;

    invoke-virtual {p0}, Lfr5$b;->d()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lfr5$a;->c:Lfr5$b;

    iget-object v0, v0, Lfr5$b;->h:Lpt;

    invoke-static {v0, p1}, Lk13;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lfr5$a;->c:Lfr5$b;

    invoke-virtual {p1}, Lfr5$b;->b()Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lfr5$a;->d:Z

    iget-object p0, p0, Lfr5$a;->c:Lfr5$b;

    invoke-virtual {p0}, Lfr5$b;->d()V

    return-void

    :cond_0
    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget v0, p0, Lfr5$a;->f:I

    iget-object v1, p0, Lfr5$a;->c:Lfr5$b;

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, v1, Lfr5$b;->b:Lls5;

    invoke-interface {p0, p1}, Lls5;->onNext(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfr5$a;->e:Liz7;

    if-nez v0, :cond_1

    new-instance v0, Ln68;

    iget v2, v1, Lfr5$b;->e:I

    invoke-direct {v0, v2}, Ln68;-><init>(I)V

    iput-object v0, p0, Lfr5$a;->e:Liz7;

    :cond_1
    invoke-interface {v0, p1}, Liz7;->offer(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1}, Lfr5$b;->e()V

    return-void

    :cond_3
    invoke-virtual {v1}, Lfr5$b;->d()V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 2

    invoke-static {p0, p1}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lyv6;

    if-eqz v0, :cond_1

    check-cast p1, Lyv6;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ldw6;->d(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, Lfr5$a;->f:I

    iput-object p1, p0, Lfr5$a;->e:Liz7;

    iput-boolean v1, p0, Lfr5$a;->d:Z

    iget-object p0, p0, Lfr5$a;->c:Lfr5$b;

    invoke-virtual {p0}, Lfr5$b;->d()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lfr5$a;->f:I

    iput-object p1, p0, Lfr5$a;->e:Liz7;

    :cond_1
    return-void
.end method

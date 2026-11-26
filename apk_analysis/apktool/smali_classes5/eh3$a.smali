.class public abstract Leh3$a;
.super Lye0;
.source "SourceFile"

# interfaces
.implements Lrh3;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lye0<",
        "TT;>;",
        "Lrh3<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final b:Lhe7$c;

.field public final c:I

.field public final d:I

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public f:Lbc8;

.field public g:Liz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liz7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile h:Z

.field public volatile i:Z

.field public j:Ljava/lang/Throwable;

.field public k:I

.field public l:J

.field public m:Z


# direct methods
.method public constructor <init>(Lhe7$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Leh3$a;->b:Lhe7$c;

    iput p2, p0, Leh3$a;->c:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Leh3$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Leh3$a;->d:I

    return-void
.end method


# virtual methods
.method public final b(ZZLwb8;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lwb8<",
            "*>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Leh3$a;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leh3$a;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Leh3$a;->j:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Leh3$a;->h:Z

    invoke-virtual {p0}, Leh3$a;->clear()V

    invoke-interface {p3, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    iget-object p0, p0, Leh3$a;->b:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return v1

    :cond_1
    if-eqz p2, :cond_2

    iput-boolean v1, p0, Leh3$a;->h:Z

    invoke-interface {p3}, Lwb8;->onComplete()V

    iget-object p0, p0, Leh3$a;->b:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Leh3$a;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Leh3$a;->h:Z

    iget-object v0, p0, Leh3$a;->f:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    iget-object v0, p0, Leh3$a;->b:Lhe7$c;

    invoke-interface {v0}, Lcp2;->dispose()V

    iget-boolean v0, p0, Leh3$a;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Leh3$a;->g:Liz7;

    invoke-interface {p0}, Liz7;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Leh3$a;->g:Liz7;

    invoke-interface {p0}, Liz7;->clear()V

    return-void
.end method

.method public final d(I)I
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Leh3$a;->m:Z

    const/4 p0, 0x2

    return p0
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract i()V
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Leh3$a;->g:Liz7;

    invoke-interface {p0}, Liz7;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final j()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Leh3$a;->b:Lhe7$c;

    invoke-virtual {v0, p0}, Lhe7$c;->a(Ljava/lang/Runnable;)Lcp2;

    return-void
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Leh3$a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Leh3$a;->i:Z

    invoke-virtual {p0}, Leh3$a;->j()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Leh3$a;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, Leh3$a;->j:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Leh3$a;->i:Z

    invoke-virtual {p0}, Leh3$a;->j()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Leh3$a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Leh3$a;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Leh3$a;->j()V

    return-void

    :cond_1
    iget-object v0, p0, Leh3$a;->g:Liz7;

    invoke-interface {v0, p1}, Liz7;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Leh3$a;->f:Lbc8;

    invoke-interface {p1}, Lbc8;->cancel()V

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Leh3$a;->j:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Leh3$a;->i:Z

    :cond_2
    invoke-virtual {p0}, Leh3$a;->j()V

    return-void
.end method

.method public final request(J)V
    .locals 1

    invoke-static {p1, p2}, Lhc8;->e(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leh3$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lm00;->c(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Leh3$a;->j()V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 2

    iget-boolean v0, p0, Leh3$a;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leh3$a;->g()V

    return-void

    :cond_0
    iget v0, p0, Leh3$a;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Leh3$a;->i()V

    return-void

    :cond_1
    invoke-virtual {p0}, Leh3$a;->f()V

    return-void
.end method

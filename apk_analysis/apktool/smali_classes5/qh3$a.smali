.class public final Lqh3$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lrh3;
.implements Lbc8;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqh3$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Thread;",
        ">;",
        "Lrh3<",
        "TT;>;",
        "Lbc8;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final b:Lwb8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb8<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Lhe7$c;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lbc8;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public final f:Z

.field public g:Ldt6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldt6<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwb8;Lhe7$c;Ldt6;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;",
            "Lhe7$c;",
            "Ldt6<",
            "TT;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lqh3$a;->b:Lwb8;

    iput-object p2, p0, Lqh3$a;->c:Lhe7$c;

    iput-object p3, p0, Lqh3$a;->g:Ldt6;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lqh3$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lqh3$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    xor-int/lit8 p1, p4, 0x1

    iput-boolean p1, p0, Lqh3$a;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 5

    iget-object v0, p0, Lqh3$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lhc8;->d(Ljava/util/concurrent/atomic/AtomicReference;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqh3$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3, v4, p1}, Lqh3$a;->b(JLbc8;)V

    :cond_0
    return-void
.end method

.method public final b(JLbc8;)V
    .locals 2

    iget-boolean v0, p0, Lqh3$a;->f:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lqh3$a$a;

    invoke-direct {v0, p1, p2, p3}, Lqh3$a$a;-><init>(JLbc8;)V

    iget-object p0, p0, Lqh3$a;->c:Lhe7$c;

    invoke-virtual {p0, v0}, Lhe7$c;->a(Ljava/lang/Runnable;)Lcp2;

    return-void

    :cond_1
    :goto_0
    invoke-interface {p3, p1, p2}, Lbc8;->request(J)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lqh3$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lhc8;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object p0, p0, Lqh3$a;->c:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void
.end method

.method public final onComplete()V
    .locals 1

    iget-object v0, p0, Lqh3$a;->b:Lwb8;

    invoke-interface {v0}, Lwb8;->onComplete()V

    iget-object p0, p0, Lqh3$a;->c:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lqh3$a;->b:Lwb8;

    invoke-interface {v0, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lqh3$a;->c:Lhe7$c;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lqh3$a;->b:Lwb8;

    invoke-interface {p0, p1}, Lwb8;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final request(J)V
    .locals 4

    invoke-static {p1, p2}, Lhc8;->e(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqh3$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbc8;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, v1}, Lqh3$a;->b(JLbc8;)V

    return-void

    :cond_0
    iget-object v1, p0, Lqh3$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v1, p1, p2}, Lm00;->c(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbc8;

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0, v1, p1}, Lqh3$a;->b(JLbc8;)V

    :cond_1
    return-void
.end method

.method public final run()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lqh3$a;->g:Ldt6;

    const/4 v1, 0x0

    iput-object v1, p0, Lqh3$a;->g:Ldt6;

    invoke-interface {v0, p0}, Ldt6;->a(Lwb8;)V

    return-void
.end method

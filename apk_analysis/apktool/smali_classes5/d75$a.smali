.class public final Ld75$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lt75;
.implements Lcp2;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld75;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcp2;",
        ">;",
        "Lt75<",
        "TT;>;",
        "Lcp2;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final b:Lt75;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt75<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:Lhe7;

.field public f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lt75;JLjava/util/concurrent/TimeUnit;Lhe7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt75<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lhe7;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ld75$a;->b:Lt75;

    iput-wide p2, p0, Ld75$a;->c:J

    iput-object p4, p0, Ld75$a;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Ld75$a;->e:Lhe7;

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

    iget-wide v0, p0, Ld75$a;->c:J

    iget-object v2, p0, Ld75$a;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Ld75$a;->e:Lhe7;

    invoke-virtual {v3, p0, v0, v1, v2}, Lhe7;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object v0

    invoke-static {p0, v0}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    iput-object p1, p0, Ld75$a;->g:Ljava/lang/Throwable;

    iget-wide v0, p0, Ld75$a;->c:J

    iget-object p1, p0, Ld75$a;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Ld75$a;->e:Lhe7;

    invoke-virtual {v2, p0, v0, v1, p1}, Lhe7;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p1

    invoke-static {p0, p1}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    invoke-static {p0, p1}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld75$a;->b:Lt75;

    invoke-interface {p1, p0}, Lt75;->onSubscribe(Lcp2;)V

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

    iput-object p1, p0, Ld75$a;->f:Ljava/lang/Object;

    iget-wide v0, p0, Ld75$a;->c:J

    iget-object p1, p0, Ld75$a;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Ld75$a;->e:Lhe7;

    invoke-virtual {v2, p0, v0, v1, p1}, Lhe7;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcp2;

    move-result-object p1

    invoke-static {p0, p1}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Ld75$a;->g:Ljava/lang/Throwable;

    iget-object v1, p0, Ld75$a;->b:Lt75;

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Lt75;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object p0, p0, Ld75$a;->f:Ljava/lang/Object;

    if-eqz p0, :cond_1

    invoke-interface {v1, p0}, Lt75;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {v1}, Lt75;->onComplete()V

    return-void
.end method

.class public final Lg18$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lt08;
.implements Ljava/lang/Runnable;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg18;
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
        "Lt08<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "Lcp2;"
    }
.end annotation


# instance fields
.field public final b:Lt08;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt08<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcp2;",
            ">;"
        }
    .end annotation
.end field

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lt08;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lg18$a;->b:Lt08;

    iput-wide p2, p0, Lg18$a;->d:J

    iput-object p4, p0, Lg18$a;->e:Ljava/util/concurrent/TimeUnit;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lg18$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    invoke-static {p0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object p0, p0, Lg18$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcp2;

    sget-object v1, Lip2;->DISPOSED:Lip2;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg18$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object p0, p0, Lg18$a;->b:Lt08;

    invoke-interface {p0, p1}, Lt08;->onError(Ljava/lang/Throwable;)V

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcp2;

    sget-object v1, Lip2;->DISPOSED:Lip2;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg18$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object p0, p0, Lg18$a;->b:Lt08;

    invoke-interface {p0, p1}, Lt08;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcp2;

    sget-object v1, Lip2;->DISPOSED:Lip2;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcp2;->dispose()V

    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    iget-wide v1, p0, Lg18$a;->d:J

    iget-object v3, p0, Lg18$a;->e:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lk13;->c(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lg18$a;->b:Lt08;

    invoke-interface {p0, v0}, Lt08;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

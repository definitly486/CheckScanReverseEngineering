.class public final Luz7$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lt08;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luz7;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lt08<",
        "TT;>;",
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

.field public final c:Lh6;

.field public d:Lcp2;


# direct methods
.method public constructor <init>(Lt08;Lh6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TT;>;",
            "Lh6;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Luz7$a;->b:Lt08;

    iput-object p2, p0, Luz7$a;->c:Lh6;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Luz7$a;->c:Lh6;

    invoke-interface {p0}, Lh6;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-object v0, p0, Luz7$a;->d:Lcp2;

    invoke-interface {v0}, Lcp2;->dispose()V

    invoke-virtual {p0}, Luz7$a;->a()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Luz7$a;->d:Lcp2;

    invoke-interface {p0}, Lcp2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Luz7$a;->b:Lt08;

    invoke-interface {v0, p1}, Lt08;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Luz7$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 1

    iget-object v0, p0, Luz7$a;->d:Lcp2;

    invoke-static {v0, p1}, Lip2;->i(Lcp2;Lcp2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Luz7$a;->d:Lcp2;

    iget-object p1, p0, Luz7$a;->b:Lt08;

    invoke-interface {p1, p0}, Lt08;->onSubscribe(Lcp2;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Luz7$a;->b:Lt08;

    invoke-interface {v0, p1}, Lt08;->onSuccess(Ljava/lang/Object;)V

    invoke-virtual {p0}, Luz7$a;->a()V

    return-void
.end method

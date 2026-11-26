.class public final Lw75$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt75;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw75;
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
        "Ljava/lang/Object;",
        "Lt75<",
        "TT;>;",
        "Lcp2;"
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

.field public final c:Lw75;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw75<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Lcp2;


# direct methods
.method public constructor <init>(Lt75;Lw75;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt75<",
            "-TT;>;",
            "Lw75<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw75$a;->b:Lt75;

    iput-object p2, p0, Lw75$a;->c:Lw75;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lw75$a;->c:Lw75;

    iget-object p0, p0, Lw75;->g:Lrm3$d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lw75$a;->c:Lw75;

    iget-object v0, v0, Lw75;->e:Lqx1;

    invoke-interface {v0, p1}, Lqx1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    sget-object v0, Lip2;->DISPOSED:Lip2;

    iput-object v0, p0, Lw75$a;->d:Lcp2;

    iget-object v0, p0, Lw75$a;->b:Lt75;

    invoke-interface {v0, p1}, Lt75;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lw75$a;->a()V

    return-void
.end method

.method public final dispose()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lw75$a;->c:Lw75;

    iget-object v0, v0, Lw75;->h:Lrm3$d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-static {v0}, Ld97;->b(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lw75$a;->d:Lcp2;

    invoke-interface {v0}, Lcp2;->dispose()V

    sget-object v0, Lip2;->DISPOSED:Lip2;

    iput-object v0, p0, Lw75$a;->d:Lcp2;

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lw75$a;->d:Lcp2;

    invoke-interface {p0}, Lcp2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 2

    iget-object v0, p0, Lw75$a;->d:Lcp2;

    sget-object v1, Lip2;->DISPOSED:Lip2;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lw75$a;->c:Lw75;

    iget-object v0, v0, Lw75;->f:Lrm3$d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lw75$a;->d:Lcp2;

    iget-object v0, p0, Lw75$a;->b:Lt75;

    invoke-interface {v0}, Lt75;->onComplete()V

    invoke-virtual {p0}, Lw75$a;->a()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lw75$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lw75$a;->d:Lcp2;

    sget-object v1, Lip2;->DISPOSED:Lip2;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lw75$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 2

    iget-object v0, p0, Lw75$a;->b:Lt75;

    iget-object v1, p0, Lw75$a;->d:Lcp2;

    invoke-static {v1, p1}, Lip2;->i(Lcp2;Lcp2;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lw75$a;->c:Lw75;

    iget-object v1, v1, Lw75;->c:Lrm3$e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lw75$a;->d:Lcp2;

    invoke-interface {v0, p0}, Lt75;->onSubscribe(Lcp2;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lcp2;->dispose()V

    sget-object p1, Lip2;->DISPOSED:Lip2;

    iput-object p1, p0, Lw75$a;->d:Lcp2;

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {v0, p0}, Lt75;->onSubscribe(Lcp2;)V

    invoke-interface {v0, v1}, Lt75;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lw75$a;->d:Lcp2;

    sget-object v1, Lip2;->DISPOSED:Lip2;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lw75$a;->c:Lw75;

    iget-object v0, v0, Lw75;->d:Lqx1;

    invoke-interface {v0, p1}, Lqx1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lw75$a;->d:Lcp2;

    iget-object v0, p0, Lw75$a;->b:Lt75;

    invoke-interface {v0, p1}, Lt75;->onSuccess(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lw75$a;->a()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lw75$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

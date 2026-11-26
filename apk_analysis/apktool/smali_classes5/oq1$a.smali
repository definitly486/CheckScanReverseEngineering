.class public final Loq1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmq1;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loq1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lmq1;

.field public c:Lcp2;

.field public final synthetic d:Loq1;


# direct methods
.method public constructor <init>(Loq1;Lmq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loq1$a;->d:Loq1;

    iput-object p2, p0, Loq1$a;->b:Lmq1;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Loq1$a;->d:Loq1;

    iget-object v0, v0, Loq1;->h:Lrm3$d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-static {v0}, Ld97;->b(Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Loq1$a;->c:Lcp2;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Loq1$a;->c:Lcp2;

    invoke-interface {p0}, Lcp2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 3

    iget-object v0, p0, Loq1$a;->b:Lmq1;

    iget-object v1, p0, Loq1$a;->d:Loq1;

    iget-object p0, p0, Loq1$a;->c:Lcp2;

    sget-object v2, Lip2;->DISPOSED:Lip2;

    if-ne p0, v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, v1, Loq1;->e:Lh6;

    invoke-interface {p0}, Lh6;->run()V

    iget-object p0, v1, Loq1;->f:Lh6;

    invoke-interface {p0}, Lh6;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {v0}, Lmq1;->onComplete()V

    :try_start_1
    iget-object p0, v1, Loq1;->g:Lrm3$d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-interface {v0, p0}, Lmq1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Loq1$a;->d:Loq1;

    iget-object v1, p0, Loq1$a;->c:Lcp2;

    sget-object v2, Lip2;->DISPOSED:Lip2;

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, v0, Loq1;->d:Lqx1;

    invoke-interface {v1, p1}, Lqx1;->accept(Ljava/lang/Object;)V

    iget-object v1, v0, Loq1;->f:Lh6;

    invoke-interface {v1}, Lh6;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lm13;->d(Ljava/lang/Throwable;)V

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v1}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v2

    :goto_0
    iget-object p0, p0, Loq1$a;->b:Lmq1;

    invoke-interface {p0, p1}, Lmq1;->onError(Ljava/lang/Throwable;)V

    :try_start_1
    iget-object p0, v0, Loq1;->g:Lrm3$d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 2

    iget-object v0, p0, Loq1$a;->b:Lmq1;

    :try_start_0
    iget-object v1, p0, Loq1$a;->d:Loq1;

    iget-object v1, v1, Loq1;->c:Lqx1;

    invoke-interface {v1, p1}, Lqx1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Loq1$a;->c:Lcp2;

    invoke-static {v1, p1}, Lip2;->i(Lcp2;Lcp2;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Loq1$a;->c:Lcp2;

    invoke-interface {v0, p0}, Lmq1;->onSubscribe(Lcp2;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lcp2;->dispose()V

    sget-object p1, Lip2;->DISPOSED:Lip2;

    iput-object p1, p0, Loq1$a;->c:Lcp2;

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {v0, p0}, Lmq1;->onSubscribe(Lcp2;)V

    invoke-interface {v0, v1}, Lmq1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

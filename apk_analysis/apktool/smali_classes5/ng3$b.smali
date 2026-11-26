.class public final Lng3$b;
.super Lwe0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lng3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lwe0<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final g:Lqx1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqx1<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final h:Lqx1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqx1<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lh6;

.field public final j:Lh6;


# direct methods
.method public constructor <init>(Lwb8;Lqx1;Lrm3$e;Lrm3$d;Lrm3$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lwe0;-><init>(Lwb8;)V

    iput-object p2, p0, Lng3$b;->g:Lqx1;

    iput-object p3, p0, Lng3$b;->h:Lqx1;

    iput-object p4, p0, Lng3$b;->i:Lh6;

    iput-object p5, p0, Lng3$b;->j:Lh6;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lwe0;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lng3$b;->i:Lh6;

    invoke-interface {v0}, Lh6;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwe0;->e:Z

    iget-object v0, p0, Lwe0;->b:Lwb8;

    invoke-interface {v0}, Lwb8;->onComplete()V

    :try_start_1
    iget-object p0, p0, Lng3$b;->j:Lh6;

    invoke-interface {p0}, Lh6;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Lwe0;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lwe0;->b:Lwb8;

    iget-boolean v1, p0, Lwe0;->e:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Ld97;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lwe0;->e:Z

    :try_start_0
    iget-object v1, p0, Lng3$b;->h:Lqx1;

    invoke-interface {v1, p1}, Lqx1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lm13;->d(Ljava/lang/Throwable;)V

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v1}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lwb8;->onError(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    iget-object p0, p0, Lng3$b;->j:Lh6;

    invoke-interface {p0}, Lh6;->run()V
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

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lwe0;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lwe0;->f:I

    iget-object v1, p0, Lwe0;->b:Lwb8;

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    invoke-interface {v1, p0}, Lwb8;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lng3$b;->g:Lqx1;

    invoke-interface {v0, p1}, Lqx1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, p1}, Lwb8;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lwe0;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lng3$b;->h:Lqx1;

    :try_start_0
    iget-object v1, p0, Lwe0;->d:Lmw6;

    invoke-interface {v1}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v2, p0, Lng3$b;->j:Lh6;

    if-eqz v1, :cond_1

    :try_start_1
    iget-object p0, p0, Lng3$b;->g:Lqx1;

    invoke-interface {p0, v1}, Lqx1;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Lh6;->run()V

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v0, p0}, Lqx1;->accept(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v0, Lk13;->a:Lk13$a;

    instance-of v0, p0, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Exception;

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_0
    throw p0

    :catchall_2
    move-exception v0

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p0, v0}, [Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    invoke-interface {v2}, Lh6;->run()V

    throw p0

    :cond_1
    iget v0, p0, Lwe0;->f:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object p0, p0, Lng3$b;->i:Lh6;

    invoke-interface {p0}, Lh6;->run()V

    invoke-interface {v2}, Lh6;->run()V

    :cond_2
    return-object v1

    :catchall_3
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    :try_start_5
    invoke-interface {v0, p0}, Lqx1;->accept(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    sget-object v0, Lk13;->a:Lk13$a;

    instance-of v0, p0, Ljava/lang/Exception;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Exception;

    throw p0

    :cond_3
    throw p0

    :catchall_4
    move-exception v0

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p0, v0}, [Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    throw v1
.end method

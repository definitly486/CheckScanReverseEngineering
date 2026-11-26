.class public final Lt13$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lt13$b;",
        ">;",
        "Ljava/util/concurrent/Executor;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public b:Lt13;

.field public c:Ljava/util/concurrent/Executor;

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Thread;


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lt13$b;->CANCELLED:Lt13$b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Lt13$c;->c:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lt13$c;->b:Lt13;

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lt13$c;->e:Ljava/lang/Thread;

    :try_start_0
    iget-object v0, p0, Lt13$c;->b:Lt13;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lt13;->b:Lt13$d;

    iget-object v1, v0, Lt13$d;->a:Ljava/lang/Thread;

    iget-object v3, p0, Lt13$c;->e:Ljava/lang/Thread;

    if-ne v1, v3, :cond_2

    iput-object v2, p0, Lt13$c;->b:Lt13;

    iget-object v1, v0, Lt13$d;->b:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lo8;->r(Z)V

    iput-object p1, v0, Lt13$d;->b:Ljava/lang/Runnable;

    iget-object p1, p0, Lt13$c;->c:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, v0, Lt13$d;->c:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lt13$c;->c:Ljava/util/concurrent/Executor;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lt13$c;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lt13$c;->c:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lt13$c;->d:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput-object v2, p0, Lt13$c;->e:Ljava/lang/Thread;

    return-void

    :goto_2
    iput-object v2, p0, Lt13$c;->e:Ljava/lang/Thread;

    throw p1
.end method

.method public final run()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lt13$c;->e:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lt13$c;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iput-object v2, p0, Lt13$c;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    new-instance v1, Lt13$d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lt13$d;->a:Ljava/lang/Thread;

    iget-object v0, p0, Lt13$c;->b:Lt13;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lt13;->b:Lt13$d;

    iput-object v2, p0, Lt13$c;->b:Lt13;

    :try_start_0
    iget-object v0, p0, Lt13$c;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iput-object v2, p0, Lt13$c;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object p0, v1, Lt13$d;->b:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    iget-object v0, v1, Lt13$d;->c:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iput-object v2, v1, Lt13$d;->b:Ljava/lang/Runnable;

    iput-object v2, v1, Lt13$d;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iput-object v2, v1, Lt13$d;->a:Ljava/lang/Thread;

    return-void

    :goto_1
    iput-object v2, v1, Lt13$d;->a:Ljava/lang/Thread;

    throw p0
.end method

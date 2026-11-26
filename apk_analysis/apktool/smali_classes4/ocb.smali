.class public final Locb;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/l;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# instance fields
.field public volatile i:Ljcb;


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Locb;->i:Ljcb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrbb;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "task=["

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Locb;->i:Ljcb;

    if-eqz v0, :cond_1

    sget-object v1, Lrbb;->c:Lmbb;

    sget-object v2, Lrbb;->b:Lmbb;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    instance-of v4, v3, Ljava/lang/Thread;

    if-eqz v4, :cond_1

    new-instance v4, Lebb;

    invoke-direct {v4, v0}, Lebb;-><init>(Ljcb;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {v4, v5}, Lebb;->a(Lebb;Ljava/lang/Thread;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    move-object v4, v3

    check-cast v4, Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-ne v0, v1, :cond_1

    invoke-static {v4}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v3, Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Locb;->i:Ljcb;

    return-void
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Locb;->i:Ljcb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrbb;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Locb;->i:Ljcb;

    return-void
.end method

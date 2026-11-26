.class public abstract Lrbb;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final b:Lmbb;

.field public static final c:Lmbb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmbb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrbb;->b:Lmbb;

    new-instance v0, Lmbb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrbb;->c:Lmbb;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;)V
.end method

.method public final b(Ljava/lang/Thread;)V
    .locals 8

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    instance-of v5, v0, Lebb;

    sget-object v6, Lrbb;->c:Lmbb;

    if-nez v5, :cond_2

    if-ne v0, v6, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    check-cast v1, Lebb;

    :goto_1
    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/16 v7, 0x3e8

    if-le v4, v7, :cond_6

    if-eq v0, v6, :cond_3

    invoke-virtual {p0, v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_7
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public final run()V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    move-object v2, p0

    check-cast v2, Ljcb;

    iget-object v2, v2, Ljcb;->d:Locb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->isDone()Z

    move-result v3

    sget-object v4, Lrbb;->b:Lmbb;

    if-nez v3, :cond_4

    :try_start_0
    move-object v5, p0

    check-cast v5, Ljcb;

    iget-object v5, v5, Ljcb;->e:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxh;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxh;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_1
    instance-of v5, v3, Ljava/lang/InterruptedException;

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v0}, Lrbb;->b(Ljava/lang/Thread;)V

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;-><init>(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->g:Lcom/google/android/gms/internal/mlkit_vision_barcode/b;

    invoke-virtual {v0, v2, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/b;->f(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->f(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;)V

    goto :goto_2

    :catchall_1
    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lrbb;->b(Ljava/lang/Thread;)V

    :goto_0
    invoke-virtual {p0, v1}, Lrbb;->a(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;)V

    throw v1

    :cond_4
    :goto_1
    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v0}, Lrbb;->b(Ljava/lang/Thread;)V

    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {p0, v1}, Lrbb;->a(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    sget-object v1, Lrbb;->b:Lmbb;

    if-ne v0, v1, :cond_0

    const-string v0, "running=[DONE]"

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lebb;

    if-eqz v1, :cond_1

    const-string v0, "running=[INTERRUPTED]"

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "running=[RUNNING ON "

    const-string v2, "]"

    invoke-static {v1, v0, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "running=[NOT STARTED YET]"

    :goto_0
    check-cast p0, Ljcb;

    iget-object p0, p0, Ljcb;->e:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxh;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ", "

    invoke-static {v0, v1, p0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

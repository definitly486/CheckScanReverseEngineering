.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzex;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzex;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final e:Z

.field public static final f:Lxbb;

.field public static final g:Lcom/google/android/gms/internal/mlkit_vision_barcode/b;

.field public static final h:Ljava/lang/Object;


# instance fields
.field public volatile b:Ljava/lang/Object;

.field public volatile c:Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

.field public volatile d:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v1, "b"

    :try_start_0
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->e:Z

    new-instance v0, Lxbb;

    const-class v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;

    invoke-direct {v0, v2}, Lxbb;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->f:Lxbb;

    const/4 v3, 0x0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v3

    move-object v12, v6

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_1
    move-object v4, v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :goto_2
    :try_start_2
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/f;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    const-class v6, Ljava/lang/Thread;

    const-string v7, "a"

    invoke-static {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    invoke-static {v0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-string v8, "d"

    invoke-static {v2, v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

    const-string v9, "c"

    invoke-static {v2, v0, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v9

    const-class v0, Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/f;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    move-object v6, v3

    move-object v12, v4

    move-object v0, v5

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_3
    move-object v3, v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v6, v3

    move-object v12, v4

    :goto_5
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->g:Lcom/google/android/gms/internal/mlkit_vision_barcode/b;

    if-eqz v6, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->f:Lxbb;

    invoke-virtual {v0}, Lxbb;->a()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v10, "<clinit>"

    const-string v11, "UnsafeAtomicHelper is broken!"

    const-string v9, "com.google.common.util.concurrent.AbstractFuture"

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lxbb;->a()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v4, "<clinit>"

    const-string v5, "SafeAtomicHelper is broken!"

    const-string v3, "com.google.common.util.concurrent.AbstractFuture"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzex;-><init>()V

    return-void
.end method

.method public static d(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;)Ljava/lang/Object;
    .locals 6

    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    instance-of v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;->a:Z

    if-eqz v1, :cond_1

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;->b:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    invoke-direct {v0, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;-><init>(ZLjava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_2
    instance-of v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzex;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzex;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzex;->a()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    sget-boolean v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->e:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    and-int/2addr v3, v1

    if-eqz v3, :cond_5

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_5
    move v3, v2

    :goto_2
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_6

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    :cond_6
    if-eqz v1, :cond_7

    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v3

    goto :goto_6

    :cond_7
    if-nez v4, :cond_8

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->h:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_4

    :cond_8
    return-object v4

    :catchall_0
    move-exception v4

    if-nez v3, :cond_9

    goto :goto_3

    :cond_9
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :goto_3
    throw v4
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    move-exception p0

    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :goto_5
    if-nez v1, :cond_a

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_a
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :goto_6
    if-eqz v1, :cond_b

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :catch_4
    move v3, v4

    goto :goto_2
.end method

.method public static f(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;)V
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->g:Lcom/google/android/gms/internal/mlkit_vision_barcode/b;

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/b;->b(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;)Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    iput-object v0, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;->a:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;->b:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->c()V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->g:Lcom/google/android/gms/internal/mlkit_vision_barcode/b;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/e;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

    invoke-virtual {v2, p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/b;->a(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;Lcom/google/android/gms/internal/mlkit_vision_barcode/e;)Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

    move-result-object p0

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    :goto_2
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/e;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

    iput-object p0, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/e;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

    move-object p0, v1

    move-object v1, v2

    goto :goto_2

    :cond_2
    :goto_3
    if-eqz p0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/e;->a:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/e;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;

    if-eqz v3, :cond_3

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;

    iget-object p0, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;->b:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    if-ne v3, v1, :cond_4

    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->d(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->g:Lcom/google/android/gms/internal/mlkit_vision_barcode/b;

    invoke-virtual {v4, p0, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/b;->f(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/e;->b:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->g(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_4
    move-object p0, v2

    goto :goto_3

    :cond_5
    return-void
.end method

.method public static g(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 6

    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v5, v0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->f:Lxbb;

    invoke-virtual {v0}, Lxbb;->a()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "RuntimeException while executing runnable "

    const-string v3, " with executor "

    invoke-static {v2, p0, v3, p1}, Lpg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "executeListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->h:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;->a:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;->b:Ljava/lang/Throwable;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/Throwable;
    .locals 1

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/i;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;->a:Ljava/lang/Throwable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-string p0, "remaining delay=["

    const-string v2, " ms]"

    invoke-static {v0, v1, p0, v2}, Lbg;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final cancel(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    or-int/2addr v1, v4

    if-eqz v1, :cond_8

    sget-boolean v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->e:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    :goto_1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move v4, v2

    :cond_3
    :goto_3
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->g:Lcom/google/android/gms/internal/mlkit_vision_barcode/b;

    invoke-virtual {v5, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/b;->f(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->f(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;)V

    instance-of p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;

    if-eqz p0, :cond_6

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/i;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    if-nez v0, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    instance-of v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;

    or-int/2addr v4, v5

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_3

    :cond_5
    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_6
    return v3

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    instance-of v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;

    if-nez v5, :cond_3

    return v4

    :cond_8
    return v2
.end method

.method public final e(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const-string v1, "SUCCESS, result=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    const-string p0, "null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_1
    if-ne v2, p0, :cond_2

    const-string p0, "this future"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catchall_0
    move-exception p0

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_2
    throw p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    const-string v0, "UNKNOWN, cause=["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " thrown from get()]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_2
    const-string p0, "CANCELLED"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :goto_4
    const-string v1, "FAILURE, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final get()Ljava/lang/Object;
    .locals 6

    .line 369
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_8

    .line 370
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    instance-of v5, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;

    xor-int/2addr v5, v3

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 371
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    if-eq v1, v0, :cond_7

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    .line 372
    invoke-direct {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;-><init>()V

    :cond_2
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->g:Lcom/google/android/gms/internal/mlkit_vision_barcode/b;

    .line 373
    invoke-virtual {v5, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/b;->c(Lcom/google/android/gms/internal/mlkit_vision_barcode/k;Lcom/google/android/gms/internal/mlkit_vision_barcode/k;)V

    .line 374
    invoke-virtual {v5, p0, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/b;->g(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;Lcom/google/android/gms/internal/mlkit_vision_barcode/k;Lcom/google/android/gms/internal/mlkit_vision_barcode/k;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 375
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 376
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 377
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    if-eqz v0, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    instance-of v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;

    xor-int/2addr v5, v3

    and-int/2addr v1, v5

    if-eqz v1, :cond_3

    .line 378
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 379
    :cond_5
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->h(Lcom/google/android/gms/internal/mlkit_vision_barcode/k;)V

    new-instance p0, Ljava/lang/InterruptedException;

    .line 380
    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    .line 381
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    if-ne v1, v0, :cond_2

    :cond_7
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    .line 382
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 383
    :cond_8
    new-instance p0, Ljava/lang/InterruptedException;

    .line 384
    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_16

    iget-object v7, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    instance-of v11, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;

    xor-int/2addr v11, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_1

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v7, v5, v10

    if-lez v7, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    add-long/2addr v12, v5

    goto :goto_1

    :cond_2
    move-wide v12, v10

    :goto_1
    const-wide/16 v14, 0x3e8

    cmp-long v7, v5, v14

    if-ltz v7, :cond_a

    iget-object v7, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    if-eq v7, v4, :cond_9

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    invoke-direct {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;-><init>()V

    move/from16 v16, v9

    :goto_2
    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->g:Lcom/google/android/gms/internal/mlkit_vision_barcode/b;

    invoke-virtual {v9, v8, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/b;->c(Lcom/google/android/gms/internal/mlkit_vision_barcode/k;Lcom/google/android/gms/internal/mlkit_vision_barcode/k;)V

    invoke-virtual {v9, v0, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/b;->g(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;Lcom/google/android/gms/internal/mlkit_vision_barcode/k;Lcom/google/android/gms/internal/mlkit_vision_barcode/k;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-wide/from16 v17, v10

    :cond_3
    const-wide v10, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    if-eqz v4, :cond_4

    move/from16 v5, v16

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    instance-of v6, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;

    xor-int/lit8 v6, v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v5, v12, v4

    cmp-long v4, v5, v14

    if-gez v4, :cond_3

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->h(Lcom/google/android/gms/internal/mlkit_vision_barcode/k;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->h(Lcom/google/android/gms/internal/mlkit_vision_barcode/k;)V

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_7
    move-wide/from16 v17, v10

    iget-object v7, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    if-ne v7, v4, :cond_8

    goto :goto_4

    :cond_8
    move-wide/from16 v10, v17

    goto :goto_2

    :cond_9
    :goto_4
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_a
    move/from16 v16, v9

    move-wide/from16 v17, v10

    :goto_5
    cmp-long v4, v5, v17

    if-lez v4, :cond_e

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    if-eqz v4, :cond_b

    move/from16 v5, v16

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    instance-of v6, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;

    xor-int/lit8 v6, v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v5, v12, v4

    goto :goto_5

    :cond_d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Waited "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v8, v5, v14

    cmp-long v8, v8, v17

    if-gez v8, :cond_14

    const-string v8, " (plus "

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v5, v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    sub-long/2addr v5, v10

    cmp-long v3, v8, v17

    if-eqz v3, :cond_10

    cmp-long v10, v5, v14

    if-lez v10, :cond_f

    goto :goto_7

    :cond_f
    const/16 v16, 0x0

    :cond_10
    :goto_7
    if-lez v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_11

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_11
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v16, :cond_13

    const-string v1, " nanoseconds "

    invoke-static {v5, v6, v2, v1}, Lbg;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_13
    const-string v1, "delay)"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->isDone()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, " but future completed as timeout expired"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, " for "

    invoke-static {v2, v1, v4}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final h(Lcom/google/android/gms/internal/mlkit_vision_barcode/k;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;->a:Ljava/lang/Thread;

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    if-eq p1, v1, :cond_3

    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;->b:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    move-object v1, p1

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;->b:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    iget-object p1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;->a:Ljava/lang/Thread;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->g:Lcom/google/android/gms/internal/mlkit_vision_barcode/b;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/b;->g(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;Lcom/google/android/gms/internal/mlkit_vision_barcode/k;Lcom/google/android/gms/internal/mlkit_vision_barcode/k;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final isCancelled()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    instance-of p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    return p0
.end method

.method public final isDone()Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    and-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    const-string v2, "]"

    if-eqz v1, :cond_1

    const-string p0, "CANCELLED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->e(Ljava/lang/StringBuilder;)V

    goto :goto_6

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v3, "PENDING"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    instance-of v4, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;

    const-string v5, "Exception thrown from implementation: "

    if-eqz v4, :cond_4

    const-string v4, ", setFuture=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;

    iget-object v3, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;

    if-ne v3, p0, :cond_3

    :try_start_0
    const-string v3, "this future"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v3

    goto :goto_3

    :catch_3
    move-exception v3

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_5

    const-string v4, ", info=["

    invoke-static {v0, v4, v3, v2}, Ln1;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->isDone()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->e(Ljava/lang/StringBuilder;)V

    :cond_6
    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzl(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaz;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/e;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

    if-eq v0, v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/e;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/e;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->g:Lcom/google/android/gms/internal/mlkit_vision_barcode/b;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/b;->e(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;Lcom/google/android/gms/internal/mlkit_vision_barcode/e;Lcom/google/android/gms/internal/mlkit_vision_barcode/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/e;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

    if-ne v0, v2, :cond_0

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->g(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.class public final Lgab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeh;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lgab;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgab;->c:Ljava/lang/Object;

    iput-object p2, p0, Lgab;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lebc;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lgab;->b:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgab;->c:Ljava/lang/Object;

    iput-object p1, p0, Lgab;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lgab;->b:I

    iget-object v1, p0, Lgab;->c:Ljava/lang/Object;

    iget-object p0, p0, Lgab;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lebc;

    :try_start_0
    iget-object v0, p0, Lebc;->c:Lcom/google/android/gms/tasks/SuccessContinuation;

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/SuccessContinuation;->then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Continuation returned null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lebc;->onFailure(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_0
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->a:Lbec;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    invoke-virtual {p0, v0}, Lebc;->onFailure(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_2
    invoke-virtual {p0}, Lebc;->onCanceled()V

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lebc;->onFailure(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0}, Lebc;->onFailure(Ljava/lang/Exception;)V

    :goto_2
    return-void

    :pswitch_0
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeh;

    check-cast v1, Ljava/util/concurrent/Future;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzex;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzey;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzex;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v2, "Future was expected to be done: %s"
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_3
    :try_start_2
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_7

    :cond_2
    :goto_4
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeh;->zzb(Ljava/lang/Object;)V

    goto :goto_8

    :catchall_1
    move-exception v1

    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_5
    throw v1

    :catch_4
    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzba;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeh;->zza(Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeh;->zza(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_5
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeh;->zza(Ljava/lang/Throwable;)V

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lgab;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzav;

    move-result-object v0

    iget-object p0, p0, Lgab;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzeh;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzav;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzav;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzav;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

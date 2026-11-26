.class public final Lb4b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lb4b;->b:I

    iput-object p2, p0, Lb4b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lb4b;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lb4b;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lb4b;->d:Ljava/lang/Object;

    iget-object p0, p0, Lb4b;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzlj;

    iget-object p0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzt()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzls;->zzd:Lcom/google/android/gms/measurement/internal/zzls;

    filled-new-array {v0}, [Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza([Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v0

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lmdb;->zzg()V

    invoke-virtual {p0}, Lqhb;->a()V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zznl;->j(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    new-instance v3, Li7c;

    invoke-direct {v3, p0, v2, v1, v0}, Li7c;-><init>(Lcom/google/android/gms/measurement/internal/zznl;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzoo;)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zznl;->h(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzdd;

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzdk;

    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzdq;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzdr;->zza(Lcom/google/android/gms/internal/play_billing/zzdq;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzdd;->zza(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_2
    :goto_2
    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/play_billing/zzdd;->zzb(Ljava/lang/Object;)V

    goto :goto_6

    :catchall_1
    move-exception p0

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_3
    throw p0

    :catch_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/zzbo;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/play_billing/zzdd;->zza(Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/play_billing/zzdd;->zza(Ljava/lang/Throwable;)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lb4b;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzbj;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbh;

    move-result-object v0

    iget-object p0, p0, Lb4b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzdd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzbh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbh;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

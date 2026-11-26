.class public final synthetic Lxxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznl;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lxxb;->b:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lxxb;->c:Ljava/lang/Object;

    iput-object p1, p0, Lxxb;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Libc;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lxxb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxxb;->c:Ljava/lang/Object;

    iput-object p2, p0, Lxxb;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lxxb;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lxxb;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/zznl;

    iget-object v1, v0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zznl;->d:Lcom/google/android/gms/measurement/internal/zzgb;

    if-nez v2, :cond_0

    const-string p0, "Failed to send app backgrounded"

    invoke-static {v1, p0}, Lxp;->h(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lxxb;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzr;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzA(Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznl;->g()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "Failed to send app backgrounded to the service"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lxxb;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget-object p0, p0, Lxxb;->c:Ljava/lang/Object;

    check-cast p0, Libc;

    monitor-enter p0

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "Null service connection"

    invoke-virtual {p0, v0}, Libc;->b(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :try_start_2
    new-instance v1, Lhcc;

    invoke-direct {v1, v0}, Lhcc;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Libc;->d:Lhcc;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x2

    :try_start_3
    iput v0, p0, Libc;->b:I

    new-instance v0, Lf1c;

    invoke-direct {v0, p0}, Lf1c;-><init>(Libc;)V

    iget-object v1, p0, Libc;->g:Lcom/google/android/gms/cloudmessaging/zzv;

    iget-object v1, v1, Lcom/google/android/gms/cloudmessaging/zzv;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit p0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Libc;->b(Ljava/lang/String;)V

    monitor-exit p0

    :goto_1
    return-void

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

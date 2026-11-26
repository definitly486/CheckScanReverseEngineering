.class public final synthetic Ll1c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lqc5;

.field public final synthetic c:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lqc5;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll1c;->b:Lqc5;

    iput-object p2, p0, Ll1c;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Ll1c;->b:Lqc5;

    iget-object p0, p0, Ll1c;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, v0, Lqc5;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    if-nez v1, :cond_2

    move-object v1, v0

    check-cast v1, Lm1c;

    monitor-enter v1

    :try_start_0
    iget-object v4, v1, Lm1c;->e:Lv3c;

    invoke-interface {v4}, Lv3c;->zzb()V

    sput-boolean v3, Lm1c;->k:Z

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;

    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;-><init>()V

    iget-boolean v4, v1, Lm1c;->i:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    :goto_1
    iget-object v5, v1, Lm1c;->f:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrp;

    invoke-direct {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrp;-><init>()V

    iget-object v6, v1, Lm1c;->d:Lsc0;

    invoke-static {v6}, Lxva;->a(Lsc0;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrp;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrp;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrp;->zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzws;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwe;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwe;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, v0, Lqc5;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzrr;->zza()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

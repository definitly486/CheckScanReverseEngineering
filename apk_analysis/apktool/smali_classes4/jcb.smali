.class public final Ljcb;
.super Lrbb;
.source "SourceFile"


# instance fields
.field public final synthetic d:Locb;

.field public final e:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxh;


# direct methods
.method public constructor <init>(Locb;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxh;)V
    .locals 0

    iput-object p1, p0, Ljcb;->d:Locb;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Ljcb;->e:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxh;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;)V
    .locals 3

    iget-object p0, p0, Ljcb;->d:Locb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->d(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->g:Lcom/google/android/gms/internal/mlkit_vision_barcode/b;

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/b;->f(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->f(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/g;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;)V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->g:Lcom/google/android/gms/internal/mlkit_vision_barcode/b;

    invoke-virtual {v2, p0, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/b;->f(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    sget-object v1, Lr9b;->zza:Lr9b;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzet;->zzl(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/d;->b:Lcom/google/android/gms/internal/mlkit_vision_barcode/d;

    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->g:Lcom/google/android/gms/internal/mlkit_vision_barcode/b;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/b;->f(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    :cond_2
    instance-of p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    if-eqz p0, :cond_3

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;

    iget-boolean p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/c;->a:Z

    invoke-interface {p1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    return-void
.end method

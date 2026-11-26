.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/h;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/b;
.source "SourceFile"


# virtual methods
.method public final a(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;Lcom/google/android/gms/internal/mlkit_vision_barcode/e;)Lcom/google/android/gms/internal/mlkit_vision_barcode/e;
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

    if-eq p0, p2, :cond_0

    iput-object p2, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object p0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;)Lcom/google/android/gms/internal/mlkit_vision_barcode/k;
    .locals 1

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    if-eq v0, p0, :cond_0

    iput-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object v0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(Lcom/google/android/gms/internal/mlkit_vision_barcode/k;Lcom/google/android/gms/internal/mlkit_vision_barcode/k;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;->b:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/mlkit_vision_barcode/k;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/k;->a:Ljava/lang/Thread;

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;Lcom/google/android/gms/internal/mlkit_vision_barcode/e;Lcom/google/android/gms/internal/mlkit_vision_barcode/e;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/e;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->b:Ljava/lang/Object;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;Lcom/google/android/gms/internal/mlkit_vision_barcode/k;Lcom/google/android/gms/internal/mlkit_vision_barcode/k;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode/k;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

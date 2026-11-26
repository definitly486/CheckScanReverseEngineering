.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzms;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lm5c;


# direct methods
.method public static declared-synchronized zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzme;)Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzms;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzms;->a:Lm5c;

    if-nez v1, :cond_0

    new-instance v1, Lm5c;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lu1;-><init>(IB)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzms;->a:Lm5c;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1, p0}, Lu1;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;
    .locals 1

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzms;

    monitor-enter p0

    :try_start_0
    const-string v0, "vision-common"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzme;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmd;->zzd()Lcom/google/android/gms/internal/mlkit_vision_common/zzme;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzms;->zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzme;)Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

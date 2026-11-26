.class public final Lcom/google/android/gms/internal/mlkit_common/zzr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzq;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzq;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzq;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzq;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

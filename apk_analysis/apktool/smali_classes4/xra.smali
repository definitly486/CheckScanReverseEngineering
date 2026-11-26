.class public final Lxra;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaew;
    .locals 1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzaew;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaew;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaew;->zzc()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaew;->zzb(Lcom/google/android/gms/internal/measurement/zzaew;)V

    :cond_1
    return-object p0
.end method

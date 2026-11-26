.class public final Lcom/google/android/gms/internal/auth/zzdo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/auth/zzdj;)Lcom/google/android/gms/internal/auth/zzdj;
    .locals 1

    instance-of v0, p0, Ls5b;

    if-nez v0, :cond_2

    instance-of v0, p0, Lg5b;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lg5b;

    invoke-direct {v0, p0}, Lg5b;-><init>(Lcom/google/android/gms/internal/auth/zzdj;)V

    return-object v0

    :cond_1
    new-instance v0, Ls5b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Ls5b;->b:Lcom/google/android/gms/internal/auth/zzdj;

    return-object v0

    :cond_2
    return-object p0
.end method

.method public static zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzdj;
    .locals 1

    new-instance v0, Lz5b;

    invoke-direct {v0, p0}, Lz5b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

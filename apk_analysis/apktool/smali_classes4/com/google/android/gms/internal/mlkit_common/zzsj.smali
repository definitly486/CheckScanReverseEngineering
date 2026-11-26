.class public abstract Lcom/google/android/gms/internal/mlkit_common/zzsj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzh()Lcom/google/android/gms/internal/mlkit_common/zzsi;
    .locals 3

    new-instance v0, Lkdc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzsi;-><init>()V

    const-string v1, "NA"

    iput-object v1, v0, Lkdc;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkdc;->zzf(Z)Lcom/google/android/gms/internal/mlkit_common/zzsi;

    invoke-virtual {v0, v1}, Lkdc;->zze(Z)Lcom/google/android/gms/internal/mlkit_common/zzsi;

    sget-object v2, Lsc5;->UNKNOWN:Lsc5;

    invoke-virtual {v0, v2}, Lkdc;->zzd(Lsc5;)Lcom/google/android/gms/internal/mlkit_common/zzsi;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzmu;->zza:Lcom/google/android/gms/internal/mlkit_common/zzmu;

    invoke-virtual {v0, v2}, Lkdc;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzmu;)Lcom/google/android/gms/internal/mlkit_common/zzsi;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzna;->zza:Lcom/google/android/gms/internal/mlkit_common/zzna;

    invoke-virtual {v0, v2}, Lkdc;->zza(Lcom/google/android/gms/internal/mlkit_common/zzna;)Lcom/google/android/gms/internal/mlkit_common/zzsi;

    invoke-virtual {v0, v1}, Lkdc;->zzc(I)Lcom/google/android/gms/internal/mlkit_common/zzsi;

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()Lsc5;
.end method

.method public abstract zzc()Lcom/google/android/gms/internal/mlkit_common/zzmu;
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/mlkit_common/zzna;
.end method

.method public abstract zze()Ljava/lang/String;
.end method

.method public abstract zzf()Z
.end method

.method public abstract zzg()Z
.end method

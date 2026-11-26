.class public final Lcom/google/android/gms/internal/mlkit_common/zzh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_common/zzh;


# instance fields
.field public final a:Z

.field public final b:Lcom/google/android/gms/internal/mlkit_common/zzaf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzf;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzf;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzf;->zzd()Lcom/google/android/gms/internal/mlkit_common/zzh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzh;->zza:Lcom/google/android/gms/internal/mlkit_common/zzh;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzf;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzf;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzf;

    new-instance v2, La3b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_common/zzk;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzf;->zza(Lcom/google/android/gms/internal/mlkit_common/zzk;)Lcom/google/android/gms/internal/mlkit_common/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzf;->zzd()Lcom/google/android/gms/internal/mlkit_common/zzh;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzf;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzf;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzf;->zzd()Lcom/google/android/gms/internal/mlkit_common/zzh;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/google/android/gms/internal/mlkit_common/zzaf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzh;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzh;->b:Lcom/google/android/gms/internal/mlkit_common/zzaf;

    return-void
.end method

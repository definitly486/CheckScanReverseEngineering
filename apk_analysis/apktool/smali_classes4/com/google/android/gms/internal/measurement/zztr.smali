.class public abstract Lcom/google/android/gms/internal/measurement/zztr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzh()Lcom/google/android/gms/internal/measurement/zztq;
    .locals 2

    new-instance v0, Lgec;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zztq;-><init>()V

    sget-object v1, Ll;->b:Ll;

    iput-object v1, v0, Lgec;->c:Lrz5;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zztw;->zza()Lcom/google/android/gms/internal/measurement/zztw;

    move-result-object v1

    iput-object v1, v0, Lgec;->e:Lcom/google/android/gms/internal/measurement/zztw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgec;->zzf(Z)Lcom/google/android/gms/internal/measurement/zztq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgec;->zze(Z)Lcom/google/android/gms/internal/measurement/zztq;

    return-object v0
.end method


# virtual methods
.method public abstract zza()Landroid/net/Uri;
.end method

.method public abstract zzb()Lcom/google/android/gms/internal/measurement/zzafc;
.end method

.method public abstract zzc()Lrz5;
.end method

.method public abstract zzd()Lcom/google/common/collect/j;
.end method

.method public abstract zze()Lcom/google/android/gms/internal/measurement/zzuj;
.end method

.method public abstract zzf()Z
.end method

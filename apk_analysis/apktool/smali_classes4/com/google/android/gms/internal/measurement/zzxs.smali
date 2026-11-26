.class public final Lcom/google/android/gms/internal/measurement/zzxs;
.super Lcom/google/android/gms/internal/measurement/zzxi;
.source "SourceFile"


# static fields
.field public static final b:Lphc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lphc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzxt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxs;->b:Lphc;

    return-void
.end method

.method public static zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzxs;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzxs;

    const-string v0, "Phlogger"

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzaad;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzxi;-><init>(Lcom/google/android/gms/internal/measurement/zzzf;)V

    return-object p0
.end method


# virtual methods
.method public final zze(Ljava/util/logging/Level;)Lcom/google/android/gms/internal/measurement/zzxp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxi;->a:Lcom/google/android/gms/internal/measurement/zzzf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzf;->zzb(Ljava/util/logging/Level;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzzf;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzaad;->zzh(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    if-nez v1, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzxs;->b:Lphc;

    return-object p0

    :cond_0
    new-instance v0, Lohc;

    invoke-direct {v0, p0, p1}, Lohc;-><init>(Lcom/google/android/gms/internal/measurement/zzxs;Ljava/util/logging/Level;)V

    return-object v0
.end method

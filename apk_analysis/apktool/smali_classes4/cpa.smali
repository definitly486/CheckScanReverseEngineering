.class public final Lcpa;
.super Lcom/google/android/gms/internal/measurement/zzaag;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/logging/Level;

.field public final d:Ljava/util/Set;

.field public final e:Lcom/google/android/gms/internal/measurement/zzzq;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzaas;->f:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaag;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    iput-object p1, p0, Lcpa;->b:Ljava/lang/String;

    iput-object v0, p0, Lcpa;->c:Ljava/util/logging/Level;

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzaas;->f:Ljava/util/Set;

    iput-object p1, p0, Lcpa;->d:Ljava/util/Set;

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzaas;->g:Lcom/google/android/gms/internal/measurement/zzzq;

    iput-object p1, p0, Lcpa;->e:Lcom/google/android/gms/internal/measurement/zzzq;

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/util/logging/Level;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzzd;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzzd;->zzl()Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzyw;->zza:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaag;->zza()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzzd;->zzg()Lcom/google/android/gms/internal/measurement/zzyc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzyc;->zza()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcpa;->b:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzaal;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcpa;->c:Ljava/util/logging/Level;

    iget-object v2, p0, Lcpa;->d:Ljava/util/Set;

    iget-object p0, p0, Lcpa;->e:Lcom/google/android/gms/internal/measurement/zzzq;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/google/android/gms/internal/measurement/zzaas;->a(Lcom/google/android/gms/internal/measurement/zzzd;Ljava/lang/String;Ljava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/measurement/zzzq;)V

    return-void
.end method

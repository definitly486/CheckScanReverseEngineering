.class public final Lcom/google/android/gms/internal/measurement/zznq;
.super Lcom/google/android/gms/internal/measurement/zzadp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzafd;


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final zza()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zznr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zznr;->zza()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zznq;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->e()V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zznr;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zznr;->n(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zznq;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->e()V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zznr;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zznr;->o(Ljava/lang/String;)V

    return-object p0
.end method

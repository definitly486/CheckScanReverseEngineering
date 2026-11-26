.class public final Lcom/google/android/gms/internal/measurement/zzhz;
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

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib;->zzb()I

    move-result p0

    return p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/measurement/zzid;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zzc(I)Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object p0

    return-object p0
.end method

.method public final zzd(ILcom/google/android/gms/internal/measurement/zzic;)Lcom/google/android/gms/internal/measurement/zzhz;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbd()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzib;->n(ILcom/google/android/gms/internal/measurement/zzid;)V

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/measurement/zzic;)Lcom/google/android/gms/internal/measurement/zzhz;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbd()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->o(Lcom/google/android/gms/internal/measurement/zzid;)V

    return-object p0
.end method

.method public final zzf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzhz;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->p(Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/measurement/zzhz;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzib;->q()V

    return-object p0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzib;->zze()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhz;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->r(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhz;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzib;->s(Ljava/lang/String;)V

    return-object p0
.end method

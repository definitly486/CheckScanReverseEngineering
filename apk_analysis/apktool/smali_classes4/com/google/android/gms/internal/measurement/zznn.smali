.class public final Lcom/google/android/gms/internal/measurement/zznn;
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
.method public final zza(Lcom/google/android/gms/internal/measurement/zznh;)Lcom/google/android/gms/internal/measurement/zznn;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzno;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbd()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzni;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzno;->n(Lcom/google/android/gms/internal/measurement/zzni;)V

    return-object p0
.end method

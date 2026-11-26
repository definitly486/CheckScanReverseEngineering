.class public final Lcom/google/android/gms/internal/measurement/zznt;
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
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zznr;)Lcom/google/android/gms/internal/measurement/zznt;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznu;->n()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

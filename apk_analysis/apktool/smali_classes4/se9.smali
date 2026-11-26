.class public final Lse9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lep2;
.implements Lcom/google/android/gms/internal/measurement/zzph;


# instance fields
.field public volatile b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# virtual methods
.method public a()Lmk2;
    .locals 0

    iget-object p0, p0, Lse9;->b:Ljava/lang/Object;

    check-cast p0, Lnk2;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzpg;
    .locals 3

    iget-object p2, p0, Lse9;->b:Ljava/lang/Object;

    check-cast p2, Lcac;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->i:Lcac;

    if-eq p2, v0, :cond_0

    const-string v1, ""

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->zzd()Lcom/google/android/gms/internal/measurement/zzpe;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzpe;->zzc(Lcom/google/android/gms/internal/measurement/zzlk;Lcac;Ljava/lang/String;)Leac;

    move-result-object p1

    iget-object p1, p1, Leac;->a:Lcom/google/android/gms/internal/measurement/zzpg;

    iput-object p1, p0, Lse9;->c:Ljava/lang/Object;

    iput-object v0, p0, Lse9;->b:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lse9;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzpg;

    return-object p0
.end method

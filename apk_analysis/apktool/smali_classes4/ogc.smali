.class public final Logc;
.super Lcom/google/android/gms/internal/measurement/zzwb;
.source "SourceFile"


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzxd;)Lcom/google/android/gms/internal/measurement/zzwi;
    .locals 7

    sget-object v4, Lcom/google/android/gms/internal/measurement/i;->e:Lcom/google/android/gms/internal/measurement/zzwl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvy;->zzd()Lcom/google/android/gms/internal/measurement/zzwq;

    move-result-object v6

    iget-object p0, v6, Lcom/google/android/gms/internal/measurement/zzwq;->b:Lcom/google/android/gms/internal/measurement/zzws;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzwg;->zza:Lcom/google/android/gms/internal/measurement/zzwg;

    const/4 v0, 0x0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x0

    invoke-static {v6, p0}, Lcom/google/android/gms/internal/measurement/zzvy;->zzc(Lcom/google/android/gms/internal/measurement/zzwq;Lcom/google/android/gms/internal/measurement/zzws;)Lcom/google/android/gms/internal/measurement/zzws;

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-nez p0, :cond_2

    sget-object p0, Lhgc;->c:Lhgc;

    invoke-virtual {p0}, Lhgc;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lzfc;->zzcL(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzwd;->h:Lcom/google/android/gms/internal/measurement/zzvr;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzvy;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/n;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lsgc;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    new-instance v0, Ltgc;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Ltgc;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzwl;Lcom/google/android/gms/internal/measurement/zzvr;Lcom/google/android/gms/internal/measurement/zzwq;)V

    goto :goto_1

    :cond_2
    move-object v1, p1

    instance-of p1, p0, Lcgc;

    if-eqz p1, :cond_3

    check-cast p0, Lcgc;

    invoke-interface {p0, v1, v4, v0, v6}, Lcgc;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzwl;ZLcom/google/android/gms/internal/measurement/zzwq;)Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v3, ""

    move-object v5, v4

    const/4 v4, 0x0

    const-string v2, ""

    move-object v0, p0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzws;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzwl;Lcom/google/android/gms/internal/measurement/zzwq;)Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    :goto_1
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzvy;->zzc(Lcom/google/android/gms/internal/measurement/zzwq;Lcom/google/android/gms/internal/measurement/zzws;)Lcom/google/android/gms/internal/measurement/zzws;

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzwi;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzwi;-><init>(Lcom/google/android/gms/internal/measurement/zzws;Z)V

    return-object p0
.end method

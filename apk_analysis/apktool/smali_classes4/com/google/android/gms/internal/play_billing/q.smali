.class public final Lcom/google/android/gms/internal/play_billing/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkqb;


# instance fields
.field public final a:Lcom/google/android/gms/internal/play_billing/zzhr;

.field public final b:Z


# direct methods
.method public constructor <init>(Lg;Lcom/google/android/gms/internal/play_billing/zzhr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of p1, p2, Lcom/google/android/gms/internal/play_billing/zzgm;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/q;->b:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/q;->a:Lcom/google/android/gms/internal/play_billing/zzhr;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lxib;

    invoke-virtual {p0}, Lxib;->h()Z

    move-result p0

    return p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzir;->zzh()V

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lxib;

    invoke-virtual {p0}, Lxib;->e()V

    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/r;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/google/android/gms/internal/play_billing/q;->b:Z

    if-eqz p0, :cond_1

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p0, p2, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lxib;

    iget-object p0, p0, Lxib;->a:Lqqb;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/Object;[BIILceb;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->zzc()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object p3

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->a()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Lcom/google/android/gms/internal/play_billing/zzgp;)I
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzir;->zzb()I

    move-result v0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/play_billing/q;->b:Z

    if-eqz p0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lxib;

    iget-object p0, p0, Lxib;->a:Lqqb;

    iget p1, p0, Lnrb;->c:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0, v1}, Lnrb;->d(I)Luqb;

    move-result-object v3

    invoke-static {v3}, Lxib;->j(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnrb;->b()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lxib;->j(Ljava/util/Map$Entry;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    :cond_2
    return v0
.end method

.method public final f(Lcom/google/android/gms/internal/play_billing/zzgp;)I
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzir;->hashCode()I

    move-result v0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/play_billing/q;->b:Z

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lxib;

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lxib;->a:Lqqb;

    invoke-virtual {p0}, Lnrb;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public final g(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;)Z
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    iget-object v1, p2, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzir;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/gms/internal/play_billing/q;->b:Z

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lxib;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p1, p2, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lxib;

    invoke-virtual {p0, p1}, Lxib;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final h(Ljava/lang/Object;Lbhb;)V
    .locals 4

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lxib;

    invoke-virtual {p0}, Lxib;->d()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/zzgg;->zzc()Lcom/google/android/gms/internal/play_billing/zzjh;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjh;->zzi:Lcom/google/android/gms/internal/play_billing/zzjh;

    if-ne v2, v3, :cond_3

    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/zzgg;->zze()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd()Z

    move-result v2

    if-nez v2, :cond_3

    instance-of v2, v0, Lclb;

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/zzgg;->zza()I

    move-result v1

    check-cast v0, Lclb;

    iget-object v0, v0, Lclb;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lslb;

    iget-object v0, v2, Lslb;->c:Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lslb;->c:Lcom/google/android/gms/internal/play_billing/zzfp;

    goto :goto_1

    :cond_0
    monitor-enter v2

    :try_start_0
    iget-object v0, v2, Lslb;->c:Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lslb;->c:Lcom/google/android/gms/internal/play_billing/zzfp;

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v0, v2, Lslb;->d:Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzj()Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object v0

    iput-object v0, v2, Lslb;->c:Lcom/google/android/gms/internal/play_billing/zzfp;

    iget-object v0, v2, Lslb;->c:Lcom/google/android/gms/internal/play_billing/zzfp;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p2, v1, v0}, Lbhb;->c(ILjava/lang/Object;)V

    goto :goto_0

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/zzgg;->zza()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lbhb;->c(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string p0, "Found invalid MessageSet item."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_4
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    const/4 p1, 0x0

    :goto_3
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzir;->a:I

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzir;->b:[I

    aget v0, v0, p1

    ushr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzir;->c:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {p2, v0, v1}, Lbhb;->c(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/q;->a:Lcom/google/android/gms/internal/play_billing/zzhr;

    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgp;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->g(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgp;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzw()Lcom/google/android/gms/internal/play_billing/zzhq;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzhq;->zzk()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/google/android/gms/internal/measurement/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnsa;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzafc;

.field public final b:Lcom/google/android/gms/internal/measurement/g;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/g;Lcom/google/android/gms/internal/measurement/zzafc;)V
    .locals 1

    sget-object v0, Lfra;->a:Lcom/google/android/gms/internal/measurement/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/e;->b:Lcom/google/android/gms/internal/measurement/g;

    instance-of p1, p2, Lcom/google/android/gms/internal/measurement/zzadr;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/e;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/e;->a:Lcom/google/android/gms/internal/measurement/zzafc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/e;->b:Lcom/google/android/gms/internal/measurement/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaga;->zzd()V

    sget-object p0, Lfra;->a:Lcom/google/android/gms/internal/measurement/b;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Lpqa;Lcom/google/android/gms/internal/measurement/zzadf;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/e;->b:Lcom/google/android/gms/internal/measurement/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Ljava/lang/Object;[BIILgqa;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaga;->zza()Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object p3

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaga;->a()Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Ljava/lang/Object;Lbra;)V
    .locals 4

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lgra;

    invoke-virtual {p0}, Lgra;->b()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzadj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzadj;->zzc()Lcom/google/android/gms/internal/measurement/zzagn;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzagn;->zzi:Lcom/google/android/gms/internal/measurement/zzagn;

    if-ne v2, v3, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzadj;->zzd()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzadj;->zze()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v2, v0, Lqra;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzadj;->zza()I

    move-result v1

    check-cast v0, Lqra;

    iget-object v0, v0, Lqra;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzael;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaem;->zzc()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lbra;->b(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzadj;->zza()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lbra;->b(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p0, "Found invalid MessageSet item."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    const/4 p1, 0x0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzaga;->a:I

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaga;->b:[I

    aget v0, v0, p1

    ushr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzaga;->c:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {p2, v0, v1}, Lbra;->b(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/measurement/zzadu;)I
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaga;->hashCode()I

    move-result v0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/e;->c:Z

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lgra;

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lgra;->a:Losa;

    invoke-virtual {p0}, Lssa;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/e;->c:Z

    if-eqz p0, :cond_1

    sget-object p0, Lfra;->a:Lcom/google/android/gms/internal/measurement/b;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p0, p2, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lgra;

    iget-object p0, p0, Lgra;->a:Losa;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/measurement/zzadu;)I
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaga;->zzh()I

    move-result v0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/e;->c:Z

    if-eqz p0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lgra;

    iget-object p0, p0, Lgra;->a:Losa;

    iget p1, p0, Lssa;->c:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0, v1}, Lssa;->b(I)Lpsa;

    move-result-object v3

    invoke-static {v3}, Lgra;->j(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lssa;->c()Ljava/util/Set;

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

    invoke-static {p1}, Lgra;->j(Ljava/util/Map$Entry;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    :cond_2
    return v0
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lgra;

    invoke-virtual {p0}, Lgra;->d()Z

    move-result p0

    return p0
.end method

.method public final i(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;)Z
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaga;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/e;->c:Z

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lgra;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lgra;

    invoke-virtual {p0, p1}, Lgra;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/e;->a:Lcom/google/android/gms/internal/measurement/zzafc;

    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadu;->e()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzafc;->zzcI()Lcom/google/android/gms/internal/measurement/zzafb;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzafb;->zzbg()Lcom/google/android/gms/internal/measurement/zzafc;

    move-result-object p0

    return-object p0
.end method

.class public final Lgec;
.super Lcom/google/android/gms/internal/measurement/zztq;
.source "SourceFile"


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Lcom/google/android/gms/internal/measurement/zzafc;

.field public c:Lrz5;

.field public d:Lcom/google/common/collect/w;

.field public e:Lcom/google/android/gms/internal/measurement/zztw;

.field public f:Z

.field public g:B


# virtual methods
.method public final zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/zztq;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lgec;->a:Landroid/net/Uri;

    return-object p0

    :cond_0
    const-string p0, "Null uri"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzafc;)Lcom/google/android/gms/internal/measurement/zztq;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lgec;->b:Lcom/google/android/gms/internal/measurement/zzafc;

    return-object p0

    :cond_0
    const-string p0, "Null schema"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zztf;)Lcom/google/android/gms/internal/measurement/zztq;
    .locals 1

    new-instance v0, Lnf6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Lnf6;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgec;->c:Lrz5;

    return-object p0
.end method

.method public final zze(Z)Lcom/google/android/gms/internal/measurement/zztq;
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgec;->f:Z

    iget-byte v0, p0, Lgec;->g:B

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lgec;->g:B

    return-object p0
.end method

.method public final zzf(Z)Lcom/google/android/gms/internal/measurement/zztq;
    .locals 0

    iget-byte p1, p0, Lgec;->g:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lgec;->g:B

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/measurement/zztr;
    .locals 8

    iget-object v0, p0, Lgec;->d:Lcom/google/common/collect/w;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/j$b;

    sget-object v0, Lcom/google/common/collect/w;->f:Lcom/google/common/collect/w;

    iput-object v0, p0, Lgec;->d:Lcom/google/common/collect/w;

    :cond_0
    move-object v5, v0

    iget-byte v0, p0, Lgec;->g:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v2, p0, Lgec;->a:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lgec;->b:Lcom/google/android/gms/internal/measurement/zzafc;

    if-eqz v3, :cond_2

    iget-object v6, p0, Lgec;->e:Lcom/google/android/gms/internal/measurement/zztw;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lhec;

    iget-object v4, p0, Lgec;->c:Lrz5;

    iget-boolean v7, p0, Lgec;->f:Z

    invoke-direct/range {v1 .. v7}, Lhec;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzafc;Lrz5;Lcom/google/common/collect/j;Lcom/google/android/gms/internal/measurement/zztw;Z)V

    return-object v1

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgec;->a:Landroid/net/Uri;

    if-nez v1, :cond_3

    const-string v1, " uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lgec;->b:Lcom/google/android/gms/internal/measurement/zzafc;

    if-nez v1, :cond_4

    const-string v1, " schema"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lgec;->e:Lcom/google/android/gms/internal/measurement/zztw;

    if-nez v1, :cond_5

    const-string v1, " variantConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-byte v1, p0, Lgec;->g:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_6

    const-string v1, " useGeneratedExtensionRegistry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-byte p0, p0, Lgec;->g:B

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_7

    const-string p0, " enableTracing"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing required properties:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

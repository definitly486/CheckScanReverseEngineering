.class public final Lkdc;
.super Lcom/google/android/gms/internal/mlkit_common/zzsi;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/mlkit_common/zzmu;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Lsc5;

.field public f:Lcom/google/android/gms/internal/mlkit_common/zzna;

.field public g:I

.field public h:B


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_common/zzna;)Lcom/google/android/gms/internal/mlkit_common/zzsi;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkdc;->f:Lcom/google/android/gms/internal/mlkit_common/zzna;

    return-object p0

    :cond_0
    const-string p0, "Null downloadStatus"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_common/zzmu;)Lcom/google/android/gms/internal/mlkit_common/zzsi;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkdc;->a:Lcom/google/android/gms/internal/mlkit_common/zzmu;

    return-object p0

    :cond_0
    const-string p0, "Null errorCode"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/mlkit_common/zzsi;
    .locals 0

    iput p1, p0, Lkdc;->g:I

    iget-byte p1, p0, Lkdc;->h:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lkdc;->h:B

    return-object p0
.end method

.method public final zzd(Lsc5;)Lcom/google/android/gms/internal/mlkit_common/zzsi;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkdc;->e:Lsc5;

    return-object p0

    :cond_0
    const-string p0, "Null modelType"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zze(Z)Lcom/google/android/gms/internal/mlkit_common/zzsi;
    .locals 0

    iput-boolean p1, p0, Lkdc;->d:Z

    iget-byte p1, p0, Lkdc;->h:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lkdc;->h:B

    return-object p0
.end method

.method public final zzf(Z)Lcom/google/android/gms/internal/mlkit_common/zzsi;
    .locals 0

    iput-boolean p1, p0, Lkdc;->c:Z

    iget-byte p1, p0, Lkdc;->h:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lkdc;->h:B

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/mlkit_common/zzsj;
    .locals 10

    iget-byte v0, p0, Lkdc;->h:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lkdc;->a:Lcom/google/android/gms/internal/mlkit_common/zzmu;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lkdc;->b:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v7, p0, Lkdc;->e:Lsc5;

    if-eqz v7, :cond_1

    iget-object v8, p0, Lkdc;->f:Lcom/google/android/gms/internal/mlkit_common/zzna;

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lldc;

    iget-boolean v5, p0, Lkdc;->c:Z

    iget-boolean v6, p0, Lkdc;->d:Z

    iget v9, p0, Lkdc;->g:I

    invoke-direct/range {v2 .. v9}, Lldc;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzmu;Ljava/lang/String;ZZLsc5;Lcom/google/android/gms/internal/mlkit_common/zzna;I)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkdc;->a:Lcom/google/android/gms/internal/mlkit_common/zzmu;

    if-nez v1, :cond_2

    const-string v1, " errorCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lkdc;->b:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, " tfliteSchemaVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Lkdc;->h:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    const-string v1, " shouldLogRoughDownloadTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Lkdc;->h:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    const-string v1, " shouldLogExactDownloadTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lkdc;->e:Lsc5;

    if-nez v1, :cond_6

    const-string v1, " modelType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lkdc;->f:Lcom/google/android/gms/internal/mlkit_common/zzna;

    if-nez v1, :cond_7

    const-string v1, " downloadStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-byte p0, p0, Lkdc;->h:B

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_8

    const-string p0, " failureStatusCode"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing required properties:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

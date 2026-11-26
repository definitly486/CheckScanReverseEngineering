.class public final Lagc;
.super Lcom/google/android/gms/internal/measurement/zzwv;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/common/collect/j;

.field public b:Lcom/google/common/collect/j;

.field public c:Ljava/util/UUID;

.field public d:J

.field public e:B


# virtual methods
.method public final zza(Lcom/google/common/collect/j;)Lcom/google/android/gms/internal/measurement/zzwv;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lagc;->a:Lcom/google/common/collect/j;

    return-object p0

    :cond_0
    const-string p0, "Null spansNames"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzb(Lcom/google/common/collect/j;)Lcom/google/android/gms/internal/measurement/zzwv;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lagc;->b:Lcom/google/common/collect/j;

    return-object p0

    :cond_0
    const-string p0, "Null extras"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzc(Ljava/util/UUID;)Lcom/google/android/gms/internal/measurement/zzwv;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lagc;->c:Ljava/util/UUID;

    return-object p0

    :cond_0
    const-string p0, "Null rootTraceId"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzd(J)Lcom/google/android/gms/internal/measurement/zzwv;
    .locals 0

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lagc;->d:J

    const/4 p1, 0x1

    iput-byte p1, p0, Lagc;->e:B

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzww;
    .locals 8

    iget-byte v0, p0, Lagc;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lagc;->a:Lcom/google/common/collect/j;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lagc;->b:Lcom/google/common/collect/j;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lagc;->c:Ljava/util/UUID;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lbgc;

    iget-wide v6, p0, Lagc;->d:J

    invoke-direct/range {v2 .. v7}, Lbgc;-><init>(Lcom/google/common/collect/j;Lcom/google/common/collect/j;Ljava/util/UUID;J)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lagc;->a:Lcom/google/common/collect/j;

    if-nez v1, :cond_2

    const-string v1, " spansNames"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lagc;->b:Lcom/google/common/collect/j;

    if-nez v1, :cond_3

    const-string v1, " extras"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lagc;->c:Ljava/util/UUID;

    if-nez v1, :cond_4

    const-string v1, " rootTraceId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte p0, p0, Lagc;->e:B

    if-nez p0, :cond_5

    const-string p0, " rootDurationMs"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing required properties:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

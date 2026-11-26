.class public final Lbgc;
.super Lcom/google/android/gms/internal/measurement/zzww;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/common/collect/j;

.field public final b:Lcom/google/common/collect/j;

.field public final c:Ljava/util/UUID;

.field public final d:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/j;Lcom/google/common/collect/j;Ljava/util/UUID;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzww;-><init>()V

    iput-object p1, p0, Lbgc;->a:Lcom/google/common/collect/j;

    iput-object p2, p0, Lbgc;->b:Lcom/google/common/collect/j;

    iput-object p3, p0, Lbgc;->c:Ljava/util/UUID;

    iput-wide p4, p0, Lbgc;->d:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzww;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzww;

    iget-object v1, p0, Lbgc;->a:Lcom/google/common/collect/j;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzww;->zza()Lcom/google/common/collect/j;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbgc;->b:Lcom/google/common/collect/j;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzww;->zzb()Lcom/google/common/collect/j;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbgc;->c:Ljava/util/UUID;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzww;->zzc()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lbgc;->d:J

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzww;->zzd()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 7

    iget-object v0, p0, Lbgc;->a:Lcom/google/common/collect/j;

    invoke-virtual {v0}, Lcom/google/common/collect/j;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lbgc;->b:Lcom/google/common/collect/j;

    invoke-virtual {v2}, Lcom/google/common/collect/j;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lbgc;->c:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    const/16 v2, 0x20

    iget-wide v3, p0, Lbgc;->d:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    mul-int/2addr v0, v1

    long-to-int p0, v2

    xor-int/2addr p0, v0

    return p0
.end method

.method public final zza()Lcom/google/common/collect/j;
    .locals 0

    iget-object p0, p0, Lbgc;->a:Lcom/google/common/collect/j;

    return-object p0
.end method

.method public final zzb()Lcom/google/common/collect/j;
    .locals 0

    iget-object p0, p0, Lbgc;->b:Lcom/google/common/collect/j;

    return-object p0
.end method

.method public final zzc()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lbgc;->c:Ljava/util/UUID;

    return-object p0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lbgc;->d:J

    return-wide v0
.end method

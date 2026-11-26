.class public final Lhec;
.super Lcom/google/android/gms/internal/measurement/zztr;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lcom/google/android/gms/internal/measurement/zzafc;

.field public final c:Lrz5;

.field public final d:Lcom/google/common/collect/j;

.field public final e:Lcom/google/android/gms/internal/measurement/zzuj;

.field public final f:Z


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzafc;Lrz5;Lcom/google/common/collect/j;Lcom/google/android/gms/internal/measurement/zztw;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zztr;-><init>()V

    iput-object p1, p0, Lhec;->a:Landroid/net/Uri;

    iput-object p2, p0, Lhec;->b:Lcom/google/android/gms/internal/measurement/zzafc;

    iput-object p3, p0, Lhec;->c:Lrz5;

    iput-object p4, p0, Lhec;->d:Lcom/google/common/collect/j;

    iput-object p5, p0, Lhec;->e:Lcom/google/android/gms/internal/measurement/zzuj;

    iput-boolean p6, p0, Lhec;->f:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zztr;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zztr;

    iget-object v0, p0, Lhec;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zza()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhec;->b:Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zzb()Lcom/google/android/gms/internal/measurement/zzafc;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhec;->c:Lrz5;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zzc()Lrz5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrz5;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhec;->d:Lcom/google/common/collect/j;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zzd()Lcom/google/common/collect/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhec;->e:Lcom/google/android/gms/internal/measurement/zzuj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zze()Lcom/google/android/gms/internal/measurement/zzuj;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lhec;->f:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zzf()Z

    move-result p1

    if-ne p0, p1, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lhec;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lhec;->b:Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lhec;->c:Lrz5;

    invoke-virtual {v2}, Lrz5;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lhec;->d:Lcom/google/common/collect/j;

    invoke-virtual {v2}, Lcom/google/common/collect/j;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lhec;->e:Lcom/google/android/gms/internal/measurement/zzuj;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    const/4 v2, 0x1

    iget-boolean p0, p0, Lhec;->f:Z

    const/16 v3, 0x4d5

    if-eq v2, p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    const/16 p0, 0x4cf

    :goto_0
    mul-int/2addr v0, v1

    xor-int/2addr p0, v0

    mul-int/2addr p0, v1

    xor-int/2addr p0, v3

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lhec;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lhec;->b:Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lhec;->c:Lrz5;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lhec;->d:Lcom/google/common/collect/j;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lhec;->e:Lcom/google/android/gms/internal/measurement/zzuj;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    iget-boolean p0, p0, Lhec;->f:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v1, v1, 0x22

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0xd

    add-int/2addr v1, v8

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v9

    add-int/lit8 v1, v1, 0x20

    add-int/2addr v1, v10

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x16

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ProtoDataStoreConfig{uri="

    const-string v7, ", schema="

    invoke-static {v3, v1, v0, v7, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", handler="

    const-string v1, ", migrations="

    invoke-static {v3, v0, v4, v1, v5}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", variantConfig="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", useGeneratedExtensionRegistry="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", enableTracing=false}"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lhec;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzafc;
    .locals 0

    iget-object p0, p0, Lhec;->b:Lcom/google/android/gms/internal/measurement/zzafc;

    return-object p0
.end method

.method public final zzc()Lrz5;
    .locals 0

    iget-object p0, p0, Lhec;->c:Lrz5;

    return-object p0
.end method

.method public final zzd()Lcom/google/common/collect/j;
    .locals 0

    iget-object p0, p0, Lhec;->d:Lcom/google/common/collect/j;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzuj;
    .locals 0

    iget-object p0, p0, Lhec;->e:Lcom/google/android/gms/internal/measurement/zzuj;

    return-object p0
.end method

.method public final zzf()Z
    .locals 0

    iget-boolean p0, p0, Lhec;->f:Z

    return p0
.end method

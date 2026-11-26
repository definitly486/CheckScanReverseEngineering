.class public final Lcom/google/android/gms/internal/measurement/zzqn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/util/List;

.field public final c:Lcom/google/android/gms/internal/measurement/zzacr;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Lcom/google/android/gms/internal/measurement/zznf;


# direct methods
.method public constructor <init>(ZLjava/util/List;Lcom/google/android/gms/internal/measurement/zzacr;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZZLcom/google/android/gms/internal/measurement/zznf;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzqn;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzqn;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzqn;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzqn;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzqn;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/zzqn;->f:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/zzqn;->g:Ljava/util/List;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/measurement/zzqn;->h:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/measurement/zzqn;->i:Z

    iput-boolean p10, p0, Lcom/google/android/gms/internal/measurement/zzqn;->j:Z

    iput-object p11, p0, Lcom/google/android/gms/internal/measurement/zzqn;->k:Lcom/google/android/gms/internal/measurement/zznf;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzqn;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzqn;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->a:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/measurement/zzqn;->a:Z

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzqn;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzqn;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzacr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzqn;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzqn;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->f:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzqn;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->g:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzqn;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->h:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/measurement/zzqn;->h:Z

    if-eq v0, v1, :cond_9

    goto :goto_0

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->i:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/measurement/zzqn;->i:Z

    if-eq v0, v1, :cond_a

    goto :goto_0

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->j:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/measurement/zzqn;->j:Z

    if-eq v0, v1, :cond_b

    goto :goto_0

    :cond_b
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->k:Lcom/google/android/gms/internal/measurement/zznf;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzqn;->k:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzadu;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 11

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->i:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzqn;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzqn;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzqn;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzqn;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzqn;->f:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzqn;->g:Ljava/util/List;

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzqn;->a:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzqn;->b:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzqn;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zzqn;->d:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zzqn;->e:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/zzqn;->f:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v13, v0, Lcom/google/android/gms/internal/measurement/zzqn;->g:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    iget-boolean v15, v0, Lcom/google/android/gms/internal/measurement/zzqn;->h:Z

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v17, v2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zzqn;->i:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v19, v4

    iget-boolean v4, v0, Lcom/google/android/gms/internal/measurement/zzqn;->j:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzqn;->k:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v17, v17, 0x3b

    add-int v17, v17, v19

    add-int/lit8 v17, v17, 0x9

    add-int v17, v17, v6

    add-int/lit8 v17, v17, 0xa

    add-int v17, v17, v8

    add-int/lit8 v17, v17, 0x11

    add-int v17, v17, v10

    add-int/lit8 v17, v17, 0x1e

    add-int v17, v17, v12

    add-int/lit8 v17, v17, 0x1e

    add-int v17, v17, v14

    add-int/lit8 v17, v17, 0x18

    add-int v17, v17, v16

    add-int/lit8 v17, v17, 0x1a

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x14

    add-int v17, v17, v20

    add-int/lit8 v17, v17, 0xe

    add-int v17, v17, v21

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v8, v17, 0x1

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "SharedStorageInfo(shouldUseSharedStorage="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enabledBackings="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secret="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dirPath="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gmsCoreDirPath="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", includeStaticConfigPackages="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", excludeStaticConfigPackages="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasStorageInfoFromGms="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowEmptySnapshotToken="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableCommitV2Api="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", clientFlags="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/measurement/zzacr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    return-object p0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->i:Z

    return p0
.end method

.method public final zze()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->j:Z

    return p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/measurement/zznf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->k:Lcom/google/android/gms/internal/measurement/zznf;

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/measurement/zzabz;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->h:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqn;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqn;->f:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzqn;->g:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0

    :cond_4
    const/16 p0, 0xe

    return p0
.end method

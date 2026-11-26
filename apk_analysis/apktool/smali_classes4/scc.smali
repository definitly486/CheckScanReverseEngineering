.class public final Lscc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/internal/measurement/zzacr;

.field public final d:Lcom/google/common/collect/x;

.field public final e:Lrcc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zznd;Lrcc;)V
    .locals 3

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscc;->a:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zznd;->zzi()Z

    .line 212
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zznd;->zzd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lscc;->b:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zznd;->zzg()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v0

    iput-object v0, p0, Lscc;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    .line 214
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zznd;->zze()Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zznd;->zzf()J

    .line 216
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zznd;->zzh()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/n;->n(Ljava/util/Collection;)Lcom/google/common/collect/n;

    goto :goto_0

    .line 218
    :cond_0
    sget v0, Lcom/google/common/collect/n;->d:I

    .line 219
    sget-object v0, Lcom/google/common/collect/z;->j:[Ljava/lang/Object;

    .line 220
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zznd;->zzc()Lcom/google/android/gms/internal/measurement/zzmw;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmw;->zzf()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    .line 222
    const-string v2, "expectedSize"

    invoke-static {v1, v2}, Lcn1;->b(ILjava/lang/String;)V

    .line 223
    new-instance v2, Lcom/google/common/collect/l$a;

    invoke-direct {v2, v1}, Lcom/google/common/collect/l$a;-><init>(I)V

    .line 224
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzmw;->zzc(Lcom/google/common/collect/l$a;)V

    .line 225
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zznd;->zze()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__phenotype_server_token"

    invoke-virtual {v2, v1, v0}, Lcom/google/common/collect/l$a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zznd;->zzd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__phenotype_snapshot_token"

    invoke-virtual {v2, v1, v0}, Lcom/google/common/collect/l$a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zznd;->zzf()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "__phenotype_configuration_version"

    .line 228
    invoke-virtual {v2, v0, p1}, Lcom/google/common/collect/l$a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 229
    invoke-virtual {v2, p1}, Lcom/google/common/collect/l$a;->a(Z)Lcom/google/common/collect/x;

    move-result-object p1

    .line 230
    iput-object p1, p0, Lscc;->d:Lcom/google/common/collect/x;

    iput-object p2, p0, Lscc;->e:Lrcc;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzqv;Lrcc;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lscc;->a:Z

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->zzi()Lcom/google/android/gms/internal/measurement/zzqv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzadu;->equals(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqv;->zza()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lscc;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqv;->zzb()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v1

    iput-object v1, p0, Lscc;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqv;->zzc()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqv;->zzd()J

    sget v1, Lcom/google/common/collect/n;->d:I

    sget-object v1, Lcom/google/common/collect/z;->j:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqv;->zzf()I

    move-result v1

    const/4 v2, 0x3

    add-int/2addr v1, v2

    const-string v3, "expectedSize"

    invoke-static {v1, v3}, Lcn1;->b(ILjava/lang/String;)V

    new-instance v3, Lcom/google/common/collect/l$a;

    invoke-direct {v3, v1}, Lcom/google/common/collect/l$a;-><init>(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqv;->zze()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzqx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->zzp()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    if-eqz v5, :cond_5

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    if-eq v6, v5, :cond_3

    const/4 v5, 0x2

    if-eq v6, v5, :cond_2

    if-eq v6, v2, :cond_1

    const/4 v5, 0x4

    if-eq v6, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->zzf()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacr;->zzm()[B

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/google/common/collect/l$a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/google/common/collect/l$a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->zzd()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/google/common/collect/l$a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->zzc()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/google/common/collect/l$a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzqx;->zzb()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/google/common/collect/l$a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    throw p0

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqv;->zzc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__phenotype_server_token"

    invoke-virtual {v3, v2, v1}, Lcom/google/common/collect/l$a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqv;->zza()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__phenotype_snapshot_token"

    invoke-virtual {v3, v2, v1}, Lcom/google/common/collect/l$a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzqv;->zzd()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "__phenotype_configuration_version"

    invoke-virtual {v3, v1, p1}, Lcom/google/common/collect/l$a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lcom/google/common/collect/l$a;->a(Z)Lcom/google/common/collect/x;

    move-result-object p1

    iput-object p1, p0, Lscc;->d:Lcom/google/common/collect/x;

    iput-object p2, p0, Lscc;->e:Lrcc;

    return-void
.end method

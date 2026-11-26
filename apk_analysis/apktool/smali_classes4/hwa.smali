.class public final Lhwa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzd;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lhwa;->b:Ljava/lang/String;

    iput-wide p3, p0, Lhwa;->c:J

    iput-object p1, p0, Lhwa;->d:Lcom/google/android/gms/measurement/internal/zzd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lhwa;->d:Lcom/google/android/gms/measurement/internal/zzd;

    invoke-virtual {v0}, Lmdb;->zzg()V

    iget-object v1, p0, Lhwa;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzd;->c:Landroidx/collection/ArrayMap;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, v0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzs()Lcom/google/android/gms/measurement/internal/zzmb;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzmb;->zzh(Z)Lcom/google/android/gms/measurement/internal/zzlu;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzd;->b:Landroidx/collection/ArrayMap;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    iget-wide v7, p0, Lhwa;->c:J

    if-nez v6, :cond_0

    const-string p0, "First ad unit exposure time was never set"

    invoke-static {v4, p0}, Lu4;->e(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v7, v9

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v9, v10, v5}, Lcom/google/android/gms/measurement/internal/zzd;->b(Ljava/lang/String;JLcom/google/android/gms/measurement/internal/zzlu;)V

    :goto_0
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzd;->d:J

    const-wide/16 v9, 0x0

    cmp-long p0, v1, v9

    if-nez p0, :cond_1

    const-string p0, "First ad exposure time was never set"

    invoke-static {v4, p0}, Lu4;->e(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    return-void

    :cond_1
    sub-long/2addr v7, v1

    invoke-virtual {v0, v7, v8, v5}, Lcom/google/android/gms/measurement/internal/zzd;->a(JLcom/google/android/gms/measurement/internal/zzlu;)V

    iput-wide v9, v0, Lcom/google/android/gms/measurement/internal/zzd;->d:J

    :cond_2
    return-void

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p0

    const-string v0, "Call to endAdUnitExposure for unknown ad unit id"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

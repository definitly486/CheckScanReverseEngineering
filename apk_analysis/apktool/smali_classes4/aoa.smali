.class public final Laoa;
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

    iput-object p2, p0, Laoa;->b:Ljava/lang/String;

    iput-wide p3, p0, Laoa;->c:J

    iput-object p1, p0, Laoa;->d:Lcom/google/android/gms/measurement/internal/zzd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Laoa;->d:Lcom/google/android/gms/measurement/internal/zzd;

    invoke-virtual {v0}, Lmdb;->zzg()V

    iget-object v1, p0, Laoa;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzd;->c:Landroidx/collection/ArrayMap;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    iget-wide v4, p0, Laoa;->c:J

    if-eqz v3, :cond_0

    iput-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzd;->d:J

    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result p0

    const/16 v6, 0x64

    if-lt p0, v6, :cond_2

    iget-object p0, v0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    const-string v0, "Too many ads visible"

    invoke-static {p0, v0}, Lxp;->h(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzd;->b:Landroidx/collection/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

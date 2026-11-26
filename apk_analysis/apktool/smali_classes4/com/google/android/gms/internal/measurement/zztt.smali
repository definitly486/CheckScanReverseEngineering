.class public final Lcom/google/android/gms/internal/measurement/zztt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lcom/google/android/gms/internal/measurement/zzru;

.field public final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/measurement/zzru;Lcom/google/android/gms/internal/measurement/zzvc;Ljava/util/HashMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zztt;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zztt;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zztt;->c:Lcom/google/android/gms/internal/measurement/zzru;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zztt;->d:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lo8;->e(Z)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zztr;)Lcom/google/android/gms/internal/measurement/zztp;
    .locals 12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zza()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zztt;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zza()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    const-string v3, "Uri must be hierarchical: %s"

    invoke-static {v2, v3, v1}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v10, -0x1

    if-ne v5, v10, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    add-int/2addr v5, v9

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v5, "pb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "Uri extension must be .pb: %s"

    invoke-static {v2, v5, v1}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zzc()Lrz5;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v9

    goto :goto_1

    :cond_2
    move v1, v8

    :goto_1
    const-string v2, "Handler cannot be null"

    invoke-static {v1, v2}, Lo8;->f(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zztt;->d:Ljava/util/Map;

    const-string v2, "singleproc"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzuw;

    if-eqz v1, :cond_3

    move v5, v9

    goto :goto_2

    :cond_3
    move v5, v8

    :goto_2
    const-string v11, "No XDataStoreVariantFactory registered for ID %s"

    invoke-static {v5, v11, v2}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zza()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v2

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eq v2, v10, :cond_5

    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_5
    move-object v2, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zza()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Len3;->X(Ljava/lang/Object;)Lu24;

    move-result-object v3

    sget-object v4, Lmec;->a:Lmec;

    sget-object v5, Ljn2;->INSTANCE:Ljn2;

    invoke-static {v3, v4, v5}, Lx1;->p(Lcom/google/common/util/concurrent/ListenableFuture;Lks;Ljava/util/concurrent/Executor;)Lx1$a;

    move-result-object v10

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzti;->zza:Lcom/google/android/gms/internal/measurement/zzti;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zztt;->b:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zztt;->c:Lcom/google/android/gms/internal/measurement/zzru;

    move-object v0, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzuw;->zzb(Lcom/google/android/gms/internal/measurement/zztr;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/measurement/zzru;Lcom/google/android/gms/internal/measurement/zzti;)Lcom/google/android/gms/internal/measurement/zzuv;

    move-result-object v2

    move-object v1, v0

    new-instance v4, Lcom/google/android/gms/internal/measurement/zztp;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzuw;->zza(Lcom/google/android/gms/internal/measurement/zzti;)Ljava/lang/String;

    invoke-direct {v4, v2, v10}, Lifc;-><init>(Lcom/google/android/gms/internal/measurement/zzuv;Lx1$a;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zzd()Lcom/google/common/collect/j;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzto;->zza(Ljava/util/List;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/measurement/zzto;

    move-result-object v1

    invoke-virtual {v4, v1}, Lifc;->zza(Lks;)V

    :cond_6
    invoke-static {v4, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v7, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz v2, :cond_7

    move-object v1, v2

    :cond_7
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zztp;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zztr;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    return-object v2

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zzb()Lcom/google/android/gms/internal/measurement/zzafc;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zza()Landroid/net/Uri;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ProtoDataStoreConfig<%s> doesn\'t match previous call [uri=%s] [%s]"

    invoke-static {v3, v2}, Lma8;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zza()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zztr;->zza()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "uri"

    invoke-static {v3, v2, v4}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zzb()Lcom/google/android/gms/internal/measurement/zzafc;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zztr;->zzb()Lcom/google/android/gms/internal/measurement/zzafc;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "schema"

    invoke-static {v3, v2, v4}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zzc()Lrz5;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zztr;->zzc()Lrz5;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrz5;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "handler"

    invoke-static {v3, v2, v4}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zzd()Lcom/google/common/collect/j;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zztr;->zzd()Lcom/google/common/collect/j;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/j;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "migrations"

    invoke-static {v3, v2, v4}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zze()Lcom/google/android/gms/internal/measurement/zzuj;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zztr;->zze()Lcom/google/android/gms/internal/measurement/zzuj;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "variantConfig"

    invoke-static {v3, v2, v4}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zztr;->zzf()Z

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zztr;->zzf()Z

    move-result v1

    if-ne v0, v1, :cond_9

    move v8, v9

    :cond_9
    const-string v0, "useGeneratedExtensionRegistry"

    invoke-static {v8, v2, v0}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "unknown"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lma8;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

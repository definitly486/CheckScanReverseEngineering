.class public final Lcom/google/android/gms/internal/measurement/zzrf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/Object;

.field public static final k:Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lkd8;

.field public final c:Lkd8;

.field public final d:Lkd8;

.field public final e:Lkd8;

.field public final f:Lkd8;

.field public final g:Landroid/net/Uri;

.field public volatile h:Lcom/google/android/gms/internal/measurement/zzni;

.field public final i:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzrf;->j:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzrf;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkd8;Lkd8;Lkd8;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzrf;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzrf;->c:Lkd8;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzrf;->b:Lkd8;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzrf;->d:Lkd8;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzsa;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzrz;

    move-result-object p3

    const-string p4, "phenotype_storage_info"

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/measurement/zzrz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzrz;

    const-string v0, "storage-info.pb"

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/measurement/zzrz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzrz;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzrz;->zzd()Landroid/net/Uri;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzrf;->g:Landroid/net/Uri;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzsa;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzrz;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/measurement/zzrz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzrz;

    const-string p3, "device-encrypted-storage-info.pb"

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzrz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzrz;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzky;->zza()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrz;->zza()Lcom/google/android/gms/internal/measurement/zzrz;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrz;->zzd()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzrf;->i:Landroid/net/Uri;

    new-instance p1, Lddc;

    invoke-direct {p1, p0}, Lddc;-><init>(Lcom/google/android/gms/internal/measurement/zzrf;)V

    invoke-static {p1}, Lld8;->a(Lkd8;)Lkd8;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzrf;->e:Lkd8;

    new-instance p1, Ltcc;

    invoke-direct {p1, p2}, Ltcc;-><init>(Lkd8;)V

    invoke-static {p1}, Lld8;->a(Lkd8;)Lkd8;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzrf;->f:Lkd8;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/zzni;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrf;->h:Lcom/google/android/gms/internal/measurement/zzni;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzrf;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrf;->h:Lcom/google/android/gms/internal/measurement/zzni;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzni;->zzp()Lcom/google/android/gms/internal/measurement/zzni;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzrf;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzky;->zzc(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzss;->zzb(Lcom/google/android/gms/internal/measurement/zzafc;)Lcom/google/android/gms/internal/measurement/zzss;

    move-result-object v2

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v4, v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzrf;->d:Lkd8;

    invoke-interface {v4}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzru;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzrf;->g:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/measurement/zzru;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzrt;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzni;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0

    :catch_0
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrf;->h:Lcom/google/android/gms/internal/measurement/zzni;

    :cond_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    return-object v0
.end method

.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzky;->zzb(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzrf;->a()Lcom/google/android/gms/internal/measurement/zzni;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzni;->zze()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrf;->c:Lkd8;

    invoke-interface {v0}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxr4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrf;->f:Lkd8;

    invoke-interface {v1}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Len3;->Y(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    sget v2, Lxh3;->i:I

    instance-of v2, v1, Lxh3;

    if-eqz v2, :cond_1

    check-cast v1, Lxh3;

    goto :goto_0

    :cond_1
    new-instance v2, Lfj3;

    invoke-direct {v2, v1}, Lfj3;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    move-object v1, v2

    :goto_0
    new-instance v2, Lbdc;

    invoke-direct {v2, p0}, Lbdc;-><init>(Lcom/google/android/gms/internal/measurement/zzrf;)V

    invoke-static {v1, v2, v0}, Lx1;->p(Lcom/google/common/util/concurrent/ListenableFuture;Lks;Ljava/util/concurrent/Executor;)Lx1$a;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Lu24;->c:Lu24;

    return-object p0
.end method

.method public final zzb(ZLcom/google/android/gms/internal/measurement/zzabz;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzrf;->a()Lcom/google/android/gms/internal/measurement/zzni;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->zzc()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->zzi()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzc(Z)Lcom/google/android/gms/internal/measurement/zzqn;
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzrf;->a()Lcom/google/android/gms/internal/measurement/zzni;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->zzc()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->zzi()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/j;->o(Ljava/util/Collection;)Lcom/google/common/collect/j;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->zzb()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->zzf()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/j;->o(Ljava/util/Collection;)Lcom/google/common/collect/j;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->zzh()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/j;->o(Ljava/util/Collection;)Lcom/google/common/collect/j;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->zzj()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->zzk()Lcom/google/android/gms/internal/measurement/zznm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zznm;->zzb()J

    move-result-wide v8

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v10, p1

    cmp-long p1, v8, v10

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->zzk()Lcom/google/android/gms/internal/measurement/zznm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zznm;->zza()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    const-string p1, ""

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->zza()Z

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->zzm()Z

    move-result v9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->zzl()Z

    move-result v10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->zzn()Lcom/google/android/gms/internal/measurement/zznf;

    move-result-object v11

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqn;

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/measurement/zzqn;-><init>(ZLjava/util/List;Lcom/google/android/gms/internal/measurement/zzacr;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZZLcom/google/android/gms/internal/measurement/zznf;)V

    return-object v0
.end method

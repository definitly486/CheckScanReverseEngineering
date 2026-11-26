.class public final synthetic Lzcc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llm3;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzrf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzrf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzcc;->b:Lcom/google/android/gms/internal/measurement/zzrf;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object p0, p0, Lzcc;->b:Lcom/google/android/gms/internal/measurement/zzrf;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzno;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzse;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzse;-><init>()V

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2, v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzrf;->j:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzrf;->d:Lkd8;

    invoke-interface {v3}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzru;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzrf;->g:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzno;->zza()Lcom/google/android/gms/internal/measurement/zzni;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzsv;->zzb(Lcom/google/android/gms/internal/measurement/zzafc;)Lcom/google/android/gms/internal/measurement/zzsv;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Lcom/google/android/gms/internal/measurement/zzro;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzsv;->zzc([Lcom/google/android/gms/internal/measurement/zzro;)Lcom/google/android/gms/internal/measurement/zzsv;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzru;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzrt;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzno;->zza()Lcom/google/android/gms/internal/measurement/zzni;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/zzrf;->h:Lcom/google/android/gms/internal/measurement/zzni;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzrf;->k:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzrf;->d:Lkd8;

    invoke-interface {v3}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzru;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzrf;->i:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzno;->zzb()Lcom/google/android/gms/internal/measurement/zznk;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzsv;->zzb(Lcom/google/android/gms/internal/measurement/zzafc;)Lcom/google/android/gms/internal/measurement/zzsv;

    move-result-object v4

    new-array v5, v6, [Lcom/google/android/gms/internal/measurement/zzro;

    aput-object v0, v5, v8

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzsv;->zzc([Lcom/google/android/gms/internal/measurement/zzro;)Lcom/google/android/gms/internal/measurement/zzsv;

    invoke-virtual {v3, p0, v4}, Lcom/google/android/gms/internal/measurement/zzru;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzrt;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzno;->zzb()Lcom/google/android/gms/internal/measurement/zznk;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_0
    :try_start_8
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_1
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

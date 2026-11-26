.class public final Lcom/google/android/gms/internal/measurement/zzui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzuv;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final c:Lcom/google/android/gms/internal/measurement/zztv;

.field public final d:Llp7;

.field public final e:Lcom/google/android/gms/internal/measurement/zzru;

.field public final f:Lrz5;

.field public final g:Lcom/google/android/gms/internal/measurement/zzwb;

.field public final h:Ljava/lang/Object;

.field public final i:Lt13;

.field public j:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lu24;Lcom/google/android/gms/internal/measurement/zzve;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/measurement/zzru;Lrz5;Lcom/google/android/gms/internal/measurement/zzwb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->h:Ljava/lang/Object;

    new-instance v0, Lt13;

    invoke-direct {v0}, Lt13;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->i:Lt13;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzui;->a:Ljava/lang/String;

    invoke-static {p2}, Len3;->Y(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzui;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzui;->c:Lcom/google/android/gms/internal/measurement/zztv;

    new-instance p1, Llp7;

    invoke-direct {p1, p4}, Llp7;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzui;->d:Llp7;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzui;->e:Lcom/google/android/gms/internal/measurement/zzru;

    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/zzui;->f:Lrz5;

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/zzui;->g:Lcom/google/android/gms/internal/measurement/zzwb;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzuw;
    .locals 1

    sget-object v0, Lnec;->a:Lnec;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->c:Lcom/google/android/gms/internal/measurement/zztv;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzui;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzui;->e:Lcom/google/android/gms/internal/measurement/zzru;

    const-string v3, "Read "

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzui;->g:Lcom/google/android/gms/internal/measurement/zzwb;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzxd;->zza:Lcom/google/android/gms/internal/measurement/zzxd;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzxd;)Lcom/google/android/gms/internal/measurement/zzwi;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzst;->zzb()Lcom/google/android/gms/internal/measurement/zzst;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/measurement/zzru;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzrt;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzve;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzve;->zzb()Lcom/google/android/gms/internal/measurement/zzafc;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/zzafc;->zzcj()Lcom/google/android/gms/internal/measurement/zzafj;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzve;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzve;->zzc()Lcom/google/android/gms/internal/measurement/zzadf;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/google/android/gms/internal/measurement/zzafj;->zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/measurement/zzadf;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzafc;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzwi;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v4

    :catch_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception v4

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    :try_start_6
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzwi;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_4
    :try_start_9
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/measurement/zzru;->zzc(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zztv;->zza()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    throw p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_5
    invoke-static {v2, p1, p0, v1}, Lcom/google/android/gms/internal/measurement/zzux;->zza(Lcom/google/android/gms/internal/measurement/zzru;Landroid/net/Uri;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final b(Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzui;->e:Lcom/google/android/gms/internal/measurement/zzru;

    const-string v2, ".tmp"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/measurement/zzuz;->zza(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "Write "

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzui;->g:Lcom/google/android/gms/internal/measurement/zzwb;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzxd;->zza:Lcom/google/android/gms/internal/measurement/zzxd;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzxd;)Lcom/google/android/gms/internal/measurement/zzwi;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzse;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzse;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzsw;->zzb()Lcom/google/android/gms/internal/measurement/zzsw;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/zzro;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzsw;->zzc([Lcom/google/android/gms/internal/measurement/zzro;)Lcom/google/android/gms/internal/measurement/zzsw;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/measurement/zzru;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzrt;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/measurement/zzafc;->zzce(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzse;->zzc()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzwi;->close()V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzru;->zzd(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    :catch_1
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p2

    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    :try_start_7
    invoke-virtual {p2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    :try_start_8
    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzux;->zza(Lcom/google/android/gms/internal/measurement/zzru;Landroid/net/Uri;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzwi;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    :try_start_a
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :goto_5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzru;->zzc(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_2

    :try_start_b
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzru;->zzb(Landroid/net/Uri;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_6
    throw p0
.end method

.method public final zzb(Lks;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/measurement/zzuu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzui;->h:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Len3;->V(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->i:Lt13;

    new-instance v1, Lix5;

    invoke-direct {v1, p0}, Lix5;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzxa;->zzb(Ljs;)Ljs;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzui;->d:Llp7;

    invoke-virtual {v0, v1, v2}, Lt13;->a(Ljs;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Len3;->Y(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_1
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzui;->i:Lt13;

    new-instance v1, Lyu4;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lyu4;->b:Ljava/lang/Object;

    iput-object v0, v1, Lyu4;->c:Ljava/lang/Object;

    iput-object p1, v1, Lyu4;->d:Ljava/lang/Object;

    iput-object p2, v1, Lyu4;->e:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzxa;->zzb(Ljs;)Ljs;

    move-result-object p0

    sget-object p1, Ljn2;->INSTANCE:Ljn2;

    invoke-virtual {p3, p0, p1}, Lt13;->a(Ljs;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :goto_1
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzui;->a:Ljava/lang/String;

    return-object p0
.end method

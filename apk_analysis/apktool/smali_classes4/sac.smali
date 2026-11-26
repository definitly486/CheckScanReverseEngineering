.class public final synthetic Lsac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzpg;

.field public final synthetic c:Lx1$b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzpg;Lx1$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsac;->b:Lcom/google/android/gms/internal/measurement/zzpg;

    iput-object p2, p0, Lsac;->c:Lx1$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lsac;->b:Lcom/google/android/gms/internal/measurement/zzpg;

    iget-object p0, p0, Lsac;->c:Lx1$b;

    :try_start_0
    invoke-static {p0}, Len3;->V(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzqv;

    new-instance v1, Lrcc;

    const/4 v2, 0x6

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lrcc;-><init>(II)V

    new-instance v2, Lscc;

    invoke-direct {v2, p0, v1}, Lscc;-><init>(Lcom/google/android/gms/internal/measurement/zzqv;Lrcc;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzpg;->d:Z

    if-nez v1, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzpg;->a:Lscc;

    if-nez v3, :cond_2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    :try_start_1
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzpg;->a:Lscc;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    iget-object v1, v3, Lscc;->d:Lcom/google/common/collect/x;

    iget-object v2, v2, Lscc;->d:Lcom/google/common/collect/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/google/common/collect/q;->b(Ljava/lang/Object;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p0, v0, Lcom/google/android/gms/internal/measurement/zzpg;->b:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzj()Lcom/google/android/gms/internal/measurement/zzqm;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzqm;->zza()V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    :try_start_3
    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzpg;->a:Lscc;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzpg;->f:Lcom/google/android/gms/internal/measurement/zzps;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzps;->zzb()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzpg;->d:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzpg;->b:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzh()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzqv;->zza()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    const-class v2, Ljava/lang/Throwable;

    new-instance v3, Lvac;

    invoke-direct {v3, v0}, Lvac;-><init>(Lcom/google/android/gms/internal/measurement/zzpg;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lxr4;

    move-result-object v1

    sget v4, Lp;->m:I

    new-instance v4, Lp$b;

    invoke-direct {v4, p0, v2, v3}, Lp;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v1, v4}, Lnd5;->a(Ljava/util/concurrent/Executor;Lxh3$a;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v4, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/SecurityException;

    if-nez v1, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzpg;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x40

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unable to update local snapshot for "

    const-string v3, ", may result in stale flags."

    invoke-static {v2, v1, v0, v3}, Lkh;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlagStore"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-void
.end method

.class public final Lcom/google/android/gms/internal/measurement/zzqe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lkd8;

.field public final c:Lkd8;

.field public final d:Lkd8;

.field public volatile e:I

.field public final f:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final g:Ljava/lang/Object;

.field public volatile h:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkd8;Lkd8;Lkd8;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzqe;->e:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqe;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqe;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqe;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqe;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzqe;->b:Lkd8;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzqe;->c:Lkd8;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzqe;->d:Lkd8;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzabz;ZLcom/google/android/gms/internal/measurement/zzqc;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqe;->c:Lkd8;

    invoke-interface {v0}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzqm;

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    sget-object p0, Lu24;->c:Lu24;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzabz;->zza()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzqe;->e:I

    and-int/2addr v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzqe;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzqe;->e:I

    and-int v3, v2, p1

    if-nez v3, :cond_1

    invoke-virtual {v1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzqe;->e:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqe;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez p1, :cond_6

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzqe;->g:Ljava/lang/Object;

    monitor-enter p3

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqe;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez p1, :cond_5

    if-nez v0, :cond_3

    sget-object v0, Ljcc;->a:Ljcc;

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqe;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzky;->zzb(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lvbc;->b:Lvbc;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzqe;->b:Lkd8;

    invoke-interface {v2}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-static {p1, v1, v3}, Lcom/google/android/gms/internal/measurement/zzky;->zzd(Landroid/content/Context;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v1, Licc;

    invoke-direct {v1, p0, v0}, Licc;-><init>(Lcom/google/android/gms/internal/measurement/zzqe;Lcom/google/android/gms/internal/measurement/zzqm;)V

    invoke-interface {v2}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-static {p1, v1, v0}, Lx1;->p(Lcom/google/common/util/concurrent/ListenableFuture;Lks;Ljava/util/concurrent/Executor;)Lx1$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqe;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqe;->d:Lkd8;

    invoke-interface {p1}, Lkd8;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmj;

    new-instance v1, Lkcc;

    invoke-direct {v1, p0, v0}, Lkcc;-><init>(Lcom/google/android/gms/internal/measurement/zzqe;Lcom/google/android/gms/internal/measurement/zzqm;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/zzmj;->zze(Lcom/google/android/gms/internal/measurement/zzpm;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqe;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    :goto_4
    new-instance v0, Luxb;

    invoke-direct {v0, p1, p2}, Luxb;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzqe;->b:Lkd8;

    invoke-interface {p0}, Lkd8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_5
    monitor-exit p3

    return-object p1

    :goto_5
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_6
    return-object p1
.end method

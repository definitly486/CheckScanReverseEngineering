.class public Lifc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lx1$a;

.field public final c:Lcom/google/android/gms/internal/measurement/zzuv;

.field public final d:Lt13;

.field public final e:Lcom/google/android/gms/internal/measurement/zzvm;

.field public final f:Lcom/google/android/gms/internal/measurement/zzvm;

.field public final g:Ljava/lang/Object;

.field public final h:Lcom/google/android/gms/internal/measurement/zzwb;

.field public i:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzuv;Lx1$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvm;

    new-instance v1, Lcfc;

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/measurement/zztp;

    invoke-direct {v1, v2}, Lcfc;-><init>(Lcom/google/android/gms/internal/measurement/zztp;)V

    sget-object v3, Ljn2;->INSTANCE:Ljn2;

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzvm;-><init>(Ljs;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lifc;->f:Lcom/google/android/gms/internal/measurement/zzvm;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lifc;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lifc;->i:Ljava/util/List;

    iput-object p1, p0, Lifc;->c:Lcom/google/android/gms/internal/measurement/zzuv;

    iput-object p2, p0, Lifc;->b:Lx1$a;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzuv;->zzc()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lifc;->a:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzvm;

    new-instance v0, Lafc;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzui;

    invoke-direct {v0, p1}, Lafc;-><init>(Lcom/google/android/gms/internal/measurement/zzui;)V

    invoke-direct {p2, v0, v3}, Lcom/google/android/gms/internal/measurement/zzvm;-><init>(Ljs;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lifc;->e:Lcom/google/android/gms/internal/measurement/zzvm;

    new-instance p1, Lt13;

    invoke-direct {p1}, Lt13;-><init>()V

    iput-object p1, p0, Lifc;->d:Lt13;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwb;->zzb()Lcom/google/android/gms/internal/measurement/zzwb;

    move-result-object p1

    iput-object p1, p0, Lifc;->h:Lcom/google/android/gms/internal/measurement/zzwb;

    new-instance p1, Lffc;

    invoke-direct {p1, v2}, Lffc;-><init>(Lcom/google/android/gms/internal/measurement/zztp;)V

    invoke-virtual {p0, p1}, Lifc;->zza(Lks;)V

    return-void
.end method


# virtual methods
.method public final zza(Lks;)V
    .locals 1

    iget-object v0, p0, Lifc;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lifc;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzb(Llm3;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    new-instance v0, Ldfc;

    invoke-direct {v0, p1}, Ldfc;-><init>(Llm3;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lks;)Lks;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxh;->zza()Ldu8;

    move-result-object v0

    const-string v1, "ticker"

    invoke-static {v0, v1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ldu8;->a()J

    iget-object v0, p0, Lifc;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Update "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzxd;->zza:Lcom/google/android/gms/internal/measurement/zzxd;

    iget-object v2, p0, Lifc;->h:Lcom/google/android/gms/internal/measurement/zzwb;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzxd;)Lcom/google/android/gms/internal/measurement/zzwi;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lifc;->f:Lcom/google/android/gms/internal/measurement/zzvm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzvm;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v2, p0, Lifc;->d:Lt13;

    new-instance v3, Ljr7;

    invoke-direct {v3, v1}, Ljr7;-><init>(Ljava/lang/Object;)V

    sget-object v4, Ljn2;->INSTANCE:Ljn2;

    invoke-virtual {v2, v3, v4}, Lt13;->a(Ljs;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v3, Li1a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p0, v3, Li1a;->b:Ljava/lang/Object;

    iput-object v1, v3, Li1a;->c:Ljava/lang/Object;

    iput-object p1, v3, Li1a;->d:Ljava/lang/Object;

    iput-object p2, v3, Li1a;->e:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzxa;->zzb(Ljs;)Ljs;

    move-result-object p1

    invoke-virtual {v2, p1, v4}, Lt13;->a(Ljs;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1, v1}, Len3;->propagateCancellation(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/Future;)V

    iget-object p0, p0, Lifc;->b:Lx1$a;

    invoke-static {p0}, Len3;->Y(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzuy;->zza(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzwi;->zza(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzwi;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzwi;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

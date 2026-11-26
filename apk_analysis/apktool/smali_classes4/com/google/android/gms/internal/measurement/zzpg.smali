.class public final Lcom/google/android/gms/internal/measurement/zzpg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lcom/google/android/gms/internal/measurement/zzpe;

.field public static final i:Lcac;

.field public static final synthetic zzb:I


# instance fields
.field public volatile a:Lscc;

.field public final b:Lcom/google/android/gms/internal/measurement/zzlk;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Lcom/google/common/collect/n;

.field public final f:Lcom/google/android/gms/internal/measurement/zzps;

.field public final g:Lcom/google/android/gms/internal/measurement/zzqt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzpe;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->h:Lcom/google/android/gms/internal/measurement/zzpe;

    new-instance v0, Lcac;

    sget v2, Lcom/google/common/collect/n;->d:I

    sget-object v2, Lcom/google/common/collect/z;->k:Lcom/google/common/collect/z;

    sget-object v3, Lxac;->b:Lxac;

    invoke-direct {v0, v3, v1, v2}, Lcac;-><init>(Llm3;ZLcom/google/common/collect/n;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->i:Lcac;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzlk;Lcac;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpg;->b:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p2, Lcac;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p2, Lcac;->a:Llm3;

    invoke-interface {v1, v0}, Llm3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, p2, Lcac;->d:Ljava/lang/String;

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzpg;->c:Ljava/lang/String;

    iget-boolean v0, p2, Lcac;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->d:Z

    iget-object p2, p2, Lcac;->c:Lcom/google/common/collect/n;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->e:Lcom/google/common/collect/n;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->a:Lscc;

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzps;

    invoke-direct {p2}, Lcom/google/android/gms/internal/measurement/zzps;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->f:Lcom/google/android/gms/internal/measurement/zzps;

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzqt;

    const/4 v0, 0x0

    const-string v2, ""

    invoke-direct {p2, p1, v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzqt;-><init>(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->g:Lcom/google/android/gms/internal/measurement/zzqt;

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/measurement/zzpe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->h:Lcom/google/android/gms/internal/measurement/zzpe;

    return-object v0
.end method


# virtual methods
.method public final a()Lscc;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->a:Lscc;

    if-nez v0, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->a:Lscc;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzpg;->g:Lcom/google/android/gms/internal/measurement/zzqt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzqt;->a()Lscc;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-object v0, v1, Lscc;->e:Lrcc;

    iget v0, v0, Lrcc;->b:I

    add-int/lit8 v0, v0, -0x2

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->b:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd()Lcom/google/android/gms/internal/measurement/zzrf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzrf;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->d:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->g:Lcom/google/android/gms/internal/measurement/zzqt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzqt;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lscc;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lxr4;

    move-result-object v0

    new-instance v2, Lgac;

    invoke-direct {v2, p0}, Lgac;-><init>(Lcom/google/android/gms/internal/measurement/zzpg;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->zzi()Lcom/google/android/gms/internal/measurement/zzqv;

    move-result-object v0

    iget-object v1, v1, Lscc;->e:Lrcc;

    new-instance v2, Lscc;

    invoke-direct {v2, v0, v1}, Lscc;-><init>(Lcom/google/android/gms/internal/measurement/zzqv;Lrcc;)V

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lxr4;

    move-result-object v2

    new-instance v3, Ln3c;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Ln3c;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzk()Lcom/google/android/gms/internal/measurement/zzoh;

    move-result-object v2

    iget-object v3, v1, Lscc;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzpg;->e:Lcom/google/common/collect/n;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzpg;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzoh;->zza(Lcom/google/android/gms/internal/measurement/zzacr;Ljava/util/Set;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->g:Lcom/google/android/gms/internal/measurement/zzqt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzqt;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lxr4;

    move-result-object v0

    new-instance v2, Ljac;

    invoke-direct {v2, p0}, Ljac;-><init>(Lcom/google/android/gms/internal/measurement/zzpg;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    move-object v0, v1

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzpg;->d:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lscc;->e:Lrcc;

    iget v1, v1, Lrcc;->b:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->a:Lscc;

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    :cond_3
    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    return-object v0
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->g:Lcom/google/android/gms/internal/measurement/zzqt;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzqt;->a:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzh()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzqt;->c:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzmj;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lxr4;

    move-result-object v1

    sget v3, Lx1;->l:I

    new-instance v3, Lx1$b;

    sget-object v4, Lpcc;->b:Lpcc;

    invoke-direct {v3, v2, v4}, Lx1;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lnd5;->a(Ljava/util/concurrent/Executor;Lxh3$a;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v1, Lrbc;

    invoke-direct {v1, v0}, Lrbc;-><init>(Lcom/google/android/gms/internal/measurement/zzqt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->b:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lxr4;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lx1;->p(Lcom/google/common/util/concurrent/ListenableFuture;Lks;Ljava/util/concurrent/Executor;)Lx1$a;

    move-result-object v1

    new-instance v2, Lsac;

    invoke-direct {v2, p0, v3}, Lsac;-><init>(Lcom/google/android/gms/internal/measurement/zzpg;Lx1$b;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lxr4;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ll0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

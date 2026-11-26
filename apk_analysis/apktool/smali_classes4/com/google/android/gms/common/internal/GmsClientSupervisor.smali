.class public abstract Lcom/google/android/gms/common/internal/GmsClientSupervisor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:I = 0x9

.field public static c:Lybc; = null

.field public static d:Landroid/os/HandlerThread; = null

.field public static e:Ljava/util/concurrent/Executor; = null

.field public static f:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultBindFlags()I
    .locals 1

    const/16 v0, 0x1081

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/internal/GmsClientSupervisor;
    .locals 4

    sget-object v0, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->c:Lybc;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/GmsClientFlags;->isBindServiceOptimizationEnabled(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->f:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v1, Lybc;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-boolean v3, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->f:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getOrStartHandlerThread()Landroid/os/HandlerThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    :goto_1
    sget-object v3, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->e:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, p0, v3}, Lybc;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;)V

    sput-object v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->c:Lybc;

    :cond_2
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getOrStartHandlerThread()Landroid/os/HandlerThread;
    .locals 4

    sget-object v0, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->d:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->d:Landroid/os/HandlerThread;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    sget v3, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->b:I

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->d:Landroid/os/HandlerThread;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getOrStartHandlerThread(I)Landroid/os/HandlerThread;
    .locals 3

    .line 39
    sget-object v0, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->d:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->d:Landroid/os/HandlerThread;

    .line 40
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    .line 41
    invoke-direct {v1, v2, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->d:Landroid/os/HandlerThread;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->d:Landroid/os/HandlerThread;

    .line 43
    monitor-exit v0

    return-object p0

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setDefaultBindExecutor(Ljava/util/concurrent/Executor;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->c:Lybc;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lybc;->g:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p0, v1, Lybc;->n:Ljava/util/concurrent/Executor;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_0
    :goto_0
    sput-object p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->e:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static setGamHandlerThreadPriorityIfNotInitialized(I)Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->d:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    sput p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->b:I

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setUseHandlerThreadForCallbacks()V
    .locals 6

    sget-object v0, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->c:Lybc;

    if-eqz v1, :cond_0

    sget-boolean v2, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->f:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getOrStartHandlerThread()Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v1, Lybc;->g:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Lcom/google/android/gms/internal/common/zzg;

    iget-object v5, v1, Lybc;->j:Lbbc;

    invoke-direct {v4, v2, v5}, Lcom/google/android/gms/internal/common/zzg;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v4, v1, Lybc;->i:Lcom/google/android/gms/internal/common/zzg;

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->f:Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/common/internal/zzn;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/common/ConnectionResult;
.end method

.method public abstract b(Lcom/google/android/gms/common/internal/zzn;Landroid/content/ServiceConnection;)V
.end method

.method public bindService(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 3

    .line 21
    new-instance v0, Lcom/google/android/gms/common/internal/zzn;

    const/16 v1, 0x1081

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/common/internal/zzn;-><init>(Landroid/content/ComponentName;ILandroid/os/UserHandle;)V

    .line 22
    invoke-virtual {p0, v0, p2, p3, v2}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->a(Lcom/google/android/gms/common/internal/zzn;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result p0

    return p0
.end method

.method public bindService(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z
    .locals 3

    .line 18
    new-instance v0, Lcom/google/android/gms/common/internal/zzn;

    const/16 v1, 0x1081

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/common/internal/zzn;-><init>(Landroid/content/ComponentName;ILandroid/os/UserHandle;)V

    .line 19
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->a(Lcom/google/android/gms/common/internal/zzn;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result p0

    return p0
.end method

.method public bindService(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/zzn;

    const/16 v1, 0x1081

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/common/internal/zzn;-><init>(Ljava/lang/String;IZ)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->a(Lcom/google/android/gms/common/internal/zzn;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result p0

    return p0
.end method

.method public unbindService(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2

    new-instance p3, Lcom/google/android/gms/common/internal/zzn;

    const/16 v0, 0x1081

    const/4 v1, 0x0

    invoke-direct {p3, p1, v0, v1}, Lcom/google/android/gms/common/internal/zzn;-><init>(Landroid/content/ComponentName;ILandroid/os/UserHandle;)V

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->b(Lcom/google/android/gms/common/internal/zzn;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public unbindService(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2

    .line 12
    new-instance p3, Lcom/google/android/gms/common/internal/zzn;

    const/16 v0, 0x1081

    const/4 v1, 0x0

    invoke-direct {p3, p1, v0, v1}, Lcom/google/android/gms/common/internal/zzn;-><init>(Ljava/lang/String;IZ)V

    .line 13
    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->b(Lcom/google/android/gms/common/internal/zzn;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .locals 6

    new-instance v0, Lcom/google/android/gms/common/internal/zzn;

    const/16 v3, 0x1081

    move-object v1, p1

    move-object v2, p2

    move v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;IZLandroid/os/UserHandle;)V

    invoke-virtual {p0, v0, p4}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->b(Lcom/google/android/gms/common/internal/zzn;Landroid/content/ServiceConnection;)V

    return-void
.end method

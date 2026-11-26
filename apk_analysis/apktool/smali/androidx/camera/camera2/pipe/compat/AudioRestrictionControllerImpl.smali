.class public final Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;


# instance fields
.field private final activeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/camera/camera2/pipe/compat/AudioRestrictionController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final audioRestrictionModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
            "Landroidx/camera/camera2/pipe/AudioRestrictionMode;",
            ">;"
        }
    .end annotation
.end field

.field private final coroutineMutex:Landroidx/camera/camera2/pipe/core/CoroutineMutex;

.field private globalAudioRestrictionMode:Landroidx/camera/camera2/pipe/AudioRestrictionMode;

.field private final lock:Ljava/lang/Object;

.field private final scope:Ly22;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lmb4;)V
    .locals 2
    .param p3    # Lmb4;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeJob;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljd8;

    invoke-direct {v0, p3}, Lnb4;-><init>(Lmb4;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Threads;->getLightweightDispatcher()Lr22;

    move-result-object p1

    new-instance p3, Lw22;

    const-string v1, "CXCP-AudioRestrictionControllerImpl"

    invoke-direct {p3, v1}, Lw22;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lb0;->plus(Lo22;)Lo22;

    move-result-object p1

    invoke-static {v0, p1}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p1

    invoke-static {p1}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->scope:Ly22;

    new-instance p1, Landroidx/camera/camera2/pipe/core/CoroutineMutex;

    invoke-direct {p1}, Landroidx/camera/camera2/pipe/core/CoroutineMutex;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->coroutineMutex:Landroidx/camera/camera2/pipe/core/CoroutineMutex;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->audioRestrictionModeMap:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->activeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object p1, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;->SCOPE:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;

    new-instance p3, Lka;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lka;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p1, p3}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->addShutdownAction(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final _init_$lambda$0(Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;)V
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->scope:Ly22;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lz22;->b(Ly22;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->_init_$lambda$0(Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;)V

    return-void
.end method

.method public static final synthetic access$getActiveListeners$p(Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->activeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private final computeAudioRestrictionMode-4o0Og1A()Landroidx/camera/camera2/pipe/AudioRestrictionMode;
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->audioRestrictionModeMap:Ljava/util/Map;

    sget-object v1, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->Companion:Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;->getAUDIO_RESTRICTION_VIBRATION_SOUND-_b5Q8KE()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->box-impl(I)Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->getGlobalAudioRestrictionMode-4o0Og1A()Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;->getAUDIO_RESTRICTION_VIBRATION_SOUND-_b5Q8KE()I

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->unbox-impl()I

    move-result v0

    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->equals-impl0(II)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_5

    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->audioRestrictionModeMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;->getAUDIO_RESTRICTION_VIBRATION-_b5Q8KE()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->box-impl(I)Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->getGlobalAudioRestrictionMode-4o0Og1A()Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;->getAUDIO_RESTRICTION_VIBRATION-_b5Q8KE()I

    move-result v2

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->unbox-impl()I

    move-result v0

    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->equals-impl0(II)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->audioRestrictionModeMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;->getAUDIO_RESTRICTION_NONE-_b5Q8KE()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->box-impl(I)Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->getGlobalAudioRestrictionMode-4o0Og1A()Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object p0

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;->getAUDIO_RESTRICTION_NONE-_b5Q8KE()I

    move-result v0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->unbox-impl()I

    move-result p0

    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->equals-impl0(II)Z

    move-result v3

    :goto_2
    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :cond_6
    :goto_3
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;->getAUDIO_RESTRICTION_NONE-_b5Q8KE()I

    move-result p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->box-impl(I)Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_4
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;->getAUDIO_RESTRICTION_VIBRATION-_b5Q8KE()I

    move-result p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->box-impl(I)Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_5
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;->getAUDIO_RESTRICTION_VIBRATION_SOUND-_b5Q8KE()I

    move-result p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->box-impl(I)Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object p0

    return-object p0
.end method

.method private final updateListenersMode-3NUV5dA(Landroidx/camera/camera2/pipe/AudioRestrictionMode;)V
    .locals 4

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->computeAudioRestrictionMode-4o0Og1A()Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->coroutineMutex:Landroidx/camera/camera2/pipe/core/CoroutineMutex;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->scope:Ly22;

    new-instance v2, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$updateListenersMode$1;-><init>(Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;Landroidx/camera/camera2/pipe/AudioRestrictionMode;Le02;)V

    invoke-static {p1, v1, v2}, Landroidx/camera/camera2/pipe/core/MutexesKt;->withLockLaunch(Landroidx/camera/camera2/pipe/core/CoroutineMutex;Ly22;Lbm3;)Lmb4;

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/camera/camera2/pipe/compat/AudioRestrictionController$Listener;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->activeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->computeAudioRestrictionMode-4o0Og1A()Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->coroutineMutex:Landroidx/camera/camera2/pipe/core/CoroutineMutex;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->scope:Ly22;

    new-instance v3, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$addListener$1$1;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v1, v4}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl$addListener$1$1;-><init>(Landroidx/camera/camera2/pipe/compat/AudioRestrictionController$Listener;Landroidx/camera/camera2/pipe/AudioRestrictionMode;Le02;)V

    invoke-static {v2, p0, v3}, Landroidx/camera/camera2/pipe/core/MutexesKt;->withLockLaunch(Landroidx/camera/camera2/pipe/core/CoroutineMutex;Ly22;Lbm3;)Lmb4;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public getGlobalAudioRestrictionMode-4o0Og1A()Landroidx/camera/camera2/pipe/AudioRestrictionMode;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->globalAudioRestrictionMode:Landroidx/camera/camera2/pipe/AudioRestrictionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public removeCameraGraph(Landroidx/camera/camera2/pipe/CameraGraph;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->computeAudioRestrictionMode-4o0Og1A()Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->audioRestrictionModeMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->updateListenersMode-3NUV5dA(Landroidx/camera/camera2/pipe/AudioRestrictionMode;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public removeListener(Landroidx/camera/camera2/pipe/compat/AudioRestrictionController$Listener;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->activeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setGlobalAudioRestrictionMode-3NUV5dA(Landroidx/camera/camera2/pipe/AudioRestrictionMode;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->computeAudioRestrictionMode-4o0Og1A()Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object v1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->globalAudioRestrictionMode:Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    invoke-direct {p0, v1}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->updateListenersMode-3NUV5dA(Landroidx/camera/camera2/pipe/AudioRestrictionMode;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    const-string p0, "Unsupported setting AudioRestrictionMode to null."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public updateCameraGraphAudioRestrictionMode-TyYSX5E(Landroidx/camera/camera2/pipe/CameraGraph;I)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->computeAudioRestrictionMode-4o0Og1A()Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->audioRestrictionModeMap:Ljava/util/Map;

    invoke-static {p2}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->box-impl(I)Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->updateListenersMode-3NUV5dA(Landroidx/camera/camera2/pipe/AudioRestrictionMode;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

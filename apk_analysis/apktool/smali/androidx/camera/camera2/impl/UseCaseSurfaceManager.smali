.class public Landroidx/camera/camera2/impl/UseCaseSurfaceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceListener;


# annotations
.annotation runtime Landroidx/camera/camera2/config/UseCaseCameraScope;
.end annotation


# instance fields
.field private final activeSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/Surface;",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

.field private configuredSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/Surface;",
            "+",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;"
        }
    .end annotation
.end field

.field private final inactiveSurfaceCloser:Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;

.field private final lock:Ljava/lang/Object;

.field private final sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

.field private setupDeferred:Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmk2<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private stopDeferred:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;Landroidx/camera/camera2/adapter/SessionConfigAdapter;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->inactiveSurfaceCloser:Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;

    iput-object p4, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->activeSurfaceMap:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->setupAsync$lambda$0$3$0(Ljava/util/List;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$areValid(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->areValid(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getInactiveSurfaceCloser$p(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;)Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->inactiveSurfaceCloser:Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getSurfaces(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Ljava/util/List;JLe02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->getSurfaces(Ljava/util/List;JLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setConfiguredSurfaceMap$p(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->configuredSurfaceMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$setSurfaceListener(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->setSurfaceListener()V

    return-void
.end method

.method private final areValid(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/Surface;",
            ">;)Z"
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static awaitSetupCompletion$suspendImpl(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/UseCaseSurfaceManager;",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$awaitSetupCompletion$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$awaitSetupCompletion$1;

    iget v1, v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$awaitSetupCompletion$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$awaitSetupCompletion$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$awaitSetupCompletion$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$awaitSetupCompletion$1;-><init>(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$awaitSetupCompletion$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$awaitSetupCompletion$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->setupDeferred:Lmk2;

    if-eqz v2, :cond_6

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->stopDeferred:Lxp1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    monitor-exit p1

    :try_start_2
    iput v3, v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$awaitSetupCompletion$1;->label:I

    invoke-interface {v2, v0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    return-object p0

    :catch_0
    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Surface setup was cancelled"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_6
    :goto_1
    :try_start_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p1

    return-object p0

    :goto_2
    monitor-exit p1

    throw p0
.end method

.method private final getSurfaces(Ljava/util/List;JLe02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;J",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/view/Surface;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$1;

    iget v1, v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$1;

    invoke-direct {v0, p0, p4}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$1;-><init>(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Le02;)V

    :goto_0
    iget-object p0, v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$1;->result:Ljava/lang/Object;

    sget-object p4, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_2
    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$2;

    invoke-direct {p0, p1, v2}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$2;-><init>(Ljava/util/List;Le02;)V

    iput v3, v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$1;->label:I

    invoke-static {p2, p3, p0, v0}, Lyv8;->c(JLbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p4, :cond_3

    return-object p4

    :cond_3
    :goto_1
    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_4

    sget-object p0, Lkx2;->b:Lkx2;

    :cond_4
    return-object p0
.end method

.method private final setSurfaceListener()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraPipe;->cameraSurfaceManager()Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->addListener(Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceListener;)V

    return-void
.end method

.method public static synthetic setupAsync$default(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Ljava/util/Map;JILjava/lang/Object;)Lmk2;
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-wide/16 p4, 0x1388

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->setupAsync(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Ljava/util/Map;J)Lmk2;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: setupAsync"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final setupAsync$lambda$0$3$0(Ljava/util/List;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/camera/core/impl/DeferrableSurfaces;->decrementAll(Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final tryClearSurfaceListener()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->activeSurfaceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->configuredSurfaceMap:Ljava/util/Map;

    if-nez v1, :cond_1

    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v1, "CXCP"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " remove surface listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/CameraPipe;->cameraSurfaceManager()Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->removeListener(Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceListener;)V

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->stopDeferred:Lxp1;

    if-eqz p0, :cond_1

    sget-object v1, Lj59;->a:Lj59;

    invoke-interface {p0, v1}, Lxp1;->f(Ljava/lang/Object;)Z

    :cond_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public awaitSetupCompletion(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->awaitSetupCompletion$suspendImpl(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public onSurfaceActive(Landroid/view/Surface;)V
    .locals 6

    const-string v0, "Error when "

    const-string v1, "SurfaceActive "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->configuredSurfaceMap:Ljava/util/Map;

    if-eqz v3, :cond_3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v3, :cond_3

    iget-object v4, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->activeSurfaceMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v4, "CXCP"

    invoke-static {v4}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->activeSurfaceMap:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Landroidx/camera/core/impl/DeferrableSurface;->incrementUseCount()V
    :try_end_1
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v3, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v3, "CXCP"

    invoke-static {v3}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " going to increase the use count."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-virtual {v1}, Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;->getDeferrableSurface()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->reportSurfaceInvalid(Landroidx/camera/core/impl/DeferrableSurface;)V

    :cond_2
    :goto_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2

    throw p0
.end method

.method public onSurfaceInactive(Landroid/view/Surface;)V
    .locals 6

    const-string v0, "Error when "

    const-string v1, "SurfaceInactive "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->activeSurfaceMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v3, :cond_2

    sget-object v4, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v4, "CXCP"

    invoke-static {v4}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->inactiveSurfaceCloser:Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;

    invoke-interface {v1, v3}, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;->onSurfaceInactive(Landroidx/camera/core/impl/DeferrableSurface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Landroidx/camera/core/impl/DeferrableSurface;->decrementUseCount()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v3, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v3, "CXCP"

    invoke-static {v3}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " going to decrease the use count."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->tryClearSurfaceListener()V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2

    throw p0
.end method

.method public final setupAsync(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Ljava/util/Map;J)Lmk2;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
            "Landroidx/camera/camera2/adapter/SessionConfigAdapter;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;J)",
            "Lmk2<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->setupDeferred:Lmk2;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->stopDeferred:Lxp1;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->configuredSurfaceMap:Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getDeferrableSurfaces()Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x3

    const/4 v12, 0x0

    :try_start_1
    invoke-static {v5}, Landroidx/camera/core/impl/DeferrableSurfaces;->incrementAll(Ljava/util/List;)V
    :try_end_1
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getScope()Ly22;

    move-result-object v0

    new-instance v2, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;

    const/4 v10, 0x0

    move-object v4, p0

    move-object v9, p1

    move-object v3, p2

    move-object/from16 v8, p3

    move-wide/from16 v6, p4

    invoke-direct/range {v2 .. v10}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;-><init>(Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Ljava/util/List;JLjava/util/Map;Landroidx/camera/camera2/pipe/CameraGraph;Le02;)V

    invoke-static {v0, v12, v12, v2, v11}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p1

    new-instance p2, Luk5;

    invoke-direct {p2, v5, v11}, Luk5;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Lsb4;->g(Lnl3;)Lhp2;

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->setupDeferred:Lmk2;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to increment DeferrableSurfaces: Surfaces closed"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getScope()Ly22;

    move-result-object p0

    new-instance v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;

    invoke-direct {v0, p2, p1, v12}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$4;-><init>(Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;Le02;)V

    invoke-static {p0, v12, v12, v0, v11}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v1

    return-object p1

    :cond_1
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "Surfaces being setup after stopped!"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p0, "Surfaces should only be set up once!"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public final stopAsync()Lmk2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->stopDeferred:Lxp1;

    if-eqz v1, :cond_0

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string v2, "UseCaseSurfaceManager is already stopping!"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->setupDeferred:Lmk2;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->inactiveSurfaceCloser:Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;

    invoke-interface {v1}, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;->closeAll()V

    iput-object v2, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->configuredSurfaceMap:Ljava/util/Map;

    new-instance v1, Lyp1;

    invoke-direct {v1}, Lyp1;-><init>()V

    iput-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->stopDeferred:Lxp1;

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->tryClearSurfaceListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

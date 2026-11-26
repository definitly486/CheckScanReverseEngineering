.class public final Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/concurrent/CameraCoordinator;
.implements Landroidx/camera/core/impl/InternalCameraPresenceListener;


# instance fields
.field private activeConcurrentCameraInfosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/CameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraDevices:Landroidx/camera/camera2/pipe/CameraDevices;

.field private cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

.field private cameraRepository:Landroidx/camera/core/impl/CameraRepository;

.field private concurrentCameraIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private concurrentCameraIdsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;>;"
        }
    .end annotation
.end field

.field private concurrentMode:I

.field private concurrentModeOn:Z

.field private final lock:Ljava/lang/Object;

.field private pendingCameraIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/camera2/pipe/CameraDevices;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraDevices:Landroidx/camera/camera2/pipe/CameraDevices;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    sget-object p1, Lox2;->b:Lox2;

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdsSet:Ljava/util/Set;

    sget-object p1, Lmx2;->b:Lmx2;

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdMap:Ljava/util/Map;

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/List;

    return-void
.end method

.method public static synthetic getActiveConcurrentCameraInfosList$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCameraRepository$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getConcurrentCameraIdMap$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getConcurrentCameraIdsSet$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getConcurrentMode$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getConcurrentModeOn$annotations()V
    .locals 0

    return-void
.end method

.method private final tryStartConcurrentGraph()V
    .locals 8

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/CameraInfo;

    sget-object v6, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;

    invoke-virtual {v6, v4}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;->getCameraId-zjxgSG8(Landroidx/camera/core/CameraInfo;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p0, "Required value was null."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    if-nez v2, :cond_6

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isErrorEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Coordinator has not been initialized with a CameraRepository."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_7

    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :cond_6
    :try_start_3
    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/CameraInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v7, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;

    invoke-virtual {v7, v6}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;->getCameraId-zjxgSG8(Landroidx/camera/core/CameraInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v6}, Landroidx/camera/core/impl/CameraRepository;->getCamera(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object v6

    instance-of v7, v6, Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    if-eqz v7, :cond_8

    check-cast v6, Landroidx/camera/camera2/adapter/CameraInternalAdapter;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catch_0
    :cond_8
    move-object v6, v5

    :goto_4
    if-eqz v6, :cond_7

    :try_start_5
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :cond_9
    monitor-exit v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    invoke-virtual {v2}, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->getDeferredCameraGraphConfig$camera_camera2()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    const-string p0, "Every CameraInternal instance is expected to have a deferred CameraGraph config"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    if-eqz p0, :cond_e

    new-instance v1, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;

    invoke-direct {v1, v0}, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Landroidx/camera/camera2/pipe/CameraPipe;->createCameraGraphs(Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_d

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v4, p0}, Lqn1;->z0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    iget-object v1, v0, Lb36;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-virtual {v1, v0}, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->resumeDeferredCameraGraphCreation$camera_camera2(Landroidx/camera/camera2/pipe/CameraGraph;)V

    goto :goto_6

    :cond_c
    return-void

    :cond_d
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_e
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :goto_7
    monitor-exit v0

    throw p0

    :cond_f
    :goto_8
    monitor-exit v0

    return-void

    :goto_9
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addListener(Landroidx/camera/core/concurrent/CameraCoordinator$ConcurrentCameraModeListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public addPendingCameraInfo(Landroidx/camera/core/CameraInfo;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentModeOn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/List;

    sget-object v2, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;

    invoke-virtual {v2, p1}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;->getCameraId-zjxgSG8(Landroidx/camera/core/CameraInfo;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->tryStartConcurrentGraph()V

    goto :goto_1

    :cond_1
    const-string p0, "Required value was null."

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public getActiveConcurrentCameraInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getActiveConcurrentCameraInfosList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    return-object p0
.end method

.method public getCameraOperatingMode()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getCameraRepository()Landroidx/camera/core/impl/CameraRepository;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    return-object p0
.end method

.method public final getConcurrentCameraIdMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getConcurrentCameraIdsSet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdsSet:Ljava/util/Set;

    return-object p0
.end method

.method public getConcurrentCameraSelectors()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraSelector;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdsSet:Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static {v5, v7, v7, v6, v7}, Landroidx/camera/core/CameraIdentifier$Factory;->create$default(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/Identifier;ILjava/lang/Object;)Landroidx/camera/core/CameraIdentifier;

    move-result-object v5

    filled-new-array {v5}, [Landroidx/camera/core/CameraIdentifier;

    move-result-object v5

    invoke-static {v5}, Landroidx/camera/core/CameraSelector;->of([Landroidx/camera/core/CameraIdentifier;)Landroidx/camera/core/CameraSelector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-static {v4}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final getConcurrentMode()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentMode:I

    return p0
.end method

.method public final getConcurrentModeOn()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentModeOn:Z

    return p0
.end method

.method public getPairedConcurrentCameraId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/CameraInfo;

    sget-object v5, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;

    invoke-virtual {v5, v4}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;->getCameraId-zjxgSG8(Landroidx/camera/core/CameraInfo;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v1

    :cond_3
    invoke-static {v2, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final getPendingCameraIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/List;

    return-object p0
.end method

.method public init(Landroidx/camera/core/impl/CameraRepository;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraDevices:Landroidx/camera/camera2/pipe/CameraDevices;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices;->awaitCameraIds-SeavPBo$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lkx2;->b:Lkx2;

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->onCamerasUpdated(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public onCamerasUpdated(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraDevices:Landroidx/camera/camera2/pipe/CameraDevices;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4}, Landroidx/camera/camera2/pipe/CameraDevices;->awaitConcurrentCameraIds-SeavPBo$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lox2;->b:Lox2;

    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    move-object v5, v4

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v6}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {p1, v6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v4, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v4, "CXCP"

    invoke-static {v4}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to retrieve concurrent camera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v5, v4

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v7, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraDevices:Landroidx/camera/camera2/pipe/CameraDevices;

    invoke-static {v6, v7}, Landroidx/camera/camera2/internal/CameraCompatibilityFilter;->isBackwardCompatible(Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraDevices;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraDevices:Landroidx/camera/camera2/pipe/CameraDevices;

    invoke-static {v5, v7}, Landroidx/camera/camera2/internal/CameraCompatibilityFilter;->isBackwardCompatible(Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraDevices;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_3

    :cond_4
    :goto_2
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroidx/camera/core/InitializationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :goto_3
    :try_start_2
    sget-object v6, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v6, "CXCP"

    invoke-static {v6}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping incompatible concurrent pair: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " due to "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdsSet:Ljava/util/Set;

    iput-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdMap:Ljava/util/Map;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Landroidx/camera/core/impl/CameraUpdateException;

    const-string v0, "Failed to retrieve concurrent camera id info for camera-pipe."

    invoke-direct {p1, v0, p0}, Landroidx/camera/core/impl/CameraUpdateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public removeListener(Landroidx/camera/core/concurrent/CameraCoordinator$ConcurrentCameraModeListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public removePendingCameraInfo(Landroidx/camera/core/CameraInfo;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentModeOn:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/List;

    sget-object v1, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;->getCameraId-zjxgSG8(Landroidx/camera/core/CameraInfo;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p0, "Required value was null."

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public setActiveConcurrentCameraInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/CameraInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->tryStartConcurrentGraph()V

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

.method public final setActiveConcurrentCameraInfosList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/CameraInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    return-void
.end method

.method public setCameraOperatingMode(I)V
    .locals 5

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentMode:I

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    iput-boolean v4, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentModeOn:Z

    if-nez v4, :cond_2

    sget-object v4, Lkx2;->b:Lkx2;

    iput-object v4, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    :cond_2
    invoke-virtual {v1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraInternal;

    instance-of v4, v1, Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    if-eqz v4, :cond_4

    check-cast v1, Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v0}, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->setCameraGraphCreationMode$camera_camera2(Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v3}, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->setCameraGraphCreationMode$camera_camera2(Z)V

    goto :goto_1

    :cond_7
    :goto_3
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final setCameraRepository(Landroidx/camera/core/impl/CameraRepository;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    return-void
.end method

.method public final setConcurrentCameraIdMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdMap:Ljava/util/Map;

    return-void
.end method

.method public final setConcurrentCameraIdsSet(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdsSet:Ljava/util/Set;

    return-void
.end method

.method public final setConcurrentMode(I)V
    .locals 0

    iput p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentMode:I

    return-void
.end method

.method public final setConcurrentModeOn(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentModeOn:Z

    return-void
.end method

.method public final setPendingCameraIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/List;

    return-void
.end method

.method public shutdown()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentModeOn:Z

    iget-object v2, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    sget-object v0, Lox2;->b:Lox2;

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdsSet:Ljava/util/Set;

    sget-object v0, Lmx2;->b:Lmx2;

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdMap:Ljava/util/Map;

    sget-object v0, Lkx2;->b:Lkx2;

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    iput v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentMode:I

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

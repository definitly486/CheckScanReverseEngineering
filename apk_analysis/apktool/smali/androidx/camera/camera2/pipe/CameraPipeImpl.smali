.class public final Landroidx/camera/camera2/pipe/CameraPipeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraPipe;


# instance fields
.field private final component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

.field private final debugId:I

.field private final lock:Ljava/lang/Object;

.field private shutdown:Z


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/config/CameraPipeComponent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraPipeKt;->getCameraPipeIds()Llt;

    move-result-object p1

    invoke-virtual {p1}, Llt;->b()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->debugId:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getComponent$p(Landroidx/camera/camera2/pipe/CameraPipeImpl;)Landroidx/camera/camera2/pipe/config/CameraPipeComponent;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    return-object p0
.end method

.method private final createCameraGraphLocked(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraphId;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 2

    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CXCP#CameraGraph-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->access$getComponent$p(Landroidx/camera/camera2/pipe/CameraPipeImpl;)Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameraGraphComponentBuilder()Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;

    move-result-object p0

    new-instance v0, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;

    invoke-direct {v0, p1, p2}, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;-><init>(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraphId;)V

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;->cameraGraphConfigModule(Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;->build()Landroidx/camera/camera2/pipe/config/CameraGraphComponent;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraGraphComponent;->cameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method private final createFrameGraphLocked(Landroidx/camera/camera2/pipe/FrameGraph$Config;Landroidx/camera/camera2/pipe/CameraGraphId;)Landroidx/camera/camera2/pipe/FrameGraph;
    .locals 3

    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CXCP#CreateFrameGraph-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/FrameGraph$Config;->getCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->access$getComponent$p(Landroidx/camera/camera2/pipe/CameraPipeImpl;)Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameraGraphComponentBuilder()Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/FrameGraph$Config;->getCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;-><init>(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraphId;)V

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;->cameraGraphConfigModule(Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;

    move-result-object p2

    invoke-interface {p2}, Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;->build()Landroidx/camera/camera2/pipe/config/CameraGraphComponent;

    move-result-object p2

    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->access$getComponent$p(Landroidx/camera/camera2/pipe/CameraPipeImpl;)Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->frameGraphComponentBuilder()Landroidx/camera/camera2/pipe/config/FrameGraphComponent$Builder;

    move-result-object p0

    new-instance v0, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;

    invoke-direct {v0, p2, p1}, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;-><init>(Landroidx/camera/camera2/pipe/config/CameraGraphComponent;Landroidx/camera/camera2/pipe/FrameGraph$Config;)V

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/config/FrameGraphComponent$Builder;->frameGraphConfigModule(Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;)Landroidx/camera/camera2/pipe/config/FrameGraphComponent$Builder;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/FrameGraphComponent$Builder;->build()Landroidx/camera/camera2/pipe/config/FrameGraphComponent;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/FrameGraphComponent;->frameGraph()Landroidx/camera/camera2/pipe/FrameGraph;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method private final getBackend(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraBackend;
    .locals 3

    const-string v0, "Failed to initialize "

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCustomCameraBackend()Landroidx/camera/camera2/pipe/CameraBackendFactory;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameraContext()Landroidx/camera/camera2/pipe/CameraContext;

    move-result-object p0

    invoke-interface {v2, p0}, Landroidx/camera/camera2/pipe/CameraBackendFactory;->create(Landroidx/camera/camera2/pipe/CameraContext;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCameraBackendId-AKmI2lo()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameraBackends()Landroidx/camera/camera2/pipe/CameraBackends;

    move-result-object p0

    invoke-interface {p0, v2}, Landroidx/camera/camera2/pipe/CameraBackends;->get-SG3A4s8(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameraBackends()Landroidx/camera/camera2/pipe/CameraBackends;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraBackends;->getDefault()Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    return-object p0

    :cond_3
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v1

    throw p0
.end method


# virtual methods
.method public cameraSurfaceManager()Landroidx/camera/camera2/pipe/CameraSurfaceManager;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameraSurfaceManager()Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public cameras()Landroidx/camera/camera2/pipe/CameraDevices;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameras()Landroidx/camera/camera2/pipe/CameraDevices;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public create(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->createCameraGraph(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    return-object p0
.end method

.method public createCameraGraph(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    if-nez v1, :cond_0

    sget-object v1, Landroidx/camera/camera2/pipe/CameraGraphId;->Companion:Landroidx/camera/camera2/pipe/CameraGraphId$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraphId$Companion;->nextId()Landroidx/camera/camera2/pipe/CameraGraphId;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->createCameraGraphLocked(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraphId;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public createCameraGraphs(Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    if-nez v1, :cond_4

    new-instance v1, Luz4;

    invoke-direct {v1}, Luz4;-><init>()V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;->getGraphConfigs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    sget-object v4, Landroidx/camera/camera2/pipe/CameraGraphId;->Companion:Landroidx/camera/camera2/pipe/CameraGraphId$Companion;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/CameraGraphId$Companion;->nextId()Landroidx/camera/camera2/pipe/CameraGraphId;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1}, Luz4;->b()Luz4;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;->getGraphConfigs()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

    invoke-virtual {v1}, Luz4;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;->getGraphConfigs()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v4, v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->setConcurrentCameraGraphs$camera_camera2_pipe(Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;)V

    invoke-virtual {v1, v4}, Luz4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Landroidx/camera/camera2/pipe/CameraGraphId;

    invoke-direct {p0, v4, v5}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->createCameraGraphLocked(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraphId;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string p0, "Required value was null."

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v0

    return-object v2

    :cond_4
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public createFrameGraph(Landroidx/camera/camera2/pipe/FrameGraph$Config;)Landroidx/camera/camera2/pipe/FrameGraph;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    if-nez v1, :cond_0

    sget-object v1, Landroidx/camera/camera2/pipe/CameraGraphId;->Companion:Landroidx/camera/camera2/pipe/CameraGraphId$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraphId$Companion;->nextId()Landroidx/camera/camera2/pipe/CameraGraphId;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->createFrameGraphLocked(Landroidx/camera/camera2/pipe/FrameGraph$Config;Landroidx/camera/camera2/pipe/CameraGraphId;)Landroidx/camera/camera2/pipe/FrameGraph;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public createFrameGraphs(Landroidx/camera/camera2/pipe/FrameGraph$ConcurrentConfig;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/FrameGraph$ConcurrentConfig;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/FrameGraph;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    if-nez v1, :cond_4

    new-instance v1, Luz4;

    invoke-direct {v1}, Luz4;-><init>()V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/FrameGraph$ConcurrentConfig;->getFrameGraphConfigs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/FrameGraph$Config;

    sget-object v4, Landroidx/camera/camera2/pipe/CameraGraphId;->Companion:Landroidx/camera/camera2/pipe/CameraGraphId$Companion;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/CameraGraphId$Companion;->nextId()Landroidx/camera/camera2/pipe/CameraGraphId;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1}, Luz4;->b()Luz4;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/FrameGraph$ConcurrentConfig;->getFrameGraphConfigs()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/FrameGraph$Config;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/FrameGraph$Config;->getCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

    invoke-virtual {v1}, Luz4;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/FrameGraph$ConcurrentConfig;->getFrameGraphConfigs()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/FrameGraph$Config;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/FrameGraph$Config;->getCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->setConcurrentCameraGraphs$camera_camera2_pipe(Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;)V

    invoke-virtual {v1, v4}, Luz4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Landroidx/camera/camera2/pipe/CameraGraphId;

    invoke-direct {p0, v4, v5}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->createFrameGraphLocked(Landroidx/camera/camera2/pipe/FrameGraph$Config;Landroidx/camera/camera2/pipe/CameraGraphId;)Landroidx/camera/camera2/pipe/FrameGraph;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string p0, "Required value was null."

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v0

    return-object v2

    :cond_4
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public getGlobalAudioRestrictionMode-_b5Q8KE()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    if-eqz v1, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CXCP"

    const-string v1, "Trying to get audio restriction after shutdown! Returning NONE"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    sget-object p0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->Companion:Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;->getAUDIO_RESTRICTION_NONE-_b5Q8KE()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_1
    :try_start_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameraAudioRestrictionController()Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;->getGlobalAudioRestrictionMode-4o0Og1A()Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->unbox-impl()I

    move-result p0

    goto :goto_1

    :cond_2
    sget-object p0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->Companion:Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;->getAUDIO_RESTRICTION_NONE-_b5Q8KE()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public isConfigSupported-NpXggIU(Landroidx/camera/camera2/pipe/CameraGraph$Config;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/ConfigQueryResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->getBackend(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraBackend;->isConfigSupported-NpXggIU(Landroidx/camera/camera2/pipe/CameraGraph$Config;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public prewarmIsConfigSupported(Landroidx/camera/camera2/pipe/CameraGraph$Config;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->getBackend(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraBackend;->prewarmIsConfigSupported-EfqyGwQ(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setGlobalAudioRestrictionMode-LwUUkyU(I)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    if-eqz v1, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CXCP"

    const-string p1, "Trying to set audio restriction after shutdown!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameraAudioRestrictionController()Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    move-result-object p0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->box-impl(I)Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;->setGlobalAudioRestrictionMode-3NUV5dA(Landroidx/camera/camera2/pipe/AudioRestrictionMode;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameraPipeLifetime()Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->shutdown()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraPipe-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->debugId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

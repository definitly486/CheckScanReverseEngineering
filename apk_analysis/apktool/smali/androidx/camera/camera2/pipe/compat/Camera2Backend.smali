.class public final Landroidx/camera/camera2/pipe/compat/Camera2Backend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraBackend;
.implements Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;


# instance fields
.field private final activeCameraControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraController;",
            ">;"
        }
    .end annotation
.end field

.field private final camera2CameraControllerComponent:Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;

.field private final camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

.field private final camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

.field private final camera2MetadataCache:Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

.field private final cameraPipeContext:Landroid/content/Context;

.field private final lock:Ljava/lang/Object;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;Landroid/content/Context;)V
    .locals 0
    .param p6    # Landroid/content/Context;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeContext;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2MetadataCache:Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2CameraControllerComponent:Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->cameraPipeContext:Landroid/content/Context;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->activeCameraControllers:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getActiveCameraControllers$p(Landroidx/camera/camera2/pipe/compat/Camera2Backend;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->activeCameraControllers:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getCamera2DeviceCache$p(Landroidx/camera/camera2/pipe/compat/Camera2Backend;)Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    return-object p0
.end method

.method public static final synthetic access$getCamera2DeviceManager$p(Landroidx/camera/camera2/pipe/compat/Camera2Backend;)Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Landroidx/camera/camera2/pipe/compat/Camera2Backend;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method private final buildOutputConfiguration(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getStreams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/CameraStream$Config;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/OutputStream$Config;

    sget-object v4, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->Companion:Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getFormat-8FPWQzE()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v5, Landroidx/camera/camera2/pipe/OutputStream$OutputType;->Companion:Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getSURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v7

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getMirrorMode-dO1_9xk()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    move-result-object v8

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    move-result-object v9

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getDynamicRangeProfile-OoVcG5w()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    move-result-object v10

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v11

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getSensorPixelModes()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getSize()Landroid/util/Size;

    move-result-object v13

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getCamera-1LO98Z0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v14

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-static {v5, v14}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    :goto_1
    if-nez v5, :cond_3

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getCamera-1LO98Z0()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object/from16 v16, v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :goto_3
    const/16 v17, 0x600

    const/16 v18, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v4 .. v18}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;->create-gWWoySg$default(Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;Landroid/view/Surface;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Ljava/util/List;Landroid/util/Size;ZILjava/lang/String;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    move-result-object v3

    if-eqz v3, :cond_1

    const-class v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v4}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public awaitCameraIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->awaitCameraIds()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2MetadataCache:Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p0

    return-object p0
.end method

.method public awaitConcurrentCameraIds()Ljava/util/Set;
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

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->awaitConcurrentCameraIds()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public createCameraController(Landroidx/camera/camera2/pipe/CameraContext;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/SurfaceTracker;)Landroidx/camera/camera2/pipe/CameraController;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2CameraControllerComponent:Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;

    new-instance v0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-object v5, p5

    check-cast v5, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    move-object v7, p0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;-><init>(Landroidx/camera/camera2/pipe/CameraBackend;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/SurfaceTracker;Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;->camera2ControllerConfig(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;->build()Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent;->cameraController()Landroidx/camera/camera2/pipe/CameraController;

    move-result-object p0

    iget-object p1, v1, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, v1, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->activeCameraControllers:Ljava/util/Set;

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1

    throw p0
.end method

.method public disconnect-EfqyGwQ(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;->close-EfqyGwQ(Ljava/lang/String;)Lmk2;

    return-void
.end method

.method public disconnectAll()V
    .locals 3

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;->closeAll$default(Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;ZILjava/lang/Object;)Lmk2;

    return-void
.end method

.method public disconnectAllAsync()Lmk2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;->closeAll$default(Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;ZILjava/lang/Object;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public disconnectAsync-EfqyGwQ(Ljava/lang/String;)Lmk2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;->close-EfqyGwQ(Ljava/lang/String;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public getCameraIds()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->getCameraIds()Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public getCameraIds(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 7
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->getCameraIds(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getCameraMetadata-0r8Bogc(Ljava/lang/String;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2MetadataCache:Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->getCameraMetadata-0r8Bogc(Ljava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getId-QwmhuAM()Ljava/lang/String;
    .locals 0

    const-string p0, "CXCP-Camera2"

    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraBackendId;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isConfigSupported-NpXggIU(Landroidx/camera/camera2/pipe/CameraGraph$Config;Le02;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2Backend;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$2:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/params/SessionConfiguration;

    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;

    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-ge p2, v2, :cond_4

    sget-object p0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->Companion:Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;->getUNKNOWN-Xp6DSB4()I

    move-result p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->box-impl(I)Landroidx/camera/camera2/pipe/ConfigQueryResult;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v2

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->label:I

    invoke-virtual {p2, v2, v0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->getOrInitializeDeviceSetupCompat-0r8Bogc(Ljava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto/16 :goto_3

    :cond_5
    :goto_1
    check-cast p2, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result v2

    sget-object v6, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getNORMAL-2uNL3no()I

    move-result v7

    invoke-static {v2, v7}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getHIGH_SPEED-2uNL3no()I

    move-result v7

    invoke-static {v2, v7}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getEXTENSION-2uNL3no()I

    move-result v5

    invoke-static {v2, v5}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported session mode: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->toString-impl(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CXCP"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-object p0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->Companion:Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;->getUNKNOWN-Xp6DSB4()I

    move-result p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->box-impl(I)Landroidx/camera/camera2/pipe/ConfigQueryResult;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result v5

    :goto_2
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->buildOutputConfiguration(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2}, Landroidx/camera/camera2/pipe/compat/Api35Compat;->newSessionConfiguration(ILjava/util/List;)Landroid/hardware/camera2/params/SessionConfiguration;

    move-result-object v2

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v5

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->label:I

    invoke-virtual {p0, v5, v0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->getOrInitializeDeviceSetupWrapper-0r8Bogc(Ljava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    :goto_3
    return-object v1

    :cond_a
    move-object v0, p1

    move-object p1, p2

    move-object p2, p0

    move-object p0, v2

    :goto_4
    check-cast p2, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetupWrapper;

    if-eqz p2, :cond_b

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionTemplate-fGx8uWA()I

    move-result v1

    invoke-interface {p2, v1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetupWrapper;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    goto :goto_5

    :cond_b
    move-object p2, v4

    :goto_5
    if-eqz p2, :cond_f

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v2, Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v3, :cond_d

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_7

    :cond_d
    move-object v2, v4

    :goto_7
    if-eqz v2, :cond_c

    invoke-virtual {p2, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_6

    :cond_e
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->setSessionParameters(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/hardware/camera2/CaptureRequest;)V

    :cond_f
    if-eqz p1, :cond_10

    invoke-interface {p1, p0}, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat$SupportQueryResult;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat$SupportQueryResult;->getSupported()I

    move-result p0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p0}, Ljava/lang/Integer;-><init>(I)V

    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->constructor-impl(I)I

    move-result p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->box-impl(I)Landroidx/camera/camera2/pipe/ConfigQueryResult;

    move-result-object p0

    return-object p0

    :cond_11
    sget-object p0, Landroidx/camera/camera2/pipe/ConfigQueryResult;->Companion:Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;->getUNKNOWN-Xp6DSB4()I

    move-result p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->box-impl(I)Landroidx/camera/camera2/pipe/ConfigQueryResult;

    move-result-object p0

    return-object p0
.end method

.method public onControllerClosed(Landroidx/camera/camera2/pipe/CameraController;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CXCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " finalized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->activeCameraControllers:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public prewarm-EfqyGwQ(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;->prewarm-EfqyGwQ(Ljava/lang/String;)V

    return-void
.end method

.method public prewarmIsConfigSupported-EfqyGwQ(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Threads;->getCameraPipeScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2Backend$prewarmIsConfigSupported$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/camera2/pipe/compat/Camera2Backend$prewarmIsConfigSupported$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2Backend;Ljava/lang/String;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public shutdownAsync()Lmk2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CXCP"

    const-string v1, "Camera2Backend#shutdownAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->shutdown()V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Threads;->getCameraPipeScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2Backend;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p0

    return-object p0
.end method

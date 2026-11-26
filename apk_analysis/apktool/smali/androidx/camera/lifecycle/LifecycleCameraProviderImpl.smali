.class public final Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/lifecycle/LifecycleCameraProvider;
.implements Landroidx/camera/core/CameraPresenceListener;


# instance fields
.field private final cameraInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/CameraIdentifier;",
            "Landroidx/camera/core/impl/AdapterCameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cameraX:Landroidx/camera/core/CameraX;

.field private cameraXConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

.field private cameraXInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private cameraXShutdownFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private final lifecycleCameraKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;",
            ">;"
        }
    .end annotation
.end field

.field private lifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraXShutdownFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraInfoMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->lifecycleCameraKeys:Ljava/util/HashSet;

    return-void
.end method

.method public static synthetic a(Li31;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->initAsync$lambda$0$2(Lnl3;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$bindToLifecycleInternal(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/SessionConfig;)Landroidx/camera/core/Camera;
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->bindToLifecycleInternal(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/SessionConfig;)Landroidx/camera/core/Camera;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getActiveConcurrentCameraInfos(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getActiveConcurrentCameraInfos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCameraConfig(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/CameraConfig;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getCameraConfig(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/CameraConfig;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCameraInfoMap$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraInfoMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getCameraOperatingMode(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)I
    .locals 0

    invoke-direct {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getCameraOperatingMode()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCameraX$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/core/CameraX;
    .locals 0

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraX:Landroidx/camera/core/CameraX;

    return-object p0
.end method

.method public static final synthetic access$getLifecycleCameraKeys$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->lifecycleCameraKeys:Ljava/util/HashSet;

    return-object p0
.end method

.method public static final synthetic access$getLifecycleCameraRepository$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/lifecycle/LifecycleCameraRepository;
    .locals 0

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->lifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getSelectorsWithSessionFilter(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/SessionConfig;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;)Lb36;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getSelectorsWithSessionFilter(Landroidx/camera/core/SessionConfig;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;)Lb36;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isPreview(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/UseCase;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->isPreview(Landroidx/camera/core/UseCase;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isVideoCapture(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/UseCase;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->isVideoCapture(Landroidx/camera/core/UseCase;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setActiveConcurrentCameraInfos(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->setActiveConcurrentCameraInfos(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setCameraOperatingMode(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->setCameraOperatingMode(I)V

    return-void
.end method

.method public static synthetic b(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->shutdownAsync$lambda$0(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)V

    return-void
.end method

.method private final bindToLifecycleInternal(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/SessionConfig;)Landroidx/camera/core/Camera;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    const-string v3, "CX:bindToLifecycle-internal"

    invoke-static {v3}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static {v0, v2, v3, v4}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getSelectorsWithSessionFilter(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/SessionConfig;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;)Lb36;

    move-result-object v3

    iget-object v4, v3, Lb36;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/camera/core/CameraSelector;

    iget-object v3, v3, Lb36;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/camera/core/CameraSelector;

    invoke-static {v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraX$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/core/CameraX;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroidx/camera/core/CameraX;->getCameraRepository()Landroidx/camera/core/impl/CameraRepository;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Landroidx/camera/core/impl/CameraInternal;->setPrimary(Z)V

    invoke-virtual {v0, v4}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v9, v4

    check-cast v9, Landroidx/camera/core/impl/AdapterCameraInfo;

    if-eqz v3, :cond_0

    invoke-static {v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraX$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/core/CameraX;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroidx/camera/core/CameraX;->getCameraRepository()Landroidx/camera/core/impl/CameraRepository;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroidx/camera/core/impl/CameraInternal;->setPrimary(Z)V

    invoke-virtual {v0, v3}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroidx/camera/core/impl/AdapterCameraInfo;

    move-object v10, v3

    move-object v8, v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    move-object v8, v4

    move-object v10, v8

    :goto_0
    invoke-static {v9, v10}, Landroidx/camera/core/CameraIdentifier$Factory;->fromAdapterInfos(Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/impl/AdapterCameraInfo;)Landroidx/camera/core/CameraIdentifier;

    move-result-object v3

    invoke-static {v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getLifecycleCameraRepository$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/lifecycle/LifecycleCameraRepository;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v1, v3}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCamera(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraIdentifier;)Landroidx/camera/lifecycle/LifecycleCamera;

    move-result-object v4

    invoke-static {v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getLifecycleCameraRepository$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/lifecycle/LifecycleCameraRepository;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCameras()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v2}, Landroidx/camera/core/SessionConfig;->getUseCases()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/camera/core/UseCase;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v14, Landroidx/camera/lifecycle/LifecycleCamera;

    invoke-virtual {v14, v12}, Landroidx/camera/lifecycle/LifecycleCamera;->isBound(Landroidx/camera/core/UseCase;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v14}, Landroidx/camera/lifecycle/LifecycleCamera;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v14

    invoke-static {v14, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use case %s already bound to a different lifecycle."

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez v4, :cond_5

    invoke-static {v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getLifecycleCameraRepository$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/lifecycle/LifecycleCameraRepository;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraX$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/core/CameraX;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroidx/camera/core/CameraX;->getCameraUseCaseAdapterProvider()Landroidx/camera/core/CameraUseCaseAdapterProvider;

    move-result-object v6

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-interface/range {v6 .. v12}, Landroidx/camera/core/CameraUseCaseAdapterProvider;->provide(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;)Landroidx/camera/core/internal/CameraUseCaseAdapter;

    move-result-object v5

    invoke-static {v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraX$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/core/CameraX;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroidx/camera/core/CameraX;->getRotationProvider()Landroidx/camera/core/RotationProvider;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->createLifecycleCamera(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/internal/CameraUseCaseAdapter;Landroidx/camera/core/RotationProvider;)Landroidx/camera/lifecycle/LifecycleCamera;

    move-result-object v4

    :cond_5
    invoke-virtual {v2}, Landroidx/camera/core/SessionConfig;->getUseCases()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_6
    invoke-static {v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getLifecycleCameraRepository$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/lifecycle/LifecycleCameraRepository;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraX$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/core/CameraX;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroidx/camera/core/CameraX;->getCameraFactory()Landroidx/camera/core/impl/CameraFactory;

    move-result-object v6

    invoke-interface {v6}, Landroidx/camera/core/impl/CameraFactory;->getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;

    move-result-object v6

    invoke-virtual {v5, v4, v2, v6}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->bindToLifecycleCamera(Landroidx/camera/lifecycle/LifecycleCamera;Landroidx/camera/core/SessionConfig;Landroidx/camera/core/concurrent/CameraCoordinator;)V

    invoke-static {v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getLifecycleCameraKeys$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v1, v3}, Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;->create(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraIdentifier;)Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public static synthetic bindToLifecycleInternal$default(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/SessionConfig;ILjava/lang/Object;)Landroidx/camera/core/Camera;
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    sget-object p4, Landroidx/camera/core/CompositionSettings;->DEFAULT:Landroidx/camera/core/CompositionSettings;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    sget-object p5, Landroidx/camera/core/CompositionSettings;->DEFAULT:Landroidx/camera/core/CompositionSettings;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->bindToLifecycleInternal(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/SessionConfig;)Landroidx/camera/core/Camera;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/camera/core/CameraX;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->initAsync$lambda$0$1(Landroidx/camera/core/CameraX;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/CameraX;Landroid/content/Context;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->initAsync$lambda$0$3(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/CameraX;Landroid/content/Context;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lbp4;Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->initAsync$lambda$0$4(Lnl3;Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private final getActiveConcurrentCameraInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraX:Landroidx/camera/core/CameraX;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/core/CameraX;->getCameraFactory()Landroidx/camera/core/impl/CameraFactory;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraFactory;->getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/concurrent/CameraCoordinator;->getActiveConcurrentCameraInfos()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method private final getCameraConfig(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/CameraConfig;
    .locals 5

    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector;->getCameraFilterSet()Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroidx/camera/core/CameraFilter;

    invoke-interface {v2}, Landroidx/camera/core/CameraFilter;->getIdentifier()Landroidx/camera/core/impl/Identifier;

    move-result-object v3

    sget-object v4, Landroidx/camera/core/CameraFilter;->DEFAULT_ID:Landroidx/camera/core/impl/Identifier;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Landroidx/camera/core/CameraFilter;->getIdentifier()Landroidx/camera/core/impl/Identifier;

    move-result-object v2

    invoke-static {v2}, Landroidx/camera/core/impl/ExtendedCameraConfigProviderStore;->getConfigProvider(Ljava/lang/Object;)Landroidx/camera/core/impl/CameraConfigProvider;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, p2, v3}, Landroidx/camera/core/impl/CameraConfigProvider;->getConfig(Landroidx/camera/core/CameraInfo;Landroid/content/Context;)Landroidx/camera/core/impl/CameraConfig;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    const-string p0, "Cannot apply multiple extended camera configs at the same time."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v0

    :cond_3
    if-nez v1, :cond_4

    invoke-static {}, Landroidx/camera/core/impl/CameraConfigs;->defaultConfig()Landroidx/camera/core/impl/CameraConfig;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method private final getCameraOperatingMode()I
    .locals 1

    invoke-direct {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraX:Landroidx/camera/core/CameraX;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/core/CameraX;->getCameraFactory()Landroidx/camera/core/impl/CameraFactory;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraFactory;->getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/concurrent/CameraCoordinator;->getCameraOperatingMode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic getCameraXConfigProvider$camera_lifecycle$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getContext$camera_lifecycle$annotations()V
    .locals 0

    return-void
.end method

.method private final getSelectorsWithSessionFilter(Landroidx/camera/core/SessionConfig;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;)Lb36;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/SessionConfig;",
            "Landroidx/camera/core/CameraSelector;",
            "Landroidx/camera/core/CameraSelector;",
            ")",
            "Lb36<",
            "Landroidx/camera/core/CameraSelector;",
            "Landroidx/camera/core/CameraSelector;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/camera/core/SessionConfig;->getCameraFilter()Landroidx/camera/core/CameraFilter;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lb36;

    invoke-direct {p0, p2, p3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-static {p2}, Landroidx/camera/core/CameraSelector$Builder;->fromSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/camera/core/CameraSelector$Builder;->addCameraFilter(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_1

    invoke-static {p3}, Landroidx/camera/core/CameraSelector$Builder;->fromSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/camera/core/CameraSelector$Builder;->addCameraFilter(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    new-instance p2, Lb36;

    invoke-direct {p2, p1, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static synthetic initAsync$camera_lifecycle$default(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroid/content/Context;Landroidx/camera/core/CameraXConfig;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->initAsync$camera_lifecycle(Landroid/content/Context;Landroidx/camera/core/CameraXConfig;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method private static final initAsync$lambda$0$1(Landroidx/camera/core/CameraX;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/core/CameraX;->getInitializeFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method private static final initAsync$lambda$0$2(Lnl3;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p0
.end method

.method private static final initAsync$lambda$0$3(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/CameraX;Landroid/content/Context;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    invoke-static {p2}, Landroidx/camera/core/impl/utils/ContextUtil;->getPersistentApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->initInternal(Landroidx/camera/core/CameraX;Landroid/content/Context;)V

    return-object p3
.end method

.method private static final initAsync$lambda$0$4(Lnl3;Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Void;

    return-object p0
.end method

.method private final initInternal(Landroidx/camera/core/CameraX;Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraX:Landroidx/camera/core/CameraX;

    iput-object p2, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/CameraX;->getCameraAvailabilityProvider()Landroidx/camera/core/impl/CameraPresenceProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0, p2}, Landroidx/camera/core/impl/CameraPresenceProvider;->addCameraPresenceListener(Landroidx/camera/core/CameraPresenceListener;Ljava/util/concurrent/Executor;)V

    sget-object p0, Lj59;->a:Lj59;
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

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private final isInitialized()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraX:Landroidx/camera/core/CameraX;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final isPreview(Landroidx/camera/core/UseCase;)Z
    .locals 0

    instance-of p0, p1, Landroidx/camera/core/Preview;

    return p0
.end method

.method private final isVideoCapture(Landroidx/camera/core/UseCase;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    sget-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_CAPTURE_TYPE:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object p0

    sget-object p1, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->VIDEO_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final setActiveConcurrentCameraInfos(Ljava/util/List;)V
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

    invoke-direct {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraX:Landroidx/camera/core/CameraX;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/core/CameraX;->getCameraFactory()Landroidx/camera/core/impl/CameraFactory;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraFactory;->getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/camera/core/concurrent/CameraCoordinator;->setActiveConcurrentCameraInfos(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private final setCameraOperatingMode(I)V
    .locals 1

    invoke-direct {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraX:Landroidx/camera/core/CameraX;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/core/CameraX;->getCameraFactory()Landroidx/camera/core/impl/CameraFactory;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraFactory;->getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/camera/core/concurrent/CameraCoordinator;->setCameraOperatingMode(I)V

    :cond_0
    return-void
.end method

.method public static synthetic shutdownAsync$camera_lifecycle$default(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;ZILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->shutdownAsync$camera_lifecycle(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method private static final shutdownAsync$lambda$0(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)V
    .locals 1

    invoke-direct {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->unbindAll()V

    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->lifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->lifecycleCameraKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->removeLifecycleCameras(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private final shutdownInternal()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->initInternal(Landroidx/camera/core/CameraX;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addCameraPresenceListener(Ljava/util/concurrent/Executor;Landroidx/camera/core/CameraPresenceListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraX:Landroidx/camera/core/CameraX;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/core/CameraX;->getCameraAvailabilityProvider()Landroidx/camera/core/impl/CameraPresenceProvider;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->addCameraPresenceListener(Landroidx/camera/core/CameraPresenceListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/SessionConfig;)Landroidx/camera/core/Camera;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    const-string v0, "CX:bindToLifecycle-SessionConfig"

    .line 660
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 661
    :try_start_0
    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraOperatingMode(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 662
    invoke-static {p0, v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$setCameraOperatingMode(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;I)V

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    .line 663
    invoke-static/range {v1 .. v9}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->bindToLifecycleInternal$default(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/SessionConfig;ILjava/lang/Object;)Landroidx/camera/core/Camera;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object p0

    .line 665
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 666
    const-string p1, "bindToLifecycle for single camera is not supported in concurrent camera mode, call unbindAll() first."

    .line 667
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 668
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p0
.end method

.method public bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;)Landroidx/camera/core/Camera;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 648
    const-string v0, "CX:bindToLifecycle-UseCaseGroup"

    .line 649
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 650
    :try_start_0
    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraOperatingMode(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 651
    invoke-static {p0, v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$setCameraOperatingMode(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;I)V

    .line 652
    new-instance v7, Landroidx/camera/core/LegacySessionConfig;

    invoke-direct {v7, p3}, Landroidx/camera/core/LegacySessionConfig;-><init>(Landroidx/camera/core/UseCaseGroup;)V

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 653
    invoke-static/range {v1 .. v9}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->bindToLifecycleInternal$default(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/SessionConfig;ILjava/lang/Object;)Landroidx/camera/core/Camera;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object p0

    .line 655
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 656
    const-string p1, "bindToLifecycle for single camera is not supported in concurrent camera mode, call unbindAll() first."

    .line 657
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 658
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p0
.end method

.method public varargs bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 669
    const-string v0, "CX:bindToLifecycle"

    .line 670
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 671
    :try_start_0
    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraOperatingMode(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 672
    invoke-static {p0, v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$setCameraOperatingMode(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;I)V

    .line 673
    new-instance v1, Landroidx/camera/core/LegacySessionConfig;

    invoke-static {p3}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/camera/core/LegacySessionConfig;-><init>(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;ILjh2;)V

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v7, v1

    move-object v1, p0

    .line 674
    invoke-static/range {v1 .. v9}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->bindToLifecycleInternal$default(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/SessionConfig;ILjava/lang/Object;)Landroidx/camera/core/Camera;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object p0

    .line 676
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 677
    const-string p1, "bindToLifecycle for single camera is not supported in concurrent camera mode, call unbindAll() first"

    .line 678
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 679
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p0
.end method

.method public bindToLifecycle(Ljava/util/List;)Landroidx/camera/core/ConcurrentCamera;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;",
            ">;)",
            "Landroidx/camera/core/ConcurrentCamera;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "CX:bindToLifecycle-Concurrent"

    invoke-static {v2}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v3, :cond_e

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;

    const/4 v5, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/camera/core/CameraSelector;->getLensFacing()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/camera/core/CameraSelector;->getLensFacing()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "Camera is already running, call unbindAll() before binding more cameras."

    if-eqz v7, :cond_5

    :try_start_1
    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraOperatingMode(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)I

    move-result v2

    if-eq v2, v3, :cond_4

    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v6}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/core/UseCaseGroup;->getViewPort()Landroidx/camera/core/ViewPort;

    move-result-object v2

    invoke-virtual {v6}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/core/UseCaseGroup;->getViewPort()Landroidx/camera/core/ViewPort;

    move-result-object v3

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/core/UseCaseGroup;->getEffects()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v6}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/core/UseCaseGroup;->getEffects()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/core/UseCaseGroup;->getViewPort()Landroidx/camera/core/ViewPort;

    move-result-object v3

    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/core/UseCaseGroup;->getEffects()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Landroidx/camera/core/UseCase;

    invoke-virtual {v8}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/camera/core/CameraSelector;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v11, v12}, Landroidx/camera/core/UseCase;->setPhysicalCameraId(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-static {p0, v5}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$setCameraOperatingMode(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;I)V

    new-instance v5, Landroidx/camera/core/LegacySessionConfig;

    invoke-direct {v5, v6, v3, v4}, Landroidx/camera/core/LegacySessionConfig;-><init>(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;)V

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->bindToLifecycleInternal$default(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/SessionConfig;ILjava/lang/Object;)Landroidx/camera/core/Camera;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Two camera configs need to have the same lifecycle owner, view port and effects."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getContext$camera_lifecycle()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.camera.concurrent"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraOperatingMode(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)I

    move-result v1

    if-eq v1, v5, :cond_c

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    move-result-object v1

    invoke-virtual {v6}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v7}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getActiveConcurrentCameraInfos(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getActiveConcurrentCameraInfos(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cameras are already running, call unbindAll() before binding more cameras."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    invoke-static {p0, v3}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$setCameraOperatingMode(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;I)V

    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v7

    invoke-static {v1, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_a

    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase;

    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/UseCase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$isVideoCapture(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/UseCase;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v2}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$isPreview(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/UseCase;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    invoke-static {p0, v1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$isPreview(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v2}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$isVideoCapture(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v3

    move-object v5, v4

    invoke-virtual {v5}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCompositionSettings()Landroidx/camera/core/CompositionSettings;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCompositionSettings()Landroidx/camera/core/CompositionSettings;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v7, v5

    move-object v5, v6

    new-instance v6, Landroidx/camera/core/LegacySessionConfig;

    invoke-virtual {v7}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v7}, Landroidx/camera/core/LegacySessionConfig;-><init>(Landroidx/camera/core/UseCaseGroup;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$bindToLifecycleInternal(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/SessionConfig;)Landroidx/camera/core/Camera;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/camera/core/LegacySessionConfig;

    invoke-virtual {v0}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v0}, Landroidx/camera/core/LegacySessionConfig;-><init>(Landroidx/camera/core/UseCaseGroup;)V

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->bindToLifecycleInternal$default(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/SessionConfig;ILjava/lang/Object;)Landroidx/camera/core/Camera;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    :goto_4
    invoke-static {p0, v10}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$setActiveConcurrentCameraInfos(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Ljava/util/List;)V

    :goto_5
    new-instance v0, Landroidx/camera/core/ConcurrentCamera;

    invoke-direct {v0, v9}, Landroidx/camera/core/ConcurrentCamera;-><init>(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catch_0
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid camera selectors in camera configs."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Concurrent camera is not supported on the device."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Concurrent camera is only supporting two cameras at maximum."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Concurrent camera needs two camera configs."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public final configure$camera_lifecycle(Landroidx/camera/core/CameraXConfig;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CX:configureInstanceInternal"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getLock$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getCameraXConfigProvider$camera_lifecycle()Landroidx/camera/core/CameraXConfig$Provider;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "CameraX has already been configured. To use a different configuration, shutdown() must be called."

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    new-instance v1, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$configure$1$1$1;

    invoke-direct {v1, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$configure$1$1$1;-><init>(Landroidx/camera/core/CameraXConfig;)V

    invoke-virtual {p0, v1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->setCameraXConfigProvider$camera_lifecycle(Landroidx/camera/core/CameraXConfig$Provider;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p0
.end method

.method public getAvailableCameraInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "CX:getAvailableCameraInfos"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraX$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/core/CameraX;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/core/CameraX;->getCameraRepository()Landroidx/camera/core/impl/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p0
.end method

.method public getAvailableConcurrentCameraInfos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "CX:getAvailableConcurrentCameraInfos"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraX$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/core/CameraX;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraX$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/core/CameraX;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraFactory()Landroidx/camera/core/impl/CameraFactory;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraFactory;->getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraX$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/core/CameraX;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraFactory()Landroidx/camera/core/impl/CameraFactory;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraFactory;->getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/concurrent/CameraCoordinator;->getConcurrentCameraSelectors()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/CameraSelector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v4}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p0
.end method

.method public getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CX:getCameraInfo"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraX$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/core/CameraX;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraRepository()Landroidx/camera/core/impl/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraConfig(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/CameraConfig;

    move-result-object p1

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraConfig;->getCompatibilityId()Landroidx/camera/core/impl/Identifier;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroidx/camera/core/CameraIdentifier$Factory;->create(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/Identifier;)Landroidx/camera/core/CameraIdentifier;

    move-result-object v1

    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getLock$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraInfoMap$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Landroidx/camera/core/impl/AdapterCameraInfo;

    invoke-direct {v3, v0, p1}, Landroidx/camera/core/impl/AdapterCameraInfo;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraConfig;)V

    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraInfoMap$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    check-cast v3, Landroidx/camera/core/impl/AdapterCameraInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v3

    :goto_1
    :try_start_3
    monitor-exit v2

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p0
.end method

.method public getCameraInfo(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/SessionConfig;)Landroidx/camera/core/CameraInfo;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    invoke-virtual {p2}, Landroidx/camera/core/SessionConfig;->getCameraFilter()Landroidx/camera/core/CameraFilter;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 101
    invoke-static {p1}, Landroidx/camera/core/CameraSelector$Builder;->fromSelector(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p2}, Landroidx/camera/core/CameraSelector$Builder;->addCameraFilter(Landroidx/camera/core/CameraFilter;)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p2

    .line 103
    invoke-virtual {p2}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    invoke-virtual {p0, p2}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p2

    .line 105
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getCameraXConfigProvider$camera_lifecycle()Landroidx/camera/core/CameraXConfig$Provider;
    .locals 0

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraXConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

    return-object p0
.end method

.method public final getContext$camera_lifecycle()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public hasCamera(Landroidx/camera/core/CameraSelector;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CX:hasCamera"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraX$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/core/CameraX;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/core/CameraX;->getCameraRepository()Landroidx/camera/core/impl/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return p0
.end method

.method public final initAsync$camera_lifecycle(Landroid/content/Context;Landroidx/camera/core/CameraXConfig;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/camera/core/CameraXConfig;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Landroidx/camera/core/impl/utils/ContextUtil;->getDeviceId(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Landroidx/camera/lifecycle/LifecycleCameraRepositories;->getInstance$camera_lifecycle(I)Landroidx/camera/lifecycle/LifecycleCameraRepository;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->lifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraXInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p0, p2}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->configure$camera_lifecycle(Landroidx/camera/core/CameraXConfig;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p2, Landroidx/camera/core/CameraX;

    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraXConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

    invoke-direct {p2, p1, v1}, Landroidx/camera/core/CameraX;-><init>(Landroid/content/Context;Landroidx/camera/core/CameraXConfig$Provider;)V

    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraXShutdownFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/FutureChain;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object v1

    new-instance v2, Li31;

    const/4 v3, 0x2

    invoke-direct {v2, p2, v3}, Li31;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lap4;

    invoke-direct {v3, v2}, Lap4;-><init>(Li31;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroidx/camera/core/impl/utils/futures/FutureChain;->transformAsync(Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object v1

    new-instance v2, Lbp4;

    invoke-direct {v2, p0, p2, p1}, Lbp4;-><init>(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/CameraX;Landroid/content/Context;)V

    new-instance p1, Ldi;

    const/4 p2, 0x4

    invoke-direct {p1, v2, p2}, Ldi;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroidx/camera/core/impl/utils/futures/FutureChain;->transform(Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraXInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance p2, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2;

    invoke-direct {p2, p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$initAsync$1$2;-><init>(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public isBound(Landroidx/camera/core/SessionConfig;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->lifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCameras()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/camera/lifecycle/LifecycleCamera;

    .line 42
    invoke-virtual {v0, p1}, Landroidx/camera/lifecycle/LifecycleCamera;->isBound(Landroidx/camera/core/SessionConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isBound(Landroidx/camera/core/UseCase;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->lifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCameras()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/camera/lifecycle/LifecycleCamera;

    invoke-virtual {v0, p1}, Landroidx/camera/lifecycle/LifecycleCamera;->isBound(Landroidx/camera/core/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isConcurrentCameraModeOn()Z
    .locals 1

    invoke-direct {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->getCameraOperatingMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCamerasAdded(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/camera/core/CameraIdentifier;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onCamerasRemoved(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/camera/core/CameraIdentifier;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/CameraIdentifier;

    iget-object v2, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v5}, Landroidx/camera/core/CameraIdentifier;->getCameraIds()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Landroidx/camera/core/CameraIdentifier;->getCameraIds()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/CameraIdentifier;

    iget-object v3, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraInfoMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public removeCameraPresenceListener(Landroidx/camera/core/CameraPresenceListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraX:Landroidx/camera/core/CameraX;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/core/CameraX;->getCameraAvailabilityProvider()Landroidx/camera/core/impl/CameraPresenceProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->removeCameraPresenceListener(Landroidx/camera/core/CameraPresenceListener;)V

    return-void
.end method

.method public final setCameraXConfigProvider$camera_lifecycle(Landroidx/camera/core/CameraXConfig$Provider;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraXConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

    return-void
.end method

.method public final setContext$camera_lifecycle(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->context:Landroid/content/Context;

    return-void
.end method

.method public final shutdownAsync$camera_lifecycle(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Ltu1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ltu1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Landroidx/camera/core/impl/utils/Threads;->runOnMainSync(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraX:Landroidx/camera/core/CameraX;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraAvailabilityProvider()Landroidx/camera/core/impl/CameraPresenceProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/camera/core/impl/CameraPresenceProvider;->removeCameraPresenceListener(Landroidx/camera/core/CameraPresenceListener;)V

    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraX:Landroidx/camera/core/CameraX;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->shutdown()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_1

    :try_start_0
    iput-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraXConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iput-object v1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraXInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraXShutdownFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->cameraInfoMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->lifecycleCameraKeys:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-direct {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->shutdownInternal()V

    return-object v0

    :goto_2
    monitor-exit v2

    throw p0
.end method

.method public unbind(Landroidx/camera/core/SessionConfig;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    const-string v0, "CX:unbind-sessionConfig"

    .line 66
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 67
    :try_start_0
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 68
    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraOperatingMode(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 69
    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getLifecycleCameraRepository$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/lifecycle/LifecycleCameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getLifecycleCameraKeys$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->unbind(Landroidx/camera/core/SessionConfig;Ljava/util/Set;)V

    .line 70
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    .line 72
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 73
    const-string p1, "Unbind SessionConfig is not supported in concurrent camera mode call unbindAll() first."

    .line 74
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 75
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p0
.end method

.method public varargs unbind([Landroidx/camera/core/UseCase;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CX:unbind"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getCameraOperatingMode(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getLifecycleCameraRepository$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/lifecycle/LifecycleCameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/camera/core/LegacySessionConfig;

    invoke-static {p1}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/camera/core/LegacySessionConfig;-><init>(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;ILjh2;)V

    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getLifecycleCameraKeys$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->unbind(Landroidx/camera/core/SessionConfig;Ljava/util/Set;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unbind UseCase is not supported in concurrent camera mode, call unbindAll() first."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p0
.end method

.method public unbindAll()V
    .locals 1

    const-string v0, "CX:unbindAll"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$setCameraOperatingMode(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;I)V

    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getLifecycleCameraRepository$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Landroidx/camera/lifecycle/LifecycleCameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->access$getLifecycleCameraKeys$p(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->unbindAll(Ljava/util/Set;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p0
.end method

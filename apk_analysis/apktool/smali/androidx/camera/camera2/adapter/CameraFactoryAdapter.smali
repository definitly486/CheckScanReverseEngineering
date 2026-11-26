.class public final Landroidx/camera/camera2/adapter/CameraFactoryAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraFactory;
.implements Landroidx/camera/core/impl/CameraFactory$Interrogator;


# instance fields
.field private final appComponent$delegate:Lcl4;

.field private availableCameraIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final availableCamerasSelector:Landroidx/camera/core/CameraSelector;

.field private final cameraCoordinator:Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

.field private final cameraXConfig:Landroidx/camera/core/CameraXConfig;

.field private final isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lazyCameraPipe:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Landroidx/camera/camera2/pipe/CameraPipe;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final pipeCameraPresenceObservable:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

.field private final streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;


# direct methods
.method public constructor <init>(Lcl4;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/internal/StreamSpecsCalculator;Landroidx/camera/core/CameraXConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcl4<",
            "+",
            "Landroidx/camera/camera2/pipe/CameraPipe;",
            ">;",
            "Landroid/content/Context;",
            "Landroidx/camera/core/impl/CameraThreadConfig;",
            "Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;",
            "Landroidx/camera/core/CameraSelector;",
            "Landroidx/camera/core/internal/StreamSpecsCalculator;",
            "Landroidx/camera/core/CameraXConfig;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->lazyCameraPipe:Lcl4;

    iput-object p5, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->availableCamerasSelector:Landroidx/camera/core/CameraSelector;

    iput-object p6, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

    iput-object p7, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    new-instance p5, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroidx/camera/camera2/pipe/CameraPipe;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/CameraPipe;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraPipe;->cameras()Landroidx/camera/camera2/pipe/CameraDevices;

    move-result-object p1

    invoke-direct {p5, p6, p1}, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;-><init>(Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/camera2/pipe/CameraDevices;)V

    iput-object p5, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->cameraCoordinator:Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    new-instance p1, Lx01;

    invoke-direct {p1, p2, p3, p0, p4}, Lx01;-><init>(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/adapter/CameraFactoryAdapter;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;)V

    new-instance p4, Lfh8;

    invoke-direct {p4, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p4, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->appComponent$delegate:Lcl4;

    sget-object p1, Lox2;->b:Lox2;

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->availableCameraIds:Ljava/util/Set;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->getAppComponent()Landroidx/camera/camera2/config/CameraAppComponent;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/camera2/config/CameraAppComponent;->getCameraDevices()Landroidx/camera/camera2/pipe/CameraDevices;

    move-result-object p1

    const/4 p4, 0x0

    const/4 p5, 0x1

    invoke-static {p1, p4, p5, p4}, Landroidx/camera/camera2/pipe/CameraDevices;->awaitCameraIds-SeavPBo$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    new-instance p6, Ljava/util/ArrayList;

    const/16 p7, 0xa

    invoke-static {p1, p7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result p7

    invoke-direct {p6, p7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {p7}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p6, Lkx2;->b:Lkx2;

    :cond_1
    new-instance p1, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    iget-object p7, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->lazyCameraPipe:Lcl4;

    invoke-interface {p7}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroidx/camera/camera2/pipe/CameraPipe;

    invoke-interface {p7}, Landroidx/camera/camera2/pipe/CameraPipe;->cameras()Landroidx/camera/camera2/pipe/CameraDevices;

    move-result-object p7

    invoke-static {p7, p4, p5, p4}, Landroidx/camera/camera2/pipe/CameraDevices;->cameraIdsFlow-SeavPBo$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;ILjava/lang/Object;)Lhd3;

    move-result-object p4

    invoke-virtual {p3}, Landroidx/camera/core/impl/CameraThreadConfig;->getCameraExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Laq5;->x(Ljava/util/concurrent/Executor;)Lr22;

    move-result-object p3

    invoke-static {p3}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p3

    invoke-direct {p1, p4, p3, p6, p2}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;-><init>(Lhd3;Ly22;Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->pipeCameraPresenceObservable:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    invoke-virtual {p0, p6}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->onCameraIdsUpdated(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/adapter/CameraFactoryAdapter;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;)Landroidx/camera/camera2/config/CameraAppComponent;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->appComponent_delegate$lambda$0(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/adapter/CameraFactoryAdapter;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;)Landroidx/camera/camera2/config/CameraAppComponent;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAvailableCameraIds$p(Landroidx/camera/camera2/adapter/CameraFactoryAdapter;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->availableCameraIds:Ljava/util/Set;

    return-object p0
.end method

.method private static final appComponent_delegate$lambda$0(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/adapter/CameraFactoryAdapter;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;)Landroidx/camera/camera2/config/CameraAppComponent;
    .locals 11

    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "CameraFactoryAdapter#appComponent"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;-><init>()V

    sget-object v1, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v1

    invoke-static {}, Landroidx/camera/camera2/config/DaggerCameraAppComponent;->builder()Landroidx/camera/camera2/config/CameraAppComponent$Builder;

    move-result-object v3

    new-instance v4, Landroidx/camera/camera2/config/CameraAppConfig;

    iget-object v5, p2, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->lazyCameraPipe:Lcl4;

    invoke-interface {v5}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroidx/camera/camera2/pipe/CameraPipe;

    iget-object v9, p2, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->cameraCoordinator:Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    iget-object v10, p2, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    invoke-direct/range {v4 .. v10}, Landroidx/camera/camera2/config/CameraAppConfig;-><init>(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/core/CameraXConfig;)V

    invoke-interface {v3, v4}, Landroidx/camera/camera2/config/CameraAppComponent$Builder;->config(Landroidx/camera/camera2/config/CameraAppConfig;)Landroidx/camera/camera2/config/CameraAppComponent$Builder;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/config/CameraAppComponent$Builder;->build()Landroidx/camera/camera2/config/CameraAppComponent;

    move-result-object p0

    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide p2

    sub-long/2addr p2, v1

    invoke-static {p2, p3}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide p2

    long-to-double p2, p2

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "%.3f ms"

    invoke-static {p3, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Created CameraFactoryAdapter in "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0
.end method

.method private final calculateAvailableCameraIds(Ljava/util/List;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/internal/CameraSelectionOptimizer;->Companion:Landroidx/camera/camera2/internal/CameraSelectionOptimizer$Companion;

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->getAppComponent()Landroidx/camera/camera2/config/CameraAppComponent;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->availableCamerasSelector:Landroidx/camera/core/CameraSelector;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

    invoke-virtual {v0, v1, v2, p1, v3}, Landroidx/camera/camera2/internal/CameraSelectionOptimizer$Companion;->getSelectedAvailableCameraIds(Landroidx/camera/camera2/config/CameraAppComponent;Landroidx/camera/core/CameraSelector;Ljava/util/List;Landroidx/camera/core/internal/StreamSpecsCalculator;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->getAppComponent()Landroidx/camera/camera2/config/CameraAppComponent;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/config/CameraAppComponent;->getCameraDevices()Landroidx/camera/camera2/pipe/CameraDevices;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/camera/camera2/internal/CameraCompatibilityFilter;->getBackwardCompatibleCameraIds(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private final getAppComponent()Landroidx/camera/camera2/config/CameraAppComponent;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->appComponent$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/config/CameraAppComponent;

    return-object p0
.end method


# virtual methods
.method public getAvailableCameraIds(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0

    .line 32
    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->calculateAvailableCameraIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableCameraIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lox2;->b:Lox2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->availableCameraIds:Ljava/util/Set;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v1, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public getCamera(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->getAppComponent()Landroidx/camera/camera2/config/CameraAppComponent;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/config/CameraAppComponent;->cameraBuilder()Landroidx/camera/camera2/config/CameraComponent$Builder;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/config/CameraConfig;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroidx/camera/camera2/config/CameraConfig;-><init>(Ljava/lang/String;Ljh2;)V

    invoke-interface {v0, v1}, Landroidx/camera/camera2/config/CameraComponent$Builder;->config(Landroidx/camera/camera2/config/CameraConfig;)Landroidx/camera/camera2/config/CameraComponent$Builder;

    move-result-object p1

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/config/CameraComponent$Builder;->streamSpecsCalculator(Landroidx/camera/core/internal/StreamSpecsCalculator;)Landroidx/camera/camera2/config/CameraComponent$Builder;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/config/CameraComponent$Builder;->build()Landroidx/camera/camera2/config/CameraComponent;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/config/CameraComponent;->getCameraInternal()Landroidx/camera/core/impl/CameraInternal;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroidx/camera/core/impl/CameraUpdateException;

    const-string p1, "CameraFactory has been shut down."

    invoke-direct {p0, p1}, Landroidx/camera/core/impl/CameraUpdateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->cameraCoordinator:Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    return-object p0
.end method

.method public getCameraManager()Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->getAppComponent()Landroidx/camera/camera2/config/CameraAppComponent;

    move-result-object p0

    return-object p0
.end method

.method public getCameraPresenceSource()Landroidx/camera/core/impl/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/impl/Observable<",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraIdentifier;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->pipeCameraPresenceObservable:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    return-object p0
.end method

.method public onCameraIdsUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Updated available camera list: "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->calculateAvailableCameraIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->availableCameraIds:Ljava/util/Set;

    invoke-static {v2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_2
    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v2, "CXCP"

    invoke-static {v2}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->access$getAvailableCameraIds$p(Landroidx/camera/camera2/adapter/CameraFactoryAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->availableCameraIds:Ljava/util/Set;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->cameraCoordinator:Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    invoke-virtual {v0}, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->shutdown()V

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->pipeCameraPresenceObservable:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    invoke-virtual {v0}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->stopMonitoring()V

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->lazyCameraPipe:Lcl4;

    invoke-interface {v0}, Lcl4;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->lazyCameraPipe:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraPipe;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraPipe;->shutdown()V

    :cond_1
    :goto_0
    return-void
.end method

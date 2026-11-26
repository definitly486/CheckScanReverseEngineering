.class public final Landroidx/camera/camera2/impl/UseCaseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/UseCaseManager$RunningUseCasesChangeListener;
    }
.end annotation


# instance fields
.field private volatile _activeComponent:Landroidx/camera/camera2/config/UseCaseCameraComponent;

.field private activeResumeEnabled:Z

.field private final activeUseCases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation
.end field

.field private final allControls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/impl/UseCaseCameraControl;",
            ">;"
        }
    .end annotation
.end field

.field private final attachedUseCases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation
.end field

.field private final builder:Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;

.field private final camera2CameraControl:Landroidx/camera/camera2/interop/Camera2CameraControl;

.field private final cameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

.field private final cameraGraphConfigProvider:Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

.field private final cameraInfoInternal:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraInternal:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Landroidx/camera/core/impl/CameraInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private final cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

.field private final cameraXConfig:Landroidx/camera/core/CameraXConfig;

.field private final closingCameraJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmb4;",
            ">;"
        }
    .end annotation
.end field

.field private final controls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/impl/UseCaseCameraControl;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultCameraGraphFactory:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
            ">;"
        }
    .end annotation
.end field

.field private deferredUseCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

.field private final dynamicRangeResolver:Landroidx/camera/camera2/internal/DynamicRangeResolver;

.field private final encoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

.field private isPrimary:Z

.field private final lock:Ljava/lang/Object;

.field private final lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

.field private final meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

.field private final pendingUseCasesToNotifyCameraControlReady:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation
.end field

.field private sessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

.field private shouldCreateCameraGraphImmediately:Z

.field private final supportedSurfaceCombination:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;

.field private final useCaseThreads:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;"
        }
    .end annotation
.end field

.field private final zslControl:Landroidx/camera/camera2/adapter/ZslControl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/impl/LowLightBoostControl;Ljava/util/Set;Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/camera/camera2/adapter/CameraStateAdapter;Lws6;Lws6;Lws6;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/core/CameraXConfig;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroid/content/Context;Landroidx/camera/camera2/impl/DisplayInfoManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraPipe;",
            "Landroidx/camera/core/concurrent/CameraCoordinator;",
            "Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;",
            "Landroidx/camera/camera2/adapter/ZslControl;",
            "Landroidx/camera/camera2/impl/LowLightBoostControl;",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/impl/UseCaseCameraControl;",
            ">;",
            "Landroidx/camera/camera2/interop/Camera2CameraControl;",
            "Landroidx/camera/camera2/adapter/CameraStateAdapter;",
            "Lws6<",
            "Landroidx/camera/core/impl/CameraInternal;",
            ">;",
            "Lws6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lws6<",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            ">;",
            "Landroidx/camera/core/impl/EncoderProfilesProvider;",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            "Landroidx/camera/core/CameraXConfig;",
            "Landroidx/camera/camera2/impl/CameraGraphConfigProvider;",
            "Landroid/content/Context;",
            "Landroidx/camera/camera2/impl/DisplayInfoManager;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseManager;->builder:Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;

    iput-object p4, p0, Landroidx/camera/camera2/impl/UseCaseManager;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    iput-object p5, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

    iput-object p6, p0, Landroidx/camera/camera2/impl/UseCaseManager;->controls:Ljava/util/Set;

    iput-object p7, p0, Landroidx/camera/camera2/impl/UseCaseManager;->camera2CameraControl:Landroidx/camera/camera2/interop/Camera2CameraControl;

    iput-object p8, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    iput-object p9, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraInternal:Lws6;

    iput-object p10, p0, Landroidx/camera/camera2/impl/UseCaseManager;->useCaseThreads:Lws6;

    iput-object p11, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraInfoInternal:Lws6;

    iput-object p12, p0, Landroidx/camera/camera2/impl/UseCaseManager;->encoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    iput-object p13, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    move-object p1, p14

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    move-object p1, p15

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraGraphConfigProvider:Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeUseCases:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->shouldCreateCameraGraphImmediately:Z

    iput-boolean p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->isPrimary:Z

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->pendingUseCasesToNotifyCameraControlReady:Ljava/util/Set;

    new-instance p1, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    move-object/from16 p2, p17

    invoke-direct {p1, p13, p2}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;-><init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/DisplayInfoManager;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->build()Landroidx/camera/camera2/impl/MeteringRepeating;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    new-instance p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;

    invoke-interface {p13}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p2

    sget-object p3, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;->NO_OP_FEATURE_COMBINATION_QUERY:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;

    move-object/from16 p4, p16

    invoke-direct {p1, p4, p2, p12, p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;-><init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;)V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->supportedSurfaceCombination:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;

    new-instance p1, Landroidx/camera/camera2/internal/DynamicRangeResolver;

    invoke-interface {p13}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/camera/camera2/internal/DynamicRangeResolver;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->dynamicRangeResolver:Landroidx/camera/camera2/internal/DynamicRangeResolver;

    new-instance p1, Lca2;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lca2;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->defaultCameraGraphFactory:Lnl3;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->closingCameraJobs:Ljava/util/List;

    check-cast p6, Ljava/lang/Iterable;

    invoke-static {p6}, Lqn1;->x0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->allControls:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->resumeDeferredComponentCreation$lambda$0$0(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMeteringRepeating$p(Landroidx/camera/camera2/impl/UseCaseManager;)Landroidx/camera/camera2/impl/MeteringRepeating;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    return-object p0
.end method

.method public static final synthetic access$getPendingUseCasesToNotifyCameraControlReady$p(Landroidx/camera/camera2/impl/UseCaseManager;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->pendingUseCasesToNotifyCameraControlReady:Ljava/util/Set;

    return-object p0
.end method

.method private final addOrRemoveRepeatingUseCase(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->shouldAddRepeatingUseCase(Ljava/util/Set;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->addRepeatingUseCase()V

    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->shouldRemoveRepeatingUseCase(Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->removeRepeatingUseCase()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final addRepeatingUseCase()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraInternal:Lws6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/CameraInternal;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroidx/camera/core/UseCase;->bindToCamera(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/MeteringRepeating;->setupSession()V

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->attach(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->activate(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public static synthetic b(Landroidx/camera/camera2/impl/UseCaseManager;Lmb4;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseManager;->closeCurrentUseCases$lambda$0$0$0(Landroidx/camera/camera2/impl/UseCaseManager;Lmb4;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final beginComponentCreation(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->builder:Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;->config(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;->build()Landroidx/camera/camera2/config/UseCaseCameraComponent;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->_activeComponent:Landroidx/camera/camera2/config/UseCaseCameraComponent;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCamera()Landroidx/camera/camera2/impl/UseCaseCamera;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroidx/camera/camera2/impl/UseCaseCamera;->start()V

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->allControls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraControl;

    invoke-interface {p1}, Landroidx/camera/camera2/impl/UseCaseCamera;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/camera/camera2/impl/UseCaseCameraControl;->setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeResumeEnabled:Z

    invoke-interface {p1, v0}, Landroidx/camera/camera2/impl/UseCaseCamera;->setActiveResumeMode(Z)V

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getRunningUseCases()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->updateRunningUseCases(Ljava/util/Set;)V

    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Notifying "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->access$getPendingUseCasesToNotifyCameraControlReady$p(Landroidx/camera/camera2/impl/UseCaseManager;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " camera control ready"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->pendingUseCasesToNotifyCameraControlReady:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/UseCase;

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->onCameraControlReady()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->pendingUseCasesToNotifyCameraControlReady:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void

    :cond_3
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Landroidx/camera/camera2/impl/UseCaseManager;Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->defaultCameraGraphFactory$lambda$0(Landroidx/camera/camera2/impl/UseCaseManager;Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    return-object p0
.end method

.method private final closeCurrentUseCases()V
    .locals 3

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCamera()Landroidx/camera/camera2/impl/UseCaseCamera;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->_activeComponent:Landroidx/camera/camera2/config/UseCaseCameraComponent;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraInfoInternal:Lws6;

    invoke-interface {v2}, Lws6;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/CameraInfo;

    invoke-interface {v1, v2}, Landroidx/camera/core/concurrent/CameraCoordinator;->removePendingCameraInfo(Landroidx/camera/core/CameraInfo;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/camera2/impl/UseCaseCamera;->close()Lmb4;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->closingCameraJobs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ln99;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, v0}, Ln99;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lmb4;->g(Lnl3;)Lhp2;

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getSessionProcessor$camera_camera2()Landroidx/camera/core/impl/SessionProcessor;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/camera/core/impl/SessionProcessor;->deInitSession()V

    :cond_1
    return-void
.end method

.method private static final closeCurrentUseCases$lambda$0$0$0(Landroidx/camera/camera2/impl/UseCaseManager;Lmb4;Ljava/lang/Throwable;)Lj59;
    .locals 0

    iget-object p2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->closingCameraJobs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method private final createMeteringRepeatingSurfaceConfig()Landroidx/camera/core/impl/SurfaceConfig;
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->supportedSurfaceCombination:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCameraMode()I

    move-result v1

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    invoke-virtual {v2}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v2

    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    invoke-virtual {v3}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/impl/UseCaseConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createUseCaseCameraConfig$camera_camera2$default(Landroidx/camera/camera2/impl/UseCaseManager;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;ZILjava/lang/Object;)Landroidx/camera/camera2/config/UseCaseCameraConfig;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/UseCaseManager;->createUseCaseCameraConfig$camera_camera2(Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Z)Landroidx/camera/camera2/config/UseCaseCameraConfig;

    move-result-object p0

    return-object p0
.end method

.method private static final defaultCameraGraphFactory$lambda$0(Landroidx/camera/camera2/impl/UseCaseManager;Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraPipe;->createCameraGraph(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    return-object p0
.end method

.method private final getAttachedSurfaceInfoList(Ljava/util/Collection;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getAttachedStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    move-result-object v2

    if-eqz v4, :cond_2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseManager;->supportedSurfaceCombination:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCameraMode()I

    move-result v5

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v6

    invoke-interface {v6}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    move-result v6

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v7

    invoke-interface {v7}, Landroidx/camera/core/impl/UseCaseConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v5, v6, v4, v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v5

    invoke-interface {v5}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    move-result v5

    move-object v6, v2

    move-object v2, v3

    move v3, v5

    invoke-virtual {v6}, Landroidx/camera/core/impl/StreamSpec;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    move-result-object v5

    move-object v7, v6

    invoke-direct {p0, v1}, Landroidx/camera/camera2/impl/UseCaseManager;->getCaptureTypes(Landroidx/camera/core/UseCase;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v7}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    invoke-virtual {v7}, Landroidx/camera/core/impl/StreamSpec;->getSessionType()I

    move-result v9

    invoke-virtual {v7}, Landroidx/camera/core/impl/StreamSpec;->getExpectedFrameRateRange()Landroid/util/Range;

    move-result-object v7

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v10

    invoke-interface {v10}, Landroidx/camera/core/impl/UseCaseConfig;->isStrictFrameRateRequired()Z

    move-result v10

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v1

    invoke-interface {v1, v4}, Landroidx/camera/core/impl/UseCaseConfig;->getCustomMaxFrameRate(Landroid/util/Size;)I

    move-result v11

    move v12, v9

    move-object v9, v7

    move-object v7, v8

    move v8, v12

    invoke-static/range {v2 .. v11}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->create(Landroidx/camera/core/impl/SurfaceConfig;ILandroid/util/Size;Landroidx/camera/core/DynamicRange;Ljava/util/List;Landroidx/camera/core/impl/Config;ILandroid/util/Range;ZI)Landroidx/camera/core/impl/AttachedSurfaceInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid surface resolution or stream spec is found."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    return-object v0
.end method

.method private final getCameraMode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

    invoke-interface {p0}, Landroidx/camera/core/concurrent/CameraCoordinator;->getCameraOperatingMode()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_0
    :try_start_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final getCaptureTypes(Landroidx/camera/core/UseCase;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/UseCase;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;",
            ">;"
        }
    .end annotation

    instance-of p0, p1, Landroidx/camera/core/streamsharing/StreamSharing;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/camera/core/streamsharing/StreamSharing;

    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/camera/core/streamsharing/StreamSharingConfig;

    invoke-virtual {p0}, Landroidx/camera/core/streamsharing/StreamSharingConfig;->getCaptureTypes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object p0

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getRequiredMaxBitDepth(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->dynamicRangeResolver:Landroidx/camera/camera2/internal/DynamicRangeResolver;

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->resolveAndValidateDynamicRanges(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/DynamicRange;

    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    return v0

    :cond_1
    const/16 p0, 0x8

    return p0
.end method

.method private final getRunningUseCases()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeUseCases:Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lqn1;->X(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0
.end method

.method private final getSessionSurfacesConfigs(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/DeferrableSurface;

    iget-object v4, p0, Landroidx/camera/camera2/impl/UseCaseManager;->supportedSurfaceCombination:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCameraMode()I

    move-result v5

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v6

    invoke-interface {v6}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    move-result v6

    invoke-virtual {v3}, Landroidx/camera/core/impl/DeferrableSurface;->getPrescribedSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v7

    invoke-interface {v7}, Landroidx/camera/core/impl/UseCaseConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v5, v6, v3, v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final isMeteringCombinationSupported(Ljava/util/Collection;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    invoke-virtual {v1}, Landroidx/camera/camera2/impl/MeteringRepeating;->setupSession()V

    :cond_0
    invoke-direct/range {p0 .. p1}, Landroidx/camera/camera2/impl/UseCaseManager;->getAttachedSurfaceInfoList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-direct/range {p0 .. p1}, Landroidx/camera/camera2/impl/UseCaseManager;->getSessionSurfacesConfigs(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Landroidx/camera/camera2/impl/UseCaseManager;->supportedSurfaceCombination:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;

    new-instance v4, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCameraMode()I

    move-result v5

    invoke-direct {v0, v1}, Landroidx/camera/camera2/impl/UseCaseManager;->getRequiredMaxBitDepth(Ljava/util/List;)I

    move-result v6

    invoke-static/range {p1 .. p1}, Landroidx/camera/core/impl/utils/UseCaseUtil;->containsVideoCapture(Ljava/util/Collection;)Z

    move-result v7

    const/4 v1, 0x1

    const/4 v8, 0x0

    move-object/from16 v9, p1

    invoke-static {v9, v8, v1, v8}, Landroidx/camera/core/impl/utils/UseCaseUtil;->getVideoStabilization$default(Ljava/util/Collection;Lnl3;ILjava/lang/Object;)Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object v8

    invoke-direct/range {p0 .. p1}, Landroidx/camera/camera2/impl/UseCaseManager;->isUltraHdrOn(Ljava/util/Collection;)Z

    move-result v9

    const/16 v15, 0x3e0

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v4 .. v16}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;-><init>(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;ZILjh2;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {v0}, Landroidx/camera/camera2/impl/UseCaseManager;->createMeteringRepeatingSurfaceConfig()Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lj59;->a:Lj59;

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->checkSupported$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Z

    move-result v1

    sget-object v3, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v3, "CXCP"

    invoke-static {v3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Combination of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " + "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroidx/camera/camera2/impl/UseCaseManager;->access$getMeteringRepeating$p(Landroidx/camera/camera2/impl/UseCaseManager;)Landroidx/camera/camera2/impl/MeteringRepeating;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is supported: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method private final isMeteringRepeatingRequired(Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    invoke-virtual {v0}, Landroidx/camera/core/CameraXConfig;->isRepeatingStreamForced()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/UseCase;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/camera/core/UseCase;

    iget-object v4, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->shouldForceRepeatingStream(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->isMeteringCombinationSupported(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_1
    return v1
.end method

.method private final isUltraHdrOn(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)Z"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/camera/core/ImageCapture;

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/ImageCapture;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    move-result p0

    const/16 v0, 0x1005

    if-ne p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return p1
.end method

.method private final refreshAttachedUseCases(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->closeCurrentUseCases()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->allControls:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraControl;

    invoke-interface {p1, v1}, Landroidx/camera/camera2/impl/UseCaseCameraControl;->setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V

    invoke-interface {p1}, Landroidx/camera/camera2/impl/UseCaseCameraControl;->reset()V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->shouldCreateCameraGraphImmediately:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->allControls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/impl/UseCaseCameraControl;

    invoke-interface {v2, v1}, Landroidx/camera/camera2/impl/UseCaseCameraControl;->setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-direct {v0, v2}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;-><init>(Landroidx/camera/camera2/adapter/CameraStateAdapter;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getSessionProcessor$camera_camera2()Landroidx/camera/core/impl/SessionProcessor;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroidx/camera/core/impl/SessionProcessor;->getImplementationType()Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    move v3, v4

    :cond_4
    :goto_2
    new-instance v2, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    check-cast p1, Ljava/util/Collection;

    iget-boolean v4, p0, Landroidx/camera/camera2/impl/UseCaseManager;->isPrimary:Z

    invoke-direct {v2, p1, v4}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;-><init>(Ljava/util/Collection;Z)V

    if-eqz v3, :cond_6

    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v4, "Setting up UseCaseManager with OperatingMode.EXTENSION"

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getSessionProcessor$camera_camera2()Landroidx/camera/core/impl/SessionProcessor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraInfoInternal:Lws6;

    invoke-interface {v4}, Lws6;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/CameraInfo;

    invoke-interface {p1, v4, v1}, Landroidx/camera/core/impl/SessionProcessor;->initSession(Landroidx/camera/core/CameraInfo;Landroidx/camera/core/impl/OutputSurfaceConfiguration;)Landroidx/camera/core/impl/SessionConfig;

    :cond_6
    invoke-virtual {p0, v2, v0, v3}, Landroidx/camera/camera2/impl/UseCaseManager;->createUseCaseCameraConfig$camera_camera2(Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Z)Landroidx/camera/camera2/config/UseCaseCameraConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->tryResumeUseCaseManager(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V

    return-void
.end method

.method private final refreshRunningUseCases()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getRunningUseCases()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->shouldAddRepeatingUseCase(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->addRepeatingUseCase()V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->shouldRemoveRepeatingUseCase(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->removeRepeatingUseCase()V

    return-void

    :cond_2
    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->updateRunningUseCases(Ljava/util/Set;)V

    return-void
.end method

.method private final removeRepeatingUseCase()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->deactivate(Landroidx/camera/core/UseCase;)V

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->detach(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraInternal:Lws6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/CameraInternal;

    invoke-virtual {v0, p0}, Landroidx/camera/core/UseCase;->unbindFromCamera(Landroidx/camera/core/impl/CameraInternal;)V

    return-void
.end method

.method private static final resumeDeferredComponentCreation$lambda$0$0(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private final shouldAddRepeatingUseCase(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    invoke-virtual {v0}, Landroidx/camera/core/CameraXConfig;->isRepeatingStreamForced()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->isMeteringRepeatingRequired(Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private final shouldForceRepeatingStream(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    new-instance p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    invoke-direct {p0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->add(Landroidx/camera/core/impl/SessionConfig;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/core/impl/SessionConfig;->getRepeatingCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getSurfaces()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    check-cast p0, Ljava/lang/Iterable;

    instance-of v1, p0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move p0, v2

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v1}, Landroidx/camera/core/impl/DeferrableSurface;->getContainerClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Landroid/media/MediaCodec;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move p0, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v2
.end method

.method private final shouldRemoveRepeatingUseCase(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->isMeteringRepeatingRequired(Ljava/util/Set;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final tryResumeUseCaseManager(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->shouldCreateCameraGraphImmediately:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->deferredUseCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraInfoInternal:Lws6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/CameraInfo;

    invoke-interface {p1, p0}, Landroidx/camera/core/concurrent/CameraCoordinator;->addPendingCameraInfo(Landroidx/camera/core/CameraInfo;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->beginComponentCreation(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V

    return-void
.end method

.method private final updateRunningUseCases(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCamera()Landroidx/camera/camera2/impl/UseCaseCamera;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->isPrimary:Z

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Landroidx/camera/camera2/impl/UseCaseCamera;->updateRepeatingRequestAsync(ZLjava/util/Collection;)Lmb4;

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->allControls:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraControl;

    instance-of v1, v0, Landroidx/camera/camera2/impl/UseCaseManager$RunningUseCasesChangeListener;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/camera/camera2/impl/UseCaseManager$RunningUseCasesChangeListener;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/impl/UseCaseManager$RunningUseCasesChangeListener;->onRunningUseCasesChanged(Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final updateZslDisabledByUseCaseConfigStatus()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase;

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v1

    invoke-interface {v1, v2}, Landroidx/camera/core/impl/UseCaseConfig;->isZslDisabled(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    invoke-interface {p0, v2}, Landroidx/camera/camera2/adapter/ZslControl;->setZslDisabledByUserCaseConfig(Z)V

    return-void
.end method


# virtual methods
.method public final activate(Landroidx/camera/core/UseCase;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeUseCases:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->refreshRunningUseCases()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
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

.method public final attach(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Attaching "

    const-string v1, "Attach [] from "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (Ignored)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v1, "CXCP"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/camera/core/UseCase;

    iget-object v5, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/UseCase;

    invoke-virtual {v3}, Landroidx/camera/core/UseCase;->onSessionStart()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getRunningUseCases()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->addOrRemoveRepeatingUseCase(Ljava/util/Set;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->updateZslDisabledByUseCaseConfigStatus()V

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->onSessionConfigChanged(Ljava/util/List;)V

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->refreshAttachedUseCases(Ljava/util/Set;)V

    :cond_6
    iget-boolean p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->shouldCreateCameraGraphImmediately:Z

    if-nez p1, :cond_7

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->pendingUseCasesToNotifyCameraControlReady:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/UseCase;

    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->onCameraControlReady()V

    goto :goto_3

    :cond_8
    :goto_4
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :goto_5
    monitor-exit v2

    throw p0
.end method

.method public final close(Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->closeCurrentUseCases()V

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    invoke-virtual {v1}, Landroidx/camera/camera2/impl/MeteringRepeating;->onUnbind()V

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->closingCameraJobs:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Loz;->b(Ljava/util/Collection;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final createUseCaseCameraConfig$camera_camera2(Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Z)Landroidx/camera/camera2/config/UseCaseCameraConfig;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->Companion:Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraGraphConfigProvider:Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseManager;->defaultCameraGraphFactory:Lnl3;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getSessionProcessor$camera_camera2()Landroidx/camera/core/impl/SessionProcessor;

    move-result-object v5

    move-object v1, p1

    move-object v4, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;->create(Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Lnl3;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/core/impl/SessionProcessor;Z)Landroidx/camera/camera2/config/UseCaseCameraConfig;

    move-result-object p0

    return-object p0
.end method

.method public final deactivate(Landroidx/camera/core/UseCase;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeUseCases:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->refreshRunningUseCases()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
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

.method public final detach(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Detaching "

    const-string v1, "Detaching [] from "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (Ignored)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v1, "CXCP"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeUseCases:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/UseCase;

    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->onSessionStop()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getRunningUseCases()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->addOrRemoveRepeatingUseCase(Ljava/util/Set;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    monitor-exit v2

    return-void

    :cond_5
    :try_start_2
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/camera/camera2/adapter/ZslControl;->setZslDisabledByUserCaseConfig(Z)V

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

    sget-object v1, Lkx2;->b:Lkx2;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->onSessionConfigChanged(Ljava/util/List;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->updateZslDisabledByUseCaseConfigStatus()V

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->onSessionConfigChanged(Ljava/util/List;)V

    :goto_2
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->refreshAttachedUseCases(Ljava/util/Set;)V

    :cond_7
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->pendingUseCasesToNotifyCameraControlReady:Ljava/util/Set;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    sget-object p0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2

    throw p0
.end method

.method public final getCamera()Landroidx/camera/camera2/impl/UseCaseCamera;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->_activeComponent:Landroidx/camera/camera2/config/UseCaseCameraComponent;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/camera/camera2/config/UseCaseCameraComponent;->getUseCaseCamera()Landroidx/camera/camera2/impl/UseCaseCamera;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDeferredCameraGraphConfig$camera_camera2()Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->deferredUseCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig;->getCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final getRunningUseCasesForTest()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getRunningUseCases()Ljava/util/Set;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getSessionProcessor$camera_camera2()Landroidx/camera/core/impl/SessionProcessor;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->sessionProcessor:Landroidx/camera/core/impl/SessionProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getUseCaseGraphContext()Landroidx/camera/camera2/config/UseCaseGraphContext;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->_activeComponent:Landroidx/camera/camera2/config/UseCaseCameraComponent;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/camera/camera2/config/UseCaseCameraComponent;->getUseCaseGraphContext()Landroidx/camera/camera2/config/UseCaseGraphContext;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final reset(Landroidx/camera/core/UseCase;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->refreshAttachedUseCases(Ljava/util/Set;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
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

.method public final resumeDeferredComponentCreation$camera_camera2(Landroidx/camera/camera2/pipe/CameraGraph;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->deferredUseCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    if-eqz v2, :cond_0

    new-instance v3, Lu;

    const/4 v0, 0x4

    invoke-direct {v3, p1, v0}, Lu;-><init>(Ljava/lang/Object;I)V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Landroidx/camera/camera2/config/UseCaseCameraConfig;->copy$default(Landroidx/camera/camera2/config/UseCaseCameraConfig;Lnl3;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/SessionProcessor;Lcl4;ILjava/lang/Object;)Landroidx/camera/camera2/config/UseCaseCameraConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->beginComponentCreation(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p0, "Required value was null."

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    throw p0
.end method

.method public final setActiveResumeMode(Z)Lj59;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeResumeEnabled:Z

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCamera()Landroidx/camera/camera2/impl/UseCaseCamera;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCamera;->setActiveResumeMode(Z)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final setCameraGraphCreationMode$camera_camera2(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->shouldCreateCameraGraphImmediately:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->deferredUseCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
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

.method public final setPrimary(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->isPrimary:Z

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

.method public final setSessionProcessor$camera_camera2(Landroidx/camera/core/impl/SessionProcessor;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->sessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

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

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UseCaseManager<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraGraphConfigProvider:Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroidx/camera/core/UseCase;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->refreshRunningUseCases()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
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

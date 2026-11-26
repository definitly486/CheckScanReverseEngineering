.class public final Landroidx/camera/camera2/impl/UseCaseManager_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxs6;"
    }
.end annotation


# instance fields
.field private final builderProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final camera2CameraControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/interop/Camera2CameraControl;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraCoordinatorProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/core/concurrent/CameraCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraGraphConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraGraphConfigProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraInfoInternalProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraInternalProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/core/impl/CameraInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraPipeProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraPipe;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraPropertiesProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraStateAdapterProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/CameraStateAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraXConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/core/CameraXConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/impl/UseCaseCameraControl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final displayInfoManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/DisplayInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field private final encoderProfilesProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/core/impl/EncoderProfilesProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final lowLightBoostControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/LowLightBoostControl;",
            ">;"
        }
    .end annotation
.end field

.field private final useCaseThreadsProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;"
        }
    .end annotation
.end field

.field private final zslControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/ZslControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraPipe;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/concurrent/CameraCoordinator;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/ZslControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/LowLightBoostControl;",
            ">;",
            "Lxs6<",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/impl/UseCaseCameraControl;",
            ">;>;",
            "Lxs6<",
            "Landroidx/camera/camera2/interop/Camera2CameraControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/CameraStateAdapter;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/impl/CameraInternal;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/impl/EncoderProfilesProvider;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/CameraXConfig;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraGraphConfigProvider;",
            ">;",
            "Lxs6<",
            "Landroid/content/Context;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/DisplayInfoManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->cameraPipeProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->cameraCoordinatorProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->builderProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->zslControlProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->lowLightBoostControlProvider:Lxs6;

    iput-object p6, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->controlsProvider:Lxs6;

    iput-object p7, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->camera2CameraControlProvider:Lxs6;

    iput-object p8, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->cameraStateAdapterProvider:Lxs6;

    iput-object p9, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->cameraInternalProvider:Lxs6;

    iput-object p10, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->useCaseThreadsProvider:Lxs6;

    iput-object p11, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->cameraInfoInternalProvider:Lxs6;

    iput-object p12, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->encoderProfilesProvider:Lxs6;

    iput-object p13, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->cameraPropertiesProvider:Lxs6;

    iput-object p14, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->cameraXConfigProvider:Lxs6;

    iput-object p15, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->cameraGraphConfigProvider:Lxs6;

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->contextProvider:Lxs6;

    move-object/from16 p1, p17

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->displayInfoManagerProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/impl/UseCaseManager_Factory;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraPipe;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/concurrent/CameraCoordinator;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/ZslControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/LowLightBoostControl;",
            ">;",
            "Lxs6<",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/impl/UseCaseCameraControl;",
            ">;>;",
            "Lxs6<",
            "Landroidx/camera/camera2/interop/Camera2CameraControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/CameraStateAdapter;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/impl/CameraInternal;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/impl/EncoderProfilesProvider;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/CameraXConfig;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraGraphConfigProvider;",
            ">;",
            "Lxs6<",
            "Landroid/content/Context;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/DisplayInfoManager;",
            ">;)",
            "Landroidx/camera/camera2/impl/UseCaseManager_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v0 .. v17}, Landroidx/camera/camera2/impl/UseCaseManager_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/impl/LowLightBoostControl;Ljava/util/Set;Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/camera/camera2/adapter/CameraStateAdapter;Lws6;Lws6;Lws6;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/core/CameraXConfig;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroid/content/Context;Landroidx/camera/camera2/impl/DisplayInfoManager;)Landroidx/camera/camera2/impl/UseCaseManager;
    .locals 18
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
            ")",
            "Landroidx/camera/camera2/impl/UseCaseManager;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/impl/UseCaseManager;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v0 .. v17}, Landroidx/camera/camera2/impl/UseCaseManager;-><init>(Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/impl/LowLightBoostControl;Ljava/util/Set;Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/camera/camera2/adapter/CameraStateAdapter;Lws6;Lws6;Lws6;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/core/CameraXConfig;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroid/content/Context;Landroidx/camera/camera2/impl/DisplayInfoManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/impl/UseCaseManager;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->cameraPipeProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/camera/camera2/pipe/CameraPipe;

    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->cameraCoordinatorProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/camera/core/concurrent/CameraCoordinator;

    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->builderProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;

    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->zslControlProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/camera/camera2/adapter/ZslControl;

    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->lowLightBoostControlProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/camera/camera2/impl/LowLightBoostControl;

    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->controlsProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/Set;

    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->camera2CameraControlProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/camera/camera2/interop/Camera2CameraControl;

    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->cameraStateAdapterProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/camera/camera2/adapter/CameraStateAdapter;

    iget-object v10, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->cameraInternalProvider:Lxs6;

    iget-object v11, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->useCaseThreadsProvider:Lxs6;

    iget-object v12, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->cameraInfoInternalProvider:Lxs6;

    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->encoderProfilesProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/camera/core/impl/EncoderProfilesProvider;

    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->cameraPropertiesProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroidx/camera/camera2/impl/CameraProperties;

    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->cameraXConfigProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroidx/camera/core/CameraXConfig;

    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->cameraGraphConfigProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->contextProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/content/Context;

    iget-object v0, v0, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->displayInfoManagerProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-static/range {v2 .. v18}, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->newInstance(Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/impl/LowLightBoostControl;Ljava/util/Set;Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/camera/camera2/adapter/CameraStateAdapter;Lws6;Lws6;Lws6;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/core/CameraXConfig;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroid/content/Context;Landroidx/camera/camera2/impl/DisplayInfoManager;)Landroidx/camera/camera2/impl/UseCaseManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 142
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager_Factory;->get()Landroidx/camera/camera2/impl/UseCaseManager;

    move-result-object p0

    return-object p0
.end method

.class public final Landroidx/camera/camera2/adapter/CameraControlAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraControlInternal;


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation


# instance fields
.field private final camera2cameraControl:Landroidx/camera/camera2/interop/Camera2CameraControl;

.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private final evCompControl:Landroidx/camera/camera2/impl/EvCompControl;

.field private final flashControl:Landroidx/camera/camera2/impl/FlashControl;

.field private final focusMeteringControl:Landroidx/camera/camera2/impl/FocusMeteringControl;

.field private final lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

.field private final stillCaptureRequestControl:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field private final torchControl:Landroidx/camera/camera2/impl/TorchControl;

.field private final useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

.field private final videoUsageControl:Landroidx/camera/camera2/impl/VideoUsageControl;

.field private final zoomControl:Landroidx/camera/camera2/impl/ZoomControl;

.field private final zslControl:Landroidx/camera/camera2/adapter/ZslControl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/EvCompControl;Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/FocusMeteringControl;Landroidx/camera/camera2/impl/StillCaptureRequestControl;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/impl/LowLightBoostControl;Landroidx/camera/camera2/impl/ZoomControl;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/camera/camera2/impl/UseCaseManager;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/VideoUsageControl;)V
    .locals 0

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->evCompControl:Landroidx/camera/camera2/impl/EvCompControl;

    iput-object p3, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->flashControl:Landroidx/camera/camera2/impl/FlashControl;

    iput-object p4, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->focusMeteringControl:Landroidx/camera/camera2/impl/FocusMeteringControl;

    iput-object p5, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->stillCaptureRequestControl:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iput-object p6, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    iput-object p7, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

    iput-object p8, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->zoomControl:Landroidx/camera/camera2/impl/ZoomControl;

    iput-object p9, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    iput-object p10, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->camera2cameraControl:Landroidx/camera/camera2/interop/Camera2CameraControl;

    iput-object p11, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    iput-object p12, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    iput-object p13, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->videoUsageControl:Landroidx/camera/camera2/impl/VideoUsageControl;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/pipe/Result3A;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CameraControlAdapter;->cancelFocusAndMetering$lambda$0$0(Landroidx/camera/camera2/pipe/Result3A;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFlashControl$p(Landroidx/camera/camera2/adapter/CameraControlAdapter;)Landroidx/camera/camera2/impl/FlashControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->flashControl:Landroidx/camera/camera2/impl/FlashControl;

    return-object p0
.end method

.method public static synthetic b(Lm01;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/CameraControlAdapter;->enableLowLightBoostAsync$lambda$3(Lnl3;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/camera/camera2/adapter/CameraControlAdapter;ZLjava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraControlAdapter;->enableLowLightBoostAsync$lambda$2(Landroidx/camera/camera2/adapter/CameraControlAdapter;ZLjava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method private static final cancelFocusAndMetering$lambda$0$0(Landroidx/camera/camera2/pipe/Result3A;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final enableLowLightBoostAsync$lambda$2(Landroidx/camera/camera2/adapter/CameraControlAdapter;ZLjava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->setLowLightBoostAsync$default(Landroidx/camera/camera2/impl/LowLightBoostControl;ZZILjava/lang/Object;)Lmk2;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asVoidListenableFuture(Lmk2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method private static final enableLowLightBoostAsync$lambda$3(Lnl3;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p0
.end method


# virtual methods
.method public addInteropConfig(Landroidx/camera/core/impl/Config;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->camera2cameraControl:Landroidx/camera/camera2/interop/Camera2CameraControl;

    sget-object v0, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->Companion:Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->build()Landroidx/camera/camera2/interop/CaptureRequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->addCaptureRequestOptions(Landroidx/camera/camera2/interop/CaptureRequestOptions;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/adapter/ZslControl;->addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V

    return-void
.end method

.method public cancelFocusAndMetering()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lyp1;

    invoke-direct {v0}, Lyp1;-><init>()V

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->focusMeteringControl:Landroidx/camera/camera2/impl/FocusMeteringControl;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/FocusMeteringControl;->cancelFocusAndMeteringAsync()Lmk2;

    move-result-object p0

    new-instance v1, Lue;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lue;-><init>(I)V

    invoke-static {p0, v0, v1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateTo(Lmk2;Lxp1;Lnl3;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v2, p0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture$default(Lmk2;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public clearInteropConfig()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->camera2cameraControl:Landroidx/camera/camera2/interop/Camera2CameraControl;

    invoke-virtual {p0}, Landroidx/camera/camera2/interop/Camera2CameraControl;->clearCaptureRequestOptions()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public clearZslConfig()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    invoke-interface {p0}, Landroidx/camera/camera2/adapter/ZslControl;->clearZslConfig()V

    return-void
.end method

.method public decrementVideoUsage()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->videoUsageControl:Landroidx/camera/camera2/impl/VideoUsageControl;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/VideoUsageControl;->decrementUsage()V

    return-void
.end method

.method public enableLowLightBoostAsync(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsLowLightBoost(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unable to enable/disable low-light boost due to it is not supported."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Low-light boost is not supported!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/TorchControl;->getTorchStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v2, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync$default(Landroidx/camera/camera2/impl/TorchControl;ZZZILjava/lang/Object;)Lmk2;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asVoidListenableFuture(Lmk2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v0, Lj59;->a:Lj59;

    invoke-static {v0}, Lga1;->a(Ljava/lang/Object;)Lyp1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsb4;->T(Ljava/lang/Object;)Z

    invoke-static {v1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asVoidListenableFuture(Lmk2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    :goto_1
    new-instance v1, Lm01;

    invoke-direct {v1, p0, p1}, Lm01;-><init>(Landroidx/camera/camera2/adapter/CameraControlAdapter;Z)V

    new-instance p0, Ln01;

    invoke-direct {p0, v1}, Ln01;-><init>(Lm01;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0, p0, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsLowLightBoost(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->getLowLightBoostStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    :goto_0
    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unable to enable/disable torch when low-light boost is on."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Torch can not be enabled/disable when low-light boost is on!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync$default(Landroidx/camera/camera2/impl/TorchControl;ZZZILjava/lang/Object;)Lmk2;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asVoidListenableFuture(Lmk2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final getCamera2cameraControl()Landroidx/camera/camera2/interop/Camera2CameraControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->camera2cameraControl:Landroidx/camera/camera2/interop/Camera2CameraControl;

    return-object p0
.end method

.method public getCameraCapturePipelineAsync(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/imagecapture/CameraCapturePipeline;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCamera()Landroidx/camera/camera2/impl/UseCaseCamera;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance p0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string p1, "Camera is not active."

    invoke-direct {p0, p1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v2

    new-instance v1, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1;

    move-object v5, p0

    move v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1;-><init>(Ly22;Landroidx/camera/camera2/impl/UseCaseCamera;ILandroidx/camera/camera2/adapter/CameraControlAdapter;I)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getFlashMode()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->flashControl:Landroidx/camera/camera2/impl/FlashControl;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/FlashControl;->getFlashMode()I

    move-result p0

    return p0
.end method

.method public getInteropConfig()Landroidx/camera/core/impl/Config;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->camera2cameraControl:Landroidx/camera/camera2/interop/Camera2CameraControl;

    invoke-virtual {p0}, Landroidx/camera/camera2/interop/Camera2CameraControl;->getCaptureRequestOptions()Landroidx/camera/camera2/interop/CaptureRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public getSessionConfig()Landroidx/camera/core/impl/SessionConfig;
    .locals 1

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TODO: getSessionConfig is not yet supported"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroidx/camera/core/impl/SessionConfig;->defaultEmptySessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public incrementVideoUsage()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->videoUsageControl:Landroidx/camera/camera2/impl/VideoUsageControl;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/VideoUsageControl;->incrementUsage()V

    return-void
.end method

.method public isInVideoUsage()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->videoUsageControl:Landroidx/camera/camera2/impl/VideoUsageControl;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/VideoUsageControl;->isInVideoUsage()Z

    move-result p0

    return p0
.end method

.method public isZslDisabledByByUserCaseConfig()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    invoke-interface {p0}, Landroidx/camera/camera2/adapter/ZslControl;->isZslDisabledByUserCaseConfig()Z

    move-result p0

    return p0
.end method

.method public setExposureCompensationIndex(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->evCompControl:Landroidx/camera/camera2/impl/EvCompControl;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Landroidx/camera/camera2/impl/EvCompControl;->updateAsync$default(Landroidx/camera/camera2/impl/EvCompControl;IZILjava/lang/Object;)Lmk2;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, v2, p1, v2}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture$default(Lmk2;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public setFlashMode(I)V
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->flashControl:Landroidx/camera/camera2/impl/FlashControl;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Landroidx/camera/camera2/impl/FlashControl;->setFlashAsync$default(Landroidx/camera/camera2/impl/FlashControl;IZILjava/lang/Object;)Lmk2;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v3, v0

    :cond_1
    invoke-interface {p0, v3}, Landroidx/camera/camera2/adapter/ZslControl;->setZslDisabledByFlashMode(Z)V

    return-void
.end method

.method public setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->zoomControl:Landroidx/camera/camera2/impl/ZoomControl;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/ZoomControl;->setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public setScreenFlash(Landroidx/camera/core/ImageCapture$ScreenFlash;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->flashControl:Landroidx/camera/camera2/impl/FlashControl;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/FlashControl;->setScreenFlash(Landroidx/camera/core/ImageCapture$ScreenFlash;)V

    return-void
.end method

.method public setTorchStrengthLevel(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/TorchControl;->setTorchStrengthLevelAsync(I)Lmk2;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asVoidListenableFuture(Lmk2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->zoomControl:Landroidx/camera/camera2/impl/ZoomControl;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/ZoomControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public setZslDisabledByUserCaseConfig(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/adapter/ZslControl;->setZslDisabledByUserCaseConfig(Z)V

    return-void
.end method

.method public startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/FocusMeteringAction;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->focusMeteringControl:Landroidx/camera/camera2/impl/FocusMeteringControl;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/camera/camera2/impl/FocusMeteringControl;->startFocusAndMetering$default(Landroidx/camera/camera2/impl/FocusMeteringControl;Landroidx/camera/core/FocusMeteringAction;JILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public submitStillCaptureRequests(Ljava/util/List;II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;II)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->stillCaptureRequestControl:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->issueCaptureRequests(Ljava/util/List;II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

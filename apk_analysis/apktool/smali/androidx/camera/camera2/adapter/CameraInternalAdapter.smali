.class public final Landroidx/camera/camera2/adapter/CameraInternalAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraInternal;


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation


# instance fields
.field private final cameraController:Landroidx/camera/core/impl/CameraControlInternal;

.field private final cameraId:Ljava/lang/String;

.field private final cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

.field private final cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

.field private coreCameraConfig:Landroidx/camera/core/impl/CameraConfig;

.field private final debugId:I

.field private final isRemoved:Lht;

.field private sessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field private final useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/camera2/impl/UseCaseManager;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraControlInternal;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/adapter/CameraStateAdapter;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    iput-object p3, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    iput-object p4, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraController:Landroidx/camera/core/impl/CameraControlInternal;

    iput-object p5, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    iput-object p6, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-virtual {p1}, Landroidx/camera/camera2/config/CameraConfig;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraId:Ljava/lang/String;

    invoke-static {}, Landroidx/camera/core/impl/CameraConfigs;->defaultConfig()Landroidx/camera/core/impl/CameraConfig;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->coreCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    invoke-static {}, Landroidx/camera/camera2/adapter/CameraInternalAdapterKt;->getCameraAdapterIds()Llt;

    move-result-object p1

    invoke-virtual {p1}, Llt;->b()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->debugId:I

    const/4 p1, 0x0

    invoke-static {p1}, Lkt;->a(Z)Lht;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->isRemoved:Lht;

    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Created "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->access$getCameraId$p(Landroidx/camera/camera2/adapter/CameraInternalAdapter;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static final synthetic access$getCameraId$p(Landroidx/camera/camera2/adapter/CameraInternalAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCameraStateAdapter$p(Landroidx/camera/camera2/adapter/CameraInternalAdapter;)Landroidx/camera/camera2/adapter/CameraStateAdapter;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    return-object p0
.end method

.method public static final synthetic access$getThreads$p(Landroidx/camera/camera2/adapter/CameraInternalAdapter;)Landroidx/camera/camera2/impl/UseCaseThreads;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    return-object p0
.end method

.method public static final synthetic access$getUseCaseManager$p(Landroidx/camera/camera2/adapter/CameraInternalAdapter;)Landroidx/camera/camera2/impl/UseCaseManager;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    return-object p0
.end method


# virtual methods
.method public attachUseCases(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->attach(Ljava/util/List;)V

    return-void
.end method

.method public close()V
    .locals 2

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "#close"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public detachUseCases(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->detach(Ljava/util/List;)V

    return-void
.end method

.method public getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraController:Landroidx/camera/core/impl/CameraControlInternal;

    return-object p0
.end method

.method public getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    return-object p0
.end method

.method public getCameraState()Landroidx/camera/core/impl/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/impl/Observable<",
            "Landroidx/camera/core/impl/CameraInternal$State;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->getCameraInternalState$camera_camera2()Landroidx/camera/core/impl/LiveDataObservable;

    move-result-object p0

    return-object p0
.end method

.method public final getDeferredCameraGraphConfig$camera_camera2()Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getDeferredCameraGraphConfig$camera_camera2()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object p0

    return-object p0
.end method

.method public getExtendedConfig()Landroidx/camera/core/impl/CameraConfig;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->coreCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    return-object p0
.end method

.method public isRemoved()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->isRemoved:Lht;

    invoke-virtual {p0}, Lht;->b()Z

    move-result p0

    return p0
.end method

.method public onRemoved()V
    .locals 3

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " received removed signal. Cleaning up."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->isRemoved:Lht;

    invoke-virtual {v0}, Lht;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/adapter/CameraInternalAdapter$onRemoved$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/camera/camera2/adapter/CameraInternalAdapter$onRemoved$2;-><init>(Landroidx/camera/camera2/adapter/CameraInternalAdapter;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_1
    return-void
.end method

.method public onUseCaseActive(Landroidx/camera/core/UseCase;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->activate(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public onUseCaseInactive(Landroidx/camera/core/UseCase;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->deactivate(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public onUseCaseReset(Landroidx/camera/core/UseCase;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->reset(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public onUseCaseUpdated(Landroidx/camera/core/UseCase;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->update(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public open()V
    .locals 2

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "#open"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public release()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;-><init>(Landroidx/camera/camera2/adapter/CameraInternalAdapter;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v2, v0, v2}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture$default(Lmb4;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final resumeDeferredCameraGraphCreation$camera_camera2(Landroidx/camera/camera2/pipe/CameraGraph;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->resumeDeferredComponentCreation$camera_camera2(Landroidx/camera/camera2/pipe/CameraGraph;)V

    return-void
.end method

.method public setActiveResumingMode(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->setActiveResumeMode(Z)Lj59;

    return-void
.end method

.method public final setCameraGraphCreationMode$camera_camera2(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->setCameraGraphCreationMode$camera_camera2(Z)V

    return-void
.end method

.method public setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Landroidx/camera/core/impl/CameraConfigs;->defaultConfig()Landroidx/camera/core/impl/CameraConfig;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->coreCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Landroidx/camera/core/impl/CameraConfig;->getSessionProcessor(Landroidx/camera/core/impl/SessionProcessor;)Landroidx/camera/core/impl/SessionProcessor;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->sessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->setSessionProcessor$camera_camera2(Landroidx/camera/core/impl/SessionProcessor;)V

    return-void
.end method

.method public setPrimary(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->setPrimary(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraInternalAdapter<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraId:Ljava/lang/String;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->debugId:I

    const-string v1, ")>"

    invoke-static {v0, v1, p0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

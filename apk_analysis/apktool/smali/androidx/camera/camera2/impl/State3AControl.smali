.class public final Landroidx/camera/camera2/impl/State3AControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;
.implements Landroidx/camera/camera2/impl/UseCaseManager$RunningUseCasesChangeListener;


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/State3AControl$Bindings;,
        Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;
    }
.end annotation


# instance fields
.field private _flashMode:I

.field private _preferredAeMode:Ljava/lang/Integer;

.field private _preferredFocusMode:Ljava/lang/Integer;

.field private _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field private _template:I

.field private _tryExternalFlashAeMode:Z

.field private final aeModeDisabler:Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;

.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private currentRevision:J

.field private final lock:Ljava/lang/Object;

.field private final pendingSignals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxp1<",
            "Lj59;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;Landroidx/camera/camera2/impl/UseCaseThreads;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/State3AControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    iput-object p2, p0, Landroidx/camera/camera2/impl/State3AControl;->aeModeDisabler:Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;

    iput-object p3, p0, Landroidx/camera/camera2/impl/State3AControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/State3AControl;->pendingSignals:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/camera/camera2/impl/State3AControl;->_flashMode:I

    const/4 p1, 0x1

    iput p1, p0, Landroidx/camera/camera2/impl/State3AControl;->_template:I

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Landroidx/camera/camera2/impl/State3AControl;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/impl/State3AControl;->applyUpdate$lambda$3(Ljava/util/List;Landroidx/camera/camera2/impl/State3AControl;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$applyUpdate(Landroidx/camera/camera2/impl/State3AControl;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/impl/State3AControl;->applyUpdate(J)V

    return-void
.end method

.method public static final synthetic access$calculateTemplateFromUseCases(Landroidx/camera/camera2/impl/State3AControl;Ljava/util/Set;)I
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/State3AControl;->calculateTemplateFromUseCases(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLock$p(Landroidx/camera/camera2/impl/State3AControl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$get_template$p(Landroidx/camera/camera2/impl/State3AControl;)I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/impl/State3AControl;->_template:I

    return p0
.end method

.method public static final synthetic access$set_template$p(Landroidx/camera/camera2/impl/State3AControl;I)V
    .locals 0

    iput p1, p0, Landroidx/camera/camera2/impl/State3AControl;->_template:I

    return-void
.end method

.method public static final synthetic access$update(Landroidx/camera/camera2/impl/State3AControl;)Lmk2;
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/State3AControl;->update()Lmk2;

    move-result-object p0

    return-object p0
.end method

.method private final applyUpdate(J)V
    .locals 7

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/State3AControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string p2, "Camera is not active."

    invoke-direct {p1, p2}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/State3AControl;->failAllPendingSignals(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Landroidx/camera/camera2/impl/State3AControl;->currentRevision:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    cmp-long p1, p1, v2

    const/4 p2, 0x1

    if-nez p1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit v1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    new-instance v1, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;

    iget v2, p0, Landroidx/camera/camera2/impl/State3AControl;->_flashMode:I

    iget v3, p0, Landroidx/camera/camera2/impl/State3AControl;->_template:I

    iget-boolean v4, p0, Landroidx/camera/camera2/impl/State3AControl;->_tryExternalFlashAeMode:Z

    iget-object v5, p0, Landroidx/camera/camera2/impl/State3AControl;->_preferredAeMode:Ljava/lang/Integer;

    iget-object v6, p0, Landroidx/camera/camera2/impl/State3AControl;->_preferredFocusMode:Ljava/lang/Integer;

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;-><init>(IIZLjava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    invoke-virtual {v1}, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->getFlashMode()I

    move-result p1

    invoke-virtual {v1}, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->getTryExternalFlashAeMode()Z

    move-result v2

    invoke-virtual {v1}, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->getPreferredAeMode()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Landroidx/camera/camera2/impl/State3AControl;->getFinalPreferredAeMode(IZLjava/lang/Integer;)I

    move-result p1

    invoke-virtual {v1}, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->getPreferredFocusMode()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;->getTemplate()I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/camera/camera2/impl/State3AControl;->getDefaultAfMode(I)I

    move-result v1

    :goto_1
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Landroidx/camera/camera2/impl/State3AControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v3}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v3

    invoke-static {v3, p1}, Landroidx/camera/camera2/impl/CameraMetadataIntegrationKt;->getSupportedAeMode(Landroidx/camera/camera2/pipe/CameraMetadata;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v3, Lb36;

    invoke-direct {v3, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Landroidx/camera/camera2/impl/State3AControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v2}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/camera/camera2/impl/CameraMetadataIntegrationKt;->getSupportedAfMode(Landroidx/camera/camera2/pipe/CameraMetadata;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lb36;

    invoke-direct {v2, p1, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Landroidx/camera/camera2/impl/State3AControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v1

    invoke-static {v1, p2}, Landroidx/camera/camera2/impl/CameraMetadataIntegrationKt;->getSupportedAwbMode(Landroidx/camera/camera2/pipe/CameraMetadata;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lb36;

    invoke-direct {v4, p1, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v2, v4}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-static/range {v0 .. v5}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->submitParameters$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;ILjava/lang/Object;)Lmk2;

    move-result-object p1

    iget-object v1, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->pendingSignals:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1

    new-instance v1, Lkl1;

    invoke-direct {v1, p2, v0, p0}, Lkl1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lmb4;->g(Lnl3;)Lhp2;

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v1

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/State3AControl;->failAllPendingSignals(Ljava/lang/Exception;)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit p1

    throw p0

    :catchall_2
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0
.end method

.method private static final applyUpdate$lambda$3(Ljava/util/List;Landroidx/camera/camera2/impl/State3AControl;Ljava/lang/Throwable;)Lj59;
    .locals 2

    if-eqz p2, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxp1;

    invoke-interface {v1, p2}, Lxp1;->e(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    move-object p2, p0

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxp1;

    sget-object v1, Lj59;->a:Lj59;

    invoke-interface {v0, v1}, Lxp1;->f(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p2, p1, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p1, p1, Landroidx/camera/camera2/impl/State3AControl;->pendingSignals:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
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

.method private final calculateTemplateFromUseCases(Ljava/util/Set;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)I"
        }
    .end annotation

    new-instance p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;-><init>(Ljava/util/Collection;ZILjh2;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getValidSessionConfigOrNull()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/camera/core/impl/SessionConfig;->getRepeatingCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    move-object v2, p0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final failAllPendingSignals(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/State3AControl;->pendingSignals:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl;->pendingSignals:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxp1;

    invoke-interface {v0, p1}, Lxp1;->e(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final getDefaultAfMode(I)I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    return v0

    :cond_0
    return p0

    :cond_1
    return v0
.end method

.method private final getFinalPreferredAeMode(IZLjava/lang/Integer;)I
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/camera/camera2/impl/State3AControl;->aeModeDisabler:Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;

    const/4 p3, 0x2

    invoke-interface {p1, p3}, Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;->getCorrectedAeMode(I)I

    move-result p1

    :goto_0
    const-string p3, "CXCP"

    if-eqz p2, :cond_4

    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {p0}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/impl/CameraMetadataIntegrationKt;->isExternalFlashAeModeSupported(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {p3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string p1, "State3AControl.invalidate: trying external flash AE mode."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x5

    :cond_4
    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {p3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string p2, "State3AControl.getFinalPreferredAeMode: preferAeMode = "

    invoke-static {p1, p2, p0}, Lvh;->d(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    return p1
.end method

.method private final update()Lmk2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lyp1;

    invoke-direct {v0}, Lyp1;-><init>()V

    new-instance v1, Lq07;

    invoke-direct {v1}, Lq07;-><init>()V

    iget-object v2, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroidx/camera/camera2/impl/State3AControl;->pendingSignals:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v3, p0, Landroidx/camera/camera2/impl/State3AControl;->currentRevision:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/camera/camera2/impl/State3AControl;->currentRevision:J

    iput-wide v3, v1, Lq07;->b:J

    sget-object v3, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v2, p0, Landroidx/camera/camera2/impl/State3AControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v2}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v2

    new-instance v3, Landroidx/camera/camera2/impl/State3AControl$update$$inlined$confineLaunch$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0, v1}, Landroidx/camera/camera2/impl/State3AControl$update$$inlined$confineLaunch$1;-><init>(Le02;Landroidx/camera/camera2/impl/State3AControl;Lq07;)V

    const/4 p0, 0x3

    invoke-static {v2, v4, v4, v3, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method


# virtual methods
.method public final getCameraProperties()Landroidx/camera/camera2/impl/CameraProperties;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    return-object p0
.end method

.method public final getFinalSupportedAeMode()I
    .locals 5

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/State3AControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v1

    iget v2, p0, Landroidx/camera/camera2/impl/State3AControl;->_flashMode:I

    iget-boolean v3, p0, Landroidx/camera/camera2/impl/State3AControl;->_tryExternalFlashAeMode:Z

    iget-object v4, p0, Landroidx/camera/camera2/impl/State3AControl;->_preferredAeMode:Ljava/lang/Integer;

    invoke-direct {p0, v2, v3, v4}, Landroidx/camera/camera2/impl/State3AControl;->getFinalPreferredAeMode(IZLjava/lang/Integer;)I

    move-result p0

    invoke-static {v1, p0}, Landroidx/camera/camera2/impl/CameraMetadataIntegrationKt;->getSupportedAeMode(Landroidx/camera/camera2/pipe/CameraMetadata;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getFlashMode()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Landroidx/camera/camera2/impl/State3AControl;->_flashMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getPreferredAeMode()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl;->_preferredAeMode:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getPreferredFocusMode()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl;->_preferredFocusMode:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object p0
.end method

.method public final getTemplate()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Landroidx/camera/camera2/impl/State3AControl;->_template:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getTryExternalFlashAeMode()Z
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Landroidx/camera/camera2/impl/State3AControl;->_tryExternalFlashAeMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public onRunningUseCasesChanged(Ljava/util/Set;)V
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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p0}, Landroidx/camera/camera2/impl/State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1;-><init>(Le02;Ljava/util/Set;Landroidx/camera/camera2/impl/State3AControl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroidx/camera/camera2/impl/State3AControl;->_tryExternalFlashAeMode:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/camera/camera2/impl/State3AControl;->_preferredAeMode:Ljava/lang/Integer;

    iput-object v1, p0, Landroidx/camera/camera2/impl/State3AControl;->_preferredFocusMode:Ljava/lang/Integer;

    const/4 v1, 0x2

    iput v1, p0, Landroidx/camera/camera2/impl/State3AControl;->_flashMode:I

    const/4 v1, 0x1

    iput v1, p0, Landroidx/camera/camera2/impl/State3AControl;->_template:I

    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/State3AControl;->update()Lmk2;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final setFlashModeAsync(I)Lmk2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Landroidx/camera/camera2/impl/State3AControl;->_flashMode:I

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/State3AControl;->update()Lmk2;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final setPreferredAeModeAsync(Ljava/lang/Integer;)Lmk2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroidx/camera/camera2/impl/State3AControl;->_preferredAeMode:Ljava/lang/Integer;

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/State3AControl;->update()Lmk2;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final setPreferredFocusModeAsync(Ljava/lang/Integer;)Lmk2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroidx/camera/camera2/impl/State3AControl;->_preferredFocusMode:Ljava/lang/Integer;

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/State3AControl;->update()Lmk2;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/State3AControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    invoke-direct {p0}, Landroidx/camera/camera2/impl/State3AControl;->update()Lmk2;

    return-void
.end method

.method public final setTemplateAsync(I)Lmk2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Landroidx/camera/camera2/impl/State3AControl;->_template:I

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/State3AControl;->update()Lmk2;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final setTryExternalFlashAeModeAsync(Z)Lmk2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Landroidx/camera/camera2/impl/State3AControl;->_tryExternalFlashAeMode:Z

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-direct {p0}, Landroidx/camera/camera2/impl/State3AControl;->update()Lmk2;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.class public final Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/SessionProcessor;
.implements Landroidx/camera/extensions/CameraExtensionsInfo;
.implements Landroidx/camera/extensions/CameraExtensionsControl;


# instance fields
.field private final availableCaptureRequestKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final camera2ExtensionMode:I

.field private cameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

.field private cameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

.field private captureSessionRequestProcessor:Landroidx/camera/core/impl/SessionProcessor$CaptureSessionRequestProcessor;

.field private final currentExtensionType:Ljava/util/concurrent/atomic/AtomicInteger;

.field private currentExtensionTypeLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionStrength:Ljava/util/concurrent/atomic/AtomicInteger;

.field private extensionStrengthLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final mode:I

.field private final supportedCameraOperations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final vendorExtender:Landroidx/camera/extensions/internal/VendorExtender;


# direct methods
.method public constructor <init>(Ljava/util/List;ILandroidx/camera/extensions/internal/VendorExtender;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;I",
            "Landroidx/camera/extensions/internal/VendorExtender;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->availableCaptureRequestKeys:Ljava/util/List;

    iput p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->mode:I

    iput-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->vendorExtender:Landroidx/camera/extensions/internal/VendorExtender;

    sget-object p3, Landroidx/camera/extensions/internal/Camera2ExtensionsUtil;->INSTANCE:Landroidx/camera/extensions/internal/Camera2ExtensionsUtil;

    invoke-virtual {p3, p2}, Landroidx/camera/extensions/internal/Camera2ExtensionsUtil;->convertCameraXModeToCamera2Mode(I)I

    move-result p3

    iput p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->camera2ExtensionMode:I

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x64

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->extensionStrength:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->currentExtensionType:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Landroidx/camera/extensions/internal/ExtensionsUtils;->getSupportedCameraOperations(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->supportedCameraOperations:Ljava/util/Set;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->isCurrentExtensionModeAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->currentExtensionTypeLiveData:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->isExtensionStrengthAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->extensionStrengthLiveData:Landroidx/lifecycle/MutableLiveData;

    :cond_1
    return-void
.end method

.method public static final synthetic access$getCurrentExtensionType$p(Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->currentExtensionType:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$getCurrentExtensionTypeLiveData$p(Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->currentExtensionTypeLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$getExtensionStrength$p(Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->extensionStrength:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$getExtensionStrengthLiveData$p(Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->extensionStrengthLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private static synthetic getSupportedCameraOperations$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public deInitSession()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->cameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->cameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Landroidx/camera/core/impl/CameraInfoInternal;->removeSessionCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    :cond_0
    return-void
.end method

.method public getAvailableCharacteristicsKeyValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;-",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->vendorExtender:Landroidx/camera/extensions/internal/VendorExtender;

    invoke-interface {p0}, Landroidx/camera/extensions/internal/VendorExtender;->getAvailableCharacteristicsKeyValues()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getCurrentExtensionMode()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->currentExtensionTypeLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getExtensionAvailableStabilizationModes()[I
    .locals 0

    invoke-super {p0}, Landroidx/camera/core/impl/SessionProcessor;->getExtensionAvailableStabilizationModes()[I

    move-result-object p0

    return-object p0
.end method

.method public getExtensionStrength()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->extensionStrengthLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getImplementationType()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->camera2ExtensionMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getRealtimeCaptureLatency()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->captureSessionRequestProcessor:Landroidx/camera/core/impl/SessionProcessor$CaptureSessionRequestProcessor;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/camera/core/impl/SessionProcessor$CaptureSessionRequestProcessor;->getRealtimeStillCaptureLatency()Landroid/util/Pair;

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

.method public getSupportedCameraOperations()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->supportedCameraOperations:Ljava/util/Set;

    return-object p0
.end method

.method public getSupportedPostviewSize(Landroid/util/Size;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->vendorExtender:Landroidx/camera/extensions/internal/VendorExtender;

    invoke-interface {p0, p1}, Landroidx/camera/extensions/internal/VendorExtender;->getSupportedPostviewResolutions(Landroid/util/Size;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public initSession(Landroidx/camera/core/CameraInfo;Landroidx/camera/core/impl/OutputSurfaceConfiguration;)Landroidx/camera/core/impl/SessionConfig;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/camera/core/impl/CameraInfoInternal;

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->cameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    new-instance p1, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor$initSession$1;

    invoke-direct {p1, p0}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor$initSession$1;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;)V

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->cameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->cameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->cameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p2, p0}, Landroidx/camera/core/impl/CameraInfoInternal;->addSessionCaptureCallback(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraCaptureCallback;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isCurrentExtensionModeAvailable()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->vendorExtender:Landroidx/camera/extensions/internal/VendorExtender;

    invoke-interface {p0}, Landroidx/camera/extensions/internal/VendorExtender;->isCurrentExtensionModeAvailable()Z

    move-result p0

    return p0
.end method

.method public isExtensionStrengthAvailable()Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->vendorExtender:Landroidx/camera/extensions/internal/VendorExtender;

    invoke-interface {p0}, Landroidx/camera/extensions/internal/VendorExtender;->isExtensionStrengthAvailable()Z

    move-result p0

    return p0
.end method

.method public setCaptureSessionRequestProcessor(Landroidx/camera/core/impl/SessionProcessor$CaptureSessionRequestProcessor;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->captureSessionRequestProcessor:Landroidx/camera/core/impl/SessionProcessor$CaptureSessionRequestProcessor;

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

.method public setExtensionStrength(I)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2ExtensionsSessionProcessor;->captureSessionRequestProcessor:Landroidx/camera/core/impl/SessionProcessor$CaptureSessionRequestProcessor;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/camera/core/impl/SessionProcessor$CaptureSessionRequestProcessor;->setExtensionStrength(I)V

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

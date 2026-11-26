.class public final Landroidx/camera/camera2/adapter/ZslControlImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/adapter/ZslControl;


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/ZslControlImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/adapter/ZslControlImpl$Companion;

.field private static final FORMAT:I = 0x22

.field public static final MAX_IMAGES:I = 0x9

.field public static final RING_BUFFER_CAPACITY:I = 0x3


# instance fields
.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private isZslDisabledByFlashMode:Z

.field private isZslDisabledByQuirks:Z

.field private isZslDisabledByUseCaseConfig:Z

.field private metadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

.field private reprocessingImageDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field private reprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

.field private final streamConfigurationMap$delegate:Lcl4;

.field private final zslRingBuffer:Landroidx/camera/core/internal/utils/ZslRingBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/ZslControlImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/ZslControlImpl$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/adapter/ZslControlImpl;->Companion:Landroidx/camera/camera2/adapter/ZslControlImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {p1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    new-instance p1, Lze;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lze;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->streamConfigurationMap$delegate:Lcl4;

    new-instance p1, Landroidx/camera/core/internal/utils/ZslRingBuffer;

    new-instance v0, Lr01;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    invoke-direct {p1, v1, v0}, Landroidx/camera/core/internal/utils/ZslRingBuffer;-><init>(ILandroidx/camera/core/internal/utils/RingBuffer$OnRemoveCallback;)V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->zslRingBuffer:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    sget-object p1, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class v0, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk;

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByQuirks:Z

    return-void
.end method

.method public static synthetic a(Landroidx/camera/core/SafeCloseImageReaderProxy;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->addZslConfig$lambda$6(Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    return-void
.end method

.method private static final addZslConfig$lambda$5(Landroidx/camera/camera2/adapter/ZslControlImpl;Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireLatestImage()Landroidx/camera/core/ImageProxy;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->zslRingBuffer:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    invoke-virtual {p0, p1}, Landroidx/camera/core/internal/utils/ZslRingBuffer;->enqueue(Landroidx/camera/core/ImageProxy;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isErrorEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to acquire latest image"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static final addZslConfig$lambda$6(Landroidx/camera/core/SafeCloseImageReaderProxy;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->safeClose()V

    return-void
.end method

.method public static synthetic b(Landroidx/camera/camera2/adapter/ZslControlImpl;Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/ZslControlImpl;->addZslConfig$lambda$5(Landroidx/camera/camera2/adapter/ZslControlImpl;Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method

.method public static synthetic c(Landroidx/camera/core/SafeCloseImageReaderProxy;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->reset$lambda$0(Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    return-void
.end method

.method private final clearRingBuffer()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->zslRingBuffer:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    :goto_0
    invoke-virtual {p0}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->dequeue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic d(Landroidx/camera/camera2/adapter/ZslControlImpl;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->streamConfigurationMap_delegate$lambda$0(Landroidx/camera/camera2/adapter/ZslControlImpl;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/camera/core/ImageProxy;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->zslRingBuffer$lambda$0(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method public static synthetic getReprocessingImageReader$camera_camera2$annotations()V
    .locals 0

    return-void
.end method

.method private final getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->streamConfigurationMap$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-object p0
.end method

.method public static synthetic getZslRingBuffer$camera_camera2$annotations()V
    .locals 0

    return-void
.end method

.method private final reset()V
    .locals 6

    iget-object v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v4, Lom9;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lom9;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1}, Landroidx/camera/core/SafeCloseImageReaderProxy;->clearOnImageAvailableListener()V

    iput-object v2, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    :cond_0
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    iput-object v2, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    :cond_1
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->clearRingBuffer()V

    return-void
.end method

.method private static final reset$lambda$0(Landroidx/camera/core/SafeCloseImageReaderProxy;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->safeClose()V

    return-void
.end method

.method private static final streamConfigurationMap_delegate$lambda$0(Landroidx/camera/camera2/adapter/ZslControlImpl;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-object p0

    :cond_0
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final zslRingBuffer$lambda$0(Landroidx/camera/core/ImageProxy;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->close()V

    return-void
.end method


# virtual methods
.method public addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->reset()V

    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByUseCaseConfig:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByQuirks:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    return-void

    :cond_1
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object v2, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v0, v2}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsPrivateReprocessing(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v0

    const-string v2, "CXCP"

    if-nez v0, :cond_3

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v2}, Landroidx/camera/core/Logger;->isInfoEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZslControlImpl: Private reprocessing isn\'t supported"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    return-void

    :cond_3
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move-object v5, v4

    check-cast v5, Landroid/util/Size;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/camera/camera2/impl/SizesKt;->area(Landroid/util/Size;)I

    move-result v5

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/util/Size;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/camera/camera2/impl/SizesKt;->area(Landroid/util/Size;)I

    move-result v7

    if-ge v5, v7, :cond_6

    move-object v4, v6

    move v5, v7

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    :goto_0
    check-cast v4, Landroid/util/Size;

    if-nez v4, :cond_7

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v2}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZslControlImpl: Unable to find a supported size for ZSL"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v2}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ZslControlImpl: Selected ZSL size: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getValidOutputFormatsForInput(I)[I

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x100

    invoke-static {v0, v5}, Lyr;->C([II)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v2}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZslControlImpl: JPEG isn\'t valid output for ZSL format"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :cond_a
    new-instance v0, Landroidx/camera/core/MetadataImageReader;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/16 v5, 0x9

    invoke-direct {v0, v2, v4, v3, v5}, Landroidx/camera/core/MetadataImageReader;-><init>(IIII)V

    invoke-virtual {v0}, Landroidx/camera/core/MetadataImageReader;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-direct {v4, v0}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    new-instance v5, Lnm9;

    invoke-direct {v5, p0}, Lnm9;-><init>(Landroidx/camera/camera2/adapter/ZslControlImpl;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->ioExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroidx/camera/core/MetadataImageReader;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    new-instance v0, Landroidx/camera/core/impl/ImmediateSurface;

    invoke-virtual {v4}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v5

    if-eqz v5, :cond_b

    new-instance v6, Landroid/util/Size;

    invoke-virtual {v4}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getHeight()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v5, v6, v3}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v5, Ly99;

    invoke-direct {v5, v4, v1}, Ly99;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v3, v5, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {p1, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Landroidx/camera/core/impl/SessionConfig$Builder;

    new-instance v1, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v4}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getWidth()I

    move-result v3

    invoke-virtual {v4}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getImageFormat()I

    move-result v6

    invoke-direct {v1, v3, v5, v6}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    invoke-virtual {p1, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)Landroidx/camera/core/impl/SessionConfig$Builder;

    iput-object v2, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->metadataMatchingCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    iput-object v4, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    iput-object v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    return-void

    :cond_b
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-static {}, Lqz0;->e()V

    return-void
.end method

.method public clearZslConfig()V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->reset()V

    return-void
.end method

.method public dequeueImageFromBuffer()Landroidx/camera/core/ImageProxy;
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->zslRingBuffer:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    invoke-virtual {p0}, Landroidx/camera/core/internal/utils/ArrayRingBuffer;->dequeue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/ImageProxy;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZslControlImpl#dequeueImageFromBuffer: No such element"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getReprocessingImageReader$camera_camera2()Landroidx/camera/core/SafeCloseImageReaderProxy;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    return-object p0
.end method

.method public final getZslRingBuffer$camera_camera2()Landroidx/camera/core/internal/utils/ZslRingBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->zslRingBuffer:Landroidx/camera/core/internal/utils/ZslRingBuffer;

    return-object p0
.end method

.method public isZslDisabledByFlashMode()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByFlashMode:Z

    return p0
.end method

.method public isZslDisabledByUserCaseConfig()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByUseCaseConfig:Z

    return p0
.end method

.method public isZslSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/impl/SessionConfig;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroidx/camera/core/impl/SessionConfig;->getInputConfiguration()Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->getPrescribedStreamFormat()I

    move-result p2

    invoke-virtual {p0}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->getPrescribedSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->getPrescribedSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setReprocessingImageReader$camera_camera2(Landroidx/camera/core/SafeCloseImageReaderProxy;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageReader:Landroidx/camera/core/SafeCloseImageReaderProxy;

    return-void
.end method

.method public setZslDisabledByFlashMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByFlashMode:Z

    return-void
.end method

.method public setZslDisabledByUserCaseConfig(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByUseCaseConfig:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->clearRingBuffer()V

    :cond_0
    iput-boolean p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByUseCaseConfig:Z

    return-void
.end method

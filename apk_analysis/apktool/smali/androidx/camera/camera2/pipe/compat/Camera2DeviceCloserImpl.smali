.class public final Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$Companion;
    }
.end annotation


# static fields
.field public static final CAMERA_CLOSE_TIMEOUT_MS:J = 0x1b58L

.field public static final Companion:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$Companion;


# instance fields
.field private final camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

.field private final retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->Companion:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;

    return-void
.end method

.method public static final synthetic access$closeCameraDevice(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->closeCameraDevice(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V

    return-void
.end method

.method public static final synthetic access$createCaptureSession(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->createCaptureSession(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V

    return-void
.end method

.method public static final synthetic access$getRetryingCameraStateOpener$p(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;)Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;

    return-object p0
.end method

.method private final closeCameraDevice(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V
    .locals 8

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v2

    const-string v3, "CXCP"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "closeCameraDevice("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ln07;

    invoke-direct {v2}, Ln07;-><init>()V

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    new-instance v5, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v2, v6}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;-><init>(Landroid/hardware/camera2/CameraDevice;Ln07;Le02;)V

    const-wide/16 v6, 0x1b58

    invoke-virtual {v4, v6, v7, v5}, Landroidx/camera/camera2/pipe/core/Threads;->runBlockingCheckedOrNull(JLnl3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj59;

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to close CameraDevice("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") after 7000ms. The camera is likely in a bad state."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Landroidx/camera/camera2/pipe/CameraId;->Companion:Landroidx/camera/camera2/pipe/CameraId$Companion;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->shouldWaitForCameraDeviceOnClosed-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-boolean p0, v2, Ln07;->b:Z

    if-eqz p0, :cond_4

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Waiting for OnClosed from "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/16 v4, 0x7d0

    invoke-virtual {p2, v4, v5}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->awaitCameraDeviceClosed$camera_camera2_pipe(J)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Received OnClosed for "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Failed to close "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " after 2000ms!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private final createCaptureSession(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V
    .locals 5

    new-instance p0, Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0}, Lkt;->a(Z)Lht;

    move-result-object v0

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;

    invoke-direct {v3, v2, v0, v1, p0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;-><init>(Ljava/util/concurrent/CountDownLatch;Lht;Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void

    :cond_0
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CXCP"

    const-string v2, "Failed to create a blank capture session! Surfaces may not be disconnected properly."

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Lht;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_2
    return-void
.end method

.method private final handleQuirksBeforeClosing(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;ZZ)Lb36;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;",
            "Landroid/hardware/camera2/CameraDevice;",
            "Landroidx/camera/camera2/pipe/compat/AndroidCameraState;",
            "ZZ)",
            "Lb36<",
            "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;",
            "Landroidx/camera/camera2/pipe/compat/AndroidCameraState;",
            ">;"
        }
    .end annotation

    const-string v0, "Creating an empty capture session before closing "

    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v2

    const-string v3, "CXCP"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "handleQuirksBeforeClosing("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_2

    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string p1, "Camera2DeviceCloserImpl#reopenCameraDevice"

    :try_start_0
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Reopening camera device"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p0, p2, p3}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->access$closeCameraDevice(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->access$getRetryingCameraStateOpener$p(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;)Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;

    move-result-object p1

    invoke-interface {p1, v2, p0}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;->openAndAwaitCameraWithRetry-0r8Bogc(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;)Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_2
    new-instance p2, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;

    invoke-direct {p2, p1, p3}, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V

    move-object p1, p2

    :goto_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->getCameraDeviceWrapper()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->getAndroidCameraState()Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p5, :cond_6

    sget-object p2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string p2, "Camera2DeviceCloserImpl#createCaptureSession"

    :try_start_1
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->getCameraDeviceWrapper()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->access$createCaptureSession(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Created an empty capture session."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_6
    :goto_1
    new-instance p0, Lb36;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->getCameraDeviceWrapper()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->getAndroidCameraState()Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_7
    :goto_2
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "Failed to retain an opened camera device!"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public closeCamera(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;ZZ)V
    .locals 4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraDevice;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    sget-object v2, Landroidx/camera/camera2/pipe/CameraId;->Companion:Landroidx/camera/camera2/pipe/CameraId$Companion;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/camera/camera2/pipe/CameraId;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "Unwrapped camera device has camera ID "

    const-string p1, ", but the wrapped camera device has camera ID "

    invoke-static {p0, v2, p1}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt p2, v2, :cond_3

    invoke-interface {p4, p1}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;->removeListener(Landroidx/camera/camera2/pipe/compat/AudioRestrictionController$Listener;)V

    :cond_3
    move p4, p5

    move p5, p6

    move-object p2, v1

    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->handleQuirksBeforeClosing(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;ZZ)Lb36;

    move-result-object p5

    if-nez p5, :cond_5

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "CXCP"

    const-string p4, "Failed to handle quirks before closing the camera device!"

    invoke-static {p0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->onDeviceClosing()V

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->onDeviceClosed()V

    invoke-virtual {p3, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->onFinalized$camera_camera2_pipe(Landroid/hardware/camera2/CameraDevice;)V

    return-void

    :cond_5
    iget-object p6, p5, Lb36;->b:Ljava/lang/Object;

    check-cast p6, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    iget-object p5, p5, Lb36;->c:Ljava/lang/Object;

    check-cast p5, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-interface {p6, v0}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object p6

    if-eqz p6, :cond_6

    check-cast p6, Landroid/hardware/camera2/CameraDevice;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->onDeviceClosing()V

    invoke-direct {p0, p6, p5}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->closeCameraDevice(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->onDeviceClosed()V

    if-eqz p4, :cond_8

    invoke-virtual {p3, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->onFinalized$camera_camera2_pipe(Landroid/hardware/camera2/CameraDevice;)V

    return-void

    :cond_6
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_7
    if-eqz p2, :cond_8

    invoke-direct {p0, p2, p3}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->closeCameraDevice(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V

    :cond_8
    return-void
.end method

.method public final getThreads()Landroidx/camera/camera2/pipe/core/Threads;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    return-object p0
.end method

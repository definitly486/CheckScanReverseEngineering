.class public Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;,
        Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;
    }
.end annotation


# instance fields
.field private final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

.field private final cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

.field private final device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

.field private final extensionSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraExtensionSession;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final frameNumbers:Lmt;

.field private final id:I


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->callbackExecutor:Ljava/util/concurrent/Executor;

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraInterop;->nextCameraCaptureSessionId-159jkk4$camera_camera2_pipe()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->id:I

    invoke-static {}, Lkt;->c()Lmt;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->frameNumbers:Lmt;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->extensionSessionMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getCallbackExecutor$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$getCameraExtensionSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Landroid/hardware/camera2/CameraExtensionSession;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    return-object p0
.end method

.method public static final synthetic access$getExtensionSessionMap$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->extensionSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getFrameNumbers$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Lmt;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->frameNumbers:Lmt;

    return-object p0
.end method


# virtual methods
.method public abortCaptures()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCameraExtensionSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Landroid/hardware/camera2/CameraExtensionSession;

    move-result-object v2

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCallbackExecutor$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;

    check-cast p2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    invoke-direct {v4, p0, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;)V

    invoke-virtual {v2, p1, v3, v4}, Landroid/hardware/camera2/CameraExtensionSession;->capture(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I

    move-result p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCameraExtensionSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Landroid/hardware/camera2/CameraExtensionSession;

    move-result-object v2

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCallbackExecutor$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;

    check-cast p2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v4, p0, p2, v5}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;Ljava/util/Map;)V

    invoke-virtual {v2, p1, v3, v4}, Landroid/hardware/camera2/CameraExtensionSession;->capture(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    instance-of p1, p0, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "CXCP"

    if-eqz p1, :cond_2

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to execute call: Camera encountered an error: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast p0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {p1, p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p0

    const/4 p1, 0x1

    invoke-interface {v1, v0, p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    goto :goto_3

    :cond_2
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    if-nez p1, :cond_5

    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_5

    instance-of p1, p0, Ljava/lang/UnsupportedOperationException;

    if-nez p1, :cond_5

    instance-of p1, p0, Ljava/lang/NullPointerException;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    instance-of p1, p0, Ljava/lang/IllegalStateException;

    if-eqz p1, :cond_4

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "Failed to execute call: Camera may be closed"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    throw p0

    :cond_5
    :goto_2
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to execute call: Unexpected exception: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object p0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result p0

    const/4 p1, 0x0

    invoke-interface {v1, v0, p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p0, v0, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraExtensionSession;->close()V

    return-void
.end method

.method public finalizeOutputConfigurations(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CXCP"

    const-string p1, "CameraExtensionSession does not support finalizeOutputConfigurations()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    return-object p0
.end method

.method public getId-159jkk4()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->id:I

    return p0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRealTimeCaptureLatency()Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraExtensionSession;->getRealtimeStillCaptureLatency()Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isReprocessable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lqn1;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "CameraExtensionSession does not support setRepeatingBurst for more than oneCaptureRequest"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCameraExtensionSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Landroid/hardware/camera2/CameraExtensionSession;

    move-result-object v2

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCallbackExecutor$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;

    check-cast p2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    invoke-direct {v4, p0, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;)V

    invoke-virtual {v2, p1, v3, v4}, Landroid/hardware/camera2/CameraExtensionSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I

    move-result p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCameraExtensionSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Landroid/hardware/camera2/CameraExtensionSession;

    move-result-object v2

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCallbackExecutor$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;

    check-cast p2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v4, p0, p2, v5}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;Ljava/util/Map;)V

    invoke-virtual {v2, p1, v3, v4}, Landroid/hardware/camera2/CameraExtensionSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    instance-of p1, p0, Landroid/hardware/camera2/CameraAccessException;

    const-string p2, "CXCP"

    if-eqz p1, :cond_2

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to execute call: Camera encountered an error: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast p0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {p1, p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p0

    const/4 p1, 0x1

    invoke-interface {v1, v0, p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    goto :goto_3

    :cond_2
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    if-nez p1, :cond_5

    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_5

    instance-of p1, p0, Ljava/lang/UnsupportedOperationException;

    if-nez p1, :cond_5

    instance-of p1, p0, Ljava/lang/NullPointerException;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    instance-of p1, p0, Ljava/lang/IllegalStateException;

    if-eqz p1, :cond_4

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "Failed to execute call: Camera may be closed"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    throw p0

    :cond_5
    :goto_2
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to execute call: Unexpected exception: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object p0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result p0

    const/4 p1, 0x0

    invoke-interface {v1, v0, p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public stopRepeating()Z
    .locals 8

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCameraExtensionSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Landroid/hardware/camera2/CameraExtensionSession;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraExtensionSession;->stopRepeating()V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    instance-of v4, p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v5, 0x0

    const-string v6, "CXCP"

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Failed to execute call: Camera encountered an error: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v4, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast p0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v4, p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p0

    invoke-interface {v1, v0, p0, v3}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_1
    :goto_0
    move-object p0, v5

    goto :goto_2

    :cond_2
    instance-of v4, p0, Ljava/lang/IllegalArgumentException;

    if-nez v4, :cond_5

    instance-of v4, p0, Ljava/lang/SecurityException;

    if-nez v4, :cond_5

    instance-of v4, p0, Ljava/lang/UnsupportedOperationException;

    if-nez v4, :cond_5

    instance-of v4, p0, Ljava/lang/NullPointerException;

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_4

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Failed to execute call: Camera may be closed"

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    throw p0

    :cond_5
    :goto_1
    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Failed to execute call: Unexpected exception: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object p0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result p0

    invoke-interface {v1, v0, p0, v2}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    goto :goto_0

    :goto_2
    if-eqz p0, :cond_7

    move v2, v3

    :cond_7
    return v2
.end method

.method public unwrapAs(Lne4;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lqz0;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lvh;->g(Lne4;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

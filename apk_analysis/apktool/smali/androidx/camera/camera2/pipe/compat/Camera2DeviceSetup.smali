.class public final Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetupWrapper;


# instance fields
.field private final cameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

.field private final cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

.field private final cameraId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;Ljava/lang/String;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;->cameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;->cameraId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;Ljava/lang/String;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Ljh2;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;-><init>(Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;Ljava/lang/String;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)V

    return-void
.end method

.method public static final synthetic access$getCameraDeviceSetup$p(Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;->cameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    return-object p0
.end method


# virtual methods
.method public createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;->cameraId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    :try_start_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;->access$getCameraDeviceSetup$p(Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    instance-of p1, p0, Landroid/hardware/camera2/CameraAccessException;

    const-string v2, "CXCP"

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to execute call: Camera encountered an error: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast p0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {p1, p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p0

    const/4 p1, 0x1

    invoke-interface {v1, v0, p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    goto :goto_1

    :cond_1
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    if-nez p1, :cond_4

    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_4

    instance-of p1, p0, Ljava/lang/UnsupportedOperationException;

    if-nez p1, :cond_4

    instance-of p1, p0, Ljava/lang/NullPointerException;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    instance-of p1, p0, Ljava/lang/IllegalStateException;

    if-eqz p1, :cond_3

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "Failed to execute call: Camera may be closed"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    throw p0

    :cond_4
    :goto_0
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to execute call: Unexpected exception: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object p0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result p0

    const/4 p1, 0x0

    invoke-interface {v1, v0, p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

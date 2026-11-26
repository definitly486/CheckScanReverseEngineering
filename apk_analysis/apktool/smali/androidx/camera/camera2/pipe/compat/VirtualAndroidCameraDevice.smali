.class public final Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;


# instance fields
.field private final androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

.field private disconnected:Z

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createCaptureRequest-2PPcXtw(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CXCP"

    const-string p1, "createCaptureRequest failed: Virtual device disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createCaptureRequest-2PPcXtw(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public createCaptureSession(Landroidx/camera/camera2/pipe/compat/SessionConfigData;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CXCP"

    const-string v1, "createCaptureSession failed: Virtual device disconnected"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->getStateCallback()Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createCaptureSession(Landroidx/camera/camera2/pipe/compat/SessionConfigData;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public createCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/Surface;",
            ">;",
            "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    .line 49
    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CXCP"

    .line 51
    const-string p1, "createCaptureSession failed: Virtual device disconnected"

    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 53
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    const/4 p0, 0x0

    goto :goto_1

    .line 54
    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;",
            "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CXCP"

    const-string p1, "createCaptureSessionByOutputConfigurations failed: Virtual device disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-interface {p2}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/Surface;",
            ">;",
            "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CXCP"

    const-string p1, "createConstrainedHighSpeedCaptureSession failed: Virtual device disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-interface {p2}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public createExtensionSession(Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CXCP"

    const-string v1, "createExtensionSession failed: Virtual device disconnected"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->getExtensionStateCallback()Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createExtensionSession(Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CXCP"

    const-string p1, "createReprocessCaptureRequest failed: Virtual device disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "+",
            "Landroid/view/Surface;",
            ">;",
            "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CXCP"

    const-string p1, "createReprocessableCaptureSession failed: Virtual device disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public createReprocessableCaptureSessionByConfigurations(Landroidx/camera/camera2/pipe/compat/InputConfigData;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/InputConfigData;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;",
            "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

    if-eqz v1, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CXCP"

    const-string p1, "createReprocessableCaptureSessionByConfigurations failed: Virtual device disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->createReprocessableCaptureSessionByConfigurations(Landroidx/camera/camera2/pipe/compat/InputConfigData;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final disconnect$camera_camera2_pipe()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->disconnected:Z

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

.method public final getAndroidCameraDevice$camera_camera2_pipe()Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    return-object p0
.end method

.method public getCameraAudioRestriction-_b5Q8KE()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraAudioRestriction-_b5Q8KE()I

    move-result p0

    return p0
.end method

.method public getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCameraAudioRestrictionUpdated-LwUUkyU(I)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onCameraAudioRestrictionUpdated-LwUUkyU(I)V

    return-void
.end method

.method public onDeviceClosed()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onDeviceClosed()V

    return-void
.end method

.method public onDeviceClosing()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onDeviceClosing()V

    return-void
.end method

.method public unwrapAs(Lne4;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;->androidCameraDevice:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

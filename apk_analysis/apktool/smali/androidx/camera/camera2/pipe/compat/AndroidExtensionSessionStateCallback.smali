.class public final Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;
.super Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
.source "SourceFile"


# instance fields
.field private final _lastStateCallback:Lot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lot<",
            "Landroidx/camera/camera2/pipe/compat/SessionStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

.field private final device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

.field private final extensionSession:Lot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lot<",
            "Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

.field private final stateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->callbackExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p3}, Lkt;->d(Ljava/lang/Object;)Lot;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->_lastStateCallback:Lot;

    const/4 p1, 0x0

    invoke-static {p1}, Lkt;->d(Ljava/lang/Object;)Lot;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->extensionSession:Lot;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Ljava/util/concurrent/Executor;ILjh2;)V
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 39
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private final finalizeLastSession()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->_lastStateCallback:Lot;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lot;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    :cond_0
    return-void
.end method

.method private final finalizeSession()V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->finalizeLastSession()V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    return-void
.end method

.method private final getWrapped(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->extensionSession:Lot;

    iget-object v0, v0, Lot;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->wrapSession(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    move-result-object p1

    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->extensionSession:Lot;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lot;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->extensionSession:Lot;

    iget-object p0, p0, Lot;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    return-object p0
.end method

.method private final wrapSession(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->callbackExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1, p2, p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraExtensionSession;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;->onClosed(Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;)V

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->finalizeSession()V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getId-159jkk4()I

    move-result v0

    invoke-interface {p1, p0, v0}, Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;->onClosed-rphkYDA(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraExtensionSession;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    move-result-object p1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;->onConfigureFailed(Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;)V

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->finalizeSession()V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getId-159jkk4()I

    move-result p1

    invoke-interface {v0, p0, p1}, Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;->onConfigureFailed-rphkYDA(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraExtensionSession;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    move-result-object p1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;->onConfigured(Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;)V

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->finalizeLastSession()V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getId-159jkk4()I

    move-result p1

    invoke-interface {v0, p0, p1}, Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;->onConfigured-rphkYDA(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

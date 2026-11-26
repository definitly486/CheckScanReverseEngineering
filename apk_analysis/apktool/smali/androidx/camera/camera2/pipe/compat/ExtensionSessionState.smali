.class public final Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;


# instance fields
.field private final captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    return-void
.end method


# virtual methods
.method public onClosed(Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onClosed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    return-void
.end method

.method public onConfigureFailed(Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onConfigureFailed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    return-void
.end method

.method public onConfigured(Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onConfigured(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    return-void
.end method

.method public onSessionDisconnected()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionDisconnected()V

    return-void
.end method

.method public onSessionFinalized()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    return-void
.end method

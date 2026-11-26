.class public final Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;,
        Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;
    }
.end annotation


# instance fields
.field private final _deviceStateCallback:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;

.field private final _sessionStateCallback:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;->_deviceStateCallback:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;

    new-instance v0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;->_sessionStateCallback:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;

    return-void
.end method


# virtual methods
.method public final getDeviceStateCallback()Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;->_deviceStateCallback:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;

    return-object p0
.end method

.method public final getSessionStateCallback()Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;->_sessionStateCallback:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;

    return-object p0
.end method

.method public final updateCallbacks(Landroidx/camera/core/impl/SessionConfig;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;->_deviceStateCallback:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;->updateCallbacks$camera_camera2(Landroidx/camera/core/impl/SessionConfig;)V

    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;->_sessionStateCallback:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->updateCallbacks$camera_camera2(Landroidx/camera/core/impl/SessionConfig;)V

    return-void
.end method

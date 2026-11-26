.class public abstract Landroidx/camera/camera2/pipe/config/Camera2Module;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindAudioRestrictionController(Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;)Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;
.end method

.method public abstract bindCamera2DeviceCloser(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;)Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;
.end method

.method public abstract bindCamera2DeviceManager(Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;)Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;
.end method

.method public abstract bindCameraAvailabilityMonitor(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;
.end method

.method public abstract bindCameraErrorListener(Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;
.end method

.method public abstract bindCameraMetadataProvider(Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;)Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;
.end method

.method public abstract bindCameraOpener(Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;)Landroidx/camera/camera2/pipe/compat/CameraOpener;
.end method

.method public abstract bindCameraPipeCameraBackend(Landroidx/camera/camera2/pipe/compat/Camera2Backend;)Landroidx/camera/camera2/pipe/CameraBackend;
    .annotation runtime Landroidx/camera/camera2/pipe/config/DefaultCameraBackend;
    .end annotation
.end method

.method public abstract bindRetryingCameraStateOpener(Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;)Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;
.end method

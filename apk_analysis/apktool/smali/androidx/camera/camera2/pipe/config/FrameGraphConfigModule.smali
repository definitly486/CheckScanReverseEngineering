.class public final Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cameraGraphComponent:Landroidx/camera/camera2/pipe/config/CameraGraphComponent;

.field private final config:Landroidx/camera/camera2/pipe/FrameGraph$Config;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/config/CameraGraphComponent;Landroidx/camera/camera2/pipe/FrameGraph$Config;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;->cameraGraphComponent:Landroidx/camera/camera2/pipe/config/CameraGraphComponent;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;->config:Landroidx/camera/camera2/pipe/FrameGraph$Config;

    return-void
.end method


# virtual methods
.method public final provideCameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;->cameraGraphComponent:Landroidx/camera/camera2/pipe/config/CameraGraphComponent;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraGraphComponent;->cameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    return-object p0
.end method

.method public final provideCameraGraphConfig()Landroidx/camera/camera2/pipe/FrameGraph$Config;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;->config:Landroidx/camera/camera2/pipe/FrameGraph$Config;

    return-object p0
.end method

.method public final provideController3A()Landroidx/camera/camera2/pipe/graph/Controller3A;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;->cameraGraphComponent:Landroidx/camera/camera2/pipe/config/CameraGraphComponent;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraGraphComponent;->controller3A()Landroidx/camera/camera2/pipe/graph/Controller3A;

    move-result-object p0

    return-object p0
.end method

.method public final provideFrameCaptureQueue()Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;->cameraGraphComponent:Landroidx/camera/camera2/pipe/config/CameraGraphComponent;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraGraphComponent;->frameCaptureQueue()Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    move-result-object p0

    return-object p0
.end method

.method public final provideFrameDistributor()Landroidx/camera/camera2/pipe/internal/FrameDistributor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;->cameraGraphComponent:Landroidx/camera/camera2/pipe/config/CameraGraphComponent;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraGraphComponent;->frameDistributor()Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    move-result-object p0

    return-object p0
.end method

.method public final provideGraphProcessor()Landroidx/camera/camera2/pipe/graph/GraphProcessor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;->cameraGraphComponent:Landroidx/camera/camera2/pipe/config/CameraGraphComponent;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraGraphComponent;->graphProcessor()Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    move-result-object p0

    return-object p0
.end method

.method public final provideSessionLock()Landroidx/camera/camera2/pipe/internal/GraphSessionLock;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;->cameraGraphComponent:Landroidx/camera/camera2/pipe/config/CameraGraphComponent;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/config/CameraGraphComponent;->sessionLock()Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    move-result-object p0

    return-object p0
.end method

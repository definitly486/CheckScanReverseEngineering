.class public final Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cameraBackend:Landroidx/camera/camera2/pipe/CameraBackend;

.field private final graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

.field private final graphId:Landroidx/camera/camera2/pipe/CameraGraphId;

.field private final graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

.field private final shutdownListener:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;

.field private final streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

.field private final surfaceTracker:Landroidx/camera/camera2/pipe/SurfaceTracker;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraBackend;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/SurfaceTracker;Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->cameraBackend:Landroidx/camera/camera2/pipe/CameraBackend;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->graphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->surfaceTracker:Landroidx/camera/camera2/pipe/SurfaceTracker;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->shutdownListener:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;

    return-void
.end method


# virtual methods
.method public final provideCameraBackend()Landroidx/camera/camera2/pipe/CameraBackend;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->cameraBackend:Landroidx/camera/camera2/pipe/CameraBackend;

    return-object p0
.end method

.method public final provideCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    return-object p0
.end method

.method public final provideCameraGraphId()Landroidx/camera/camera2/pipe/CameraGraphId;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->graphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    return-object p0
.end method

.method public final provideGraphListener()Landroidx/camera/camera2/pipe/graph/GraphListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    return-object p0
.end method

.method public final provideShutdownListener()Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->shutdownListener:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;

    return-object p0
.end method

.method public final provideStreamGraph()Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    return-object p0
.end method

.method public final provideSurfaceGraph()Landroidx/camera/camera2/pipe/SurfaceTracker;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->surfaceTracker:Landroidx/camera/camera2/pipe/SurfaceTracker;

    return-object p0
.end method

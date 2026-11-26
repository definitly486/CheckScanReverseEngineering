.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraController;


# annotations
.annotation runtime Landroidx/camera/camera2/pipe/config/Camera2ControllerScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;,
        Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;

.field private static final MS_TO_NS:I = 0xf4240

.field private static final PRIORITIES_CHANGED_THRESHOLD_NS:J

.field private static final RESTART_TIMEOUT_WHEN_ENABLED_MS:J = 0x2bcL


# instance fields
.field private _isForeground:Z

.field private final camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

.field private final camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

.field private cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

.field private cameraAvailabilityJob:Lmb4;

.field private final cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

.field private cameraPrioritiesJob:Lmb4;

.field private final cameraStatusMonitor:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;

.field private final cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

.field private final captureSequenceProcessorFactory:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;

.field private final captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

.field private final closedDeferred:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final concurrentSessionSequencer:Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

.field private controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

.field private currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

.field private currentCameraStateJob:Lmb4;

.field private currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

.field private currentSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "+",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

.field private final graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

.field private lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

.field private lastCameraPrioritiesChangedTs:Landroidx/camera/camera2/pipe/core/TimestampNs;

.field private final lock:Ljava/lang/Object;

.field private restartJob:Lmb4;

.field private final scope:Ly22;

.field private final shutdownListener:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;

.field private final streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

.field private final strictMode:Landroidx/camera/camera2/pipe/StrictMode;

.field private final surfaceTracker:Landroidx/camera/camera2/pipe/SurfaceTracker;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;

.field private final timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->Companion:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;

    const-wide/32 v0, 0xbebc200

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->PRIORITIES_CHANGED_THRESHOLD_NS:J

    return-void
.end method

.method public constructor <init>(Ly22;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/SurfaceTracker;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Ly22;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->surfaceTracker:Landroidx/camera/camera2/pipe/SurfaceTracker;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraStatusMonitor:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;

    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    iput-object p9, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->captureSequenceProcessorFactory:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;

    iput-object p10, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    iput-object p11, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    iput-object p12, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iput-object p13, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    iput-object p14, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    iput-object p15, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->shutdownListener:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;

    move-object/from16 p2, p16

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->_isForeground:Z

    sget-object p2, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    new-instance p2, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p3

    const/4 p5, 0x0

    invoke-direct {p2, p3, p5}, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;-><init>(Ljava/lang/String;Ljh2;)V

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getConcurrentCameraGraphs$camera_camera2_pipe()Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraGraphId()Landroidx/camera/camera2/pipe/CameraGraphId;

    move-result-object p3

    move-object/from16 p4, p17

    invoke-virtual {p4, p3, p2}, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;->getSequencer(Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;)Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p5

    :goto_0
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->concurrentSessionSequencer:Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

    new-instance p2, Lyp1;

    invoke-direct {p2}, Lyp1;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->closedDeferred:Lxp1;

    new-instance p2, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;

    invoke-direct {p2, p0, p5}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Le02;)V

    const/4 p3, 0x3

    invoke-static {p1, p5, p5, p2, p3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailabilityJob:Lmb4;

    new-instance p2, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$2;

    invoke-direct {p2, p0, p5}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$2;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Le02;)V

    invoke-static {p1, p5, p5, p2, p3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraPrioritiesJob:Lmb4;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->detachSessionAndCamera$lambda$0(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$bindSessionToCamera(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->bindSessionToCamera(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCameraAvailability$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    return-object p0
.end method

.method public static final synthetic access$getCameraStatusMonitor$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraStatusMonitor:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;

    return-object p0
.end method

.method public static final synthetic access$getLastCameraError$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/CameraError;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    return-object p0
.end method

.method public static final synthetic access$getLastCameraPrioritiesChangedTs$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/core/TimestampNs;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraPrioritiesChangedTs:Landroidx/camera/camera2/pipe/core/TimestampNs;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getPRIORITIES_CHANGED_THRESHOLD_NS$cp()J
    .locals 2

    sget-wide v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->PRIORITIES_CHANGED_THRESHOLD_NS:J

    return-wide v0
.end method

.method public static final synthetic access$getSurfaceTracker$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/SurfaceTracker;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->surfaceTracker:Landroidx/camera/camera2/pipe/SurfaceTracker;

    return-object p0
.end method

.method public static final synthetic access$isClosed(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onCameraStatusChanged(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->onCameraStatusChanged(Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;)V

    return-void
.end method

.method public static final synthetic access$onStateClosed(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Landroidx/camera/camera2/pipe/compat/CameraStateClosed;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->onStateClosed(Landroidx/camera/camera2/pipe/compat/CameraStateClosed;)V

    return-void
.end method

.method public static final synthetic access$startLocked(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->startLocked()V

    return-void
.end method

.method public static final synthetic access$stopLocked(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->stopLocked()V

    return-void
.end method

.method public static synthetic b(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lj59;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->startLocked$lambda$2(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lj59;)Z

    move-result p0

    return p0
.end method

.method private final bindSessionToCamera(Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lr07;

    invoke-direct {v0}, Lr07;-><init>()V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    iput-object v3, v0, Lr07;->b:Ljava/lang/Object;

    sget-object v4, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/compat/VirtualCamera;->getState()Lhd3;

    move-result-object v1

    new-instance v2, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$bindSessionToCamera$3;

    invoke-direct {v2, v0, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$bindSessionToCamera$3;-><init>(Lr07;Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V

    invoke-interface {v1, v2, p1}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method private final detachSessionAndCamera(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCamera;)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Ly22;

    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCamera;Le02;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v2, v1, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSING;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSING;

    invoke-static {p2, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lbz0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lbz0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Lsb4;->g(Lnl3;)Lhp2;

    :cond_0
    return-void
.end method

.method private static final detachSessionAndCamera$lambda$0(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Ljava/lang/Throwable;)Lj59;
    .locals 3

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;

    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CXCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->shutdownListener:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;->onControllerClosed(Landroidx/camera/camera2/pipe/CameraController;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->closedDeferred:Lxp1;

    sget-object v0, Lj59;->a:Lj59;

    invoke-interface {p1, v0}, Lxp1;->f(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Ly22;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lz22;->b(Ly22;Ljava/util/concurrent/CancellationException;)V

    return-object v0

    :goto_1
    monitor-exit p1

    throw p0
.end method

.method public static synthetic getControllerState$camera_camera2_pipe$annotations()V
    .locals 0

    return-void
.end method

.method private final isClosed()Z
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v1, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSING;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSING;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final onCameraStatusChanged(Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;)V
    .locals 3

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CXCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") camera status changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    instance-of v1, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraAvailable;

    if-eqz v1, :cond_2

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    instance-of v1, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;

    if-eqz v1, :cond_3

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    goto :goto_0

    :cond_3
    instance-of p1, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraPrioritiesChanged;

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/core/TimestampNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/TimestampNs;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraPrioritiesChangedTs:Landroidx/camera/camera2/pipe/core/TimestampNs;

    :cond_4
    :goto_0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->tryRestart()V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private final onStateClosed(Landroidx/camera/camera2/pipe/compat/CameraStateClosed;)V
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->getCameraErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->getCameraErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->getCameraErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraError;->isDisconnected-impl(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Landroidx/camera/camera2/pipe/CameraController$ControllerState$DISCONNECTED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$DISCONNECTED;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "CXCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object v1, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "CXCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " encountered error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->getCameraErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraError;->toString-impl(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object p1, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->surfaceTracker:Landroidx/camera/camera2/pipe/SurfaceTracker;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/SurfaceTracker;->unregisterAllSurfaces()V

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->tryRestart()V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private final startLocked()V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    move-result v1

    const-string v2, "Ignoring start(): "

    const-string v3, "CXCP"

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is already closed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v4, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STARTED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STARTED;

    invoke-static {v1, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is already started"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getConcurrentCameraGraphs$camera_camera2_pipe()Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->getCameraIds()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    invoke-static {v6}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v2

    invoke-static {v2}, Ll1;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    :cond_3
    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    invoke-static {v6}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v7

    invoke-static {v2, v7}, Lmr7;->i(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v2}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    new-instance v10, Lcz0;

    const/4 v2, 0x0

    invoke-direct {v10, v0, v2}, Lcz0;-><init>(Ljava/lang/Object;I)V

    const/4 v9, 0x0

    invoke-interface/range {v5 .. v10}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;->open-zDSwpeU(Ljava/lang/String;Ljava/util/List;Landroidx/camera/camera2/pipe/graph/GraphListener;ZLnl3;)Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    move-result-object v2

    if-nez v2, :cond_5

    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to start "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Open request submission failed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    const-string v6, "Check failed."

    if-nez v5, :cond_a

    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    if-nez v5, :cond_9

    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    new-instance v7, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    iget-object v8, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    iget-object v9, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    iget-object v10, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->captureSequenceProcessorFactory:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;

    iget-object v11, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    iget-object v12, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getFlags()Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    move-result-object v13

    iget-object v14, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->concurrentSessionSequencer:Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

    iget-object v15, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v6, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Ly22;

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-direct/range {v7 .. v18}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;-><init>(Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraGraph$Flags;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/core/Threads;Ly22;)V

    iput-object v7, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSurfaceMap:Ljava/util/Map;

    if-eqz v2, :cond_6

    invoke-virtual {v7, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->configureSurfaceMap(Ljava/util/Map;)V

    :cond_6
    iput-object v4, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Started "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCameraStateJob:Lmb4;

    if-eqz v2, :cond_8

    invoke-interface {v2, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_8
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Ly22;

    new-instance v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$startLocked$5;

    invoke-direct {v3, v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$startLocked$5;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Le02;)V

    const/4 v4, 0x3

    invoke-static {v2, v1, v1, v3, v4}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v1

    iput-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCameraStateJob:Lmb4;

    return-void

    :cond_9
    invoke-static {v6}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {v6}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method private static final startLocked$lambda$2(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lj59;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isForeground()Z

    move-result p0

    return p0
.end method

.method private final stopLocked()V
    .locals 5

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    move-result v0

    const-string v1, "Ignoring stop(): "

    const-string v2, "CXCP"

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is already closed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v3, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPING;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPING;

    invoke-static {v0, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v4, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;

    invoke-static {v0, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    const/4 v4, 0x0

    iput-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    iput-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    iput-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Stopping "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v1, v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->detachSessionAndCamera(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCamera;)V

    return-void

    :cond_3
    :goto_0
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " already stopping or stopped"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private final tryRestart()V
    .locals 8

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v6

    sget-object v1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->Companion:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraPrioritiesChangedTs:Landroidx/camera/camera2/pipe/core/TimestampNs;

    invoke-virtual/range {v1 .. v7}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;->shouldRestart-X9Wt83s$camera_camera2_pipe(Landroidx/camera/camera2/pipe/CameraController$ControllerState;Landroidx/camera/camera2/pipe/CameraError;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;Landroidx/camera/camera2/pipe/core/TimestampNs;J)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Not restarting. Controller state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getControllerState$camera_camera2_pipe()Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", last camera error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$getLastCameraError$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", camera availability = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$getCameraAvailability$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", last camera priorities changed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$getLastCameraPrioritiesChangedTs$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/core/TimestampNs;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", current timestamp = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Landroidx/camera/camera2/pipe/core/TimestampNs;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CXCP"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getFlags()Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->getEnableRestartDelays()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x2bc

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->restartJob:Lmb4;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2, v3}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Ly22;

    new-instance v4, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;

    invoke-direct {v4, v0, v1, p0, v3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;-><init>(JLandroidx/camera/camera2/pipe/compat/Camera2CameraController;Le02;)V

    const/4 v0, 0x3

    invoke-static {v2, v3, v3, v4, v0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->restartJob:Lmb4;

    return-void
.end method


# virtual methods
.method public awaitClosed(Le02;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "CXCP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "#awaitClosed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v5, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;

    invoke-static {v4, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "CXCP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "#awaitClosed: Controller is already closed."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p0

    :cond_5
    :try_start_1
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v5, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSING;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSING;

    invoke-static {v4, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "CXCP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "#awaitClosed: Controller isn\'t closing!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object p0

    :cond_7
    :try_start_2
    sget-object p1, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->closedDeferred:Lxp1;

    iput v3, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;->label:I

    invoke-interface {p0, v0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :goto_3
    monitor-exit v2

    throw p0
.end method

.method public close()V
    .locals 7

    const-string v0, "Quirk: Closing "

    const-string v1, "Closed "

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    sget-object v3, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSING;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSING;

    iput-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "CXCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    const/4 v5, 0x0

    iput-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    iput-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->restartJob:Lmb4;

    if-eqz v6, :cond_2

    invoke-interface {v6, v5}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCameraStateJob:Lmb4;

    if-eqz v6, :cond_3

    invoke-interface {v6, v5}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iput-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCameraStateJob:Lmb4;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailabilityJob:Lmb4;

    if-eqz v6, :cond_4

    invoke-interface {v6, v5}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_4
    iput-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailabilityJob:Lmb4;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraPrioritiesJob:Lmb4;

    if-eqz v6, :cond_5

    invoke-interface {v6, v5}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    iput-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraPrioritiesJob:Lmb4;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraStatusMonitor:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;

    invoke-static {v5}, Lv93;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v4, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->detachSessionAndCamera(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCamera;)V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getFlags()Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->getCloseCameraDeviceOnClose()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->shouldCloseCameraBeforeCreatingCaptureSession-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "CXCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " during "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "#close"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;->close-EfqyGwQ(Ljava/lang/String;)Lmk2;

    :cond_8
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2

    throw p0
.end method

.method public getCameraGraphId()Landroidx/camera/camera2/pipe/CameraGraphId;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    return-object p0
.end method

.method public getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getControllerState$camera_camera2_pipe()Landroidx/camera/camera2/pipe/CameraController$ControllerState;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    return-object p0
.end method

.method public getOutputLatency-n5Pu2dI(Landroidx/camera/camera2/pipe/StreamId;)Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;
    .locals 4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->getRealtimeCaptureLatency()Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;->getCaptureLatency()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;->getProcessingLatency()J

    move-result-wide p0

    mul-long/2addr p0, v2

    new-instance v2, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;

    invoke-direct {v2, v0, v1, p0, p1}, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;-><init>(JJ)V

    return-object v2

    :cond_0
    return-object v1
.end method

.method public isForeground()Z
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->_isForeground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final setControllerState$camera_camera2_pipe(Landroidx/camera/camera2/pipe/CameraController$ControllerState;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    return-void
.end method

.method public setForeground(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->_isForeground:Z

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

.method public start()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->startLocked()V

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

.method public stop()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->stopLocked()V

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

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera2CameraController("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraGraphId()Landroidx/camera/camera2/pipe/CameraGraphId;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateSurfaceMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "+",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSurfaceMap:Ljava/util/Map;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->configureSurfaceMap(Ljava/util/Map;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

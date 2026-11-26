.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxs6;"
    }
.end annotation


# instance fields
.field private final camera2DeviceManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final camera2QuirksProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraGraphIdProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraphId;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraStatusMonitorProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraSurfaceManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraSurfaceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final captureSequenceProcessorFactoryProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final captureSessionFactoryProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final concurrentSessionSequencersProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;",
            ">;"
        }
    .end annotation
.end field

.field private final graphConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;"
        }
    .end annotation
.end field

.field private final graphListenerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphListener;",
            ">;"
        }
    .end annotation
.end field

.field private final scopeProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Ly22;",
            ">;"
        }
    .end annotation
.end field

.field private final shutdownListenerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;",
            ">;"
        }
    .end annotation
.end field

.field private final streamGraphProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final strictModeProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/StrictMode;",
            ">;"
        }
    .end annotation
.end field

.field private final surfaceTrackerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/SurfaceTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final threadsProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;"
        }
    .end annotation
.end field

.field private final timeSourceProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/TimeSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Ly22;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/StrictMode;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphListener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/SurfaceTracker;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraSurfaceManager;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/TimeSource;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraphId;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->scopeProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->threadsProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->strictModeProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->graphConfigProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->graphListenerProvider:Lxs6;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->surfaceTrackerProvider:Lxs6;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->cameraStatusMonitorProvider:Lxs6;

    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->captureSessionFactoryProvider:Lxs6;

    iput-object p9, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->captureSequenceProcessorFactoryProvider:Lxs6;

    iput-object p10, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->camera2DeviceManagerProvider:Lxs6;

    iput-object p11, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->cameraSurfaceManagerProvider:Lxs6;

    iput-object p12, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->camera2QuirksProvider:Lxs6;

    iput-object p13, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->timeSourceProvider:Lxs6;

    iput-object p14, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->cameraGraphIdProvider:Lxs6;

    iput-object p15, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->shutdownListenerProvider:Lxs6;

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->streamGraphProvider:Lxs6;

    move-object/from16 p1, p17

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->concurrentSessionSequencersProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Ly22;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/StrictMode;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphListener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/SurfaceTracker;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraSurfaceManager;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/TimeSource;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraphId;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;",
            ">;)",
            "Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v0 .. v17}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Ly22;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/SurfaceTracker;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;)Landroidx/camera/camera2/pipe/compat/Camera2CameraController;
    .locals 18

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v0 .. v17}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;-><init>(Ly22;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/SurfaceTracker;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/compat/Camera2CameraController;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->scopeProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ly22;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->threadsProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->strictModeProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/camera/camera2/pipe/StrictMode;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->graphConfigProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->graphListenerProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/camera/camera2/pipe/graph/GraphListener;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->surfaceTrackerProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/camera/camera2/pipe/SurfaceTracker;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->cameraStatusMonitorProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->captureSessionFactoryProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->captureSequenceProcessorFactoryProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->camera2DeviceManagerProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->cameraSurfaceManagerProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->camera2QuirksProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->timeSourceProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroidx/camera/camera2/pipe/core/TimeSource;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->cameraGraphIdProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroidx/camera/camera2/pipe/CameraGraphId;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->shutdownListenerProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->streamGraphProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->concurrentSessionSequencersProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;

    invoke-static/range {v2 .. v18}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->newInstance(Ly22;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/SurfaceTracker;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;)Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 163
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController_Factory;->get()Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    move-result-object p0

    return-object p0
.end method

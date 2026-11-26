.class public final Landroidx/camera/camera2/pipe/compat/CaptureSessionState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/CaptureSessionState$Companion;,
        Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;,
        Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;
    }
.end annotation


# static fields
.field public static final ABORT_CAPTURES_TIMEOUT_MS:J = 0x7d0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAPTURE_SESSION_TIMEOUT_MS:J = 0xbb8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CLOSE_SESSION_TIMEOUT_MS:J = 0xbb8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$Companion;


# instance fields
.field private _cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

.field private _surfaceMap:Ljava/util/Map;
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

.field private final _surfaceTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/Surface;",
            "Ljava/lang/AutoCloseable;",
            ">;"
        }
    .end annotation
.end field

.field private final activeOutputSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/OutputId;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final activeStreamSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

.field private final cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

.field private final cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

.field private final captureSequenceProcessorFactory:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;

.field private final captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

.field private final captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

.field private final concurrentSessionSequencer:Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

.field private final debugId:I

.field private final finalized:Lot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lot<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

.field private hasAttemptedCaptureSession:Z

.field private final lock:Ljava/lang/Object;

.field private pendingOutputMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "+",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private pendingSurfaceMap:Ljava/util/Map;
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

.field private final scope:Ly22;

.field private sessionCreatingTimestamp:Landroidx/camera/camera2/pipe/core/TimestampNs;

.field private final sessionDisconnected:Ljava/util/concurrent/CountDownLatch;

.field private final sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

.field private state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

.field private final streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

.field private final strictMode:Landroidx/camera/camera2/pipe/StrictMode;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;

.field private final timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->Companion:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraGraph$Flags;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/core/Threads;Ly22;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSequenceProcessorFactory:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->concurrentSessionSequencer:Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    iput-object p9, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    iput-object p10, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    iput-object p11, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->scope:Ly22;

    invoke-static {}, Landroidx/camera/camera2/pipe/compat/CaptureSessionStateKt;->getCaptureSessionDebugIds()Llt;

    move-result-object p1

    invoke-virtual {p1}, Llt;->b()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->debugId:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkt;->d(Ljava/lang/Object;)Lot;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalized:Lot;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeStreamSurfaceMap:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeOutputSurfaceMap:Ljava/util/Map;

    if-eqz p7, :cond_0

    new-instance p1, Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    invoke-direct {p1, p7}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;-><init>(Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    sget-object p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->PENDING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionDisconnected:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceTokenMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getCaptureSessionAttemptCompleted$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static final synthetic access$getCaptureSessionFactory$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    return-object p0
.end method

.method public static final synthetic access$getGraphListener$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/graph/GraphListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    return-object p0
.end method

.method public static final synthetic access$getSessionCreatingTimestamp$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/core/TimestampNs;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionCreatingTimestamp:Landroidx/camera/camera2/pipe/core/TimestampNs;

    return-object p0
.end method

.method public static final synthetic access$getSessionDisconnected$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionDisconnected:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    return-object p0
.end method

.method public static final synthetic access$getTimeSource$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/core/TimeSource;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    return-object p0
.end method

.method public static final synthetic access$tryCreateCaptureSession(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->tryCreateCaptureSession(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final configure(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 10

    const-string v0, "Configured "

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSequenceProcessorFactory:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeStreamSurfaceMap:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeOutputSurfaceMap:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, p1, v4, v5}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;->create(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;

    move-result-object v2

    instance-of v4, v2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    if-eqz v4, :cond_0

    new-instance v4, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    sget-object v5, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->Companion:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$Companion;

    invoke-virtual {v5, v2}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$Companion;->from(Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object v5

    check-cast v2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    invoke-direct {v4, p1, v5, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)V

    :goto_0
    move-object v2, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    new-instance v4, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    sget-object v5, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->Companion:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$Companion;

    invoke-virtual {v5, v2}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$Companion;->from(Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object v2

    invoke-direct {v4, p1, v2, v3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)V

    goto :goto_0

    :goto_1
    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    :cond_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v4, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-ne p1, v4, :cond_6

    if-nez v2, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingOutputMap:Ljava/util/Map;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingSurfaceMap:Ljava/util/Map;

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_2

    :cond_3
    move p1, v5

    :goto_2
    sget-object v6, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz p1, :cond_4

    invoke-direct {p0, v5}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalizeOutputsIfAvailable(Z)V

    :cond_4
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "CXCP"

    sget-object v5, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getTimeSource$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/core/TimeSource;

    move-result-object v5

    invoke-interface {v5}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v5

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getSessionCreatingTimestamp$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/core/TimestampNs;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/TimestampNs;->unbox-impl()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%.3f ms"

    long-to-double v5, v5

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_5
    :goto_3
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->getProcessor()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphStarted(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1

    throw p0

    :cond_6
    :goto_5
    monitor-exit v1

    return-void

    :goto_6
    monitor-exit v1

    throw p0
.end method

.method private final finalizeOutputsIfAvailable(Z)V
    .locals 10

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingOutputMap:Ljava/util/Map;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingSurfaceMap:Ljava/util/Map;

    sget-object v4, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "#finalizeOutputConfigurations"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v4

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    invoke-static {v7}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    check-cast v7, Landroid/view/Surface;

    invoke-interface {v6, v7}, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;->addSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->getSession()Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object v6

    invoke-interface {v6, v0}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->finalizeOutputConfigurations(Ljava/util/List;)Z

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v7, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeStreamSurfaceMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    iget-object v9, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    invoke-interface {v9, v8}, Landroidx/camera/camera2/pipe/StreamGraph;->get-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v7, :cond_3

    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeOutputSurfaceMap:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lqn1;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-interface {v8}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v8

    invoke-static {v8}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_3
    const-string p0, "Cannot finalize a multi-output stream!"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p0, "Required value was null."

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "CXCP"

    sget-object v6, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getTimeSource$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/core/TimeSource;

    move-result-object v6

    invoke-interface {v6}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Finalized "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v9

    invoke-static {v9}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "f ms"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    long-to-double v4, v4

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :cond_8
    :goto_4
    sget-object v2, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    if-eqz v7, :cond_9

    if-eqz p1, :cond_9

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->getProcessor()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphModified(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V

    :cond_9
    sget-object p0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_5
    monitor-exit v0

    throw p0

    :cond_a
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic finalizeOutputsIfAvailable$default(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalizeOutputsIfAvailable(Z)V

    return-void
.end method

.method public static synthetic finalizeSession$camera_camera2_pipe$default(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalizeSession$camera_camera2_pipe(J)V

    return-void
.end method

.method private final tryCreateCaptureSession(Le02;)Ljava/lang/Object;
    .locals 11
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

    const-string v0, "Warning: "

    const-string v1, "Created "

    const-string v2, "Unexpected state: "

    instance-of v3, p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;

    iget v4, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;

    invoke-direct {v3, p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Le02;)V

    :goto_0
    iget-object p1, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->result:Ljava/lang/Object;

    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    iget v5, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->label:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v4, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lr07;

    iget-object v3, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lr07;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p1, Lr07;

    invoke-direct {p1}, Lr07;-><init>()V

    new-instance v5, Lr07;

    invoke-direct {v5}, Lr07;-><init>()V

    iget-object v8, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v9, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v10, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->PENDING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-eq v9, v10, :cond_3

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-object p0

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_3
    :try_start_1
    iget-object v9, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceMap:Ljava/util/Map;

    iput-object v9, p1, Lr07;->b:Ljava/lang/Object;

    iget-object v9, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    iput-object v9, v5, Lr07;->b:Ljava/lang/Object;

    iget-object v10, p1, Lr07;->b:Ljava/lang/Object;

    if-eqz v10, :cond_17

    if-nez v9, :cond_4

    goto/16 :goto_9

    :cond_4
    sget-object v9, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    iput-object v9, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    iput-boolean v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->hasAttemptedCaptureSession:Z

    sget-object v9, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    iget-object v9, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    invoke-interface {v9}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/camera/camera2/pipe/core/TimestampNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/TimestampNs;

    move-result-object v9

    iput-object v9, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionCreatingTimestamp:Landroidx/camera/camera2/pipe/core/TimestampNs;

    sget-object v9, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    iget-object v8, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    if-eqz v8, :cond_7

    sget-object v9, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "CXCP"

    const-string v10, "Awaiting session lock"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-object p1, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->L$1:Ljava/lang/Object;

    iput v6, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->label:I

    invoke-virtual {v8, v3}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->awaitSessionLock(Le02;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_6

    return-object v4

    :cond_6
    move-object v3, p1

    move-object v4, v5

    :goto_1
    move-object p1, v3

    move-object v5, v4

    :cond_7
    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "CXCP"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Creating CameraCaptureSession from "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lr07;->b:Ljava/lang/Object;

    check-cast v8, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_8
    move-object v8, v7

    :goto_2
    if-nez v8, :cond_9

    const-string v8, "null"

    goto :goto_3

    :cond_9
    invoke-static {v8}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " using "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " with "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lr07;->b:Ljava/lang/Object;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    sget-object v4, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "CameraDevice-"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v5, Lr07;->b:Ljava/lang/Object;

    check-cast v6, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_b
    move-object v6, v7

    :goto_4
    const-string v8, "#createCaptureSession"

    invoke-static {v4, v6, v8}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_2
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getCaptureSessionFactory$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    move-result-object v4

    iget-object v5, v5, Lr07;->b:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    iget-object v6, p1, Lr07;->b:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Ljava/util/Map;

    invoke-interface {v4, v5, v6, p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;->create(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Ljava/util/Map;Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    instance-of v5, v4, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;

    if-nez v5, :cond_d

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "CXCP"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create capture session for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x21

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_d
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v8, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-eq v6, v8, :cond_15

    sget-object v8, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-ne v6, v8, :cond_e

    goto/16 :goto_7

    :cond_e
    sget-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-ne v6, v0, :cond_14

    sget-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeStreamSurfaceMap:Ljava/util/Map;

    iget-object v2, p1, Lr07;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeOutputSurfaceMap:Ljava/util/Map;

    move-object v2, v4

    check-cast v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;->getOutputSurfaceMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    check-cast v4, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;->getDeferred()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "CXCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lr07;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Waiting to finalize "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception p0

    goto/16 :goto_8

    :cond_f
    :goto_5
    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingOutputMap:Ljava/util/Map;

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceMap:Ljava/util/Map;

    if-eqz p1, :cond_11

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_11
    move-object v1, v7

    :cond_12
    if-eqz v1, :cond_13

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne p1, v0, :cond_13

    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingSurfaceMap:Ljava/util/Map;

    :cond_13
    sget-object p1, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v5

    invoke-direct {p0, v7}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->configure(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_14
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    :goto_7
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "CXCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " was "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getState$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " while configuration was in progress."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    sget-object p0, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v5

    return-object p0

    :goto_8
    monitor-exit v5

    throw p0

    :catchall_2
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_17
    :goto_9
    :try_start_5
    sget-object p0, Lj59;->a:Lj59;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v8

    return-object p0

    :goto_a
    monitor-exit v8

    throw p0
.end method

.method private final updateTrackedSurfaces(Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "+",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "+",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lmr7;->j(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceTokenMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/AutoCloseable;

    if-eqz v2, :cond_8

    instance-of v3, v2, Ljava/lang/AutoCloseable;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_2

    :cond_0
    instance-of v3, v2, Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v4

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v5, 0x0

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-interface {v3, v7, v8, v6}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    if-nez v5, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :cond_4
    instance-of v3, v2, Landroid/content/res/TypedArray;

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Landroid/content/res/TypedArray;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_5
    instance-of v3, v2, Landroid/media/MediaMetadataRetriever;

    if-eqz v3, :cond_6

    move-object v3, v2

    check-cast v3, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :cond_6
    instance-of v3, v2, Landroid/media/MediaDrm;

    if-eqz v3, :cond_7

    move-object v3, v2

    check-cast v3, Landroid/media/MediaDrm;

    invoke-virtual {v3}, Landroid/media/MediaDrm;->release()V

    goto :goto_2

    :cond_7
    invoke-static {}, Lmi2;->b()V

    return-void

    :cond_8
    const/4 v2, 0x0

    :cond_9
    :goto_2
    if-eqz v2, :cond_a

    goto :goto_0

    :cond_a
    const-string p0, "Surface "

    const-string p1, " doesn\'t have a matching surface token!"

    invoke-static {v1, p0, p1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_b
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p2, p1}, Lmr7;->j(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/Surface;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    invoke-virtual {v0, p2}, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->registerSurface$camera_camera2_pipe(Landroid/view/Surface;)Ljava/lang/AutoCloseable;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceTokenMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_c
    return-void
.end method


# virtual methods
.method public final configureSurfaceMap(Ljava/util/Map;)V
    .locals 7
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

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-eq v1, v2, :cond_5

    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceMap:Ljava/util/Map;

    if-nez v1, :cond_1

    sget-object v1, Lmx2;->b:Lmx2;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    invoke-direct {p0, v1, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->updateTrackedSurfaces(Ljava/util/Map;Ljava/util/Map;)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceMap:Ljava/util/Map;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingOutputMap:Ljava/util/Map;

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingSurfaceMap:Ljava/util/Map;

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne p1, v1, :cond_4

    iput-object v4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingSurfaceMap:Ljava/util/Map;

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->scope:Ly22;

    new-instance v1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$configureSurfaceMap$1$1;

    invoke-direct {v1, p0, v3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$configureSurfaceMap$1$1;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Le02;)V

    invoke-static {p1, v3, v3, v1, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_4
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->scope:Ly22;

    new-instance v1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$configureSurfaceMap$1$2;

    invoke-direct {v1, p0, v3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$configureSurfaceMap$1$2;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Le02;)V

    invoke-static {p1, v3, v3, v1, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_5
    :goto_2
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public final disconnect()V
    .locals 10

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-eq v1, v2, :cond_c

    sget-object v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-ne v1, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->getCloseCaptureSessionOnDisconnect()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->hasAttemptedCaptureSession:Z

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    move-object v1, v2

    :goto_0
    sget-object v4, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->release()V

    :cond_3
    const-wide/16 v4, 0xbb8

    if-eqz v3, :cond_6

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "CXCP"

    const-string v3, "Waiting for CameraCaptureSession configuration"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    new-instance v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$3;

    invoke-direct {v3, p0, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$3;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Le02;)V

    invoke-virtual {v1, v4, v5, v3}, Landroidx/camera/camera2/pipe/core/Threads;->runBlockingCheckedOrNull(JLnl3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj59;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CXCP"

    const-string v1, "Waiting for CameraCaptureSession configuration timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_6
    :goto_1
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getGraphListener$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/graph/GraphListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "#onGraphStopping"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphStopping()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->getProcessor()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object v0

    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "CXCP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " Shutdown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "#shutdown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->getAbortCapturesOnStop()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    new-instance v7, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$9;

    invoke-direct {v7, p0, v0, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$9;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;Le02;)V

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v8, v9, v7}, Landroidx/camera/camera2/pipe/core/Threads;->runBlockingCheckedOrNull(JLnl3;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj59;

    if-nez v6, :cond_8

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "CXCP"

    const-string v7, "Failed to abort captures in 2000ms"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "#disconnect"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->getCaptureSequenceProcessor()Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnect$camera_camera2_pipe()V

    :cond_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->getCloseCaptureSessionOnDisconnect()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    new-instance v7, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;

    invoke-direct {v7, p0, v1, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;Le02;)V

    invoke-virtual {v6, v4, v5, v7}, Landroidx/camera/camera2/pipe/core/Threads;->runBlockingCheckedOrNull(JLnl3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj59;

    if-nez v1, :cond_a

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "CXCP"

    const-string v2, "Failed to close the capture session in 3000ms"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getGraphListener$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/graph/GraphListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#onGraphStopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-interface {v1, v0}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphStopped(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getGraphListener$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/graph/GraphListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onGraphStopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-interface {v0, v2}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphStopped(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_2
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionDisconnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_c
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public final finalizeSession$camera_camera2_pipe(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->scope:Ly22;

    new-instance v1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$finalizeSession$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$finalizeSession$1;-><init>(JLandroidx/camera/camera2/pipe/compat/CaptureSessionState;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void

    :cond_0
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CXCP"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Finalizing "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceTokenMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceTokenMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/AutoCloseable;

    instance-of p2, p1, Ljava/lang/AutoCloseable;

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_0

    :cond_3
    instance-of p2, p1, Ljava/util/concurrent/ExecutorService;

    if-eqz p2, :cond_7

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object p2

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    :cond_5
    :goto_1
    if-nez p2, :cond_6

    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-interface {p1, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    if-nez v0, :cond_5

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_7
    instance-of p2, p1, Landroid/content/res/TypedArray;

    if-eqz p2, :cond_8

    check-cast p1, Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_8
    instance-of p2, p1, Landroid/media/MediaMetadataRetriever;

    if-eqz p2, :cond_9

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :cond_9
    instance-of p2, p1, Landroid/media/MediaDrm;

    if-eqz p2, :cond_a

    check-cast p1, Landroid/media/MediaDrm;

    invoke-virtual {p1}, Landroid/media/MediaDrm;->release()V

    goto :goto_0

    :cond_a
    invoke-static {}, Lmi2;->b()V

    :cond_b
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final getCameraDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getRealtimeCaptureLatency()Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->getSession()Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    instance-of v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;

    goto :goto_1

    :cond_1
    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->getRealTimeCaptureLatency()Landroid/hardware/camera2/CameraExtensionSession$StillCaptureLatency;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2
.end method

.method public onActive(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " Active"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CXCP"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onCaptureQueueEmpty(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " CaptureQueueEmpty"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CXCP"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onClosed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Closed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "#onClosed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->shutdown()V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->release()V

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onConfigureFailed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Configuration Failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "#onConfigureFailed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    new-instance v0, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    sget-object v1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;-><init>(IZLjh2;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphError(Landroidx/camera/camera2/pipe/GraphState$GraphStateError;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->shutdown()V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->release()V

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onConfigured(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Configured"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#configure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->configure(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->release()V

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onReady(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " Ready"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CXCP"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSessionDisconnected()V
    .locals 2

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " session disconnecting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onSessionDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->disconnect()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onSessionDisconnected Await"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getSessionDisconnected$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public onSessionFinalized()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalized:Lot;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lot;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " session finalizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onSessionFinalized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->shutdown()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalizeSession$camera_camera2_pipe(J)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1
    return-void
.end method

.method public final setCameraDevice(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-eq v1, v2, :cond_2

    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->scope:Ly22;

    new-instance v1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$cameraDevice$2$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$cameraDevice$2$1;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Le02;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final shutdown()V
    .locals 8

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->disconnect()V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->hasAttemptedCaptureSession:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->getFinalizeSessionOnCloseBehavior-Bm6Tfm4()I

    move-result v1

    sget-object v6, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;->getIMMEDIATE-Bm6Tfm4()I

    move-result v7

    invoke-static {v1, v7}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;->getTIMEOUT-Bm6Tfm4()I

    move-result v6

    invoke-static {v1, v6}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v3, 0x7d0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v5, :cond_4

    invoke-virtual {p0, v3, v4}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalizeSession$camera_camera2_pipe(J)V

    :cond_4
    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CaptureSessionState-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->debugId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

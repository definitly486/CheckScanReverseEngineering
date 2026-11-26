.class public final Landroidx/camera/camera2/pipe/compat/AndroidCameraState;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;
    }
.end annotation


# instance fields
.field private final _state:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Landroidx/camera/camera2/pipe/compat/CameraState;",
            ">;"
        }
    .end annotation
.end field

.field private final attemptNumber:I

.field private final attemptTimestampNanos:J

.field private final audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

.field private final camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

.field private final camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

.field private final cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

.field private final cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

.field private final cameraId:Ljava/lang/String;

.field private final debugId:I

.field private final interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

.field private final lock:Ljava/lang/Object;

.field private final metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private openTimestampNanos:Landroidx/camera/camera2/pipe/core/TimestampNs;

.field private opening:Z

.field private pendingClose:Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

.field private final requestTimestampNanos:J

.field private shouldDelayFinalizing:Z

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;

.field private final timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraMetadata;IJLandroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    iput p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptNumber:I

    iput-wide p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptTimestampNanos:J

    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    iput-object p9, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iput-object p10, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    iput-object p11, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    iput-object p12, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iput-object p13, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    invoke-static {}, Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;->getAndroidCameraDebugIds()Llt;

    move-result-object p1

    invoke-virtual {p1}, Llt;->b()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->debugId:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

    sget-object p1, Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lxg5;

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p7, "Opening "

    invoke-direct {p1, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p7, "CXCP"

    invoke-static {p7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne p3, p2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    invoke-interface {p6}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide p4

    :goto_0
    iput-wide p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->requestTimestampNanos:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraMetadata;IJLandroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;ILjh2;)V
    .locals 18

    move/from16 v0, p14

    and-int/lit16 v1, v0, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v15, v2

    goto :goto_0

    :cond_0
    move-object/from16 v15, p12

    :goto_0
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    move-object/from16 v16, v2

    goto :goto_1

    :cond_1
    move-object/from16 v16, p13

    :goto_1
    const/16 v17, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    .line 132
    invoke-direct/range {v3 .. v17}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraMetadata;IJLandroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Ljh2;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraMetadata;IJLandroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Ljh2;)V
    .locals 0

    .line 131
    invoke-direct/range {p0 .. p13}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraMetadata;IJLandroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;)V

    return-void
.end method

.method public static final synthetic access$getAttemptNumber$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptNumber:I

    return p0
.end method

.method public static final synthetic access$getAttemptTimestampNanos$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptTimestampNanos:J

    return-wide v0
.end method

.method public static final synthetic access$getRequestTimestampNanos$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->requestTimestampNanos:J

    return-wide v0
.end method

.method private final closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V
    .locals 10

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraState;

    instance-of v1, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;->getCameraDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->pendingClose:Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    if-nez v0, :cond_1

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->pendingClose:Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->opening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_1
    move-object p2, v2

    :goto_1
    monitor-exit v1

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getReason()Landroidx/camera/camera2/pipe/compat/ClosedReason;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_EXCEPTION:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v3

    const/4 v5, 0x0

    invoke-interface {v0, v1, v3, v5}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lxg5;

    new-instance v1, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;-><init>(Landroidx/camera/camera2/pipe/CameraError;Ljh2;)V

    invoke-interface {v0, v1}, Lxg5;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getReason()Landroidx/camera/camera2/pipe/compat/ClosedReason;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_CLOSED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldReopenCameraWhenClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldDelayFinalizing:Z

    sget-object v0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0

    :cond_3
    :goto_2
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    move-result v9

    move-object v6, p0

    move-object v5, p1

    invoke-interface/range {v3 .. v9}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;->closeCamera(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;ZZ)V

    goto :goto_3

    :cond_4
    move-object v6, p0

    :goto_3
    iget-object p0, v6, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lxg5;

    invoke-direct {v6, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->computeClosedState(Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    move-result-object p1

    invoke-interface {p0, p1}, Lxg5;->setValue(Ljava/lang/Object;)V

    :cond_5
    return-void

    :goto_4
    monitor-exit v1

    throw p0
.end method

.method private final closeWith-8PWMtlg(Ljava/lang/Throwable;I)V
    .locals 8

    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    sget-object v1, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_EXCEPTION:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraError;->box-impl(I)Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;-><init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;JLandroidx/camera/camera2/pipe/CameraError;Ljava/lang/Throwable;ILjh2;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V

    return-void
.end method

.method private final computeClosedState(Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)Landroidx/camera/camera2/pipe/compat/CameraStateClosed;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v1

    iget-object v3, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->openTimestampNanos:Landroidx/camera/camera2/pipe/core/TimestampNs;

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getClosingTimestamp-vQl9yQU()J

    move-result-wide v4

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/TimestampNs;->unbox-impl()J

    move-result-wide v7

    iget-wide v9, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptTimestampNanos:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/camera/camera2/pipe/core/DurationNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object v7

    move-object v12, v7

    goto :goto_0

    :cond_0
    move-object v12, v6

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/TimestampNs;->unbox-impl()J

    move-result-wide v7

    iget-wide v9, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->requestTimestampNanos:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/camera/camera2/pipe/core/DurationNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object v7

    move-object v14, v7

    goto :goto_1

    :cond_1
    move-object v14, v6

    :goto_1
    if-nez v3, :cond_2

    :goto_2
    move-object v15, v6

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/TimestampNs;->unbox-impl()J

    move-result-wide v6

    sub-long v6, v4, v6

    invoke-static {v6, v7}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/camera/camera2/pipe/core/DurationNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object v6

    goto :goto_2

    :goto_3
    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v1

    iget-object v9, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getReason()Landroidx/camera/camera2/pipe/compat/ClosedReason;

    move-result-object v10

    iget v0, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptNumber:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getException()Ljava/lang/Throwable;

    move-result-object v13

    new-instance v8, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/core/DurationNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object v16

    const/16 v18, 0x0

    invoke-direct/range {v8 .. v18}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;Ljh2;)V

    return-object v8
.end method

.method private final shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->shouldCreateEmptyCaptureSessionBeforeClosing-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final shouldReopenCameraWhenClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->shouldCloseCameraBeforeCreatingCaptureSession-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final awaitCameraDeviceClosed$camera_camera2_pipe(J)Z
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0
.end method

.method public final awaitClosed(Le02;)Ljava/lang/Object;
    .locals 2
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

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getState()Ly68;

    move-result-object p0

    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$awaitClosed$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$awaitClosed$2;-><init>(Le02;)V

    invoke-static {p0, v0, p1}, Lue3;->b(Lhd3;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final close()V
    .locals 11

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraState;

    instance-of v1, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;->getCameraDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const-class v1, Landroid/hardware/camera2/CameraDevice;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/camera2/CameraDevice;

    :cond_1
    new-instance v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    sget-object v4, Landroidx/camera/camera2/pipe/compat/ClosedReason;->APP_CLOSED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const/16 v9, 0xe

    const/4 v10, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;-><init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;JLandroidx/camera/camera2/pipe/CameraError;Ljava/lang/Throwable;ILjh2;)V

    invoke-direct {p0, v2, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V

    return-void
.end method

.method public final closeWith$camera_camera2_pipe(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Ljava/lang/Throwable;)I

    move-result v1

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_UNDETERMINED-v7Vf74A()I

    move-result v0

    invoke-static {v1, v0}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith-8PWMtlg(Ljava/lang/Throwable;I)V

    return-void
.end method

.method public final getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    return-object p0
.end method

.method public final getState()Ly68;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Landroidx/camera/camera2/pipe/compat/CameraState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lxg5;

    return-object p0
.end method

.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": onClosed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldDelayFinalizing:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CXCP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "#onClosed: Delaying finalizing."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->onFinalized$camera_camera2_pipe(Landroid/hardware/camera2/CameraDevice;)V

    return-void

    :goto_1
    monitor-exit v1

    throw p0

    :cond_3
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    sget-object v2, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_DISCONNECTED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DISCONNECTED-v7Vf74A()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraError;->box-impl(I)Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v5

    const/16 v7, 0xa

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;-><init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;JLandroidx/camera/camera2/pipe/CameraError;Ljava/lang/Throwable;ILjh2;)V

    invoke-direct {p0, p1, v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_2
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onError-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    sget-object v2, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_ERROR:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0, p2}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(I)I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraError;->box-impl(I)Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v5

    const/16 v7, 0xa

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;-><init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;JLandroidx/camera/camera2/pipe/CameraError;Ljava/lang/Throwable;ILjh2;)V

    invoke-direct {p0, p1, v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_2
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final onFinalized$camera_camera2_pipe(Landroid/hardware/camera2/CameraDevice;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onFinalized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onFinalized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    sget-object v3, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_CLOSED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const/16 v8, 0xe

    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;-><init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;JLandroidx/camera/camera2/pipe/CameraError;Ljava/lang/Throwable;ILjh2;)V

    invoke-direct {p0, p1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/TimestampNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/TimestampNs;

    move-result-object v2

    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->openTimestampNanos:Landroidx/camera/camera2/pipe/core/TimestampNs;

    sget-object v2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "#onOpened"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    const-string v2, "CXCP"

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->access$getRequestTimestampNanos$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)J

    move-result-wide v6

    sub-long v6, v0, v6

    invoke-static {v6, v7}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->access$getAttemptTimestampNanos$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)J

    move-result-wide v8

    sub-long/2addr v0, v8

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->access$getAttemptNumber$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)I

    move-result v8

    const-wide v9, 0x412e848000000000L    # 1000000.0

    if-ne v8, v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Opened "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%.3f ms"

    long-to-double v6, v6

    div-double/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5, v4, v1, v0}, Leh;->c([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Opened "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " in "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "%.3f ms"

    long-to-double v6, v6

    div-double/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v11, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%.3f ms"

    long-to-double v0, v0

    div-double/2addr v0, v9

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " total) after "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->access$getAttemptNumber$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " attempts."

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->pendingClose:Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    if-nez v0, :cond_2

    iput-boolean v5, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->opening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    :goto_1
    monitor-exit v1

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    :cond_3
    if-eqz v0, :cond_4

    move-object v1, v0

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldReopenCameraWhenClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    move-result v5

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v1

    invoke-direct {p0, v6, v7, v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object v3, p0

    move-object v2, p1

    invoke-static/range {v0 .. v8}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;->closeCamera$default(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;ZZILjava/lang/Object;)V

    return-void

    :cond_4
    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    iget-object v8, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    iget-object v9, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    iget-object v10, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    iget-object v11, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    const/4 v12, 0x0

    move-object v7, p1

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Landroidx/camera/camera2/pipe/core/Threads;Ljh2;)V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;->addListener(Landroidx/camera/camera2/pipe/compat/AudioRestrictionController$Listener;)V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lxg5;

    new-instance v2, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    invoke-direct {v2, v1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V

    invoke-interface {v0, v2}, Lxg5;->setValue(Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->opening:Z

    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->pendingClose:Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    if-eqz v7, :cond_5

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lxg5;

    new-instance v2, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v5

    invoke-direct {v2, v5, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;-><init>(Landroidx/camera/camera2/pipe/CameraError;Ljh2;)V

    invoke-interface {v0, v2}, Lxg5;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldReopenCameraWhenClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    move-result v5

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v8

    invoke-direct {p0, v2, v6, v8}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    move-result v6

    move-object v3, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;->closeCamera(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;ZZ)V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lxg5;

    invoke-direct {p0, v7}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->computeClosedState(Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    move-result-object v1

    invoke-interface {v0, v1}, Lxg5;->setValue(Ljava/lang/Object;)V

    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :goto_2
    monitor-exit v1

    throw v0

    :cond_6
    const-string v0, "Check failed."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraState-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->debugId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

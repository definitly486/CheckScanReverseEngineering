.class public final Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;


# instance fields
.field private final audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

.field private final cameraAvailabilityMonitor:Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;

.field private final cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

.field private final cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

.field private final cameraStateOpener:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

.field private final devicePolicyManager:Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;

.field private final timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->Companion:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/core/Threads;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraStateOpener:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraAvailabilityMonitor:Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->devicePolicyManager:Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    return-void
.end method

.method public static final synthetic access$getTimeSource$p(Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;)Landroidx/camera/camera2/pipe/core/TimeSource;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    return-object p0
.end method


# virtual methods
.method public cancelOpen()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraStateOpener:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cancelOpen$camera_camera2_pipe()V

    return-void
.end method

.method public openAndAwaitCameraWithRetry-0r8Bogc(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;)Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#openAndAwaitCameraWithRetry("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Threads;->getBlockingDispatcher()Lr22;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2;-><init>(Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Le02;)V

    invoke-static {v0, v1}, Lbv0;->a(Lo22;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;

    return-object p0
.end method

.method public openCameraWithRetry-aeCOTgg(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Lnl3;Le02;)Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;",
            "Lnl3<",
            "-",
            "Lj59;",
            "Ljava/lang/Boolean;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    instance-of v3, v2, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;

    iget v4, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;

    invoke-direct {v3, v0, v2}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;-><init>(Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;Le02;)V

    :goto_0
    iget-object v2, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->result:Ljava/lang/Object;

    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    iget v5, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    const/4 v6, 0x2

    const-string v7, "CXCP"

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_5

    if-eq v5, v9, :cond_4

    if-eq v5, v6, :cond_3

    if-ne v5, v8, :cond_2

    iget-wide v11, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    iget-object v1, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$5:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor$Session;

    iget-object v5, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/lang/AutoCloseable;

    iget-object v13, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Ljava/lang/Object;

    check-cast v13, Lp07;

    iget-object v14, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Ljava/lang/Object;

    check-cast v14, Lnl3;

    iget-object v15, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Ljava/lang/Object;

    check-cast v15, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    iget-object v8, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    :try_start_0
    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v9

    move-object v9, v4

    move v4, v6

    move-object v6, v2

    const/4 v2, 0x3

    :cond_1
    move-wide/from16 v17, v11

    move-object v11, v1

    move-object v12, v8

    move-object v1, v13

    move-object v8, v15

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_a

    :cond_2
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v10

    :cond_3
    iget-wide v11, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    iget-object v1, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$5:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor$Session;

    iget-object v5, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/lang/AutoCloseable;

    iget-object v8, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lp07;

    iget-object v13, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lnl3;

    iget-object v14, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Ljava/lang/Object;

    check-cast v14, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    iget-object v15, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    :try_start_1
    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v29, v13

    move-object v13, v8

    move-object v8, v15

    move-object v15, v14

    move-object/from16 v14, v29

    goto/16 :goto_4

    :cond_4
    iget-wide v11, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    iget-object v1, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lp07;

    iget-object v5, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lnl3;

    iget-object v8, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Ljava/lang/Object;

    check-cast v8, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    iget-object v13, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    sget-object v2, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v11

    new-instance v2, Lp07;

    invoke-direct {v2}, Lp07;-><init>()V

    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraAvailabilityMonitor:Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;

    iput-object v1, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/Object;

    move-object/from16 v8, p2

    iput-object v8, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Ljava/lang/Object;

    move-object/from16 v13, p3

    iput-object v13, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Ljava/lang/Object;

    iput-object v2, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Ljava/lang/Object;

    iput-wide v11, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    iput v9, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    invoke-interface {v5, v1, v3}, Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;->startMonitoring-0r8Bogc(Ljava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_6

    :goto_1
    move-object v9, v4

    goto/16 :goto_8

    :cond_6
    move-object/from16 v29, v13

    move-object v13, v1

    move-object v1, v2

    move-object v2, v5

    move-object/from16 v5, v29

    :goto_2
    check-cast v2, Ljava/lang/AutoCloseable;

    :try_start_2
    move-object v14, v2

    check-cast v14, Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor$Session;

    move-wide/from16 v29, v11

    move-object v11, v14

    move-wide/from16 v14, v29

    move-object v12, v13

    :goto_3
    iget v13, v1, Lp07;->b:I

    add-int/2addr v13, v9

    iput v13, v1, Lp07;->b:I

    iget-object v9, v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraStateOpener:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    iget-object v10, v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    iput-object v12, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/Object;

    iput-object v8, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Ljava/lang/Object;

    iput-object v1, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Ljava/lang/Object;

    iput-object v2, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$4:Ljava/lang/Object;

    iput-object v11, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$5:Ljava/lang/Object;

    iput-wide v14, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    iput v6, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    move-object/from16 v18, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v10

    move-object v3, v11

    move-object v11, v9

    invoke-virtual/range {v11 .. v18}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->tryOpenCamera-7pD7j80$camera_camera2_pipe(Ljava/lang/String;IJLandroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Le02;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v8, v4, :cond_7

    goto :goto_1

    :cond_7
    move-object v13, v5

    move-object v5, v2

    move-object v2, v8

    move-object v8, v12

    move-wide v11, v14

    move-object v14, v13

    move-object v13, v1

    move-object v1, v3

    move-object/from16 v15, v16

    move-object/from16 v3, v18

    :goto_4
    :try_start_3
    check-cast v2, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    sget-object v9, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    iget-object v9, v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    invoke-interface {v9}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v9

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v22

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getCameraState()Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    invoke-static {v5, v9}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    :cond_8
    :try_start_4
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v9

    if-nez v9, :cond_a

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Camera open failed without an error. The CameraGraph may have been stopped or closed. Abandoning the camera open attempt."

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    const/4 v9, 0x0

    invoke-static {v5, v9}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    :cond_a
    :try_start_5
    sget-object v9, Lj59;->a:Lj59;

    invoke-interface {v14, v9}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    sget-object v19, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->Companion:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v20

    iget v9, v13, Lp07;->b:I

    iget-object v10, v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->devicePolicyManager:Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;

    invoke-interface {v10}, Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;->getCamerasDisabled()Z

    move-result v24

    iget-object v10, v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;->getCameraOpenRetryMaxTimeoutNs-QWez1Bs()Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object v10

    move-object/from16 v26, v10

    :goto_5
    move/from16 v21, v9

    goto :goto_6

    :cond_b
    const/16 v26, 0x0

    goto :goto_5

    :goto_6
    invoke-virtual/range {v19 .. v26}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;->shouldRetry-rbpwgO0$camera_camera2_pipe(IIJZZLandroidx/camera/camera2/pipe/core/DurationNs;)Z

    move-result v9

    move-object/from16 v6, v19

    move-wide/from16 v27, v22

    move/from16 v10, v25

    if-eqz v9, :cond_c

    move-object/from16 p1, v2

    iget v2, v13, Lp07;->b:I

    move-object/from16 v17, v4

    const/4 v4, 0x1

    if-le v2, v4, :cond_d

    goto :goto_7

    :cond_c
    move-object/from16 p1, v2

    move-object/from16 v17, v4

    :goto_7
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v4

    invoke-interface {v2, v8, v4, v9}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_d
    if-nez v9, :cond_f

    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lp07;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " attempts and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->access$getTimeSource$p(Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;)Landroidx/camera/camera2/pipe/core/TimeSource;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v2

    sub-long/2addr v2, v11

    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "f ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    long-to-double v2, v2

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v8

    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, v2, v3}, Ljava/lang/Double;-><init>(D)V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v9, 0x0

    invoke-static {v9, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Last error was "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraError;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_e
    const/4 v9, 0x0

    invoke-static {v5, v9}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p1

    :cond_f
    const/4 v4, 0x1

    const/4 v9, 0x0

    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v2

    invoke-virtual {v6, v10, v2}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;->shouldActivateActiveResume-8PWMtlg$camera_camera2_pipe(ZI)Z

    move-result v2

    move-wide/from16 v9, v27

    invoke-virtual {v6, v9, v10, v2}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;->getRetryDelayMs-t8DbYm4$camera_camera2_pipe(JZ)J

    move-result-wide v9

    iput-object v8, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/Object;

    iput-object v15, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Ljava/lang/Object;

    iput-object v14, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Ljava/lang/Object;

    iput-object v13, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$4:Ljava/lang/Object;

    iput-object v1, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$5:Ljava/lang/Object;

    iput-wide v11, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    const/4 v2, 0x3

    iput v2, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    invoke-interface {v1, v9, v10, v3}, Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor$Session;->awaitAvailableCamera(JLe02;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v9, v17

    if-ne v6, v9, :cond_1

    :goto_8
    return-object v9

    :goto_9
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_10

    sget-object v6, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Timeout expired, retrying camera open for camera "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_10
    move-object v2, v9

    move v9, v4

    move-object v4, v2

    move-object v2, v5

    move-object v5, v14

    move-wide/from16 v14, v17

    const/4 v6, 0x2

    const/4 v10, 0x0

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v5, v2

    :goto_a
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v5, v1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

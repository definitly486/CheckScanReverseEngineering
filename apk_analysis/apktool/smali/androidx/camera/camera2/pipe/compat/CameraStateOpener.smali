.class public final Landroidx/camera/camera2/pipe/compat/CameraStateOpener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/CameraStateOpener$Companion;
    }
.end annotation


# static fields
.field public static final CAMERA_OPEN_CANCEL_TIMEOUT_MS:J = 0x7d0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAMERA_OPEN_TIMEOUT_MS:J = 0xbb8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Landroidx/camera/camera2/pipe/compat/CameraStateOpener$Companion;


# instance fields
.field private final camera2MetadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

.field private final camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

.field private final cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

.field private final cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

.field private cameraOpenCancelled:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraOpener:Landroidx/camera/camera2/pipe/compat/CameraOpener;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;

.field private final timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->Companion:Landroidx/camera/camera2/pipe/compat/CameraStateOpener$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraOpener;Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/core/Threads;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraOpener:Landroidx/camera/camera2/pipe/compat/CameraOpener;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->camera2MetadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    new-instance p1, Lyp1;

    invoke-direct {p1}, Lyp1;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraOpenCancelled:Lxp1;

    return-void
.end method

.method public static final synthetic access$getCameraOpenCancelled$p(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;)Lxp1;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraOpenCancelled:Lxp1;

    return-object p0
.end method

.method public static final synthetic access$getCameraOpener$p(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;)Landroidx/camera/camera2/pipe/compat/CameraOpener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraOpener:Landroidx/camera/camera2/pipe/compat/CameraOpener;

    return-object p0
.end method


# virtual methods
.method public final cancelOpen$camera_camera2_pipe()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraOpenCancelled:Lxp1;

    sget-object v0, Lj59;->a:Lj59;

    invoke-interface {p0, v0}, Lxp1;->f(Ljava/lang/Object;)Z

    return-void
.end method

.method public final tryOpenCamera-7pD7j80$camera_camera2_pipe(Ljava/lang/String;IJLandroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Le02;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;",
            "Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    instance-of v3, v2, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;

    iget v4, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;

    invoke-direct {v3, v0, v2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;-><init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Le02;)V

    :goto_0
    iget-object v2, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->result:Ljava/lang/Object;

    sget-object v4, La32;->COROUTINE_SUSPENDED:La32;

    iget v5, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->label:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget-wide v9, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->J$0:J

    iget v1, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->I$0:I

    iget-object v5, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$2:Ljava/lang/Object;

    check-cast v5, Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    iget-object v7, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$1:Ljava/lang/Object;

    check-cast v7, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    iget-object v11, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$0:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    move v12, v1

    move-object/from16 v20, v5

    move-object/from16 v17, v7

    move-wide v13, v9

    move-object v10, v11

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->camera2MetadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    iput-object v1, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$0:Ljava/lang/Object;

    move-object/from16 v5, p5

    iput-object v5, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$1:Ljava/lang/Object;

    move-object/from16 v9, p6

    iput-object v9, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$2:Ljava/lang/Object;

    move/from16 v10, p2

    iput v10, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->I$0:I

    move-wide/from16 v11, p3

    iput-wide v11, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->J$0:J

    iput v7, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->label:I

    invoke-interface {v2, v1, v3}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;->getCameraMetadata-0r8Bogc(Ljava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v17, v5

    move-object/from16 v20, v9

    move-wide v13, v11

    move v12, v10

    move-object v10, v1

    :goto_1
    move-object v11, v2

    check-cast v11, Landroidx/camera/camera2/pipe/CameraMetadata;

    new-instance v9, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    iget-object v15, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v7, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;->getCameraDeviceStateCallback()Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v7

    move-object/from16 v21, v7

    goto :goto_2

    :cond_5
    move-object/from16 v21, v8

    :goto_2
    iget-object v7, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;->getCameraCaptureSessionListener()Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    move-result-object v7

    move-object/from16 v22, v7

    goto :goto_3

    :cond_6
    move-object/from16 v22, v8

    :goto_3
    const/16 v23, 0x0

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    invoke-direct/range {v9 .. v23}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraMetadata;IJLandroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Ljh2;)V

    new-instance v1, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;

    invoke-direct {v1, v0, v10, v9, v8}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;-><init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Le02;)V

    iput-object v8, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$0:Ljava/lang/Object;

    iput-object v8, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$1:Ljava/lang/Object;

    iput-object v8, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$2:Ljava/lang/Object;

    iput v6, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->label:I

    invoke-static {v1, v3}, Lrm9;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_7

    :goto_4
    return-object v4

    :cond_7
    return-object v0
.end method

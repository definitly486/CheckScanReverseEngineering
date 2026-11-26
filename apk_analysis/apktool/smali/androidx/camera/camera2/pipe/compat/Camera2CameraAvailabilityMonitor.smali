.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;


# instance fields
.field private final availableCameraFlow:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraManager:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Landroid/hardware/camera2/CameraManager;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraPipeJob:Lmb4;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Lws6;Landroidx/camera/camera2/pipe/core/Threads;Lmb4;)V
    .locals 0
    .param p3    # Lmb4;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeJob;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lws6<",
            "Landroid/hardware/camera2/CameraManager;",
            ">;",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            "Lmb4;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->cameraManager:Lws6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->cameraPipeJob:Lmb4;

    new-instance p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;Le02;)V

    invoke-static {p1}, Ls0;->a(Lbm3;)Lwy0;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->availableCameraFlow:Lhd3;

    return-void
.end method

.method public static final synthetic access$getAvailableCameraFlow$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Lhd3;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->availableCameraFlow:Lhd3;

    return-object p0
.end method

.method public static final synthetic access$getCameraManager$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Lws6;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->cameraManager:Lws6;

    return-object p0
.end method

.method public static final synthetic access$getCameraPipeJob$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Lmb4;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->cameraPipeJob:Lmb4;

    return-object p0
.end method

.method public static final synthetic access$getThreads$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;)Landroidx/camera/camera2/pipe/core/Threads;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    return-object p0
.end method


# virtual methods
.method public startMonitoring-0r8Bogc(Ljava/lang/String;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor$Session;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p2, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;

    invoke-direct {p2, p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;Ljava/lang/String;)V

    return-object p2
.end method

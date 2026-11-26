.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;


# instance fields
.field private final _cameraAvailability:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final _cameraPriorities:Lvg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvg5<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraAvailability:Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly68<",
            "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraId:Ljava/lang/String;

.field private final cameraPriorities:Lys7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lys7<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraStatus:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraStatusJob:Lmb4;

.field private final closed:Lht;

.field private final manager:Landroid/hardware/camera2/CameraManager;

.field private final scope:Ly22;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method private constructor <init>(Lws6;Landroidx/camera/camera2/pipe/core/Threads;Ljava/lang/String;Lmb4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lws6<",
            "Landroid/hardware/camera2/CameraManager;",
            ">;",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            "Ljava/lang/String;",
            "Lmb4;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraId:Ljava/lang/String;

    invoke-interface {p1}, Lws6;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->manager:Landroid/hardware/camera2/CameraManager;

    new-instance p1, Ljd8;

    invoke-direct {p1, p4}, Lnb4;-><init>(Lmb4;)V

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Threads;->getLightweightDispatcher()Lr22;

    move-result-object p2

    new-instance p3, Lw22;

    const-string p4, "CXCP-CameraStatusMonitor"

    invoke-direct {p3, p4}, Lw22;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lb0;->plus(Lo22;)Lo22;

    move-result-object p2

    invoke-static {p1, p2}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p1

    invoke-static {p1}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->scope:Ly22;

    const/4 p2, 0x0

    invoke-static {p2}, Lkt;->a(Z)Lht;

    move-result-object p3

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->closed:Lht;

    sget-object p3, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$Unknown;->INSTANCE:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$Unknown;

    invoke-static {p3}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p3

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->_cameraAvailability:Lxg5;

    invoke-static {p3}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object p3

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraAvailability:Ly68;

    const/4 p3, 0x7

    const/4 p4, 0x0

    invoke-static {p2, p2, p4, p3}, Lbt7;->b(IILcu0;I)Lzs7;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->_cameraPriorities:Lvg5;

    invoke-static {p2}, Lbf3;->a(Lvg5;)Lfy6;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraPriorities:Lys7;

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraStatusFlow()Lhd3;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraStatus:Lhd3;

    new-instance p2, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1;

    invoke-direct {p2, p0, p4}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusJob$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;Le02;)V

    const/4 p3, 0x3

    invoke-static {p1, p4, p4, p2, p3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraStatusJob:Lmb4;

    return-void
.end method

.method public synthetic constructor <init>(Lws6;Landroidx/camera/camera2/pipe/core/Threads;Ljava/lang/String;Lmb4;Ljh2;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;-><init>(Lws6;Landroidx/camera/camera2/pipe/core/Threads;Ljava/lang/String;Lmb4;)V

    return-void
.end method

.method public static final synthetic access$getCameraId$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCameraStatus$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Lhd3;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraStatus:Lhd3;

    return-object p0
.end method

.method public static final synthetic access$getManager$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->manager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method public static final synthetic access$getThreads$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Landroidx/camera/camera2/pipe/core/Threads;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    return-object p0
.end method

.method public static final synthetic access$get_cameraAvailability$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Lxg5;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->_cameraAvailability:Lxg5;

    return-object p0
.end method

.method public static final synthetic access$get_cameraPriorities$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)Lvg5;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->_cameraPriorities:Lvg5;

    return-object p0
.end method

.method private final cameraStatusFlow()Lhd3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor$cameraStatusFlow$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;Le02;)V

    invoke-static {v0}, Ls0;->a(Lbm3;)Lwy0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->closed:Lht;

    invoke-virtual {v0}, Lht;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraStatusJob:Lmb4;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->scope:Ly22;

    invoke-static {p0, v1}, Lz22;->b(Ly22;Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public getCameraAvailability()Ly68;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraAvailability:Ly68;

    return-object p0
.end method

.method public getCameraPriorities()Lys7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lys7<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraPriorities:Lys7;

    return-object p0
.end method

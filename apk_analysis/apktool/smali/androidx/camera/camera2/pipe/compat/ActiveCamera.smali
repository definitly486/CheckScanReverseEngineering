.class public final Landroidx/camera/camera2/pipe/compat/ActiveCamera;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final allCameraIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;"
        }
    .end annotation
.end field

.field private final androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

.field private current:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

.field private final wakelock:Landroidx/camera/camera2/pipe/core/WakeLock;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Ljava/util/Set;Ly22;Lnl3;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/AndroidCameraState;",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;",
            "Ly22;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/ActiveCamera;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->allCameraIds:Ljava/util/Set;

    new-instance v0, Landroidx/camera/camera2/pipe/core/WakeLock;

    new-instance v5, Lw6;

    invoke-direct {v5, p4, p0}, Lw6;-><init>(Lnl3;Landroidx/camera/camera2/pipe/compat/ActiveCamera;)V

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x1

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/core/WakeLock;-><init>(Ly22;JZLll3;)V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->wakelock:Landroidx/camera/camera2/pipe/core/WakeLock;

    new-instance p1, Landroidx/camera/camera2/pipe/compat/ActiveCamera$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/camera/camera2/pipe/compat/ActiveCamera$1;-><init>(Landroidx/camera/camera2/pipe/compat/ActiveCamera;Le02;)V

    const/4 p0, 0x3

    invoke-static {v1, p2, p2, p1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public static synthetic a(Lnl3;Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->wakelock$lambda$0(Lnl3;Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAndroidCameraState$p(Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Landroidx/camera/camera2/pipe/compat/AndroidCameraState;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    return-object p0
.end method

.method public static final synthetic access$getWakelock$p(Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Landroidx/camera/camera2/pipe/core/WakeLock;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->wakelock:Landroidx/camera/camera2/pipe/core/WakeLock;

    return-object p0
.end method

.method private static final wakelock$lambda$0(Lnl3;Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Lj59;
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final acquire()Landroidx/camera/camera2/pipe/core/Token;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->wakelock:Landroidx/camera/camera2/pipe/core/WakeLock;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/WakeLock;->acquire()Landroidx/camera/camera2/pipe/core/Token;

    move-result-object p0

    return-object p0
.end method

.method public final awaitClosed(Le02;)Ljava/lang/Object;
    .locals 0
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

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->awaitClosed(Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->wakelock:Landroidx/camera/camera2/pipe/core/WakeLock;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/WakeLock;->release()Z

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->close()V

    return-void
.end method

.method public final connectTo(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/core/Token;Le02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/VirtualCameraState;",
            "Landroidx/camera/camera2/pipe/core/Token;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->current:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->current:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroidx/camera/camera2/pipe/compat/VirtualCamera;->disconnect-TPqeGZw$default(Landroidx/camera/camera2/pipe/compat/VirtualCamera;Landroidx/camera/camera2/pipe/CameraError;ILjava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getState()Ly68;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->connect$camera_camera2_pipe(Lhd3;Landroidx/camera/camera2/pipe/core/Token;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final getAllCameraIds$camera_camera2_pipe()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->allCameraIds:Ljava/util/Set;

    return-object p0
.end method

.method public final getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActiveCamera(cameraId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const/16 v1, 0x10

    invoke-static {v1}, Lga1;->b(I)V

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

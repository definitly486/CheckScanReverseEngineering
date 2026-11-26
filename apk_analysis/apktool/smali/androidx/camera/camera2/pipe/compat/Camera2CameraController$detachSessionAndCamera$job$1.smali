.class final Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.compat.Camera2CameraController$detachSessionAndCamera$job$1"
    f = "Camera2CameraController.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->detachSessionAndCamera(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $camera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

.field final synthetic $session:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCamera;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/CaptureSessionState;",
            "Landroidx/camera/camera2/pipe/compat/VirtualCamera;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->$session:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->$camera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->$session:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->$camera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    invoke-direct {p1, v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCamera;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->label:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->$session:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->shutdown()V

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->$camera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-static {p0, v1, p1, v1}, Landroidx/camera/camera2/pipe/compat/VirtualCamera;->disconnect-TPqeGZw$default(Landroidx/camera/camera2/pipe/compat/VirtualCamera;Landroidx/camera/camera2/pipe/CameraError;ILjava/lang/Object;)V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1
.end method

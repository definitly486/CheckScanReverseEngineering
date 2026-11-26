.class final Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2$resultDeferred$1"
    f = "RetryingCameraStateOpener.kt"
    l = {
        0x123
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/AndroidCameraState;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0
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

    new-instance p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-direct {p1, p0, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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
            "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getState()Ly68;

    move-result-object p1

    new-instance v1, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1;

    invoke-direct {v1, v3}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1;-><init>(Le02;)V

    iput v2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->label:I

    invoke-static {p1, v1, p0}, Lue3;->b(Lhd3;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraState;

    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    if-eqz v0, :cond_3

    new-instance p1, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v3, v0, v3}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;ILjh2;)V

    return-object p1

    :cond_3
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->close()V

    new-instance p0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;->getCameraErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p1

    invoke-direct {p0, v3, p1, v2, v3}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;ILjh2;)V

    return-object p0

    :cond_4
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    if-eqz v0, :cond_5

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->close()V

    new-instance p0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->getCameraErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p1

    invoke-direct {p0, v3, p1, v2, v3}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;ILjh2;)V

    return-object p0

    :cond_5
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;

    if-eqz v0, :cond_6

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->close()V

    const-string p0, "Unexpected CameraState: "

    invoke-static {p1, p0}, Lqz0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :cond_6
    invoke-static {}, Lme0;->e()V

    return-object v3
.end method

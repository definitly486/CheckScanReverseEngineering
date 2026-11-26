.class final Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2$result$1$3"
    f = "RetryingCameraStateOpener.kt"
    l = {}
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
        "Lnl3<",
        "Le02<",
        "-",
        "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $cameraOpenDeferred:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

.field final synthetic $timeoutJob:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Lmb4;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Lr07;Lr07;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr07<",
            "Lmb4;",
            ">;",
            "Lr07<",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;",
            ">;>;",
            "Landroidx/camera/camera2/pipe/compat/AndroidCameraState;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;->$timeoutJob:Lr07;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;->$cameraOpenDeferred:Lr07;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Le02;)Le02;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;->$timeoutJob:Lr07;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;->$cameraOpenDeferred:Lr07;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-direct {v0, v1, v2, p0, p1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;-><init>(Lr07;Lr07;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Le02;)V

    return-object v0
.end method

.method public final invoke(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;->create(Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Le02;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;->invoke(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;->label:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    const-string v2, "CXCP"

    if-eqz v0, :cond_0

    const-string v0, "tryOpenCamera: 3000ms elapsed"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;->$timeoutJob:Lr07;

    iput-object v1, v0, Lr07;->b:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;->$cameraOpenDeferred:Lr07;

    iget-object v0, v0, Lr07;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "tryOpenCamera: openCamera() timed out"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->close()V

    new-instance p0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    sget-object p1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_OPEN_TIMEOUT-v7Vf74A()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraError;->box-impl(I)Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, v1, p1, v0, v1}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;ILjh2;)V

    return-object p0

    :cond_2
    return-object v1

    :cond_3
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1
.end method

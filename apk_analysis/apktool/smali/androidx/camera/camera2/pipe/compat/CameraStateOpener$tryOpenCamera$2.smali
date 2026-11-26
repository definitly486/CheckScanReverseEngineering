.class final Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2"
    f = "RetryingCameraStateOpener.kt"
    l = {
        0x29e
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->tryOpenCamera-7pD7j80$camera_camera2_pipe(Ljava/lang/String;IJLandroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Le02;)Ljava/lang/Object;
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
.field final synthetic $cameraId:Ljava/lang/String;

.field final synthetic $cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/CameraStateOpener;",
            "Ljava/lang/String;",
            "Landroidx/camera/camera2/pipe/compat/AndroidCameraState;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 3
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

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraId:Ljava/lang/String;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-direct {v0, v1, v2, p0, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;-><init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Le02;)V

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->label:I

    const-string v2, "CXCP"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$4:Ljava/lang/Object;

    check-cast v1, Lr07;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$3:Ljava/lang/Object;

    check-cast v5, Lr07;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$2:Ljava/lang/Object;

    check-cast v6, Lr07;

    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$1:Ljava/lang/Object;

    check-cast v7, Lr07;

    iget-object v8, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$0:Ljava/lang/Object;

    check-cast v8, Ly22;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$0:Ljava/lang/Object;

    check-cast p1, Ly22;

    new-instance v1, Lr07;

    invoke-direct {v1}, Lr07;-><init>()V

    new-instance v5, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraId:Ljava/lang/String;

    iget-object v8, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-direct {v5, v6, v7, v8, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;-><init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Le02;)V

    const/4 v6, 0x3

    invoke-static {p1, v4, v4, v5, v6}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v5

    iput-object v5, v1, Lr07;->b:Ljava/lang/Object;

    new-instance v5, Lr07;

    invoke-direct {v5}, Lr07;-><init>()V

    new-instance v7, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;

    iget-object v8, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-direct {v7, v8, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Le02;)V

    invoke-static {p1, v4, v4, v7, v6}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v7

    iput-object v7, v5, Lr07;->b:Ljava/lang/Object;

    new-instance v7, Lr07;

    invoke-direct {v7}, Lr07;-><init>()V

    new-instance v8, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$timeoutJob$1;

    invoke-direct {v8, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$timeoutJob$1;-><init>(Le02;)V

    invoke-static {p1, v4, v4, v8, v6}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v8

    iput-object v8, v7, Lr07;->b:Ljava/lang/Object;

    new-instance v8, Lr07;

    invoke-direct {v8}, Lr07;-><init>()V

    new-instance v9, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;

    iget-object v10, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    invoke-direct {v9, v10, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;-><init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Le02;)V

    invoke-static {p1, v4, v4, v9, v6}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v6

    iput-object v6, v8, Lr07;->b:Ljava/lang/Object;

    move-object v6, v5

    move-object v5, v7

    move-object v7, v1

    move-object v1, v8

    move-object v8, p1

    :cond_2
    invoke-static {v8}, Lz22;->e(Ly22;)Z

    move-result p1

    if-eqz p1, :cond_e

    :try_start_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraId:Ljava/lang/String;

    iget-object v9, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    new-instance v10, Lzl7;

    invoke-interface {p0}, Le02;->getContext()Lo22;

    move-result-object v11

    invoke-direct {v10, v11}, Lzl7;-><init>(Lo22;)V

    iget-object v11, v7, Lr07;->b:Ljava/lang/Object;

    check-cast v11, Lmk2;

    if-eqz v11, :cond_3

    invoke-interface {v11}, Lmk2;->U()Lwl7;

    move-result-object v11

    new-instance v12, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$1;

    invoke-direct {v12, v7, p1, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$1;-><init>(Lr07;Ljava/lang/String;Le02;)V

    invoke-virtual {v10, v11, v12}, Lzl7;->k(Lwl7;Lbm3;)V

    :cond_3
    iget-object v11, v6, Lr07;->b:Ljava/lang/Object;

    check-cast v11, Lmk2;

    if-eqz v11, :cond_4

    invoke-interface {v11}, Lmk2;->U()Lwl7;

    move-result-object v11

    new-instance v12, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$2;

    invoke-direct {v12, v6, p1, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$2;-><init>(Lr07;Ljava/lang/String;Le02;)V

    invoke-virtual {v10, v11, v12}, Lzl7;->k(Lwl7;Lbm3;)V

    :cond_4
    iget-object p1, v5, Lr07;->b:Ljava/lang/Object;

    check-cast p1, Lmb4;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lmb4;->p()Lvl7;

    move-result-object p1

    new-instance v11, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;

    invoke-direct {v11, v5, v7, v9, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;-><init>(Lr07;Lr07;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Le02;)V

    invoke-virtual {v10, p1, v11}, Lzl7;->j(Lvl7;Lnl3;)V

    :cond_5
    iget-object p1, v1, Lr07;->b:Ljava/lang/Object;

    check-cast p1, Lmb4;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lmb4;->p()Lvl7;

    move-result-object p1

    new-instance v9, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4;

    invoke-direct {v9, v1, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4;-><init>(Lr07;Le02;)V

    invoke-virtual {v10, p1, v9}, Lzl7;->j(Lvl7;Lnl3;)V

    :cond_6
    iput-object v8, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$2:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$3:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$4:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->label:I

    invoke-static {v10, p0}, Lzl7;->g(Lzl7;Lpg8;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_0
    check-cast p1, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    if-eqz p1, :cond_2

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Camera open completed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object p0, v7, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Lmk2;

    if-eqz p0, :cond_9

    invoke-interface {p0, v4}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_9
    iget-object p0, v6, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Lmk2;

    if-eqz p0, :cond_a

    invoke-interface {p0, v4}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_a
    iget-object p0, v5, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Lmb4;

    if-eqz p0, :cond_b

    invoke-interface {p0, v4}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_b
    iget-object p0, v1, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Lmb4;

    if-eqz p0, :cond_c

    invoke-interface {p0, v4}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    return-object p1

    :goto_1
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "Unexpected throwable during camera opening!"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    throw p0

    :cond_e
    new-instance p0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    sget-object p1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_OPENER-v7Vf74A()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraError;->box-impl(I)Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p1

    invoke-direct {p0, v4, p1, v3, v4}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;ILjh2;)V

    return-object p0
.end method

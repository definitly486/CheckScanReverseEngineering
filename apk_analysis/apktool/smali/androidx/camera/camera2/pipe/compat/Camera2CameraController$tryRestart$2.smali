.class final Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.compat.Camera2CameraController$tryRestart$2"
    f = "Camera2CameraController.kt"
    l = {
        0xb5
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->tryRestart()V
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
.field final synthetic $delayMs:J

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;


# direct methods
.method public constructor <init>(JLandroidx/camera/camera2/pipe/compat/Camera2CameraController;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/camera/camera2/pipe/compat/Camera2CameraController;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->$delayMs:J

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
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

    new-instance p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->$delayMs:J

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-direct {p1, v0, v1, p0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;-><init>(JLandroidx/camera/camera2/pipe/compat/Camera2CameraController;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, "Restarting "

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-wide v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->$delayMs:J

    iput v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->label:I

    invoke-static {v4, v5, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$getLock$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    monitor-enter p1

    :try_start_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$isClosed(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getControllerState$camera_camera2_pipe()Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    move-result-object v1

    sget-object v2, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPING;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPING;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getControllerState$camera_camera2_pipe()Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    move-result-object v1

    sget-object v2, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "CXCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$getSurfaceTracker$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/SurfaceTracker;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/SurfaceTracker;->registerAllSurfaces()V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$stopLocked(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$startLocked(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p1

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_2
    monitor-exit p1

    throw p0
.end method

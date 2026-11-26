.class final Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.compat.Camera2Backend$shutdownAsync$2"
    f = "Camera2Backend.kt"
    l = {
        0xbe,
        0xc4
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2Backend;->shutdownAsync()Lmk2;
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
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2Backend;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2Backend;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/Camera2Backend;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2Backend;

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

    new-instance p1, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    invoke-direct {p1, p0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2Backend;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/pipe/CameraController;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->access$getLock$p(Landroidx/camera/camera2/pipe/compat/Camera2Backend;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    monitor-enter p1

    :try_start_0
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->access$getActiveCameraControllers$p(Landroidx/camera/camera2/pipe/compat/Camera2Backend;)Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v5, p1

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraController;

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "CXCP"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Camera2Backend#shutdownAsync: Awaiting closure from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->L$1:Ljava/lang/Object;

    iput v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->label:I

    invoke-interface {v1, p0}, Landroidx/camera/camera2/pipe/CameraController;->awaitClosed(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "CXCP"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to await closure from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x21

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "CXCP"

    const-string v1, "Camera2Backend#shutdownAsync: Closing all cameras (if any)"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->access$getCamera2DeviceManager$p(Landroidx/camera/camera2/pipe/compat/Camera2Backend;)Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    move-result-object p1

    invoke-interface {p1, v4}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;->closeAll(Z)Lmk2;

    move-result-object p1

    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->L$1:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->label:I

    invoke-interface {p1, p0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    :goto_2
    return-object v0

    :cond_8
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

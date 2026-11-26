.class final Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.impl.StillCaptureRequestControl$issueCaptureRequests$1"
    f = "StillCaptureRequestControl.kt"
    l = {
        0x63,
        0x64,
        0xde
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/StillCaptureRequestControl;->issueCaptureRequests(Ljava/util/List;II)Lcom/google/common/util/concurrent/ListenableFuture;
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
.field final synthetic $captureConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $captureMode:I

.field final synthetic $flashType:I

.field final synthetic $signal:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Ljava/util/List<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;


# direct methods
.method public constructor <init>(Ljava/util/List;IILxp1;Landroidx/camera/camera2/impl/StillCaptureRequestControl;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/CaptureConfig;",
            ">;II",
            "Lxp1<",
            "Ljava/util/List<",
            "Ljava/lang/Void;",
            ">;>;",
            "Landroidx/camera/camera2/impl/StillCaptureRequestControl;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->$captureConfigs:Ljava/util/List;

    iput p2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->$captureMode:I

    iput p3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->$flashType:I

    iput-object p4, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->$signal:Lxp1;

    iput-object p5, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 7
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

    new-instance v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->$captureConfigs:Ljava/util/List;

    iget v2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->$captureMode:I

    iget v3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->$flashType:I

    iget-object v4, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->$signal:Lxp1;

    iget-object v5, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;-><init>(Ljava/util/List;IILxp1;Landroidx/camera/camera2/impl/StillCaptureRequestControl;Le02;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->label:I

    const-string v2, "Required value was null."

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->L$2:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lyg5;

    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->L$2:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget-object v5, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v10, v5

    move-object v5, p1

    move-object p1, v10

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->$captureConfigs:Ljava/util/List;

    iget v7, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->$captureMode:I

    iget v8, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->$flashType:I

    iget-object v9, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->$signal:Lxp1;

    invoke-direct {p1, v1, v7, v8, v9}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;-><init>(Ljava/util/List;IILxp1;)V

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    invoke-virtual {v1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object v1

    if-eqz v1, :cond_8

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->L$1:Ljava/lang/Object;

    iput v5, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->label:I

    invoke-interface {v1, p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->awaitSurfaceSetup(Le02;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    if-eqz v1, :cond_7

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->L$2:Ljava/lang/Object;

    iput v4, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->label:I

    invoke-static {v3, p1, v1, p0}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$submitRequest(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v3

    :goto_1
    check-cast p1, Lmk2;

    if-eqz v1, :cond_6

    invoke-static {v0, p1, p0, v1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$propagateResultOrEnqueueRequest(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lmk2;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V

    goto :goto_4

    :cond_6
    invoke-static {v2}, Lfg;->c(Ljava/lang/String;)V

    return-object v6

    :cond_7
    invoke-static {v2}, Lfg;->c(Ljava/lang/String;)V

    return-object v6

    :cond_8
    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    invoke-static {v1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$getMutex$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Lyg5;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->L$1:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$issueCaptureRequests$1;->label:I

    invoke-interface {v1, v6, p0}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    :goto_2
    return-object v0

    :cond_9
    move-object p0, p1

    move-object v0, v2

    :goto_3
    :try_start_0
    invoke-static {v0}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$getPendingRequests$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, v6}, Lyg5;->unlock(Ljava/lang/Object;)V

    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StillCaptureRequestControl: useCaseCamera is null, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " will be retried with a future UseCaseCamera"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v1, v6}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

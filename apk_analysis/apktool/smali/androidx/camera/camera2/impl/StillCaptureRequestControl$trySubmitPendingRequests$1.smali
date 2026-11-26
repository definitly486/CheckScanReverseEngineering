.class final Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.impl.StillCaptureRequestControl$trySubmitPendingRequests$1"
    f = "StillCaptureRequestControl.kt"
    l = {
        0x76,
        0xde,
        0x7b
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/StillCaptureRequestControl;->trySubmitPendingRequests()V
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

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/StillCaptureRequestControl;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

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

    new-instance p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;

    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    invoke-direct {p1, p0, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;-><init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$5:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iget-object v3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$4:Ljava/lang/Object;

    check-cast v3, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget-object v4, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$3:Ljava/lang/Object;

    check-cast v4, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    iget-object v6, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$2:Ljava/lang/Object;

    check-cast v6, Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iget-object v7, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lyg5;

    iget-object v8, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$0:Ljava/lang/Object;

    check-cast v8, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$2:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iget-object v3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lyg5;

    iget-object v4, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_4
    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->label:I

    invoke-interface {p1, p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->awaitSurfaceSetup(Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    goto :goto_3

    :cond_5
    move-object v4, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$getMutex$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Lyg5;

    move-result-object p1

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iput-object v4, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->label:I

    invoke-interface {p1, v5, p0}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_6

    goto :goto_3

    :cond_6
    move-object v3, p1

    :goto_1
    move-object v7, v3

    move-object v3, v4

    :cond_7
    :goto_2
    :try_start_1
    invoke-static {v1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$getPendingRequests$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {v1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$getPendingRequests$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    if-eqz v4, :cond_7

    iput-object v3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$2:Ljava/lang/Object;

    iput-object v4, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$3:Ljava/lang/Object;

    iput-object v3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$4:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$5:Ljava/lang/Object;

    iput v2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->label:I

    invoke-static {v1, v4, v3, p0}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$submitRequest(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    :goto_3
    return-object v0

    :cond_8
    move-object v6, v1

    move-object v8, v3

    :goto_4
    check-cast p1, Lmk2;

    invoke-static {v1, p1, v4, v3}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$propagateResultOrEnqueueRequest(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lmk2;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V

    move-object v1, v6

    move-object v3, v8

    goto :goto_2

    :cond_9
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v7, v5}, Lyg5;->unlock(Ljava/lang/Object;)V

    goto :goto_6

    :goto_5
    invoke-interface {v7, v5}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p0

    :cond_a
    :goto_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

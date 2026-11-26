.class public final Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.adapter.CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1"
    f = "CameraControlAdapter.kt"
    l = {
        0x6a,
        0x68
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1;->attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
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
.field final synthetic $camera$inlined:Landroidx/camera/camera2/impl/UseCaseCamera;

.field final synthetic $captureMode$inlined:I

.field final synthetic $completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field final synthetic $flashType$inlined:I

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/adapter/CameraControlAdapter;


# direct methods
.method public constructor <init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Le02;Landroidx/camera/camera2/impl/UseCaseCamera;ILandroidx/camera/camera2/adapter/CameraControlAdapter;I)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p3, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->$camera$inlined:Landroidx/camera/camera2/impl/UseCaseCamera;

    iput p4, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->$captureMode$inlined:I

    iput-object p5, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->this$0:Landroidx/camera/camera2/adapter/CameraControlAdapter;

    iput p6, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->$flashType$inlined:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

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

    new-instance v0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v3, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->$camera$inlined:Landroidx/camera/camera2/impl/UseCaseCamera;

    iget v4, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->$captureMode$inlined:I

    iget-object v5, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->this$0:Landroidx/camera/camera2/adapter/CameraControlAdapter;

    iget v6, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->$flashType$inlined:I

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Le02;Landroidx/camera/camera2/impl/UseCaseCamera;ILandroidx/camera/camera2/adapter/CameraControlAdapter;I)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget v1, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->I$0:I

    iget-object v3, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/camera/camera2/impl/UseCaseCamera;

    iget-object v4, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v7, v3

    move-object v3, p1

    move-object p1, v4

    move-object v4, v7

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->$camera$inlined:Landroidx/camera/camera2/impl/UseCaseCamera;

    iget v4, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->$captureMode$inlined:I

    iget-object v5, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->this$0:Landroidx/camera/camera2/adapter/CameraControlAdapter;

    invoke-static {v5}, Landroidx/camera/camera2/adapter/CameraControlAdapter;->access$getFlashControl$p(Landroidx/camera/camera2/adapter/CameraControlAdapter;)Landroidx/camera/camera2/impl/FlashControl;

    move-result-object v5

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->I$0:I

    iput v3, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->label:I

    invoke-virtual {v5, p0}, Landroidx/camera/camera2/impl/FlashControl;->awaitFlashModeUpdate(Le02;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    goto :goto_1

    :cond_3
    move v7, v4

    move-object v4, v1

    move v1, v7

    :goto_0
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget v5, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->$flashType$inlined:I

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter$getCameraCapturePipelineAsync$$inlined$future$1$1;->label:I

    invoke-interface {v4, v1, v3, v5, p0}, Landroidx/camera/camera2/impl/UseCaseCamera;->getCameraCapturePipeline(IIILe02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

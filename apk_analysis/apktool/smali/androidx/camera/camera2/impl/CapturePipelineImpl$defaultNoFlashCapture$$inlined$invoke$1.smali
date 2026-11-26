.class public final Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.impl.CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1"
    f = "CapturePipeline.kt"
    l = {
        0x138,
        0x375
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/CapturePipelineImpl;->defaultNoFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;ILjava/util/List;Le02;)Ljava/lang/Object;
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
.field final synthetic $captureSignal:Ljava/util/List;

.field final synthetic $lock3ARequired$inlined:Z

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;


# direct methods
.method public constructor <init>(Ljava/util/List;Le02;ZLandroidx/camera/camera2/impl/CapturePipelineImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;->$captureSignal:Ljava/util/List;

    iput-boolean p3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;->$lock3ARequired$inlined:Z

    iput-object p4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

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

    new-instance p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;->$captureSignal:Ljava/util/List;

    iget-boolean v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;->$lock3ARequired$inlined:Z

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-direct {p1, v0, p2, v1, p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;-><init>(Ljava/util/List;Le02;ZLandroidx/camera/camera2/impl/CapturePipelineImpl;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "CXCP"

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v4}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;->$captureSignal:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    iput v3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;->label:I

    invoke-static {p1, p0}, Loz;->b(Ljava/util/Collection;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v4}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal done"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-boolean p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;->$lock3ARequired$inlined:Z

    if-eqz p1, :cond_8

    invoke-static {v4}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CapturePipeline#defaultNoFlashCapture: Unlocking 3A"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {}, Landroidx/camera/camera2/impl/CapturePipelineKt;->access$getCHECK_3A_TIMEOUT_IN_NS$p()J

    move-result-wide v5

    iput v2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1;->label:I

    invoke-static {p1, v5, v6, p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$unlockAf(Landroidx/camera/camera2/impl/CapturePipelineImpl;JLe02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    :goto_1
    return-object v0

    :cond_7
    :goto_2
    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v4}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapturePipeline#defaultNoFlashCapture: Unlocking 3A done"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.class public final Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.impl.CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1"
    f = "CapturePipeline.kt"
    l = {
        0x138,
        0x382,
        0x384,
        0x38b
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/CapturePipelineImpl;->torchApplyCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IJLjava/util/List;ZLe02;)Ljava/lang/Object;
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
.field final synthetic $captureMode$inlined:I

.field final synthetic $captureSignal:Ljava/util/List;

.field final synthetic $lock3ARequired$inlined:Z

.field final synthetic $torchOnRequired$inlined:Z

.field final synthetic $triggerAePreCapture$inlined:Z

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;


# direct methods
.method public constructor <init>(Ljava/util/List;Le02;ZLandroidx/camera/camera2/impl/CapturePipelineImpl;ZZI)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$captureSignal:Ljava/util/List;

    iput-boolean p3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$torchOnRequired$inlined:Z

    iput-object p4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    iput-boolean p5, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$triggerAePreCapture$inlined:Z

    iput-boolean p6, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$lock3ARequired$inlined:Z

    iput p7, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$captureMode$inlined:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 8
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

    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;

    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$captureSignal:Ljava/util/List;

    iget-boolean v3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$torchOnRequired$inlined:Z

    iget-object v4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    iget-boolean v5, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$triggerAePreCapture$inlined:Z

    iget-boolean v6, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$lock3ARequired$inlined:Z

    iget v7, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$captureMode$inlined:I

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;-><init>(Ljava/util/List;Le02;ZLandroidx/camera/camera2/impl/CapturePipelineImpl;ZZI)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "CXCP"

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/AutoCloseable;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    :goto_0
    move-object v1, v0

    goto/16 :goto_5

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v1, p1

    goto/16 :goto_2

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v8, "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$captureSignal:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    iput v5, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->label:I

    invoke-static {v1, p0}, Loz;->b(Ljava/util/Collection;Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    goto/16 :goto_6

    :cond_6
    :goto_1
    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v8, "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal done"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-boolean v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$torchOnRequired$inlined:Z

    if-eqz v1, :cond_9

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v8, "CapturePipeline#torchApplyCapture: Unsetting torch"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {v1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$getTorchControl$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/impl/TorchControl;

    move-result-object v8

    sget-object v1, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getOFF-IRs_-R8()I

    move-result v9

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync-Oup_wC0$camera_camera2$default(Landroidx/camera/camera2/impl/TorchControl;IZZILjava/lang/Object;)Lmk2;

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v8, "CapturePipeline#torchApplyCapture: Unsetting torch done"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-boolean v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$triggerAePreCapture$inlined:Z

    if-eqz v1, :cond_e

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapturePipeline#torchApplyCapture: Unlocking 3A for capture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {v1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$getUseCaseGraphContext$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/config/UseCaseGraphContext;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v1

    iput v4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->label:I

    invoke-interface {v1, p0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_b

    goto :goto_6

    :cond_b
    :goto_2
    check-cast v1, Ljava/lang/AutoCloseable;

    :try_start_1
    move-object v2, v1

    check-cast v2, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    iget v4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$captureMode$inlined:I

    if-nez v4, :cond_c

    goto :goto_3

    :cond_c
    const/4 v5, 0x0

    :goto_3
    iput-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->label:I

    invoke-interface {v2, v5, p0}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->unlock3APostCapture(ZLe02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v0, :cond_d

    goto :goto_6

    :cond_d
    move-object p0, v1

    :goto_4
    :try_start_2
    sget-object v0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0, v7}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object p0, v1

    goto/16 :goto_0

    :goto_5
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {p0, v1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    iget-boolean v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$lock3ARequired$inlined:Z

    if-eqz v1, :cond_11

    iget v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$captureMode$inlined:I

    if-nez v1, :cond_11

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CapturePipeline#torchApplyCapture: Unlocking 3A"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {}, Landroidx/camera/camera2/impl/CapturePipelineKt;->access$getCHECK_3A_TIMEOUT_IN_NS$p()J

    move-result-wide v3

    iput v2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->label:I

    invoke-static {v1, v3, v4, p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$unlockAf(Landroidx/camera/camera2/impl/CapturePipelineImpl;JLe02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_10

    :goto_6
    return-object v0

    :cond_10
    :goto_7
    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CapturePipeline#torchApplyCapture: Unlocking 3A done"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_8
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.class public final Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.impl.CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1"
    f = "CapturePipeline.kt"
    l = {
        0xd2,
        0xf6,
        0xf7
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/CapturePipelineImpl;->submitRequestInternal(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;)Ljava/util/List;
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
.field final synthetic $deferredList$inlined:Ljava/util/List;

.field final synthetic $requests$inlined:Ljava/util/List;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;


# direct methods
.method public constructor <init>(Le02;Landroidx/camera/camera2/impl/CapturePipelineImpl;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    iput-object p3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$deferredList$inlined:Ljava/util/List;

    iput-object p4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$requests$inlined:Ljava/util/List;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lpg8;-><init>(ILe02;)V

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

    new-instance p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$deferredList$inlined:Ljava/util/List;

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$requests$inlined:Ljava/util/List;

    invoke-direct {p1, p2, v0, v1, p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;-><init>(Le02;Landroidx/camera/camera2/impl/CapturePipelineImpl;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-string v0, "CapturePipeline#submitRequestInternal: Submitting "

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "CXCP"

    const/4 v7, 0x3

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v7, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ln07;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CapturePipeline#submitRequestInternal: Acquiring session for submitting requests"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v2, Ln07;

    invoke-direct {v2}, Ln07;-><init>()V

    :try_start_1
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$getUseCaseGraphContext$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/config/UseCaseGraphContext;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p1

    iput-object v2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->label:I

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_0
    check-cast p1, Ljava/lang/AutoCloseable;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v4, p1

    check-cast v4, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    iget-object v8, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$requests$inlined:Ljava/util/List;

    invoke-static {v8}, Landroidx/camera/camera2/compat/workaround/StillCaptureFlowKt;->shouldStopRepeatingBeforeCapture(Ljava/util/List;)Z

    move-result v8

    iput-boolean v8, v2, Ln07;->b:Z

    if-eqz v8, :cond_6

    invoke-interface {v4}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->stopRepeating()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_6
    :goto_1
    sget-object v8, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$requests$inlined:Ljava/util/List;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$requests$inlined:Ljava/util/List;

    invoke-interface {v4, v0}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->submit(Ljava/util/List;)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p1, v5}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    iget-boolean p1, v2, Ln07;->b:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$deferredList$inlined:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    iput-object v5, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->label:I

    invoke-static {p1, p0}, Loz;->b(Ljava/util/Collection;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$getUseCaseCameraState(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/impl/UseCaseCameraState;

    move-result-object p1

    iput v7, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->label:I

    invoke-virtual {p1, p0}, Landroidx/camera/camera2/impl/UseCaseCameraState;->tryStartRepeating(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    :goto_3
    return-object v1

    :goto_4
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-static {p1, v0}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v6}, Landroidx/camera/core/Logger;->isInfoEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CapturePipeline#submitRequestInternal: CameraGraph.Session could not be acquired, requests may need re-submission"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$deferredList$inlined:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxp1;

    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    const-string v1, "Capture request is cancelled because camera is closed"

    invoke-direct {v0, v7, v1, v5}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lxp1;->e(Ljava/lang/Throwable;)Z

    goto :goto_5

    :cond_a
    :goto_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

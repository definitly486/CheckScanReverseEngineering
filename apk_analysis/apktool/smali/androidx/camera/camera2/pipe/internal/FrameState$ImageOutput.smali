.class public final Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;
.super Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/internal/FrameState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImageOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput<",
        "Landroidx/camera/camera2/pipe/media/SharedOutputImage;",
        ">;",
        "Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener<",
        "Landroidx/camera/camera2/pipe/media/OutputImage;",
        ">;"
    }
.end annotation


# instance fields
.field private final outputId:I

.field private final remainingOutputResults:Llt;

.field private final streamId:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/internal/FrameState;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/internal/FrameState;IILlt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Llt;",
            ")V"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->this$0:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;-><init>()V

    iput p2, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->streamId:I

    iput p3, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->outputId:I

    iput-object p4, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->remainingOutputResults:Llt;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/internal/FrameState;IILlt;Ljh2;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;-><init>(Landroidx/camera/camera2/pipe/internal/FrameState;IILlt;)V

    return-void
.end method


# virtual methods
.method public await(Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/media/SharedOutputImage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput$await$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput$await$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput$await$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput$await$1;-><init>(Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput$await$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput$await$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->getResult()Lmk2;

    move-result-object p0

    iput v4, v0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput$await$1;->label:I

    invoke-interface {p0, v0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Landroidx/camera/camera2/pipe/internal/OutputResult;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object p0, v3

    :goto_2
    check-cast p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/SharedOutputImage;->acquireOrNull()Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v3
.end method

.method public final getOutputId-4LaLFng()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->outputId:I

    return p0
.end method

.method public final getStreamId-ptHMqGs()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->streamId:I

    return p0
.end method

.method public onOutputComplete-3ejhThk(JJJJLjava/lang/Object;)V
    .locals 0

    invoke-static {p9}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p9

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroidx/camera/camera2/pipe/media/OutputImage;

    if-eqz p1, :cond_9

    sget-object p2, Landroidx/camera/camera2/pipe/media/SharedOutputImage;->Companion:Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;

    invoke-virtual {p2, p1}, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;->from(Landroidx/camera/camera2/pipe/media/OutputImage;)Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->getInternalResult()Lxp1;

    move-result-object p2

    invoke-static {p1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->access$constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Landroidx/camera/camera2/pipe/internal/OutputResult;->box-impl(Ljava/lang/Object;)Landroidx/camera/camera2/pipe/internal/OutputResult;

    move-result-object p3

    invoke-interface {p2, p3}, Lxp1;->f(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    instance-of p2, p1, Ljava/lang/AutoCloseable;

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    goto/16 :goto_3

    :cond_1
    instance-of p2, p1, Ljava/util/concurrent/ExecutorService;

    if-eqz p2, :cond_5

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object p2

    if-ne p1, p2, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 p3, 0x0

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    :try_start_0
    sget-object p4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p5, 0x1

    invoke-interface {p1, p5, p6, p4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    if-nez p3, :cond_3

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 p3, 0x1

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_c

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    :cond_5
    instance-of p2, p1, Landroid/content/res/TypedArray;

    if-eqz p2, :cond_6

    check-cast p1, Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_6
    instance-of p2, p1, Landroid/media/MediaMetadataRetriever;

    if-eqz p2, :cond_7

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_3

    :cond_7
    instance-of p2, p1, Landroid/media/MediaDrm;

    if-eqz p2, :cond_8

    check-cast p1, Landroid/media/MediaDrm;

    invoke-virtual {p1}, Landroid/media/MediaDrm;->release()V

    goto :goto_3

    :cond_8
    invoke-static {}, Lmi2;->b()V

    return-void

    :cond_9
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->getInternalResult()Lxp1;

    move-result-object p1

    invoke-static {p9}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    sget-object p2, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getAVAILABLE-U7r42EA()I

    move-result p2

    goto :goto_2

    :cond_a
    if-nez p9, :cond_b

    sget-object p2, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result p2

    goto :goto_2

    :cond_b
    check-cast p9, Landroidx/camera/camera2/pipe/OutputStatus;

    invoke-virtual {p9}, Landroidx/camera/camera2/pipe/OutputStatus;->unbox-impl()I

    move-result p2

    :goto_2
    invoke-static {p2}, Landroidx/camera/camera2/pipe/OutputStatus;->box-impl(I)Landroidx/camera/camera2/pipe/OutputStatus;

    move-result-object p2

    invoke-static {p2}, Landroidx/camera/camera2/pipe/internal/OutputResult;->access$constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/camera/camera2/pipe/internal/OutputResult;->box-impl(Ljava/lang/Object;)Landroidx/camera/camera2/pipe/internal/OutputResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lxp1;->f(Ljava/lang/Object;)Z

    :cond_c
    :goto_3
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->remainingOutputResults:Llt;

    invoke-virtual {p1}, Llt;->a()I

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->this$0:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/internal/FrameState;->access$getListenerStates$p(Landroidx/camera/camera2/pipe/internal/FrameState;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/internal/ListenerState;

    iget p3, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->streamId:I

    invoke-virtual {p2, p3}, Landroidx/camera/camera2/pipe/internal/ListenerState;->invokeOnImageAvailable-aKI5c8E(I)V

    goto :goto_4

    :cond_d
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->this$0:Landroidx/camera/camera2/pipe/internal/FrameState;

    iget p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->streamId:I

    invoke-virtual {p1, p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->onStreamResultComplete-aKI5c8E(I)V

    :cond_e
    return-void
.end method

.method public outputOrNull()Landroidx/camera/camera2/pipe/media/SharedOutputImage;
    .locals 2

    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->getResult()Lmk2;

    move-result-object p0

    invoke-interface {p0}, Lmb4;->P()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lmb4;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lmk2;->m()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/internal/OutputResult;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    check-cast p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/SharedOutputImage;->acquireOrNull()Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic outputOrNull()Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->outputOrNull()Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 5

    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->getInternalResult()Lxp1;

    move-result-object p0

    invoke-interface {p0}, Lmb4;->P()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lmb4;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lmk2;->m()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/internal/OutputResult;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    :cond_0
    check-cast v1, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    if-eqz v1, :cond_9

    instance-of p0, v1, Ljava/lang/AutoCloseable;

    if-eqz p0, :cond_1

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_1
    instance-of p0, v1, Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_5

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object p0

    if-ne v1, p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-nez p0, :cond_4

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_5
    instance-of p0, v1, Landroid/content/res/TypedArray;

    if-eqz p0, :cond_6

    check-cast v1, Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_6
    instance-of p0, v1, Landroid/media/MediaMetadataRetriever;

    if-eqz p0, :cond_7

    check-cast v1, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :cond_7
    instance-of p0, v1, Landroid/media/MediaDrm;

    if-eqz p0, :cond_8

    check-cast v1, Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->release()V

    goto :goto_1

    :cond_8
    invoke-static {}, Lmi2;->b()V

    :cond_9
    :goto_1
    return-void
.end method

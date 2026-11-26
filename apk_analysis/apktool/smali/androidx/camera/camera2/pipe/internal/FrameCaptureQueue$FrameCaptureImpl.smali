.class public final Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/FrameCapture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrameCaptureImpl"
.end annotation


# instance fields
.field private final closed:Lht;

.field private frameListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Frame$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Landroidx/camera/camera2/pipe/Request;

.field private final result:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Landroidx/camera/camera2/pipe/internal/OutputResult<",
            "Landroidx/camera/camera2/pipe/Frame;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/Request;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->this$0:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->request:Landroidx/camera/camera2/pipe/Request;

    const/4 p1, 0x0

    invoke-static {p1}, Lkt;->a(Z)Lht;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->closed:Lht;

    new-instance p1, Lyp1;

    invoke-direct {p1}, Lyp1;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->result:Lxp1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->frameListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Landroidx/camera/camera2/pipe/Frame$Listener;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->frameListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    if-nez v1, :cond_3

    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->result:Lxp1;

    invoke-interface {p0}, Lmb4;->P()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lmb4;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lmk2;->m()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/internal/OutputResult;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v1, p0

    :cond_1
    check-cast v1, Landroidx/camera/camera2/pipe/Frame;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Landroidx/camera/camera2/pipe/Frame;->addListener(Landroidx/camera/camera2/pipe/Frame$Listener;)V

    return-void

    :cond_2
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/Frame$Listener;->onFrameComplete()V

    :cond_3
    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public awaitFrame(Le02;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/Frame;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1;-><init>(Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->closed:Lht;

    invoke-virtual {p1}, Lht;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v4

    :cond_3
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->result:Lxp1;

    iput v3, v0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl$awaitFrame$1;->label:I

    invoke-interface {p0, v0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Landroidx/camera/camera2/pipe/internal/OutputResult;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move-object p0, v4

    :goto_2
    check-cast p0, Landroidx/camera/camera2/pipe/Frame;

    if-eqz p0, :cond_6

    invoke-static {p0, v4, v3, v4}, Landroidx/camera/camera2/pipe/FrameReference;->tryAcquire$default(Landroidx/camera/camera2/pipe/FrameReference;Ljava/util/Set;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/Frame;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v4
.end method

.method public close()V
    .locals 6

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->completeWithFailure-tXNfJfc(I)V

    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->result:Lxp1;

    invoke-interface {v0}, Lmb4;->P()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lmb4;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lmk2;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/internal/OutputResult;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v2, v0

    :cond_0
    check-cast v2, Landroidx/camera/camera2/pipe/Frame;

    if-eqz v2, :cond_9

    instance-of v0, v2, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_1
    instance-of v0, v2, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_5

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne v2, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v1, :cond_3

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_5
    instance-of v0, v2, Landroid/content/res/TypedArray;

    if-eqz v0, :cond_6

    check-cast v2, Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_6
    instance-of v0, v2, Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_7

    check-cast v2, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :cond_7
    instance-of v0, v2, Landroid/media/MediaDrm;

    if-eqz v0, :cond_8

    check-cast v2, Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->release()V

    goto :goto_1

    :cond_8
    invoke-static {}, Lmi2;->b()V

    return-void

    :cond_9
    :goto_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->this$0:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->access$getLock$p(Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->this$0:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    monitor-enter v0

    :try_start_1
    invoke-static {v1}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->access$getQueue$p(Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;)Lfr;

    move-result-object v1

    invoke-virtual {v1, p0}, Lfr;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_a
    return-void
.end method

.method public final completeWith(Landroidx/camera/camera2/pipe/Frame;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->result:Lxp1;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->access$constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->box-impl(Ljava/lang/Object;)Landroidx/camera/camera2/pipe/internal/OutputResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lxp1;->f(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    instance-of p0, p1, Ljava/lang/AutoCloseable;

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    goto/16 :goto_2

    :cond_0
    instance-of p0, p1, Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_4

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object p0

    if-ne p1, p0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_2
    :goto_0
    if-nez p0, :cond_3

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-interface {p1, v2, v3, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v1, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :cond_4
    instance-of p0, p1, Landroid/content/res/TypedArray;

    if-eqz p0, :cond_5

    check-cast p1, Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_5
    instance-of p0, p1, Landroid/media/MediaMetadataRetriever;

    if-eqz p0, :cond_6

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :cond_6
    instance-of p0, p1, Landroid/media/MediaDrm;

    if-eqz p0, :cond_7

    check-cast p1, Landroid/media/MediaDrm;

    invoke-virtual {p1}, Landroid/media/MediaDrm;->release()V

    goto :goto_2

    :cond_7
    invoke-static {}, Lmi2;->b()V

    return-void

    :cond_8
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->frameListeners:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->frameListeners:Ljava/util/List;

    sget-object v2, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_9

    move-object p0, v0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_1
    if-ge v1, p0, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Frame$Listener;

    invoke-interface {p1, v2}, Landroidx/camera/camera2/pipe/Frame;->addListener(Landroidx/camera/camera2/pipe/Frame$Listener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final completeWithFailure-tXNfJfc(I)V
    .locals 2

    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->result:Lxp1;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/OutputStatus;->box-impl(I)Landroidx/camera/camera2/pipe/OutputStatus;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->access$constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->box-impl(Ljava/lang/Object;)Landroidx/camera/camera2/pipe/internal/OutputResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lxp1;->f(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->frameListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->frameListeners:Ljava/util/List;

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_0

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/Frame$Listener;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/Frame$Listener;->onFrameComplete()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    return-void
.end method

.method public getFrame()Landroidx/camera/camera2/pipe/Frame;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->result:Lxp1;

    invoke-interface {p0}, Lmb4;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lmb4;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lmk2;->m()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/internal/OutputResult;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    check-cast p0, Landroidx/camera/camera2/pipe/Frame;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v1}, Landroidx/camera/camera2/pipe/FrameReference;->tryAcquire$default(Landroidx/camera/camera2/pipe/FrameReference;Ljava/util/Set;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/Frame;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public getRequest()Landroidx/camera/camera2/pipe/Request;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->request:Landroidx/camera/camera2/pipe/Request;

    return-object p0
.end method

.method public getStatus-U7r42EA()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;->result:Lxp1;

    invoke-interface {p0}, Lmb4;->P()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getPENDING-U7r42EA()I

    move-result p0

    return p0

    :cond_1
    invoke-interface {p0}, Lmb4;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result p0

    return p0

    :cond_2
    invoke-interface {p0}, Lmk2;->m()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/internal/OutputResult;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getAVAILABLE-U7r42EA()I

    move-result p0

    return p0

    :cond_3
    if-nez p0, :cond_4

    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result p0

    return p0

    :cond_4
    check-cast p0, Landroidx/camera/camera2/pipe/OutputStatus;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus;->unbox-impl()I

    move-result p0

    return p0
.end method

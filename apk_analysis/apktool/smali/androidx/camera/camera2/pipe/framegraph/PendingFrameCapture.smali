.class public final Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/FrameCapture;


# instance fields
.field private aborted:Z

.field private closed:Z

.field private final deferred:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private pendingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Frame$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Landroidx/camera/camera2/pipe/Request;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/Request;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->request:Landroidx/camera/camera2/pipe/Request;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->lock:Ljava/lang/Object;

    new-instance p1, Lyp1;

    invoke-direct {p1}, Lyp1;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->deferred:Lxp1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->pendingListeners:Ljava/util/List;

    return-void
.end method

.method private final terminate(Z)V
    .locals 5

    new-instance v0, Lr07;

    invoke-direct {v0}, Lr07;-><init>()V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->closed:Z

    if-nez v2, :cond_c

    iget-boolean v2, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->aborted:Z

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->closed:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    iput-boolean v2, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->aborted:Z

    :goto_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->deferred:Lxp1;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Lxp1;->f(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->pendingListeners:Ljava/util/List;

    iput-object v3, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->pendingListeners:Ljava/util/List;

    iput-object p1, v0, Lr07;->b:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->deferred:Lxp1;

    invoke-interface {p0}, Lmk2;->m()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object p1, v0, Lr07;->b:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/Frame$Listener;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/Frame$Listener;->onFrameComplete()V

    goto :goto_1

    :cond_2
    check-cast p0, Landroidx/camera/camera2/pipe/FrameCapture;

    if-eqz p0, :cond_b

    instance-of p1, p0, Ljava/lang/AutoCloseable;

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_3

    :cond_3
    instance-of p1, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_7

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object p1

    if-ne p0, p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-interface {p0, v3, v4, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    if-nez v0, :cond_5

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move v0, v2

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_b

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    :cond_7
    instance-of p1, p0, Landroid/content/res/TypedArray;

    if-eqz p1, :cond_8

    check-cast p0, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_8
    instance-of p1, p0, Landroid/media/MediaMetadataRetriever;

    if-eqz p1, :cond_9

    check-cast p0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_3

    :cond_9
    instance-of p1, p0, Landroid/media/MediaDrm;

    if-eqz p1, :cond_a

    check-cast p0, Landroid/media/MediaDrm;

    invoke-virtual {p0}, Landroid/media/MediaDrm;->release()V

    goto :goto_3

    :cond_a
    invoke-static {}, Lmi2;->b()V

    :cond_b
    :goto_3
    return-void

    :cond_c
    :goto_4
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1

    throw p0
.end method


# virtual methods
.method public final abort()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->terminate(Z)V

    return-void
.end method

.method public addListener(Landroidx/camera/camera2/pipe/Frame$Listener;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->closed:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->aborted:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->deferred:Lxp1;

    invoke-interface {v1}, Lmb4;->P()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->pendingListeners:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->deferred:Lxp1;

    invoke-interface {p0}, Lmk2;->m()Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    check-cast p0, Landroidx/camera/camera2/pipe/FrameCapture;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/FrameCapture;->addListener(Landroidx/camera/camera2/pipe/Frame$Listener;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    :try_start_2
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/Frame$Listener;->onFrameComplete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public awaitFrame(Le02;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p1, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture$awaitFrame$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture$awaitFrame$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture$awaitFrame$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture$awaitFrame$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture$awaitFrame$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture$awaitFrame$1;-><init>(Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture$awaitFrame$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture$awaitFrame$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->deferred:Lxp1;

    iput v5, v0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture$awaitFrame$1;->label:I

    invoke-interface {p0, v0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Landroidx/camera/camera2/pipe/FrameCapture;

    if-eqz p1, :cond_6

    iput v4, v0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture$awaitFrame$1;->label:I

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/FrameCapture;->awaitFrame(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p0

    :cond_6
    return-object v3
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->terminate(Z)V

    return-void
.end method

.method public getFrame()Landroidx/camera/camera2/pipe/Frame;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->deferred:Lxp1;

    invoke-interface {v0}, Lmb4;->P()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->deferred:Lxp1;

    invoke-interface {p0}, Lmk2;->m()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/FrameCapture;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/FrameCapture;->getFrame()Landroidx/camera/camera2/pipe/Frame;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public getRequest()Landroidx/camera/camera2/pipe/Request;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->request:Landroidx/camera/camera2/pipe/Request;

    return-object p0
.end method

.method public getStatus-U7r42EA()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->deferred:Lxp1;

    invoke-interface {v1}, Lmb4;->P()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->deferred:Lxp1;

    invoke-interface {v1}, Lmk2;->m()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/FrameCapture;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/FrameCapture;->getStatus-U7r42EA()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->aborted:Z

    if-eqz v1, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getERROR_OUTPUT_ABORTED-U7r42EA()I

    move-result p0

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->closed:Z

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result p0

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getPENDING-U7r42EA()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final setFrameCapture(Landroidx/camera/camera2/pipe/FrameCapture;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->closed:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->aborted:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->deferred:Lxp1;

    invoke-interface {v1, p1}, Lxp1;->f(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lbj;->e(Landroidx/camera/camera2/pipe/FrameCapture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->pendingListeners:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/camera/camera2/pipe/framegraph/PendingFrameCapture;->pendingListeners:Ljava/util/List;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/Frame$Listener;

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/FrameCapture;->addListener(Landroidx/camera/camera2/pipe/Frame$Listener;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    :try_start_2
    invoke-static {p1}, Lbj;->e(Landroidx/camera/camera2/pipe/FrameCapture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

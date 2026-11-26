.class public final Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/FrameGraph;
.implements Landroidx/camera/camera2/pipe/CameraControls3A;


# annotations
.annotation runtime Landroidx/camera/camera2/pipe/config/FrameGraphScope;
.end annotation


# instance fields
.field private final cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

.field private final controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

.field private final frameDistributor:Landroidx/camera/camera2/pipe/internal/FrameDistributor;

.field private final frameGraphBuffers:Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;

.field private final frameGraphCoroutineScope:Ly22;

.field private final graphState:Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly68<",
            "Landroidx/camera/camera2/pipe/GraphState;",
            ">;"
        }
    .end annotation
.end field

.field private isForeground:Z

.field private final latestFrameInfo:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Landroidx/camera/camera2/pipe/FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final latestFrameNumber:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Landroidx/camera/camera2/pipe/FrameNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final streams:Landroidx/camera/camera2/pipe/StreamGraph;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/internal/FrameDistributor;Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;Ly22;Landroidx/camera/camera2/pipe/graph/Controller3A;)V
    .locals 0
    .param p4    # Ly22;
        .annotation runtime Landroidx/camera/camera2/pipe/config/FrameGraphCoroutineScope;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->frameDistributor:Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->frameGraphBuffers:Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->frameGraphCoroutineScope:Ly22;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-virtual {p2, p3}, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->setFrameStartedListener(Landroidx/camera/camera2/pipe/internal/FrameDistributor$FrameStartedListener;)V

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraGraphBase;->getStreams()Landroidx/camera/camera2/pipe/StreamGraph;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->streams:Landroidx/camera/camera2/pipe/StreamGraph;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraGraphBase;->getGraphState()Ly68;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->graphState:Ly68;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraGraphBase;->getLatestFrameNumber()Lhd3;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->latestFrameNumber:Lhd3;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraGraphBase;->getLatestFrameInfo()Lhd3;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->latestFrameInfo:Lhd3;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraGraphBase;->isForeground()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->isForeground:Z

    return-void
.end method

.method public static final synthetic access$createSession(Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;Landroidx/camera/camera2/pipe/CameraGraph$Session;)Landroidx/camera/camera2/pipe/FrameGraph$Session;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->createSession(Landroidx/camera/camera2/pipe/CameraGraph$Session;)Landroidx/camera/camera2/pipe/FrameGraph$Session;

    move-result-object p0

    return-object p0
.end method

.method private final createSession(Landroidx/camera/camera2/pipe/CameraGraph$Session;)Landroidx/camera/camera2/pipe/FrameGraph$Session;
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->frameGraphBuffers:Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-direct {v0, p1, v1, p0}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;-><init>(Landroidx/camera/camera2/pipe/CameraGraph$Session;Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;Landroidx/camera/camera2/pipe/graph/Controller3A;)V

    return-object v0
.end method


# virtual methods
.method public acquireSession(Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameGraph$Session;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$acquireSession$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$acquireSession$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$acquireSession$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$acquireSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$acquireSession$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$acquireSession$1;-><init>(Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$acquireSession$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$acquireSession$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$acquireSession$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    iput-object p0, v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$acquireSession$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$acquireSession$1;->label:I

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->createSession(Landroidx/camera/camera2/pipe/CameraGraph$Session;)Landroidx/camera/camera2/pipe/FrameGraph$Session;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic acquireSessionOrNull()Landroidx/camera/camera2/pipe/CameraGraph$Session;
    .locals 0

    .line 15
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->acquireSessionOrNull()Landroidx/camera/camera2/pipe/FrameGraph$Session;

    move-result-object p0

    return-object p0
.end method

.method public acquireSessionOrNull()Landroidx/camera/camera2/pipe/FrameGraph$Session;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSessionOrNull()Landroidx/camera/camera2/pipe/CameraGraph$Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->createSession(Landroidx/camera/camera2/pipe/CameraGraph$Session;)Landroidx/camera/camera2/pipe/FrameGraph$Session;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public captureWith(Ljava/util/Set;Ljava/util/Map;I)Landroidx/camera/camera2/pipe/FrameBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;I)",
            "Landroidx/camera/camera2/pipe/FrameBuffer;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->frameGraphBuffers:Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;->attach$camera_camera2_pipe(Ljava/util/Set;Ljava/util/Map;I)Landroidx/camera/camera2/pipe/FrameBuffer;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 6

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    instance-of v1, v0, Ljava/lang/AutoCloseable;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v2, 0x0

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Landroid/content/res/TypedArray;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_5
    instance-of v1, v0, Landroid/media/MediaMetadataRetriever;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :cond_6
    instance-of v1, v0, Landroid/media/MediaDrm;

    if-eqz v1, :cond_8

    check-cast v0, Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    :cond_7
    :goto_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->frameGraphCoroutineScope:Ly22;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lz22;->b(Ly22;Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_8
    invoke-static {}, Lmi2;->b()V

    return-void
.end method

.method public getGraphState()Ly68;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Landroidx/camera/camera2/pipe/GraphState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->graphState:Ly68;

    return-object p0
.end method

.method public getId()Landroidx/camera/camera2/pipe/CameraGraphId;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->getId()Landroidx/camera/camera2/pipe/CameraGraphId;

    move-result-object p0

    return-object p0
.end method

.method public getLatestFrameInfo()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/camera/camera2/pipe/FrameInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->latestFrameInfo:Lhd3;

    return-object p0
.end method

.method public getLatestFrameNumber()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/camera/camera2/pipe/FrameNumber;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->latestFrameNumber:Lhd3;

    return-object p0
.end method

.method public getListeners()Landroidx/camera/camera2/pipe/RequestListeners;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->getListeners()Landroidx/camera/camera2/pipe/RequestListeners;

    move-result-object p0

    return-object p0
.end method

.method public getParameters()Landroidx/camera/camera2/pipe/Parameters;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->getParameters()Landroidx/camera/camera2/pipe/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public getStreams()Landroidx/camera/camera2/pipe/StreamGraph;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->streams:Landroidx/camera/camera2/pipe/StreamGraph;

    return-object p0
.end method

.method public isForeground()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->isForeground:Z

    return p0
.end method

.method public lock3A-vIrNa9k(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;IJJ)Lmk2;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/AeMode;",
            "Landroidx/camera/camera2/pipe/AfMode;",
            "Landroidx/camera/camera2/pipe/AwbMode;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Landroidx/camera/camera2/pipe/Lock3ABehavior;",
            "Landroidx/camera/camera2/pipe/Lock3ABehavior;",
            "Landroidx/camera/camera2/pipe/Lock3ABehavior;",
            "Landroidx/camera/camera2/pipe/AeMode;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;IJJ)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-wide/from16 v15, p14

    move-wide/from16 v17, p16

    invoke-interface/range {v1 .. v18}, Landroidx/camera/camera2/pipe/CameraGraphBase;->lock3A-vIrNa9k(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;IJJ)Lmk2;

    move-result-object v0

    return-object v0
.end method

.method public setForeground(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->isForeground:Z

    return-void
.end method

.method public setSurface-NYG5g8E(ILandroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-interface {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraGraphBase;->setSurface-NYG5g8E(ILandroid/view/Surface;)V

    return-void
.end method

.method public setTorchOff-NqN7i0k(Landroidx/camera/camera2/pipe/AeMode;)Lmk2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/AeMode;",
            ")",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraControls3A;->setTorchOff-NqN7i0k(Landroidx/camera/camera2/pipe/AeMode;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public setTorchOn()Lmk2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraControls3A;->setTorchOn()Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->start()V

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->stop()V

    return-void
.end method

.method public submit3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/AeMode;",
            "Landroidx/camera/camera2/pipe/AfMode;",
            "Landroidx/camera/camera2/pipe/AwbMode;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-interface/range {p0 .. p6}, Landroidx/camera/camera2/pipe/CameraControls3A;->submit3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public unlock3A(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lnl3;IJ)Lmk2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;IJ)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-interface/range {p0 .. p7}, Landroidx/camera/camera2/pipe/CameraGraphBase;->unlock3A(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lnl3;IJ)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public unwrapAs(Lne4;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-static {p1, v0}, Lvh;->g(Lne4;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public update3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/AeMode;",
            "Landroidx/camera/camera2/pipe/AfMode;",
            "Landroidx/camera/camera2/pipe/AwbMode;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;)",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-interface/range {p0 .. p6}, Landroidx/camera/camera2/pipe/CameraControls3A;->update3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public updateAudioRestrictionMode-LwUUkyU(I)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraGraphBase;->updateAudioRestrictionMode-LwUUkyU(I)V

    return-void
.end method

.method public useSession(Ldm3;Le02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldm3<",
            "-",
            "Ly22;",
            "-",
            "Landroidx/camera/camera2/pipe/FrameGraph$Session;",
            "-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    new-instance v1, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSession$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSession$2;-><init>(Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;Ldm3;Le02;)V

    invoke-interface {v0, v1, p2}, Landroidx/camera/camera2/pipe/CameraGraphBase;->useSession(Ldm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public useSessionIn(Ly22;Ldm3;)Lmk2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly22;",
            "Ldm3<",
            "-",
            "Ly22;",
            "-",
            "Landroidx/camera/camera2/pipe/FrameGraph$Session;",
            "-",
            "Le02<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lmk2<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    new-instance v1, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl$useSessionIn$1;-><init>(Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;Ldm3;Le02;)V

    invoke-interface {v0, p1, v1}, Landroidx/camera/camera2/pipe/CameraGraphBase;->useSessionIn(Ly22;Ldm3;)Lmk2;

    move-result-object p0

    return-object p0
.end method

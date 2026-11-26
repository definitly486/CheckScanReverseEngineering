.class public final Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/FrameGraph$Session;
.implements Landroidx/camera/camera2/pipe/CameraGraph$Session;


# annotations
.annotation runtime Landroidx/camera/camera2/pipe/config/FrameGraphScope;
.end annotation


# instance fields
.field private final cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

.field private final controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

.field private final frameGraphBuffers:Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;

.field private final state3ASnapshot:Landroidx/camera/camera2/pipe/graph/State3A;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraGraph$Session;Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;Landroidx/camera/camera2/pipe/graph/Controller3A;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->frameGraphBuffers:Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/graph/Controller3A;->state3ASnapshot()Landroidx/camera/camera2/pipe/graph/State3A;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->state3ASnapshot:Landroidx/camera/camera2/pipe/graph/State3A;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->abort()V

    return-void
.end method

.method public capture(Landroidx/camera/camera2/pipe/Request;)Landroidx/camera/camera2/pipe/FrameCapture;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->capture(Landroidx/camera/camera2/pipe/Request;)Landroidx/camera/camera2/pipe/FrameCapture;

    move-result-object p0

    return-object p0
.end method

.method public capture(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/FrameCapture;",
            ">;"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->capture(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 6

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->state3ASnapshot:Landroidx/camera/camera2/pipe/graph/State3A;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/graph/Controller3A;->reset3A(Landroidx/camera/camera2/pipe/graph/State3A;)V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

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
    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->frameGraphBuffers:Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;->invalidate()V

    return-void

    :cond_8
    invoke-static {}, Lmi2;->b()V

    return-void
.end method

.method public lock3A--tS25XM(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;IJJLe02;)Ljava/lang/Object;
    .locals 20
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
            ">;IJJ",
            "Le02<",
            "-",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

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

    move-object/from16 v19, p18

    invoke-interface/range {v1 .. v19}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->lock3A--tS25XM(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;IJJLe02;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lock3AForCapture(Lnl3;IJLe02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            "Ljava/lang/Boolean;",
            ">;IJ",
            "Le02<",
            "-",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-interface/range {p0 .. p5}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->lock3AForCapture(Lnl3;IJLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public lock3AForCapture(ZZIJLe02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIJ",
            "Le02<",
            "-",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 7
    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-interface/range {p0 .. p6}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->lock3AForCapture(ZZIJLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

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

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraControls3A;->setTorchOn()Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public startRepeating(Landroidx/camera/camera2/pipe/Request;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->startRepeating(Landroidx/camera/camera2/pipe/Request;)V

    return-void
.end method

.method public stopRepeating()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->stopRepeating()V

    return-void
.end method

.method public submit(Landroidx/camera/camera2/pipe/Request;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->submit(Landroidx/camera/camera2/pipe/Request;)V

    return-void
.end method

.method public submit(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->submit(Ljava/util/List;)V

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

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-interface/range {p0 .. p6}, Landroidx/camera/camera2/pipe/CameraControls3A;->submit3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public unlock3A(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lnl3;IJLe02;)Ljava/lang/Object;
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
            ">;IJ",
            "Le02<",
            "-",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-interface/range {p0 .. p8}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->unlock3A(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lnl3;IJLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public unlock3APostCapture(ZLe02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le02<",
            "-",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-interface {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->unlock3APostCapture(ZLe02;)Ljava/lang/Object;

    move-result-object p0

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

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphSessionImpl;->cameraGraphSession:Landroidx/camera/camera2/pipe/CameraGraph$Session;

    invoke-interface/range {p0 .. p6}, Landroidx/camera/camera2/pipe/CameraControls3A;->update3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;

    move-result-object p0

    return-object p0
.end method

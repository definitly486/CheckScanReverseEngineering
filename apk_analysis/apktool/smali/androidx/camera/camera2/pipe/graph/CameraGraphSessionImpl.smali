.class public final Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraGraph$Session;


# instance fields
.field private final controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

.field private final debugId:I

.field private final frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

.field private final graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

.field private final listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

.field private final parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

.field private final token:Landroidx/camera/camera2/pipe/core/Token;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Token;Landroidx/camera/camera2/pipe/graph/GraphProcessor;Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    invoke-static {}, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImplKt;->getCameraGraphSessionIds()Llt;

    move-result-object p1

    invoke-virtual {p1}, Llt;->b()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->debugId:I

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->abort()V

    return-void

    :cond_0
    const-string v0, "Cannot call abort on "

    const-string v1, " after close."

    invoke-static {p0, v0, v1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public capture(Landroidx/camera/camera2/pipe/Request;)Landroidx/camera/camera2/pipe/FrameCapture;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->enqueue(Landroidx/camera/camera2/pipe/Request;)Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->submit(Landroidx/camera/camera2/pipe/Request;)V

    return-object v0
.end method

.method public capture(Ljava/util/List;)Ljava/util/List;
    .locals 1
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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->enqueue(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->submit(Ljava/util/List;)V

    return-object v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;->flush()V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->fetchUpdatedListeners$camera_camera2_pipe()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {v1, v0}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->updateRequestListeners(Ljava/util/List;)V

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/core/Token;->release()Z

    return-void
.end method

.method public lock3A--tS25XM(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;IJJLe02;)Ljava/lang/Object;
    .locals 16
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

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    new-instance v13, Ljava/lang/Long;

    move-wide/from16 v0, p14

    invoke-direct {v13, v0, v1}, Ljava/lang/Long;-><init>(J)V

    new-instance v14, Ljava/lang/Long;

    move-wide/from16 v0, p16

    invoke-direct {v14, v0, v1}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, p13

    move-object/from16 v15, p18

    invoke-virtual/range {v2 .. v15}, Landroidx/camera/camera2/pipe/graph/Controller3A;->lock3A-Qz1gx5w(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;ILjava/lang/Long;Ljava/lang/Long;Le02;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "Cannot call lock3A on "

    const-string v2, " after close."

    invoke-static {v0, v1, v2}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

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

    iget-object p5, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {p5}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result p5

    if-nez p5, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/graph/Controller3A;->lock3AForCapture(Lnl3;IJ)Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "Cannot call lock3AForCapture on "

    const-string p2, " after close."

    invoke-static {p0, p1, p2}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

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

    .line 24
    iget-object p6, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {p6}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result p6

    if-nez p6, :cond_0

    .line 25
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-virtual/range {p0 .. p5}, Landroidx/camera/camera2/pipe/graph/Controller3A;->lock3AForCapture(ZZIJ)Lmk2;

    move-result-object p0

    return-object p0

    .line 26
    :cond_0
    const-string p1, "Cannot call lock3AForCapture on "

    const-string p2, " after close."

    invoke-static {p0, p1, p2}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setTorchOff-NqN7i0k(Landroidx/camera/camera2/pipe/AeMode;)Lmk2;
    .locals 1
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

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/graph/Controller3A;->setTorchOff-NqN7i0k(Landroidx/camera/camera2/pipe/AeMode;)Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "Cannot call setTorchOff on "

    const-string v0, " after close."

    invoke-static {p0, p1, v0}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setTorchOn()Lmk2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/Controller3A;->setTorchOn()Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "Cannot call setTorchOn on "

    const-string v1, " after close."

    invoke-static {p0, v0, v1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public startRepeating(Landroidx/camera/camera2/pipe/Request;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->setRepeatingRequest(Landroidx/camera/camera2/pipe/Request;)V

    return-void

    :cond_0
    const-string p1, "Cannot call startRepeating on "

    const-string v0, " after close."

    invoke-static {p0, p1, v0}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public stopRepeating()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->setRepeatingRequest(Landroidx/camera/camera2/pipe/Request;)V

    return-void

    :cond_0
    const-string v0, "Cannot call stopRepeating on "

    const-string v1, " after close."

    invoke-static {p0, v0, v1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public submit(Landroidx/camera/camera2/pipe/Request;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->submit(Landroidx/camera/camera2/pipe/Request;)Z

    return-void

    .line 42
    :cond_0
    const-string p1, "Cannot call submit on "

    const-string v0, " after close."

    invoke-static {p0, p1, v0}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public submit(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->submit(Ljava/util/List;)Z

    return-void

    :cond_0
    const-string p0, "Cannot call submit with an empty list of Requests!"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "Cannot call submit on "

    const-string v0, " after close."

    invoke-static {p0, p1, v0}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public submit3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;
    .locals 1
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

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-virtual/range {p0 .. p6}, Landroidx/camera/camera2/pipe/graph/Controller3A;->submit3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "Cannot call submit3A on "

    const-string p2, " after close."

    invoke-static {p0, p1, p2}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraGraph.Session-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->debugId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    iget-object p8, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {p8}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result p8

    if-nez p8, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    move-wide p7, p6

    new-instance p6, Ljava/lang/Long;

    invoke-direct {p6, p7, p8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {p0 .. p6}, Landroidx/camera/camera2/pipe/graph/Controller3A;->unlock3A(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lnl3;ILjava/lang/Long;)Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "Cannot call unlock3A on "

    const-string p2, " after close."

    invoke-static {p0, p1, p2}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

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

    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {p2}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/graph/Controller3A;->unlock3APostCapture(Z)Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "Cannot call unlock3APostCapture on "

    const-string p2, " after close."

    invoke-static {p0, p1, p2}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public update3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;
    .locals 11
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

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v1 .. v10}, Landroidx/camera/camera2/pipe/graph/Controller3A;->update3A-169HPGg$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "Cannot call update3A on "

    const-string p2, " after close."

    invoke-static {p0, p1, p2}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

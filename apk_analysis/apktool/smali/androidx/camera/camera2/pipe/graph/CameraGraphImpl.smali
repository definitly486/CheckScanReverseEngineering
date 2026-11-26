.class public final Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraGraph;


# annotations
.annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphScope;
.end annotation


# instance fields
.field private final audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

.field private final cameraController:Landroidx/camera/camera2/pipe/CameraController;

.field private final closed:Lht;

.field private final controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

.field private final frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

.field private final frameDistributor:Landroidx/camera/camera2/pipe/internal/FrameDistributor;

.field private final graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

.field private final graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

.field private final graphScope:Ly22;

.field private final id:Landroidx/camera/camera2/pipe/CameraGraphId;

.field private isForeground:Z

.field private final listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

.field private final parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

.field private final sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

.field private final streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

.field private final surfaceGraph:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/graph/GraphProcessor;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/graph/SurfaceGraph;Landroidx/camera/camera2/pipe/CameraController;Landroidx/camera/camera2/pipe/internal/FrameDistributor;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Ly22;Landroidx/camera/camera2/pipe/graph/Controller3A;)V
    .locals 0
    .param p15    # Ly22;
        .annotation runtime Landroidx/camera/camera2/pipe/config/ForCameraGraph;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->surfaceGraph:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->cameraController:Landroidx/camera/camera2/pipe/CameraController;

    iput-object p8, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->frameDistributor:Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    iput-object p9, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    iput-object p10, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    iput-object p11, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->id:Landroidx/camera/camera2/pipe/CameraGraphId;

    iput-object p12, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    iput-object p13, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    iput-object p14, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iput-object p15, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphScope:Ly22;

    move-object/from16 p3, p16

    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    const/4 p3, 0x0

    invoke-static {p3}, Lkt;->a(Z)Lht;

    move-result-object p3

    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->closed:Lht;

    sget-object p3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    invoke-virtual {p3, p2, p1, p0}, Landroidx/camera/camera2/pipe/core/Debug;->formatCameraGraphProperties(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraph;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "CXCP"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result p2

    sget-object p3, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getHIGH_SPEED-2uNL3no()I

    move-result p3

    invoke-static {p2, p3}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getOutputs()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getOutputs()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p4, 0x2

    if-gt p2, p4, :cond_3

    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getOutputs()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    instance-of p4, p2, Ljava/util/Collection;

    if-eqz p4, :cond_1

    move-object p4, p2

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-interface {p4}, Landroidx/camera/camera2/pipe/OutputStream;->isValidForHighSpeedOperatingMode()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getOutputs()Ljava/util/List;

    move-result-object p0

    const-string p1, "HIGH_SPEED CameraGraph must only contain Preview and/or Video streams. Configured outputs are "

    invoke-static {p0, p1}, Leg;->d(Ljava/lang/Object;Ljava/lang/String;)V

    throw p3

    :cond_3
    const-string p0, "Cannot create a HIGH_SPEED CameraGraph with more than two outputs. Configured outputs are "

    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getOutputs()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p0}, Leg;->d(Ljava/lang/Object;Ljava/lang/String;)V

    throw p3

    :cond_4
    const-string p0, "Cannot create a HIGH_SPEED CameraGraph without outputs."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw p3

    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getInput()Ljava/util/List;

    move-result-object p2

    const/4 p4, 0x1

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getInput()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x1f

    if-ge p2, p5, :cond_8

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getInput()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, p4, :cond_6

    goto :goto_2

    :cond_6
    const-string p0, "Multi resolution reprocessing not supported under Android S"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw p3

    :cond_7
    const-string p0, "At least one InputConfiguration is required for reprocessing"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw p3

    :cond_8
    :goto_2
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getImageSourceMap$camera_camera2_pipe()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->surfaceGraph:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->maybeUpdateSurfaces$camera_camera2_pipe()V

    :cond_9
    iput-boolean p4, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->isForeground:Z

    return-void
.end method

.method public static final synthetic access$createSessionFromToken(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/core/Token;)Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->createSessionFromToken(Landroidx/camera/camera2/pipe/core/Token;)Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getController3A$p(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;)Landroidx/camera/camera2/pipe/graph/Controller3A;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    return-object p0
.end method

.method private final createSessionFromToken(Landroidx/camera/camera2/pipe/core/Token;)Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;
    .locals 7

    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->getParameters()Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->getListeners()Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;-><init>(Landroidx/camera/camera2/pipe/core/Token;Landroidx/camera/camera2/pipe/graph/GraphProcessor;Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;)V

    return-object v0
.end method

.method private final withSessionLockAsync(Lbm3;)Lmk2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbm3<",
            "-",
            "Ly22;",
            "-",
            "Le02<",
            "-",
            "Lmk2<",
            "+TT;>;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lmk2<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphScope:Ly22;

    new-instance v1, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$withSessionLockAsync$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$withSessionLockAsync$1;-><init>(Lbm3;Le02;)V

    invoke-virtual {v0, p0, v1}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->withTokenInAsync$camera_camera2_pipe(Ly22;Lbm3;)Lmk2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public acquireSession(Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/CameraGraph$Session;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Le02;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iput v3, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;->label:I

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->acquireToken$camera_camera2_pipe(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Landroidx/camera/camera2/pipe/core/Token;

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->createSessionFromToken(Landroidx/camera/camera2/pipe/core/Token;)Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;

    move-result-object p0

    return-object p0
.end method

.method public acquireSessionOrNull()Landroidx/camera/camera2/pipe/CameraGraph$Session;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->tryAcquireToken$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/Token;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->createSessionFromToken(Landroidx/camera/camera2/pipe/core/Token;)Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Closing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->close()V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->cameraController:Landroidx/camera/camera2/pipe/CameraController;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraController;->close()V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->frameDistributor:Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->close()V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->close()V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->surfaceGraph:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->close()V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->close()V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    invoke-interface {v0, p0}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;->removeCameraGraph(Landroidx/camera/camera2/pipe/CameraGraph;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphScope:Ly22;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lz22;->b(Ly22;Ljava/util/concurrent/CancellationException;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1
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

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->getGraphState()Ly68;

    move-result-object p0

    return-object p0
.end method

.method public getId()Landroidx/camera/camera2/pipe/CameraGraphId;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->id:Landroidx/camera/camera2/pipe/CameraGraphId;

    return-object p0
.end method

.method public getLatestFrameInfo()Lhd3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/camera/camera2/pipe/FrameInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$latestFrameInfo$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$latestFrameInfo$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Le02;)V

    invoke-static {v0}, Ls0;->a(Lbm3;)Lwy0;

    move-result-object p0

    return-object p0
.end method

.method public getLatestFrameNumber()Lhd3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/camera/camera2/pipe/FrameNumber;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$latestFrameNumber$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$latestFrameNumber$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Le02;)V

    invoke-static {v0}, Ls0;->a(Lbm3;)Lwy0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getListeners()Landroidx/camera/camera2/pipe/RequestListeners;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->getListeners()Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    move-result-object p0

    return-object p0
.end method

.method public getListeners()Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;
    .locals 0

    .line 5
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    return-object p0
.end method

.method public bridge synthetic getParameters()Landroidx/camera/camera2/pipe/Parameters;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->getParameters()Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    move-result-object p0

    return-object p0
.end method

.method public getParameters()Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;
    .locals 0

    .line 5
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    return-object p0
.end method

.method public getStreams()Landroidx/camera/camera2/pipe/StreamGraph;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    return-object p0
.end method

.method public isForeground()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->isForeground:Z

    return p0
.end method

.method public lock3A-vIrNa9k(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;IJJ)Lmk2;
    .locals 17
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

    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move/from16 v11, p13

    move-wide/from16 v12, p14

    move-wide/from16 v14, p16

    invoke-direct/range {v0 .. v16}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$lock3A$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lnl3;Lnl3;IJJLe02;)V

    invoke-direct {v1, v0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->withSessionLockAsync(Lbm3;)Lmk2;

    move-result-object v0

    return-object v0
.end method

.method public setForeground(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->isForeground:Z

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->cameraController:Landroidx/camera/camera2/pipe/CameraController;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/CameraController;->setForeground(Z)V

    return-void
.end method

.method public setSurface-NYG5g8E(ILandroid/view/Surface;)V
    .locals 2

    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#setSurface"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#setSurface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->surfaceGraph:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->set-NYG5g8E(ILandroid/view/Surface;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public setTorchOff-NqN7i0k(Landroidx/camera/camera2/pipe/AeMode;)Lmk2;
    .locals 2
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

    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$setTorchOff$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$setTorchOff$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/AeMode;Le02;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->withSessionLockAsync(Lbm3;)Lmk2;

    move-result-object p0

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

    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$setTorchOn$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$setTorchOn$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Le02;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->withSessionLockAsync(Lbm3;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphStarting()V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->cameraController:Landroidx/camera/camera2/pipe/CameraController;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraController;->start()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_1
    const-string v0, "Cannot start "

    const-string v1, " after calling close()"

    invoke-static {p0, v0, v1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#stop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stopping "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphStopping()V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->cameraController:Landroidx/camera/camera2/pipe/CameraController;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CameraController;->stop()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_1
    const-string v0, "Cannot stop "

    const-string v1, " after calling close()"

    invoke-static {p0, v0, v1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public submit3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;
    .locals 9
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

    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Le02;)V

    invoke-direct {v1, v0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->withSessionLockAsync(Lbm3;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->getId()Landroidx/camera/camera2/pipe/CameraGraphId;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraGraphId;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unlock3A(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lnl3;IJ)Lmk2;
    .locals 10
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

    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$unlock3A$1;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$unlock3A$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lnl3;IJLe02;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->withSessionLockAsync(Lbm3;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public update3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;
    .locals 9
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

    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Le02;)V

    invoke-direct {v1, v0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->withSessionLockAsync(Lbm3;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public updateAudioRestrictionMode-LwUUkyU(I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    invoke-interface {v0, p0, p1}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;->updateCameraGraphAudioRestrictionMode-TyYSX5E(Landroidx/camera/camera2/pipe/CameraGraph;I)V

    :cond_0
    return-void
.end method

.method public useSession(Ldm3;Le02;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldm3<",
            "-",
            "Ly22;",
            "-",
            "Landroidx/camera/camera2/pipe/CameraGraph$Session;",
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

    instance-of v0, p2, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSession$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSession$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSession$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSession$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSession$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSession$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSession$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSession$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/AutoCloseable;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object p0, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSession$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ldm3;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSession$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSession$1;->label:I

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->acquireSession(Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move-object p0, p2

    check-cast p0, Ljava/lang/AutoCloseable;

    :try_start_1
    move-object p2, p0

    check-cast p2, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    new-instance v2, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSession$2$1;

    invoke-direct {v2, p1, p2, v5}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSession$2$1;-><init>(Ldm3;Landroidx/camera/camera2/pipe/CameraGraph$Session;Le02;)V

    iput-object p0, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSession$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSession$1;->label:I

    invoke-static {v2, v0}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p2, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    invoke-static {p0, v5}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p2

    :goto_4
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
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
            "Landroidx/camera/camera2/pipe/CameraGraph$Session;",
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

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    new-instance v1, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSessionIn$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$useSessionIn$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Ldm3;Le02;)V

    invoke-virtual {v0, p1, v1}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->withTokenIn$camera_camera2_pipe(Ly22;Lbm3;)Lmk2;

    move-result-object p0

    return-object p0
.end method

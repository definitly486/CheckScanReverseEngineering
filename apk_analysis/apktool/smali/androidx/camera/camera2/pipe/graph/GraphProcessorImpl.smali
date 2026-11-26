.class public final Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/graph/GraphProcessor;
.implements Landroidx/camera/camera2/pipe/graph/GraphListener;


# annotations
.annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphScope;
.end annotation


# instance fields
.field private final _graphState:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Landroidx/camera/camera2/pipe/GraphState;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraGraphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

.field private final cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

.field private final externalStateGraphListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/GraphStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/Listener3A;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;)V
    .locals 9
    .param p5    # Ljava/util/List;
        .annotation runtime Landroidx/camera/camera2/pipe/config/ForCameraGraph;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            "Landroidx/camera/camera2/pipe/CameraGraphId;",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "Landroidx/camera/camera2/pipe/graph/Listener3A;",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;",
            "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->cameraGraphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getGraphStateListeners()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->externalStateGraphListeners:Ljava/util/List;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getDefaultParameters()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getRequiredParameters()Ljava/util/Map;

    move-result-object v4

    sget-object v0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->getIgnore3ARequiredParameters()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->getIgnore3ARequiredParameters()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->getIgnore3ARequiredParameters()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is set to true, ignoring GraphState3A parameters."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getFlags()Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    move-result-object p3

    invoke-virtual {p6, p3}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->getRepeatingRequestFrameCountForCapture$camera_camera2_pipe(Landroidx/camera/camera2/pipe/CameraGraph$Flags;)I

    move-result p3

    if-eqz p3, :cond_2

    new-instance p6, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;

    int-to-long v0, p3

    invoke-direct {p6, v0, v1}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;-><init>(J)V

    goto :goto_0

    :cond_2
    const/4 p6, 0x0

    :goto_0
    new-instance v1, Landroidx/camera/camera2/pipe/graph/GraphLoop;

    check-cast p5, Ljava/util/Collection;

    invoke-static {p6}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p3, p5}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    filled-new-array {p4, p6}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Threads;->getCameraPipeScope()Ly22;

    move-result-object v7

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Threads;->getLightweightDispatcher()Lr22;

    move-result-object v8

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/pipe/graph/GraphLoop;-><init>(Landroidx/camera/camera2/pipe/CameraGraphId;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ly22;Lr22;)V

    iput-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    if-eqz p6, :cond_3

    invoke-virtual {p6, v1}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->setGraphLoop(Landroidx/camera/camera2/pipe/graph/GraphLoop;)V

    :cond_3
    sget-object p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->_graphState:Lxg5;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->abort()V

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->close()V

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

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->_graphState:Lxg5;

    return-object p0
.end method

.method public getRepeatingRequest()Landroidx/camera/camera2/pipe/Request;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->getRepeatingRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object p0

    return-object p0
.end method

.method public invalidate()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->invalidate()V

    return-void
.end method

.method public onGraphError(Landroidx/camera/camera2/pipe/GraphState$GraphStateError;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onGraphError("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->_graphState:Lxg5;

    :cond_1
    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/camera/camera2/pipe/GraphState;

    instance-of v3, v2, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;

    if-nez v3, :cond_3

    instance-of v2, v2, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p1

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v2, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    :goto_1
    invoke-interface {v0, v1, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->externalStateGraphListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/GraphStateListener;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/GraphStateListener;->onGraphError(Landroidx/camera/camera2/pipe/GraphState$GraphStateError;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onGraphModified(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " onGraphModified"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->invalidate()V

    return-void
.end method

.method public onGraphStarted(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onGraphStarted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->_graphState:Lxg5;

    sget-object v1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;

    invoke-interface {v0, v1}, Lxg5;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setRequestProcessor(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->externalStateGraphListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/GraphStateListener;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/GraphStateListener;->onGraphStarted()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onGraphStarting()V
    .locals 2

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onGraphStarting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->_graphState:Lxg5;

    sget-object v1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;

    invoke-interface {v0, v1}, Lxg5;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->externalStateGraphListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/GraphStateListener;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/GraphStateListener;->onGraphStarting()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onGraphStopped(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V
    .locals 1

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " onGraphStopped"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->_graphState:Lxg5;

    sget-object v0, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    invoke-interface {p1, v0}, Lxg5;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setRequestProcessor(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->externalStateGraphListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/GraphStateListener;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/GraphStateListener;->onGraphStopped()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onGraphStopping()V
    .locals 2

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onGraphStopping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->_graphState:Lxg5;

    sget-object v1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;

    invoke-interface {v0, v1}, Lxg5;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setRequestProcessor(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->externalStateGraphListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/GraphStateListener;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/GraphStateListener;->onGraphStopping()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setRepeatingRequest(Landroidx/camera/camera2/pipe/Request;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setRepeatingRequest(Landroidx/camera/camera2/pipe/Request;)V

    return-void
.end method

.method public submit(Landroidx/camera/camera2/pipe/Request;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->submit(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public submit(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/camera/camera2/pipe/Request;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroidx/camera/camera2/pipe/Request;

    if-eqz v1, :cond_3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->cameraGraphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getInput()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot submit "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object v0

    const-string v1, " with input request "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " because CameraGraph was not configured to support reprocessing"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->submit(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GraphProcessor(cameraGraph: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trigger(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "*+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->trigger(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public update3AParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "*+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setGraph3AParameters(Ljava/util/Map;)V

    return-void
.end method

.method public updateGraphParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "*+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setGraphParameters(Ljava/util/Map;)V

    return-void
.end method

.method public updateRequestListeners(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setRequestListeners(Ljava/util/List;)V

    return-void
.end method

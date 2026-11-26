.class public final Landroidx/camera/camera2/pipe/graph/CaptureLimiter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;
.implements Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;


# instance fields
.field private _graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

.field private final frameCount:Lmt;

.field private final requestsUntilActive:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->requestsUntilActive:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    invoke-static {}, Lkt;->c()Lmt;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->frameCount:Lmt;

    return-void

    :cond_0
    const-string p0, "Failed requirement."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getRequestsUntilActive$p(Landroidx/camera/camera2/pipe/graph/CaptureLimiter;)J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->requestsUntilActive:J

    return-wide v0
.end method

.method public static final synthetic access$get_graphLoop$p(Landroidx/camera/camera2/pipe/graph/CaptureLimiter;)Landroidx/camera/camera2/pipe/graph/GraphLoop;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->_graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    return-object p0
.end method


# virtual methods
.method public final getGraphLoop()Landroidx/camera/camera2/pipe/graph/GraphLoop;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->_graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->frameCount:Lmt;

    :cond_0
    iget-wide v2, v1, Lmt;->a:J

    const-wide/16 p1, -0x1

    cmp-long p3, v2, p1

    if-nez p3, :cond_1

    :goto_0
    move-wide v4, p1

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x1

    add-long/2addr p1, v2

    goto :goto_0

    :goto_1
    sget-object v0, Lmt;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p2, Ljy8$a;->a:Ljy8$a;

    :cond_2
    if-eqz p1, :cond_0

    iget-wide p1, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->requestsUntilActive:J

    cmp-long p1, v4, p1

    if-nez p1, :cond_4

    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Capture processing is now enabled for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->access$get_graphLoop$p(Landroidx/camera/camera2/pipe/graph/CaptureLimiter;)Landroidx/camera/camera2/pipe/graph/GraphLoop;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " after "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " frames."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CXCP"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->getGraphLoop()Landroidx/camera/camera2/pipe/graph/GraphLoop;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setCaptureProcessingEnabled(Z)V

    :cond_4
    return-void
.end method

.method public onGraphShutdown()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->frameCount:Lmt;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lmt;->a:J

    sget-object v0, Ljy8$a;->a:Ljy8$a;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->getGraphLoop()Landroidx/camera/camera2/pipe/graph/GraphLoop;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setCaptureProcessingEnabled(Z)V

    return-void
.end method

.method public onGraphStopped()V
    .locals 6

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->frameCount:Lmt;

    :cond_0
    iget-wide v2, v1, Lmt;->a:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    :goto_0
    sget-object v0, Lmt;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v2, Ljy8$a;->a:Ljy8$a;

    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->getGraphLoop()Landroidx/camera/camera2/pipe/graph/GraphLoop;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setCaptureProcessingEnabled(Z)V

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Capture processing has been disabled for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->getGraphLoop()Landroidx/camera/camera2/pipe/graph/GraphLoop;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " until "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->access$getRequestsUntilActive$p(Landroidx/camera/camera2/pipe/graph/CaptureLimiter;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " frames have been completed."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CXCP"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public onStopRepeating()V
    .locals 0

    return-void
.end method

.method public final setGraphLoop(Landroidx/camera/camera2/pipe/graph/GraphLoop;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->_graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    if-nez v0, :cond_1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->_graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setCaptureProcessingEnabled(Z)V

    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Capture processing has been disabled for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " until "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->access$getRequestsUntilActive$p(Landroidx/camera/camera2/pipe/graph/CaptureLimiter;)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " frames have been completed."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CXCP"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string p0, "GraphLoop has already been set!"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

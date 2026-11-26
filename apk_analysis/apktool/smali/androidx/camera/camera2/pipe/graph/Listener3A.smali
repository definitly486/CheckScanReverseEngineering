.class public final Landroidx/camera/camera2/pipe/graph/Listener3A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;
.implements Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;


# annotations
.annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphScope;
.end annotation


# instance fields
.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/camera/camera2/pipe/graph/Result3AStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private final updateListeners-voP-kFw(JLandroidx/camera/camera2/pipe/FrameMetadata;)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListener;

    invoke-interface {v1, p1, p2, p3}, Landroidx/camera/camera2/pipe/graph/Result3AStateListener;->update-voP-kFw(JLandroidx/camera/camera2/pipe/FrameMetadata;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final addListener(Landroidx/camera/camera2/pipe/graph/Result3AStateListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onGraphShutdown()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/graph/Result3AStateListener;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;->onStopRepeating()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGraphStopped()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/graph/Result3AStateListener;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;->onStopRepeating()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequestNumber-my6kx4g()J

    move-result-wide p1

    invoke-direct {p0, p1, p2, p4}, Landroidx/camera/camera2/pipe/graph/Listener3A;->updateListeners-voP-kFw(JLandroidx/camera/camera2/pipe/FrameMetadata;)V

    return-void
.end method

.method public onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/graph/Result3AStateListener;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequestNumber-my6kx4g()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/camera/camera2/pipe/graph/Result3AStateListener;->onRequestSequenceCreated-DThHKJ0(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStopRepeating()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/graph/Result3AStateListener;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;->onStopRepeating()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequestNumber-my6kx4g()J

    move-result-wide p1

    invoke-interface {p4}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/graph/Listener3A;->updateListeners-voP-kFw(JLandroidx/camera/camera2/pipe/FrameMetadata;)V

    return-void
.end method

.method public final removeListener(Landroidx/camera/camera2/pipe/graph/Result3AStateListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.class public final Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/GraphStateListener;


# instance fields
.field public cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

.field private final cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/adapter/CameraStateAdapter;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    return-void
.end method


# virtual methods
.method public final getCameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "cameraGraph"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onGraphError(Landroidx/camera/camera2/pipe/GraphState$GraphStateError;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->getCameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphStateUpdated(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V

    return-void
.end method

.method public onGraphStarted()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->getCameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    sget-object v1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarted;

    invoke-virtual {v0, p0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphStateUpdated(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V

    return-void
.end method

.method public onGraphStarting()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->getCameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    sget-object v1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStarting;

    invoke-virtual {v0, p0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphStateUpdated(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V

    return-void
.end method

.method public onGraphStopped()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->getCameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    sget-object v1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopped;

    invoke-virtual {v0, p0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphStateUpdated(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V

    return-void
.end method

.method public onGraphStopping()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->getCameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    sget-object v1, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;

    invoke-virtual {v0, p0, v1}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphStateUpdated(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V

    return-void
.end method

.method public final setCameraGraph(Landroidx/camera/camera2/pipe/CameraGraph;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    return-void
.end method

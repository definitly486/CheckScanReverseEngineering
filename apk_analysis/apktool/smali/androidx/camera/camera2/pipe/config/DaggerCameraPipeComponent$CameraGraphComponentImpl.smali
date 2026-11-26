.class final Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/config/CameraGraphComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraGraphComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field private final cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

.field private final cameraGraphConfigModule:Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;

.field cameraGraphImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;",
            ">;"
        }
    .end annotation
.end field

.field cameraGraphParametersImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;",
            ">;"
        }
    .end annotation
.end field

.field cameraGraphRequestListenersImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

.field controller3AProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/Controller3A;",
            ">;"
        }
    .end annotation
.end field

.field frameCaptureQueueProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;",
            ">;"
        }
    .end annotation
.end field

.field graphProcessorImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;",
            ">;"
        }
    .end annotation
.end field

.field graphSessionLockProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/GraphSessionLock;",
            ">;"
        }
    .end annotation
.end field

.field graphState3AProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphState3A;",
            ">;"
        }
    .end annotation
.end field

.field listener3AProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/Listener3A;",
            ">;"
        }
    .end annotation
.end field

.field provideCameraBackendProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraBackend;",
            ">;"
        }
    .end annotation
.end field

.field provideCameraControllerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraController;",
            ">;"
        }
    .end annotation
.end field

.field provideCameraGraphCoroutineScopeProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Ly22;",
            ">;"
        }
    .end annotation
.end field

.field provideCameraMetadataProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;"
        }
    .end annotation
.end field

.field provideFrameDistributorProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/FrameDistributor;",
            ">;"
        }
    .end annotation
.end field

.field provideRequestListenersProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field provideSurfaceGraphProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/SurfaceGraph;",
            ">;"
        }
    .end annotation
.end field

.field provideSystemClockOffsetsProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/SystemClockOffsets;",
            ">;"
        }
    .end annotation
.end field

.field streamGraphImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphConfigModule:Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;

    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->initialize(Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)V

    return-void
.end method

.method public static synthetic access$100(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;)Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphConfigModule:Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;

    return-object p0
.end method

.method private initialize(Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)V
    .locals 4

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraBackendProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraMetadataProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/4 v2, 0x4

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->listener3AProvider:Lxs6;

    new-instance p1, Ljl2;

    invoke-direct {p1}, Ljl2;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphProcessorImplProvider:Lxs6;

    new-instance p1, Ljl2;

    invoke-direct {p1}, Ljl2;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->streamGraphImplProvider:Lxs6;

    new-instance p1, Ljl2;

    invoke-direct {p1}, Ljl2;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraControllerProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0x9

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideSurfaceGraphProvider:Lxs6;

    iget-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraControllerProvider:Lxs6;

    new-instance v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {v0}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object v0

    invoke-static {p1, v0}, Ljl2;->a(Lxs6;Lxs6;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->streamGraphImplProvider:Lxs6;

    new-instance v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {v0}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object v0

    invoke-static {p1, v0}, Ljl2;->a(Lxs6;Lxs6;)V

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0xa

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->frameCaptureQueueProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0xb

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideSystemClockOffsetsProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/4 v2, 0x6

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideFrameDistributorProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/4 v2, 0x5

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideRequestListenersProvider:Lxs6;

    iget-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphProcessorImplProvider:Lxs6;

    new-instance v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {v0}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object v0

    invoke-static {p1, v0}, Ljl2;->a(Lxs6;Lxs6;)V

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0xd

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphSessionLockProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0xe

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraGraphCoroutineScopeProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0xc

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphParametersImplProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0xf

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphRequestListenersImplProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0x11

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphState3AProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0x10

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->controller3AProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphImplProvider:Lxs6;

    return-void
.end method


# virtual methods
.method public cameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphImplProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraGraph;

    return-object p0
.end method

.method public controller3A()Landroidx/camera/camera2/pipe/graph/Controller3A;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->controller3AProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/graph/Controller3A;

    return-object p0
.end method

.method public frameCaptureQueue()Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->frameCaptureQueueProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    return-object p0
.end method

.method public frameDistributor()Landroidx/camera/camera2/pipe/internal/FrameDistributor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideFrameDistributorProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    return-object p0
.end method

.method public graphProcessor()Landroidx/camera/camera2/pipe/graph/GraphProcessor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphProcessorImplProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    return-object p0
.end method

.method public sessionLock()Landroidx/camera/camera2/pipe/internal/GraphSessionLock;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphSessionLockProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    return-object p0
.end method

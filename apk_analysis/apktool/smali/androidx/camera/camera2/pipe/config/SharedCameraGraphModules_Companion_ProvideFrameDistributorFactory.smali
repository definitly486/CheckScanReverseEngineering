.class public final Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxs6;"
    }
.end annotation


# instance fields
.field private final cameraMetadataProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final frameCaptureQueueProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final streamGraphImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final systemClockOffsetsProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/SystemClockOffsets;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/SystemClockOffsets;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory;->streamGraphImplProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory;->frameCaptureQueueProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory;->cameraMetadataProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory;->systemClockOffsetsProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/SystemClockOffsets;",
            ">;)",
            "Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static provideFrameDistributor(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/core/SystemClockOffsets;)Landroidx/camera/camera2/pipe/internal/FrameDistributor;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules;->Companion:Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;->provideFrameDistributor(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/core/SystemClockOffsets;)Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/internal/FrameDistributor;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory;->streamGraphImplProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory;->frameCaptureQueueProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory;->cameraMetadataProvider:Lxs6;

    invoke-interface {v2}, Lws6;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/CameraMetadata;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory;->systemClockOffsetsProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;

    invoke-static {v0, v1, v2, p0}, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory;->provideFrameDistributor(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/core/SystemClockOffsets;)Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory;->get()Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    move-result-object p0

    return-object p0
.end method

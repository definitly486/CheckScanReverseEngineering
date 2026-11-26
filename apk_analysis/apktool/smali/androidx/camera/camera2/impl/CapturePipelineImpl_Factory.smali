.class public final Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;
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
.field private final cameraPropertiesProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final configAdapterProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/CaptureConfigAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final flashControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/FlashControl;",
            ">;"
        }
    .end annotation
.end field

.field private final requestListenerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/ComboRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final threadsProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;"
        }
    .end annotation
.end field

.field private final torchControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/TorchControl;",
            ">;"
        }
    .end annotation
.end field

.field private final useCaseCameraStateProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraState;",
            ">;"
        }
    .end annotation
.end field

.field private final useCaseGraphContextProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/config/UseCaseGraphContext;",
            ">;"
        }
    .end annotation
.end field

.field private final useTorchAsFlashProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;",
            ">;"
        }
    .end annotation
.end field

.field private final videoUsageControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/VideoUsageControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/CaptureConfigAdapter;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/FlashControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/TorchControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/VideoUsageControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/ComboRequestListener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraState;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/config/UseCaseGraphContext;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->configAdapterProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->flashControlProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->torchControlProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->videoUsageControlProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->threadsProvider:Lxs6;

    iput-object p6, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->requestListenerProvider:Lxs6;

    iput-object p7, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->useTorchAsFlashProvider:Lxs6;

    iput-object p8, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->cameraPropertiesProvider:Lxs6;

    iput-object p9, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->useCaseCameraStateProvider:Lxs6;

    iput-object p10, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->useCaseGraphContextProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/CaptureConfigAdapter;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/FlashControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/TorchControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/VideoUsageControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/ComboRequestListener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraState;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/config/UseCaseGraphContext;",
            ">;)",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/adapter/CaptureConfigAdapter;Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/impl/VideoUsageControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;Landroidx/camera/camera2/impl/CameraProperties;Lws6;Landroidx/camera/camera2/config/UseCaseGraphContext;)Landroidx/camera/camera2/impl/CapturePipelineImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/CaptureConfigAdapter;",
            "Landroidx/camera/camera2/impl/FlashControl;",
            "Landroidx/camera/camera2/impl/TorchControl;",
            "Landroidx/camera/camera2/impl/VideoUsageControl;",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            "Landroidx/camera/camera2/impl/ComboRequestListener;",
            "Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            "Lws6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraState;",
            ">;",
            "Landroidx/camera/camera2/config/UseCaseGraphContext;",
            ")",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroidx/camera/camera2/impl/CapturePipelineImpl;-><init>(Landroidx/camera/camera2/adapter/CaptureConfigAdapter;Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/impl/VideoUsageControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;Landroidx/camera/camera2/impl/CameraProperties;Lws6;Landroidx/camera/camera2/config/UseCaseGraphContext;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/impl/CapturePipelineImpl;
    .locals 11

    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->configAdapterProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->flashControlProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/camera/camera2/impl/FlashControl;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->torchControlProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/camera/camera2/impl/TorchControl;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->videoUsageControlProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/camera/camera2/impl/VideoUsageControl;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->threadsProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/camera/camera2/impl/UseCaseThreads;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->requestListenerProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/camera/camera2/impl/ComboRequestListener;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->useTorchAsFlashProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->cameraPropertiesProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/camera/camera2/impl/CameraProperties;

    iget-object v9, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->useCaseCameraStateProvider:Lxs6;

    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->useCaseGraphContextProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Landroidx/camera/camera2/config/UseCaseGraphContext;

    invoke-static/range {v1 .. v10}, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->newInstance(Landroidx/camera/camera2/adapter/CaptureConfigAdapter;Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/impl/VideoUsageControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;Landroidx/camera/camera2/impl/CameraProperties;Lws6;Landroidx/camera/camera2/config/UseCaseGraphContext;)Landroidx/camera/camera2/impl/CapturePipelineImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl_Factory;->get()Landroidx/camera/camera2/impl/CapturePipelineImpl;

    move-result-object p0

    return-object p0
.end method

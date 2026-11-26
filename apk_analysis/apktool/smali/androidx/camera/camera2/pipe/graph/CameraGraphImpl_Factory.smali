.class public final Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;
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
.field private final audioRestrictionControllerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraControllerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraController;",
            ">;"
        }
    .end annotation
.end field

.field private final controller3AProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/Controller3A;",
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

.field private final frameDistributorProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/FrameDistributor;",
            ">;"
        }
    .end annotation
.end field

.field private final graphConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;"
        }
    .end annotation
.end field

.field private final graphListenerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphListener;",
            ">;"
        }
    .end annotation
.end field

.field private final graphProcessorProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final graphScopeProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Ly22;",
            ">;"
        }
    .end annotation
.end field

.field private final idProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraphId;",
            ">;"
        }
    .end annotation
.end field

.field private final listenersProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final parametersProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionLockProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/GraphSessionLock;",
            ">;"
        }
    .end annotation
.end field

.field private final streamGraphProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final surfaceGraphProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/SurfaceGraph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphProcessor;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphListener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/SurfaceGraph;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraController;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/FrameDistributor;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraphId;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/GraphSessionLock;",
            ">;",
            "Lxs6<",
            "Ly22;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/Controller3A;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->graphConfigProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->metadataProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->graphProcessorProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->graphListenerProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->streamGraphProvider:Lxs6;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->surfaceGraphProvider:Lxs6;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->cameraControllerProvider:Lxs6;

    iput-object p8, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->frameDistributorProvider:Lxs6;

    iput-object p9, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->frameCaptureQueueProvider:Lxs6;

    iput-object p10, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->audioRestrictionControllerProvider:Lxs6;

    iput-object p11, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->idProvider:Lxs6;

    iput-object p12, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->parametersProvider:Lxs6;

    iput-object p13, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->listenersProvider:Lxs6;

    iput-object p14, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->sessionLockProvider:Lxs6;

    iput-object p15, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->graphScopeProvider:Lxs6;

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->controller3AProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphProcessor;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphListener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/SurfaceGraph;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraController;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/FrameDistributor;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraphId;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/GraphSessionLock;",
            ">;",
            "Lxs6<",
            "Ly22;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/Controller3A;",
            ">;)",
            "Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;

    move-object/from16 v1, p0

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

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-direct/range {v0 .. v16}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/graph/GraphProcessor;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/graph/SurfaceGraph;Landroidx/camera/camera2/pipe/CameraController;Landroidx/camera/camera2/pipe/internal/FrameDistributor;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Ly22;Landroidx/camera/camera2/pipe/graph/Controller3A;)Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;
    .locals 17

    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    move-object/from16 v1, p0

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

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-direct/range {v0 .. v16}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;-><init>(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/graph/GraphProcessor;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/graph/SurfaceGraph;Landroidx/camera/camera2/pipe/CameraController;Landroidx/camera/camera2/pipe/internal/FrameDistributor;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Ly22;Landroidx/camera/camera2/pipe/graph/Controller3A;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->graphConfigProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->metadataProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/camera/camera2/pipe/CameraMetadata;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->graphProcessorProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->graphListenerProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/camera/camera2/pipe/graph/GraphListener;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->streamGraphProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->surfaceGraphProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->cameraControllerProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/camera/camera2/pipe/CameraController;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->frameDistributorProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->frameCaptureQueueProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->audioRestrictionControllerProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->idProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/camera/camera2/pipe/CameraGraphId;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->parametersProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->listenersProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->sessionLockProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->graphScopeProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ly22;

    iget-object v0, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->controller3AProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-static/range {v2 .. v17}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->newInstance(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/graph/GraphProcessor;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/graph/SurfaceGraph;Landroidx/camera/camera2/pipe/CameraController;Landroidx/camera/camera2/pipe/internal/FrameDistributor;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Ly22;Landroidx/camera/camera2/pipe/graph/Controller3A;)Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 153
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl_Factory;->get()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    move-result-object p0

    return-object p0
.end method

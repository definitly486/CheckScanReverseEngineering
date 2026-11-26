.class public final Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;
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
.field private final cameraXConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/core/CameraXConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final capturePipelineProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CapturePipeline;",
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

.field private final useCaseSurfaceManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseSurfaceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CapturePipeline;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraState;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/config/UseCaseGraphContext;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseSurfaceManager;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/CameraXConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;->capturePipelineProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;->useCaseCameraStateProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;->useCaseGraphContextProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;->useCaseSurfaceManagerProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;->threadsProvider:Lxs6;

    iput-object p6, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;->cameraXConfigProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CapturePipeline;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraState;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/config/UseCaseGraphContext;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseSurfaceManager;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/CameraXConfig;",
            ">;)",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Lws6;Lws6;Landroidx/camera/camera2/config/UseCaseGraphContext;Lws6;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/core/CameraXConfig;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lws6<",
            "Landroidx/camera/camera2/impl/CapturePipeline;",
            ">;",
            "Lws6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraState;",
            ">;",
            "Landroidx/camera/camera2/config/UseCaseGraphContext;",
            "Lws6<",
            "Landroidx/camera/camera2/impl/UseCaseSurfaceManager;",
            ">;",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            "Landroidx/camera/core/CameraXConfig;",
            ")",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;-><init>(Lws6;Lws6;Landroidx/camera/camera2/config/UseCaseGraphContext;Lws6;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/core/CameraXConfig;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;
    .locals 6

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;->capturePipelineProvider:Lxs6;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;->useCaseCameraStateProvider:Lxs6;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;->useCaseGraphContextProvider:Lxs6;

    invoke-interface {v2}, Lws6;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/config/UseCaseGraphContext;

    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;->useCaseSurfaceManagerProvider:Lxs6;

    iget-object v4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;->threadsProvider:Lxs6;

    invoke-interface {v4}, Lws6;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/impl/UseCaseThreads;

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;->cameraXConfigProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroidx/camera/core/CameraXConfig;

    invoke-static/range {v0 .. v5}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;->newInstance(Lws6;Lws6;Landroidx/camera/camera2/config/UseCaseGraphContext;Lws6;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/core/CameraXConfig;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl_Factory;->get()Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    move-result-object p0

    return-object p0
.end method

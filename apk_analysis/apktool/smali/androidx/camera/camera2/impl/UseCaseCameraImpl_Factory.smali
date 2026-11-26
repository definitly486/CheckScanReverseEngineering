.class public final Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;
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
.field private final capturePipelineProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CapturePipeline;",
            ">;"
        }
    .end annotation
.end field

.field private final requestControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionConfigAdapterProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/SessionConfigAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionProcessorProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/core/impl/SessionProcessor;",
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
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/config/UseCaseGraphContext;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/impl/SessionProcessor;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseSurfaceManager;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/SessionConfigAdapter;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CapturePipeline;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;->useCaseGraphContextProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;->threadsProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;->sessionProcessorProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;->requestControlProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;->useCaseSurfaceManagerProvider:Lxs6;

    iput-object p6, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;->sessionConfigAdapterProvider:Lxs6;

    iput-object p7, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;->capturePipelineProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/config/UseCaseGraphContext;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/impl/SessionProcessor;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseSurfaceManager;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/SessionConfigAdapter;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CapturePipeline;",
            ">;)",
            "Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/config/UseCaseGraphContext;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lws6;Lws6;Lws6;)Landroidx/camera/camera2/impl/UseCaseCameraImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/config/UseCaseGraphContext;",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            "Landroidx/camera/core/impl/SessionProcessor;",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            "Lws6<",
            "Landroidx/camera/camera2/impl/UseCaseSurfaceManager;",
            ">;",
            "Lws6<",
            "Landroidx/camera/camera2/adapter/SessionConfigAdapter;",
            ">;",
            "Lws6<",
            "Landroidx/camera/camera2/impl/CapturePipeline;",
            ">;)",
            "Landroidx/camera/camera2/impl/UseCaseCameraImpl;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;-><init>(Landroidx/camera/camera2/config/UseCaseGraphContext;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lws6;Lws6;Lws6;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/impl/UseCaseCameraImpl;
    .locals 8

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;->useCaseGraphContextProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/config/UseCaseGraphContext;

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;->threadsProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/camera/camera2/impl/UseCaseThreads;

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;->sessionProcessorProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/camera/core/impl/SessionProcessor;

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;->requestControlProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget-object v5, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;->useCaseSurfaceManagerProvider:Lxs6;

    iget-object v6, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;->sessionConfigAdapterProvider:Lxs6;

    iget-object v7, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;->capturePipelineProvider:Lxs6;

    invoke-static/range {v1 .. v7}, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;->newInstance(Landroidx/camera/camera2/config/UseCaseGraphContext;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lws6;Lws6;Lws6;)Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl_Factory;->get()Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    move-result-object p0

    return-object p0
.end method

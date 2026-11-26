.class public final Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;
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
.field private final cameraGraphProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
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

.field private final frameDistributorProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/FrameDistributor;",
            ">;"
        }
    .end annotation
.end field

.field private final frameGraphBuffersProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;",
            ">;"
        }
    .end annotation
.end field

.field private final frameGraphCoroutineScopeProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Ly22;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/FrameDistributor;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;",
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

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;->cameraGraphProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;->frameDistributorProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;->frameGraphBuffersProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;->frameGraphCoroutineScopeProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;->controller3AProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/FrameDistributor;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;",
            ">;",
            "Lxs6<",
            "Ly22;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/Controller3A;",
            ">;)",
            "Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/internal/FrameDistributor;Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;Ly22;Landroidx/camera/camera2/pipe/graph/Controller3A;)Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;
    .locals 6

    new-instance v0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;-><init>(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/internal/FrameDistributor;Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;Ly22;Landroidx/camera/camera2/pipe/graph/Controller3A;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;->cameraGraphProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/CameraGraph;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;->frameDistributorProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;->frameGraphBuffersProvider:Lxs6;

    invoke-interface {v2}, Lws6;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;->frameGraphCoroutineScopeProvider:Lxs6;

    invoke-interface {v3}, Lws6;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly22;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;->controller3AProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-static {v0, v1, v2, v3, p0}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;->newInstance(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/internal/FrameDistributor;Landroidx/camera/camera2/pipe/framegraph/FrameGraphBuffers;Ly22;Landroidx/camera/camera2/pipe/graph/Controller3A;)Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl_Factory;->get()Landroidx/camera/camera2/pipe/framegraph/FrameGraphImpl;

    move-result-object p0

    return-object p0
.end method

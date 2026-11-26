.class public final Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;
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
.field private final camera2QuirksProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraGraphConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraGraphIdProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraphId;",
            ">;"
        }
    .end annotation
.end field

.field private final graphListener3AProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/Listener3A;",
            ">;"
        }
    .end annotation
.end field

.field private final graphListenersProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threadsProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
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
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraphId;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/Listener3A;",
            ">;",
            "Lxs6<",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;>;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;->threadsProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;->cameraGraphIdProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;->cameraGraphConfigProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;->graphListener3AProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;->graphListenersProvider:Lxs6;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;->camera2QuirksProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraphId;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/Listener3A;",
            ">;",
            "Lxs6<",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;>;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;",
            ">;)",
            "Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/Listener3A;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;)Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            "Landroidx/camera/camera2/pipe/CameraGraphId;",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "Landroidx/camera/camera2/pipe/graph/Listener3A;",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;",
            "Landroidx/camera/camera2/pipe/compat/Camera2Quirks;",
            ")",
            "Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/Listener3A;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;
    .locals 7

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;->threadsProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;->cameraGraphIdProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/camera/camera2/pipe/CameraGraphId;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;->cameraGraphConfigProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;->graphListener3AProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/camera/camera2/pipe/graph/Listener3A;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;->graphListenersProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;->camera2QuirksProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    invoke-static/range {v1 .. v6}, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;->newInstance(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/Listener3A;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;)Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl_Factory;->get()Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    move-result-object p0

    return-object p0
.end method

.class public final Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;
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
.field private final cameraControllerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/core/impl/CameraControlInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraInfoProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraStateAdapterProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/CameraStateAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final configProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/config/CameraConfig;",
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

.field private final useCaseManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseManager;",
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
            "Landroidx/camera/camera2/config/CameraConfig;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseManager;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/impl/CameraControlInternal;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/CameraStateAdapter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;->configProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;->useCaseManagerProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;->cameraInfoProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;->cameraControllerProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;->threadsProvider:Lxs6;

    iput-object p6, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;->cameraStateAdapterProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/config/CameraConfig;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseManager;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/impl/CameraControlInternal;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/adapter/CameraStateAdapter;",
            ">;)",
            "Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/camera2/impl/UseCaseManager;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraControlInternal;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/adapter/CameraStateAdapter;)Landroidx/camera/camera2/adapter/CameraInternalAdapter;
    .locals 7

    new-instance v0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/adapter/CameraInternalAdapter;-><init>(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/camera2/impl/UseCaseManager;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraControlInternal;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/adapter/CameraStateAdapter;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/adapter/CameraInternalAdapter;
    .locals 7

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;->configProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/config/CameraConfig;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;->useCaseManagerProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/camera/camera2/impl/UseCaseManager;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;->cameraInfoProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/camera/core/impl/CameraInfoInternal;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;->cameraControllerProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/camera/core/impl/CameraControlInternal;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;->threadsProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/camera/camera2/impl/UseCaseThreads;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;->cameraStateAdapterProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-static/range {v1 .. v6}, Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;->newInstance(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/camera2/impl/UseCaseManager;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraControlInternal;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/adapter/CameraStateAdapter;)Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraInternalAdapter_Factory;->get()Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    move-result-object p0

    return-object p0
.end method

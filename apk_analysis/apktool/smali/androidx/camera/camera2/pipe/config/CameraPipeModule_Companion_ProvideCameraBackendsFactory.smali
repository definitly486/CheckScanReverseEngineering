.class public final Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;
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
.field private final cameraPipeContextProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraPipeLifetimeProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final configProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraPipe$Config;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultCameraBackendProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraBackend;",
            ">;"
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
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraPipe$Config;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraBackend;",
            ">;",
            "Lxs6<",
            "Landroid/content/Context;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;->configProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;->defaultCameraBackendProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;->cameraPipeContextProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;->threadsProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;->cameraPipeLifetimeProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraPipe$Config;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraBackend;",
            ">;",
            "Lxs6<",
            "Landroid/content/Context;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;",
            ">;)",
            "Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static provideCameraBackends(Landroidx/camera/camera2/pipe/CameraPipe$Config;Lws6;Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)Landroidx/camera/camera2/pipe/CameraBackends;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraPipe$Config;",
            "Lws6<",
            "Landroidx/camera/camera2/pipe/CameraBackend;",
            ">;",
            "Landroid/content/Context;",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;",
            ")",
            "Landroidx/camera/camera2/pipe/CameraBackends;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/pipe/config/CameraPipeModule;->Companion:Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;->provideCameraBackends(Landroidx/camera/camera2/pipe/CameraPipe$Config;Lws6;Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)Landroidx/camera/camera2/pipe/CameraBackends;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/CameraBackends;
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;->configProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/CameraPipe$Config;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;->defaultCameraBackendProvider:Lxs6;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;->cameraPipeContextProvider:Lxs6;

    invoke-interface {v2}, Lws6;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;->threadsProvider:Lxs6;

    invoke-interface {v3}, Lws6;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;->cameraPipeLifetimeProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    invoke-static {v0, v1, v2, v3, p0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;->provideCameraBackends(Landroidx/camera/camera2/pipe/CameraPipe$Config;Lws6;Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)Landroidx/camera/camera2/pipe/CameraBackends;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraBackendsFactory;->get()Landroidx/camera/camera2/pipe/CameraBackends;

    move-result-object p0

    return-object p0
.end method

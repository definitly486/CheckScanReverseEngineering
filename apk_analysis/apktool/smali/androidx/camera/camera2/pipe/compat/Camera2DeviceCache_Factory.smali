.class public final Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;
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
.field private final cameraDeviceSetupCompatFactoryProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraErrorListenerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroid/hardware/camera2/CameraManager;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraPipeJobProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Lmb4;",
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

.field private final contextProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final packageManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroid/content/pm/PackageManager;",
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
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroid/hardware/camera2/CameraManager;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;",
            "Lxs6<",
            "Landroid/content/Context;",
            ">;",
            "Lxs6<",
            "Landroid/content/pm/PackageManager;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;",
            ">;",
            "Lxs6<",
            "Lmb4;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->cameraManagerProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->threadsProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->contextProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->packageManagerProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->cameraErrorListenerProvider:Lxs6;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->cameraDeviceSetupCompatFactoryProvider:Lxs6;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->cameraPipeLifetimeProvider:Lxs6;

    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->cameraPipeJobProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroid/hardware/camera2/CameraManager;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;",
            "Lxs6<",
            "Landroid/content/Context;",
            ">;",
            "Lxs6<",
            "Landroid/content/pm/PackageManager;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;",
            ">;",
            "Lxs6<",
            "Lmb4;",
            ">;)",
            "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Lws6;Landroidx/camera/camera2/pipe/core/Threads;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Lws6;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lmb4;)Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lws6<",
            "Landroid/hardware/camera2/CameraManager;",
            ">;",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;",
            "Lws6<",
            "Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;",
            ">;",
            "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;",
            "Lmb4;",
            ")",
            "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;-><init>(Lws6;Landroidx/camera/camera2/pipe/core/Threads;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Lws6;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lmb4;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;
    .locals 8

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->cameraManagerProvider:Lxs6;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->threadsProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->contextProvider:Lxs6;

    invoke-interface {v2}, Lws6;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->packageManagerProvider:Lxs6;

    invoke-interface {v3}, Lws6;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManager;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->cameraErrorListenerProvider:Lxs6;

    invoke-interface {v4}, Lws6;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->cameraDeviceSetupCompatFactoryProvider:Lxs6;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->cameraPipeLifetimeProvider:Lxs6;

    invoke-interface {v6}, Lws6;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->cameraPipeJobProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lmb4;

    invoke-static/range {v0 .. v7}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->newInstance(Lws6;Landroidx/camera/camera2/pipe/core/Threads;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Lws6;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lmb4;)Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache_Factory;->get()Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    move-result-object p0

    return-object p0
.end method

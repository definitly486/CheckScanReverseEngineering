.class public final Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;
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
.field private final camera2CameraControllerComponentProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final camera2DeviceCacheProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;",
            ">;"
        }
    .end annotation
.end field

.field private final camera2DeviceManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final camera2MetadataCacheProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraPipeContextProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroid/content/Context;",
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
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;",
            ">;",
            "Lxs6<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;->threadsProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;->camera2DeviceCacheProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;->camera2MetadataCacheProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;->camera2DeviceManagerProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;->camera2CameraControllerComponentProvider:Lxs6;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;->cameraPipeContextProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;",
            ">;",
            "Lxs6<",
            "Landroid/content/Context;",
            ">;)",
            "Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;Landroid/content/Context;)Landroidx/camera/camera2/pipe/compat/Camera2Backend;
    .locals 7

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/Camera2Backend;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/compat/Camera2Backend;
    .locals 7

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;->threadsProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;->camera2DeviceCacheProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;->camera2MetadataCacheProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;->camera2DeviceManagerProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;->camera2CameraControllerComponentProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;->cameraPipeContextProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    invoke-static/range {v1 .. v6}, Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;->newInstance(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;Landroid/content/Context;)Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2Backend_Factory;->get()Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    move-result-object p0

    return-object p0
.end method

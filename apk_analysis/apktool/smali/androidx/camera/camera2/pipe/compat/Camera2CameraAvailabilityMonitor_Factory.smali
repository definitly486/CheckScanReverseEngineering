.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor_Factory;
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
.method private constructor <init>(Lxs6;Lxs6;Lxs6;)V
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
            "Lmb4;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor_Factory;->cameraManagerProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor_Factory;->threadsProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor_Factory;->cameraPipeJobProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor_Factory;
    .locals 1
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
            "Lmb4;",
            ">;)",
            "Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor_Factory;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor_Factory;-><init>(Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Lws6;Landroidx/camera/camera2/pipe/core/Threads;Lmb4;)Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lws6<",
            "Landroid/hardware/camera2/CameraManager;",
            ">;",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            "Lmb4;",
            ")",
            "Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;-><init>(Lws6;Landroidx/camera/camera2/pipe/core/Threads;Lmb4;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor_Factory;->cameraManagerProvider:Lxs6;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor_Factory;->threadsProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor_Factory;->cameraPipeJobProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb4;

    invoke-static {v0, v1, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor_Factory;->newInstance(Lws6;Landroidx/camera/camera2/pipe/core/Threads;Lmb4;)Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor_Factory;->get()Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor;

    move-result-object p0

    return-object p0
.end method

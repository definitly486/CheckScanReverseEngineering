.class public final Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;
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

.field private final cameraAvailabilityMonitorProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;",
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

.field private final cameraInteropConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraStateOpenerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/CameraStateOpener;",
            ">;"
        }
    .end annotation
.end field

.field private final devicePolicyManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;",
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

.field private final timeSourceProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/TimeSource;",
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
            "Landroidx/camera/camera2/pipe/compat/CameraStateOpener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/TimeSource;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->cameraStateOpenerProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->cameraErrorListenerProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->cameraAvailabilityMonitorProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->timeSourceProvider:Lxs6;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->devicePolicyManagerProvider:Lxs6;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->audioRestrictionControllerProvider:Lxs6;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->cameraInteropConfigProvider:Lxs6;

    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->threadsProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/CameraStateOpener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/TimeSource;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;)",
            "Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/core/Threads;)Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;
    .locals 9

    new-instance v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;-><init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/core/Threads;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;
    .locals 9

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->cameraStateOpenerProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->cameraErrorListenerProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->cameraAvailabilityMonitorProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->timeSourceProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/camera/camera2/pipe/core/TimeSource;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->devicePolicyManagerProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->audioRestrictionControllerProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->cameraInteropConfigProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->threadsProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Landroidx/camera/camera2/pipe/core/Threads;

    invoke-static/range {v1 .. v8}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->newInstance(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/CameraAvailabilityMonitor;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/core/Threads;)Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl_Factory;->get()Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;

    move-result-object p0

    return-object p0
.end method

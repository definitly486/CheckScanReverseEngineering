.class public final Landroidx/camera/camera2/impl/TorchControl_Factory;
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
.field private final cameraPropertiesProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final state3AControlProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/State3AControl;",
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


# direct methods
.method private constructor <init>(Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/State3AControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/TorchControl_Factory;->cameraPropertiesProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/impl/TorchControl_Factory;->state3AControlProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/impl/TorchControl_Factory;->threadsProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/impl/TorchControl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/State3AControl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;)",
            "Landroidx/camera/camera2/impl/TorchControl_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/impl/TorchControl_Factory;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/camera2/impl/TorchControl_Factory;-><init>(Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;)Landroidx/camera/camera2/impl/TorchControl;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/impl/TorchControl;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/camera2/impl/TorchControl;-><init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/impl/TorchControl;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/impl/TorchControl_Factory;->cameraPropertiesProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/CameraProperties;

    iget-object v1, p0, Landroidx/camera/camera2/impl/TorchControl_Factory;->state3AControlProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/impl/State3AControl;

    iget-object p0, p0, Landroidx/camera/camera2/impl/TorchControl_Factory;->threadsProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-static {v0, v1, p0}, Landroidx/camera/camera2/impl/TorchControl_Factory;->newInstance(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;)Landroidx/camera/camera2/impl/TorchControl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/TorchControl_Factory;->get()Landroidx/camera/camera2/impl/TorchControl;

    move-result-object p0

    return-object p0
.end method

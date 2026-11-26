.class public final Landroidx/camera/camera2/compat/EvCompImpl_Factory;
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

.field private final comboRequestListenerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/ComboRequestListener;",
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
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/ComboRequestListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/compat/EvCompImpl_Factory;->cameraPropertiesProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/compat/EvCompImpl_Factory;->threadsProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/compat/EvCompImpl_Factory;->comboRequestListenerProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/compat/EvCompImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/ComboRequestListener;",
            ">;)",
            "Landroidx/camera/camera2/compat/EvCompImpl_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/compat/EvCompImpl_Factory;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/camera2/compat/EvCompImpl_Factory;-><init>(Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)Landroidx/camera/camera2/compat/EvCompImpl;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/EvCompImpl;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/camera2/compat/EvCompImpl;-><init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/compat/EvCompImpl;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/compat/EvCompImpl_Factory;->cameraPropertiesProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/CameraProperties;

    iget-object v1, p0, Landroidx/camera/camera2/compat/EvCompImpl_Factory;->threadsProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/impl/UseCaseThreads;

    iget-object p0, p0, Landroidx/camera/camera2/compat/EvCompImpl_Factory;->comboRequestListenerProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/ComboRequestListener;

    invoke-static {v0, v1, p0}, Landroidx/camera/camera2/compat/EvCompImpl_Factory;->newInstance(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)Landroidx/camera/camera2/compat/EvCompImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/EvCompImpl_Factory;->get()Landroidx/camera/camera2/compat/EvCompImpl;

    move-result-object p0

    return-object p0
.end method

.class public final Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCamera2CameraControlFactory;
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
.field private final compatProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/compat/Camera2CameraControlCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final requestListenerProvider:Lxs6;
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
            "Landroidx/camera/camera2/compat/Camera2CameraControlCompat;",
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

    iput-object p1, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCamera2CameraControlFactory;->compatProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCamera2CameraControlFactory;->threadsProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCamera2CameraControlFactory;->requestListenerProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCamera2CameraControlFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/Camera2CameraControlCompat;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/ComboRequestListener;",
            ">;)",
            "Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCamera2CameraControlFactory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCamera2CameraControlFactory;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCamera2CameraControlFactory;-><init>(Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static provideCamera2CameraControl(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)Landroidx/camera/camera2/interop/Camera2CameraControl;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/config/CameraModule;->Companion:Landroidx/camera/camera2/config/CameraModule$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/camera/camera2/config/CameraModule$Companion;->provideCamera2CameraControl(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)Landroidx/camera/camera2/interop/Camera2CameraControl;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/interop/Camera2CameraControl;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCamera2CameraControlFactory;->compatProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;

    iget-object v1, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCamera2CameraControlFactory;->threadsProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/impl/UseCaseThreads;

    iget-object p0, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCamera2CameraControlFactory;->requestListenerProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/ComboRequestListener;

    invoke-static {v0, v1, p0}, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCamera2CameraControlFactory;->provideCamera2CameraControl(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)Landroidx/camera/camera2/interop/Camera2CameraControl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0}, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCamera2CameraControlFactory;->get()Landroidx/camera/camera2/interop/Camera2CameraControl;

    move-result-object p0

    return-object p0
.end method

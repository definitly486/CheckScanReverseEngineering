.class public final Landroidx/camera/camera2/config/CameraModule_Companion_ProvideZslControlFactory;
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


# direct methods
.method private constructor <init>(Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideZslControlFactory;->cameraPropertiesProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;)Landroidx/camera/camera2/config/CameraModule_Companion_ProvideZslControlFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CameraProperties;",
            ">;)",
            "Landroidx/camera/camera2/config/CameraModule_Companion_ProvideZslControlFactory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideZslControlFactory;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideZslControlFactory;-><init>(Lxs6;)V

    return-object v0
.end method

.method public static provideZslControl(Landroidx/camera/camera2/impl/CameraProperties;)Landroidx/camera/camera2/adapter/ZslControl;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/config/CameraModule;->Companion:Landroidx/camera/camera2/config/CameraModule$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/config/CameraModule$Companion;->provideZslControl(Landroidx/camera/camera2/impl/CameraProperties;)Landroidx/camera/camera2/adapter/ZslControl;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/adapter/ZslControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideZslControlFactory;->cameraPropertiesProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/CameraProperties;

    invoke-static {p0}, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideZslControlFactory;->provideZslControl(Landroidx/camera/camera2/impl/CameraProperties;)Landroidx/camera/camera2/adapter/ZslControl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideZslControlFactory;->get()Landroidx/camera/camera2/adapter/ZslControl;

    move-result-object p0

    return-object p0
.end method

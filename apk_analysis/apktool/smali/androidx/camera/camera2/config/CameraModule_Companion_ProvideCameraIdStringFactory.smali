.class public final Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCameraIdStringFactory;
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
.field private final configProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/config/CameraConfig;",
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
            "Landroidx/camera/camera2/config/CameraConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCameraIdStringFactory;->configProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;)Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCameraIdStringFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/config/CameraConfig;",
            ">;)",
            "Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCameraIdStringFactory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCameraIdStringFactory;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCameraIdStringFactory;-><init>(Lxs6;)V

    return-object v0
.end method

.method public static provideCameraIdString(Landroidx/camera/camera2/config/CameraConfig;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/config/CameraModule;->Companion:Landroidx/camera/camera2/config/CameraModule$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/config/CameraModule$Companion;->provideCameraIdString(Landroidx/camera/camera2/config/CameraConfig;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCameraIdStringFactory;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCameraIdStringFactory;->configProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/config/CameraConfig;

    invoke-static {p0}, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideCameraIdStringFactory;->provideCameraIdString(Landroidx/camera/camera2/config/CameraConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

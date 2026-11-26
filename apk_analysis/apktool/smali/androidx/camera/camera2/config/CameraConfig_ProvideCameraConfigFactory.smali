.class public final Landroidx/camera/camera2/config/CameraConfig_ProvideCameraConfigFactory;
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
.field private final module:Landroidx/camera/camera2/config/CameraConfig;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/config/CameraConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/config/CameraConfig_ProvideCameraConfigFactory;->module:Landroidx/camera/camera2/config/CameraConfig;

    return-void
.end method

.method public static create(Landroidx/camera/camera2/config/CameraConfig;)Landroidx/camera/camera2/config/CameraConfig_ProvideCameraConfigFactory;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/config/CameraConfig_ProvideCameraConfigFactory;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/config/CameraConfig_ProvideCameraConfigFactory;-><init>(Landroidx/camera/camera2/config/CameraConfig;)V

    return-object v0
.end method

.method public static provideCameraConfig(Landroidx/camera/camera2/config/CameraConfig;)Landroidx/camera/camera2/config/CameraConfig;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/config/CameraConfig;->provideCameraConfig()Landroidx/camera/camera2/config/CameraConfig;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/config/CameraConfig;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/CameraConfig_ProvideCameraConfigFactory;->module:Landroidx/camera/camera2/config/CameraConfig;

    invoke-static {p0}, Landroidx/camera/camera2/config/CameraConfig_ProvideCameraConfigFactory;->provideCameraConfig(Landroidx/camera/camera2/config/CameraConfig;)Landroidx/camera/camera2/config/CameraConfig;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Landroidx/camera/camera2/config/CameraConfig_ProvideCameraConfigFactory;->get()Landroidx/camera/camera2/config/CameraConfig;

    move-result-object p0

    return-object p0
.end method

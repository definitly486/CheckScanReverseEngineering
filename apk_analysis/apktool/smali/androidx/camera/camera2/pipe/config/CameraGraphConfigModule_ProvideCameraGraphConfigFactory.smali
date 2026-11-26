.class public final Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule_ProvideCameraGraphConfigFactory;
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
.field private final module:Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule_ProvideCameraGraphConfigFactory;->module:Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;

    return-void
.end method

.method public static create(Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule_ProvideCameraGraphConfigFactory;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule_ProvideCameraGraphConfigFactory;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule_ProvideCameraGraphConfigFactory;-><init>(Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)V

    return-object v0
.end method

.method public static provideCameraGraphConfig(Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;->provideCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule_ProvideCameraGraphConfigFactory;->module:Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule_ProvideCameraGraphConfigFactory;->provideCameraGraphConfig(Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule_ProvideCameraGraphConfigFactory;->get()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object p0

    return-object p0
.end method

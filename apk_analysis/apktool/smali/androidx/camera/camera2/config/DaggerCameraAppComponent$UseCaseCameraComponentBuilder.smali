.class final Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/config/DaggerCameraAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UseCaseCameraComponentBuilder"
.end annotation


# instance fields
.field private final cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

.field private final cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

.field private useCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentBuilder;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iput-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentBuilder;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentBuilder;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/camera2/config/UseCaseCameraComponent;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentBuilder;->useCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    const-class v1, Landroidx/camera/camera2/config/UseCaseCameraConfig;

    invoke-static {v0, v1}, Lte6;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentBuilder;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentBuilder;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentBuilder;->useCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    invoke-direct {v0, v1, v2, p0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/UseCaseCameraConfig;)V

    return-object v0
.end method

.method public config(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentBuilder;->useCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    return-object p0
.end method

.method public bridge synthetic config(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentBuilder;->config(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentBuilder;

    move-result-object p0

    return-object p0
.end method

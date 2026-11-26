.class final Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/config/CameraComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/config/DaggerCameraAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraComponentBuilder"
.end annotation


# instance fields
.field private final cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

.field private cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

.field private streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentBuilder;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentBuilder;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/camera2/config/CameraComponent;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentBuilder;->cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

    const-class v1, Landroidx/camera/camera2/config/CameraConfig;

    invoke-static {v0, v1}, Lte6;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentBuilder;->streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

    const-class v1, Landroidx/camera/core/internal/StreamSpecsCalculator;

    invoke-static {v0, v1}, Lte6;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentBuilder;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentBuilder;->cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentBuilder;->streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

    invoke-direct {v0, v1, v2, p0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/core/internal/StreamSpecsCalculator;)V

    return-object v0
.end method

.method public bridge synthetic config(Landroidx/camera/camera2/config/CameraConfig;)Landroidx/camera/camera2/config/CameraComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentBuilder;->config(Landroidx/camera/camera2/config/CameraConfig;)Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public config(Landroidx/camera/camera2/config/CameraConfig;)Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentBuilder;->cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

    return-object p0
.end method

.method public bridge synthetic streamSpecsCalculator(Landroidx/camera/core/internal/StreamSpecsCalculator;)Landroidx/camera/camera2/config/CameraComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentBuilder;->streamSpecsCalculator(Landroidx/camera/core/internal/StreamSpecsCalculator;)Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public streamSpecsCalculator(Landroidx/camera/core/internal/StreamSpecsCalculator;)Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentBuilder;->streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

    return-object p0
.end method

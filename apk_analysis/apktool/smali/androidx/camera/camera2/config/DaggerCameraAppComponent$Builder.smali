.class final Landroidx/camera/camera2/config/DaggerCameraAppComponent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/config/CameraAppComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/config/DaggerCameraAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cameraAppConfig:Landroidx/camera/camera2/config/CameraAppConfig;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/camera2/config/CameraAppComponent;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$Builder;->cameraAppConfig:Landroidx/camera/camera2/config/CameraAppConfig;

    const-class v1, Landroidx/camera/camera2/config/CameraAppConfig;

    invoke-static {v0, v1}, Lte6;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$Builder;->cameraAppConfig:Landroidx/camera/camera2/config/CameraAppConfig;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;-><init>(Landroidx/camera/camera2/config/CameraAppConfig;)V

    return-object v0
.end method

.method public bridge synthetic config(Landroidx/camera/camera2/config/CameraAppConfig;)Landroidx/camera/camera2/config/CameraAppComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$Builder;->config(Landroidx/camera/camera2/config/CameraAppConfig;)Landroidx/camera/camera2/config/DaggerCameraAppComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public config(Landroidx/camera/camera2/config/CameraAppConfig;)Landroidx/camera/camera2/config/DaggerCameraAppComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$Builder;->cameraAppConfig:Landroidx/camera/camera2/config/CameraAppConfig;

    return-object p0
.end method

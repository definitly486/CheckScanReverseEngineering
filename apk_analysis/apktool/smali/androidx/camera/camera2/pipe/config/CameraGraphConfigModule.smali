.class public final Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

.field private final config:Landroidx/camera/camera2/pipe/CameraGraph$Config;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraphId;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;->config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;->cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    return-void
.end method


# virtual methods
.method public final provideCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;->config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    return-object p0
.end method

.method public final provideCameraGraphId()Landroidx/camera/camera2/pipe/CameraGraphId;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;->cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    return-object p0
.end method

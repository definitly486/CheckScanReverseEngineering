.class public final Landroidx/camera/camera2/impl/CameraPipeCameraProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/CameraProperties;


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation


# instance fields
.field private final cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private final metadata:Landroidx/camera/camera2/pipe/CameraMetadata;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/camera2/pipe/CameraMetadata;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

    iput-object p2, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    return-void
.end method


# virtual methods
.method public getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

    invoke-virtual {p0}, Landroidx/camera/camera2/config/CameraConfig;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    return-object p0
.end method

.class public final Landroidx/camera/camera2/config/CameraConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cameraId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/config/CameraConfig;->cameraId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljh2;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroidx/camera/camera2/config/CameraConfig;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/CameraConfig;->cameraId:Ljava/lang/String;

    return-object p0
.end method

.method public final provideCameraConfig()Landroidx/camera/camera2/config/CameraConfig;
    .locals 0

    return-object p0
.end method

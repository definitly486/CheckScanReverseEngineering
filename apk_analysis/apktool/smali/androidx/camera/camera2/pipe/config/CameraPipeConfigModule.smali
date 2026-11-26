.class public final Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final config:Landroidx/camera/camera2/pipe/CameraPipe$Config;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraPipe$Config;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;->config:Landroidx/camera/camera2/pipe/CameraPipe$Config;

    return-void
.end method


# virtual methods
.method public final provideCameraInteropConfig(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getCameraInteropConfig()Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    move-result-object p0

    return-object p0
.end method

.method public final provideCameraPipeConfig()Landroidx/camera/camera2/pipe/CameraPipe$Config;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;->config:Landroidx/camera/camera2/pipe/CameraPipe$Config;

    return-object p0
.end method

.method public final provideCameraPipeFlags()Landroidx/camera/camera2/pipe/CameraPipe$Flags;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;->config:Landroidx/camera/camera2/pipe/CameraPipe$Config;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getFlags()Landroidx/camera/camera2/pipe/CameraPipe$Flags;

    move-result-object p0

    return-object p0
.end method

.class public final Landroidx/camera/camera2/config/CameraAppConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final camera2InteropCallbacks:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;

.field private final cameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

.field private final cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

.field private final cameraThreadConfig:Landroidx/camera/core/impl/CameraThreadConfig;

.field private final cameraXConfig:Landroidx/camera/core/CameraXConfig;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/core/CameraXConfig;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/config/CameraAppConfig;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/camera/camera2/config/CameraAppConfig;->cameraThreadConfig:Landroidx/camera/core/impl/CameraThreadConfig;

    iput-object p3, p0, Landroidx/camera/camera2/config/CameraAppConfig;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    iput-object p4, p0, Landroidx/camera/camera2/config/CameraAppConfig;->camera2InteropCallbacks:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;

    iput-object p5, p0, Landroidx/camera/camera2/config/CameraAppConfig;->cameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

    iput-object p6, p0, Landroidx/camera/camera2/config/CameraAppConfig;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    return-void
.end method


# virtual methods
.method public final provideCamera2InteropCallbacks()Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/CameraAppConfig;->camera2InteropCallbacks:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;

    return-object p0
.end method

.method public final provideCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/CameraAppConfig;->cameraCoordinator:Landroidx/camera/core/concurrent/CameraCoordinator;

    return-object p0
.end method

.method public final provideCameraPipe()Landroidx/camera/camera2/pipe/CameraPipe;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/CameraAppConfig;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    return-object p0
.end method

.method public final provideCameraThreadConfig()Landroidx/camera/core/impl/CameraThreadConfig;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/CameraAppConfig;->cameraThreadConfig:Landroidx/camera/core/impl/CameraThreadConfig;

    return-object p0
.end method

.method public final provideCameraXConfig()Landroidx/camera/core/CameraXConfig;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/CameraAppConfig;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    return-object p0
.end method

.method public final provideContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/CameraAppConfig;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final provideDisplayInfoManager(Landroid/content/Context;)Landroidx/camera/camera2/impl/DisplayInfoManager;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->Companion:Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;->getInstance(Landroid/content/Context;)Landroidx/camera/camera2/impl/DisplayInfoManager;

    move-result-object p0

    return-object p0
.end method

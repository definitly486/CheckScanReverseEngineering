.class final Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraGraphComponentBuilder"
.end annotation


# instance fields
.field private cameraGraphConfigModule:Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;

.field private final cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentBuilder;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentBuilder;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/camera2/pipe/config/CameraGraphComponent;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentBuilder;->cameraGraphConfigModule:Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;

    const-class v1, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;

    invoke-static {v0, v1}, Lte6;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentBuilder;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentBuilder;->cameraGraphConfigModule:Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;

    invoke-direct {v0, v1, p0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)V

    return-object v0
.end method

.method public bridge synthetic cameraGraphConfigModule(Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentBuilder;->cameraGraphConfigModule(Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public cameraGraphConfigModule(Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentBuilder;->cameraGraphConfigModule:Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;

    return-object p0
.end method

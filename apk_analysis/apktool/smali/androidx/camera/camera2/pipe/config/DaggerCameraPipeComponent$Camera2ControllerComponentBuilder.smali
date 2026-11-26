.class final Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Camera2ControllerComponentBuilder"
.end annotation


# instance fields
.field private camera2ControllerConfig:Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

.field private final cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentBuilder;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentBuilder;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentBuilder;->camera2ControllerConfig:Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    const-class v1, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    invoke-static {v0, v1}, Lte6;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentBuilder;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentBuilder;->camera2ControllerConfig:Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    invoke-direct {v0, v1, p0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)V

    return-object v0
.end method

.method public bridge synthetic camera2ControllerConfig(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentBuilder;->camera2ControllerConfig(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public camera2ControllerConfig(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentBuilder;->camera2ControllerConfig:Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    return-object p0
.end method

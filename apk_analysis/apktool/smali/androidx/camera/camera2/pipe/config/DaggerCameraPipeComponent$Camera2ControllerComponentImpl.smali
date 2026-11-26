.class final Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Camera2ControllerComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field androidExtensionSessionFactoryProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;",
            ">;"
        }
    .end annotation
.end field

.field androidMHighSpeedSessionFactoryProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidMHighSpeedSessionFactory;",
            ">;"
        }
    .end annotation
.end field

.field androidMSessionFactoryProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;",
            ">;"
        }
    .end annotation
.end field

.field androidNSessionFactoryProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;",
            ">;"
        }
    .end annotation
.end field

.field androidPSessionFactoryProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;",
            ">;"
        }
    .end annotation
.end field

.field camera2CameraControllerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/Camera2CameraController;",
            ">;"
        }
    .end annotation
.end field

.field private final camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

.field private final camera2ControllerConfig:Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

.field private final cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

.field provideCameraStatusMonitorProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;",
            ">;"
        }
    .end annotation
.end field

.field provideCoroutineScopeProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Ly22;",
            ">;"
        }
    .end annotation
.end field

.field provideSessionFactoryProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->camera2ControllerConfig:Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->initialize(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)V

    return-void
.end method

.method public static synthetic access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->camera2ControllerConfig:Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    return-object p0
.end method

.method private initialize(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)V
    .locals 3

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->provideCoroutineScopeProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->provideCameraStatusMonitorProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    const/4 v2, 0x4

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;I)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->androidMSessionFactoryProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    const/4 v2, 0x5

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;I)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->androidMHighSpeedSessionFactoryProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    const/4 v2, 0x6

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;I)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->androidNSessionFactoryProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    const/4 v2, 0x7

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;I)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->androidPSessionFactoryProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    const/16 v2, 0x8

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;I)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->androidExtensionSessionFactoryProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    const/4 v2, 0x3

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->provideSessionFactoryProvider:Lxs6;

    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;I)V

    invoke-static {p1}, Lmq2;->a(Lxs6;)Lxs6;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->camera2CameraControllerProvider:Lxs6;

    return-void
.end method


# virtual methods
.method public cameraController()Landroidx/camera/camera2/pipe/CameraController;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->camera2CameraControllerProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraController;

    return-object p0
.end method

.method public standardCamera2CaptureSequenceProcessorFactory()Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;
    .locals 6

    new-instance v0, Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->camera2ControllerConfig:Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    invoke-static {v2}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideCameraGraphConfigFactory;->provideCameraGraphConfig(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->camera2ControllerConfig:Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    invoke-static {v3}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideStreamGraphFactory;->provideStreamGraph(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    move-result-object v3

    iget-object v4, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v4, v4, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2QuirksProvider:Lxs6;

    invoke-interface {v4}, Lws6;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideStrictModeProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroidx/camera/camera2/pipe/StrictMode;

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/StrictMode;)V

    return-object v0
.end method

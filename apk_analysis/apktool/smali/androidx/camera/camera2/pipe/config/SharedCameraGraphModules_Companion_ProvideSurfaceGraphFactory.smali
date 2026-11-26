.class public final Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxs6;"
    }
.end annotation


# instance fields
.field private final cameraControllerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraController;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraSurfaceManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraSurfaceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final streamGraphImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraController;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraSurfaceManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory;->streamGraphImplProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory;->cameraControllerProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory;->cameraSurfaceManagerProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraController;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraSurfaceManager;",
            ">;)",
            "Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory;-><init>(Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static provideSurfaceGraph(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Lws6;Landroidx/camera/camera2/pipe/CameraSurfaceManager;)Landroidx/camera/camera2/pipe/graph/SurfaceGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
            "Lws6<",
            "Landroidx/camera/camera2/pipe/CameraController;",
            ">;",
            "Landroidx/camera/camera2/pipe/CameraSurfaceManager;",
            ")",
            "Landroidx/camera/camera2/pipe/graph/SurfaceGraph;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules;->Companion:Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;->provideSurfaceGraph(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Lws6;Landroidx/camera/camera2/pipe/CameraSurfaceManager;)Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/graph/SurfaceGraph;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory;->streamGraphImplProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory;->cameraControllerProvider:Lxs6;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory;->cameraSurfaceManagerProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    invoke-static {v0, v1, p0}, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory;->provideSurfaceGraph(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Lws6;Landroidx/camera/camera2/pipe/CameraSurfaceManager;)Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory;->get()Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    move-result-object p0

    return-object p0
.end method

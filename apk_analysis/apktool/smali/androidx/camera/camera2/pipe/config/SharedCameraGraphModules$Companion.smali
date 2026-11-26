.class public final Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideCameraGraphCoroutineScope(Landroidx/camera/camera2/pipe/core/Threads;Lmb4;)Ly22;
    .locals 1
    .param p2    # Lmb4;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeJob;
        .end annotation
    .end param
    .annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphScope;
    .end annotation

    .annotation runtime Landroidx/camera/camera2/pipe/config/ForCameraGraph;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljd8;

    invoke-direct {p0, p2}, Lnb4;-><init>(Lmb4;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Threads;->getLightweightDispatcher()Lr22;

    move-result-object p1

    new-instance p2, Lw22;

    const-string v0, "CXCP-Graph"

    invoke-direct {p2, v0}, Lw22;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lb0;->plus(Lo22;)Lo22;

    move-result-object p1

    invoke-static {p0, p1}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p0

    invoke-static {p0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p0

    return-object p0
.end method

.method public final provideFrameDistributor(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/core/SystemClockOffsets;)Landroidx/camera/camera2/pipe/internal/FrameDistributor;
    .locals 6
    .annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphScope;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p3, p0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_1

    :goto_0
    move v3, p3

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p3, 0x0

    goto :goto_0

    :goto_2
    new-instance v0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;->getRealtimeNsToMonotonicNs()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/internal/FrameDistributor;-><init>(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;ZJ)V

    return-object v0
.end method

.method public final provideRequestListeners(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/Listener3A;Landroidx/camera/camera2/pipe/internal/FrameDistributor;)Ljava/util/List;
    .locals 1
    .annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphScope;
    .end annotation

    .annotation runtime Landroidx/camera/camera2/pipe/config/ForCameraGraph;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "Landroidx/camera/camera2/pipe/graph/Listener3A;",
            "Landroidx/camera/camera2/pipe/internal/FrameDistributor;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    new-array p0, p0, [Landroidx/camera/camera2/pipe/Request$Listener;

    const/4 v0, 0x0

    aput-object p2, p0, v0

    invoke-static {p0}, Lu96;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getDefaultListeners()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final provideSurfaceGraph(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Lws6;Landroidx/camera/camera2/pipe/CameraSurfaceManager;)Landroidx/camera/camera2/pipe/graph/SurfaceGraph;
    .locals 1
    .annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphScope;
    .end annotation

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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getImageSourceMap$camera_camera2_pipe()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;-><init>(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Lws6;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Ljava/util/Map;)V

    return-object p0
.end method

.method public final provideSystemClockOffsets()Landroidx/camera/camera2/pipe/core/SystemClockOffsets;
    .locals 0
    .annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphScope;
    .end annotation

    sget-object p0, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;->Companion:Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;->estimate()Landroidx/camera/camera2/pipe/core/SystemClockOffsets;

    move-result-object p0

    return-object p0
.end method

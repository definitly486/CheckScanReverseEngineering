.class public abstract Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules;->Companion:Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindCameraGraph(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;)Landroidx/camera/camera2/pipe/CameraGraph;
.end method

.method public abstract bindCameraGraphContext(Landroid/content/Context;)Landroid/content/Context;
    .param p1    # Landroid/content/Context;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeContext;
        .end annotation
    .end param
    .annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphContext;
    .end annotation
.end method

.method public abstract bindCameraGraphListeners(Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;)Landroidx/camera/camera2/pipe/RequestListeners;
.end method

.method public abstract bindCameraGraphParameters(Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;)Landroidx/camera/camera2/pipe/Parameters;
.end method

.method public abstract bindGraphListener(Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;)Landroidx/camera/camera2/pipe/graph/GraphListener;
.end method

.method public abstract bindGraphProcessor(Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;)Landroidx/camera/camera2/pipe/graph/GraphProcessor;
.end method

.method public abstract bindStreamGraph(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;)Landroidx/camera/camera2/pipe/StreamGraph;
.end method

.method public abstract bindSurfaceTracker(Landroidx/camera/camera2/pipe/graph/SurfaceGraph;)Landroidx/camera/camera2/pipe/SurfaceTracker;
    .annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphScope;
    .end annotation
.end method

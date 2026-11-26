.class public interface abstract Landroidx/camera/camera2/pipe/CameraPipe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraPipe$CameraBackendConfig;,
        Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;,
        Landroidx/camera/camera2/pipe/CameraPipe$CameraMetadataConfig;,
        Landroidx/camera/camera2/pipe/CameraPipe$Companion;,
        Landroidx/camera/camera2/pipe/CameraPipe$Config;,
        Landroidx/camera/camera2/pipe/CameraPipe$Flags;,
        Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/CameraPipe$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraPipe$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/CameraPipe$Companion;

    sput-object v0, Landroidx/camera/camera2/pipe/CameraPipe;->Companion:Landroidx/camera/camera2/pipe/CameraPipe$Companion;

    return-void
.end method


# virtual methods
.method public abstract cameraSurfaceManager()Landroidx/camera/camera2/pipe/CameraSurfaceManager;
.end method

.method public abstract cameras()Landroidx/camera/camera2/pipe/CameraDevices;
.end method

.method public abstract create(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;
    .annotation runtime Lul2;
    .end annotation
.end method

.method public abstract createCameraGraph(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;
.end method

.method public abstract createCameraGraphs(Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createFrameGraph(Landroidx/camera/camera2/pipe/FrameGraph$Config;)Landroidx/camera/camera2/pipe/FrameGraph;
.end method

.method public abstract createFrameGraphs(Landroidx/camera/camera2/pipe/FrameGraph$ConcurrentConfig;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/FrameGraph$ConcurrentConfig;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/FrameGraph;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGlobalAudioRestrictionMode-_b5Q8KE()I
.end method

.method public abstract isConfigSupported-NpXggIU(Landroidx/camera/camera2/pipe/CameraGraph$Config;Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/ConfigQueryResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract prewarmIsConfigSupported(Landroidx/camera/camera2/pipe/CameraGraph$Config;)V
.end method

.method public abstract setGlobalAudioRestrictionMode-LwUUkyU(I)V
.end method

.method public abstract shutdown()V
.end method

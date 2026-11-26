.class public final Landroidx/camera/camera2/pipe/FrameGraph$ConcurrentConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/FrameGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConcurrentConfig"
.end annotation


# instance fields
.field private final cameraGraphConfigs:Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;

.field private final frameGraphConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/FrameGraph$Config;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/FrameGraph$Config;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/FrameGraph$ConcurrentConfig;->cameraGraphConfigs:Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/FrameGraph$ConcurrentConfig;->frameGraphConfigs:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;->getGraphConfigs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;->getGraphConfigs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/FrameGraph$Config;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/FrameGraph$ConcurrentConfig;->cameraGraphConfigs:Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;->getGraphConfigs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/FrameGraph$Config;->getCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Mismatched "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/FrameGraph$ConcurrentConfig;->cameraGraphConfigs:Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;->getGraphConfigs()Ljava/util/List;

    move-result-object p0

    const-string p2, "! Config is not present within "

    invoke-static {p1, p2, p0}, Li2;->e(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v1

    :cond_1
    return-void

    :cond_2
    const-string p0, " configs, but received "

    const-string p2, " FrameGraph.Config(s)."

    const-string v2, "Invalid FrameGraph.ConcurrentConfig! Expected "

    invoke-static {v0, p1, v2, p0, p2}, Lln;->c(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final getCameraGraphConfigs()Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/FrameGraph$ConcurrentConfig;->cameraGraphConfigs:Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;

    return-object p0
.end method

.method public final getFrameGraphConfigs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/FrameGraph$Config;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/FrameGraph$ConcurrentConfig;->frameGraphConfigs:Ljava/util/List;

    return-object p0
.end method

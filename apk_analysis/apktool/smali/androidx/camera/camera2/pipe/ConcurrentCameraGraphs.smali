.class public final Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cameraGraphIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraGraphId;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraGraphId;",
            ">;",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraGraphIds:Ljava/util/Set;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Check failed."

    if-le p0, v0, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {v2}, Lah;->f(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lah;->f(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;Ljava/util/Set;Ljava/util/Set;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraGraphIds:Ljava/util/Set;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraIds:Ljava/util/Set;

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->copy(Ljava/util/Set;Ljava/util/Set;)Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraGraphId;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraGraphIds:Ljava/util/Set;

    return-object p0
.end method

.method public final component2()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraIds:Ljava/util/Set;

    return-object p0
.end method

.method public final copy(Ljava/util/Set;Ljava/util/Set;)Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraGraphId;",
            ">;",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;)",
            "Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraGraphIds:Ljava/util/Set;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraGraphIds:Ljava/util/Set;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraIds:Ljava/util/Set;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraIds:Ljava/util/Set;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCameraGraphIds()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraGraphId;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraGraphIds:Ljava/util/Set;

    return-object p0
.end method

.method public final getCameraIds()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraIds:Ljava/util/Set;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraGraphIds:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraIds:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConcurrentCameraGraphs(cameraGraphIds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraGraphIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->cameraIds:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

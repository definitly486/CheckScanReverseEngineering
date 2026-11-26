.class public final Landroidx/camera/camera2/pipe/compat/RequestOpen;
.super Landroidx/camera/camera2/pipe/compat/CameraRequest;
.source "SourceFile"


# instance fields
.field private final graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

.field private final isForegroundObserver:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Lj59;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isPrewarm:Z

.field private final sharedCameraIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;"
        }
    .end annotation
.end field

.field private final virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Ljava/util/List;Landroidx/camera/camera2/pipe/graph/GraphListener;ZLnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/VirtualCameraState;",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;",
            "Landroidx/camera/camera2/pipe/graph/GraphListener;",
            "Z",
            "Lnl3<",
            "-",
            "Lj59;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/compat/CameraRequest;-><init>(Ljh2;)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    iput-boolean p4, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm:Z

    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver:Lnl3;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/pipe/compat/RequestOpen;Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Ljava/util/List;Landroidx/camera/camera2/pipe/graph/GraphListener;ZLnl3;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/compat/RequestOpen;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-boolean p4, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm:Z

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver:Lnl3;

    :cond_4
    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Landroidx/camera/camera2/pipe/compat/RequestOpen;->copy(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Ljava/util/List;Landroidx/camera/camera2/pipe/graph/GraphListener;ZLnl3;)Landroidx/camera/camera2/pipe/compat/RequestOpen;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    return-object p0
.end method

.method public final component3()Landroidx/camera/camera2/pipe/graph/GraphListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    return-object p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm:Z

    return p0
.end method

.method public final component5()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Lj59;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver:Lnl3;

    return-object p0
.end method

.method public final copy(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Ljava/util/List;Landroidx/camera/camera2/pipe/graph/GraphListener;ZLnl3;)Landroidx/camera/camera2/pipe/compat/RequestOpen;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/VirtualCameraState;",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;",
            "Landroidx/camera/camera2/pipe/graph/GraphListener;",
            "Z",
            "Lnl3<",
            "-",
            "Lj59;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/camera/camera2/pipe/compat/RequestOpen;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/pipe/compat/RequestOpen;-><init>(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Ljava/util/List;Landroidx/camera/camera2/pipe/graph/GraphListener;ZLnl3;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver:Lnl3;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver:Lnl3;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getGraphListener()Landroidx/camera/camera2/pipe/graph/GraphListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    return-object p0
.end method

.method public final getSharedCameraIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraId;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    return-object p0
.end method

.method public final getVirtualCamera()Landroidx/camera/camera2/pipe/compat/VirtualCameraState;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm:Z

    invoke-static {v2, v1, v0}, Ltg;->c(IIZ)I

    move-result v0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver:Lnl3;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isForegroundObserver()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Lj59;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver:Lnl3;

    return-object p0
.end method

.method public final isPrewarm()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestOpen(virtualCamera="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->virtualCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sharedCameraIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->sharedCameraIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", graphListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPrewarm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isPrewarm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isForegroundObserver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestOpen;->isForegroundObserver:Lnl3;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

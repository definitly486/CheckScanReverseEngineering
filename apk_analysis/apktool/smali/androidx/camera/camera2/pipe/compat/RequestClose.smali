.class public final Landroidx/camera/camera2/pipe/compat/RequestClose;
.super Landroidx/camera/camera2/pipe/compat/CameraRequest;
.source "SourceFile"


# instance fields
.field private final activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/ActiveCamera;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/compat/CameraRequest;-><init>(Ljh2;)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/RequestClose;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/pipe/compat/RequestClose;Landroidx/camera/camera2/pipe/compat/ActiveCamera;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/compat/RequestClose;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/RequestClose;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;->copy(Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Landroidx/camera/camera2/pipe/compat/RequestClose;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/camera/camera2/pipe/compat/ActiveCamera;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestClose;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    return-object p0
.end method

.method public final copy(Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Landroidx/camera/camera2/pipe/compat/RequestClose;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/camera2/pipe/compat/RequestClose;

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/RequestClose;-><init>(Landroidx/camera/camera2/pipe/compat/ActiveCamera;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/RequestClose;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/RequestClose;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestClose;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/RequestClose;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestClose;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestClose;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestClose(activeCamera="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestClose;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

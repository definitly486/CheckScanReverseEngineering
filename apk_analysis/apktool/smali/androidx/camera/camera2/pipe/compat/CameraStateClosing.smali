.class public final Landroidx/camera/camera2/pipe/compat/CameraStateClosing;
.super Landroidx/camera/camera2/pipe/compat/CameraState;
.source "SourceFile"


# instance fields
.field private final cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/CameraError;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/compat/CameraState;-><init>(Ljh2;)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/CameraError;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    move-object p1, p3

    :cond_0
    invoke-direct {p0, p1, p3}, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;-><init>(Landroidx/camera/camera2/pipe/CameraError;Ljh2;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/CameraError;Ljh2;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;-><init>(Landroidx/camera/camera2/pipe/CameraError;)V

    return-void
.end method

.method public static synthetic copy-TPqeGZw$default(Landroidx/camera/camera2/pipe/compat/CameraStateClosing;Landroidx/camera/camera2/pipe/CameraError;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/compat/CameraStateClosing;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;->copy-TPqeGZw(Landroidx/camera/camera2/pipe/CameraError;)Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    return-object p0
.end method

.method public final copy-TPqeGZw(Landroidx/camera/camera2/pipe/CameraError;)Landroidx/camera/camera2/pipe/compat/CameraStateClosing;
    .locals 1

    new-instance p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;-><init>(Landroidx/camera/camera2/pipe/CameraError;Ljh2;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getCameraErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraError;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraStateClosing(cameraErrorCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

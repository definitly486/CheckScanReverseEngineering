.class public final Landroidx/camera/camera2/pipe/compat/RequestCloseById;
.super Landroidx/camera/camera2/pipe/compat/CameraRequest;
.source "SourceFile"


# instance fields
.field private final activeCameraId:Ljava/lang/String;

.field private final deferred:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/compat/CameraRequest;-><init>(Ljh2;)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->activeCameraId:Ljava/lang/String;

    new-instance p1, Lyp1;

    invoke-direct {p1}, Lyp1;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->deferred:Lxp1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljh2;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getActiveCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->activeCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeferred()Lxp1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->deferred:Lxp1;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestCloseById("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->activeCameraId:Ljava/lang/String;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

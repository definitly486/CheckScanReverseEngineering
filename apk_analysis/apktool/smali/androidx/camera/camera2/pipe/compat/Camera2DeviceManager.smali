.class public interface abstract Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic closeAll$default(Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;ZILjava/lang/Object;)Lmk2;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;->closeAll(Z)Lmk2;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: closeAll"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract close-EfqyGwQ(Ljava/lang/String;)Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end method

.method public abstract closeAll(Z)Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmk2<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end method

.method public abstract open-zDSwpeU(Ljava/lang/String;Ljava/util/List;Landroidx/camera/camera2/pipe/graph/GraphListener;ZLnl3;)Landroidx/camera/camera2/pipe/compat/VirtualCamera;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
            "Landroidx/camera/camera2/pipe/compat/VirtualCamera;"
        }
    .end annotation
.end method

.method public abstract prewarm-EfqyGwQ(Ljava/lang/String;)V
.end method

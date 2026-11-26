.class public interface abstract Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lj59;)Z
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;->openCameraWithRetry_aeCOTgg$lambda$0(Lj59;)Z

    move-result p0

    return p0
.end method

.method public static synthetic openCameraWithRetry-aeCOTgg$default(Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Lnl3;Le02;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    new-instance p3, Luf;

    const/4 p5, 0x2

    invoke-direct {p3, p5}, Luf;-><init>(I)V

    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;->openCameraWithRetry-aeCOTgg(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Lnl3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: openCameraWithRetry-aeCOTgg"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static openCameraWithRetry_aeCOTgg$lambda$0(Lj59;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract cancelOpen()V
.end method

.method public abstract openAndAwaitCameraWithRetry-0r8Bogc(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;)Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;
.end method

.method public abstract openCameraWithRetry-aeCOTgg(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Lnl3;Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;",
            "Lnl3<",
            "-",
            "Lj59;",
            "Ljava/lang/Boolean;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

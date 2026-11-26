.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldRestart-X9Wt83s$camera_camera2_pipe(Landroidx/camera/camera2/pipe/CameraController$ControllerState;Landroidx/camera/camera2/pipe/CameraError;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;Landroidx/camera/camera2/pipe/core/TimestampNs;J)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p3, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraAvailable;

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DISABLED-v7Vf74A()I

    move-result p0

    if-nez p2, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v1

    invoke-static {v1, p0}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p0

    :goto_0
    if-nez p0, :cond_1

    move p0, p3

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-nez p4, :cond_3

    :cond_2
    move p4, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/core/TimestampNs;->unbox-impl()J

    move-result-wide v1

    sub-long/2addr p5, v1

    invoke-static {p5, p6}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide p4

    invoke-static {}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$getPRIORITIES_CHANGED_THRESHOLD_NS$cp()J

    move-result-wide v1

    invoke-static {p4, p5, v1, v2}, Landroidx/camera/camera2/pipe/core/DurationNs;->compareTo-zYRVrok(JJ)I

    move-result p4

    if-gtz p4, :cond_2

    move p4, p3

    :goto_2
    sget-object p5, Landroidx/camera/camera2/pipe/CameraController$ControllerState$DISCONNECTED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$DISCONNECTED;

    invoke-virtual {p1, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_6

    if-nez p0, :cond_5

    if-eqz p4, :cond_4

    goto :goto_3

    :cond_4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1d

    if-gt p1, p0, :cond_9

    const/16 p1, 0x21

    if-ge p0, p1, :cond_9

    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "CXCP"

    const-string p1, "Quirk for multi-resume activated: Kicking off restart."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return p3

    :cond_6
    sget-object p4, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz p0, :cond_9

    sget-object p0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result p1

    if-nez p2, :cond_7

    move p1, v0

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result p4

    invoke-static {p4, p1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p1

    :goto_4
    if-nez p1, :cond_9

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_SECURITY_EXCEPTION-v7Vf74A()I

    move-result p0

    if-nez p2, :cond_8

    move p0, v0

    goto :goto_5

    :cond_8
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result p1

    invoke-static {p1, p0}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p0

    :goto_5
    if-nez p0, :cond_9

    return p3

    :cond_9
    return v0
.end method

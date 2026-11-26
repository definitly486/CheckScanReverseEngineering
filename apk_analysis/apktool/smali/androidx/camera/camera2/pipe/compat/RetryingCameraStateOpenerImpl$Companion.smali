.class public final Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;
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

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getRetryTimeoutNs-om-7c1s$camera_camera2_pipe$default(Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;ZLandroidx/camera/camera2/pipe/core/DurationNs;ILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;->getRetryTimeoutNs-om-7c1s$camera_camera2_pipe(ZLandroidx/camera/camera2/pipe/core/DurationNs;)J

    move-result-wide p0

    return-wide p0
.end method

.method private final min-L1EDjxI(JLandroidx/camera/camera2/pipe/core/DurationNs;)J
    .locals 2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/core/DurationNs;->unbox-impl()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->compareTo-zYRVrok(JJ)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    :goto_0
    return-wide p1

    :cond_1
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/core/DurationNs;->unbox-impl()J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic shouldRetry-rbpwgO0$camera_camera2_pipe$default(Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;IIJZZLandroidx/camera/camera2/pipe/core/DurationNs;ILjava/lang/Object;)Z
    .locals 8

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 p6, 0x1

    :cond_0
    move v6, p6

    and-int/lit8 p6, p8, 0x20

    if-eqz p6, :cond_1

    const/4 p6, 0x0

    move-object v7, p6

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    goto :goto_1

    :cond_1
    move-object v7, p7

    goto :goto_0

    :goto_1
    invoke-virtual/range {v0 .. v7}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;->shouldRetry-rbpwgO0$camera_camera2_pipe(IIJZZLandroidx/camera/camera2/pipe/core/DurationNs;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getRetryDelayMs-t8DbYm4$camera_camera2_pipe(JZ)J
    .locals 4

    const-wide/16 v0, 0x1f4

    if-nez p3, :cond_0

    return-wide v0

    :cond_0
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->access$getActiveResumeCameraRetryThresholds$p()[Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object p0

    const/4 p3, 0x0

    aget-object p0, p0, p3

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/DurationNs;->unbox-impl()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Landroidx/camera/camera2/pipe/core/DurationNs;->compareTo-zYRVrok(JJ)I

    move-result p0

    if-gez p0, :cond_1

    return-wide v0

    :cond_1
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->access$getActiveResumeCameraRetryThresholds$p()[Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object p0

    const/4 p3, 0x1

    aget-object p0, p0, p3

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/DurationNs;->unbox-impl()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->compareTo-zYRVrok(JJ)I

    move-result p0

    if-gez p0, :cond_2

    const-wide/16 p0, 0x7d0

    return-wide p0

    :cond_2
    const-wide/16 p0, 0xfa0

    return-wide p0
.end method

.method public final getRetryTimeoutNs-om-7c1s$camera_camera2_pipe(ZLandroidx/camera/camera2/pipe/core/DurationNs;)J
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->access$getDefaultCameraRetryTimeoutNs$p()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;->min-L1EDjxI(JLandroidx/camera/camera2/pipe/core/DurationNs;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->access$getActiveResumeCameraRetryTimeoutNs$p()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;->min-L1EDjxI(JLandroidx/camera/camera2/pipe/core/DurationNs;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final shouldActivateActiveResume-8PWMtlg$camera_camera2_pipe(ZI)Z
    .locals 0

    if-eqz p1, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1d

    if-gt p1, p0, :cond_1

    const/16 p1, 0x21

    if-ge p0, p1, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_IN_USE-v7Vf74A()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_LIMIT_EXCEEDED-v7Vf74A()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DISCONNECTED-v7Vf74A()I

    move-result p0

    invoke-static {p2, p0}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldRetry-rbpwgO0$camera_camera2_pipe(IIJZZLandroidx/camera/camera2/pipe/core/DurationNs;)Z
    .locals 2

    invoke-virtual {p0, p6, p1}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;->shouldActivateActiveResume-8PWMtlg$camera_camera2_pipe(ZI)Z

    move-result p6

    const-string v0, "CXCP"

    if-eqz p6, :cond_0

    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "shouldRetry: Active resume mode is activated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p6, p7}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;->getRetryTimeoutNs-om-7c1s$camera_camera2_pipe(ZLandroidx/camera/camera2/pipe/core/DurationNs;)J

    move-result-wide p6

    invoke-static {p3, p4, p6, p7}, Landroidx/camera/camera2/pipe/core/DurationNs;->compareTo-zYRVrok(JJ)I

    move-result p0

    const/4 p3, 0x0

    if-lez p0, :cond_1

    return p3

    :cond_1
    sget-object p0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_UNDETERMINED-v7Vf74A()I

    move-result p4

    invoke-static {p1, p4}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p4

    const/4 p6, 0x1

    if-eqz p4, :cond_3

    if-gt p2, p6, :cond_2

    return p6

    :cond_2
    return p3

    :cond_3
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_IN_USE-v7Vf74A()I

    move-result p4

    invoke-static {p1, p4}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p4

    if-eqz p4, :cond_6

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1d

    if-ge p0, p1, :cond_5

    if-gt p2, p6, :cond_4

    return p6

    :cond_4
    return p3

    :cond_5
    return p6

    :cond_6
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_LIMIT_EXCEEDED-v7Vf74A()I

    move-result p4

    invoke-static {p1, p4}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p4

    if-eqz p4, :cond_7

    return p6

    :cond_7
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DISABLED-v7Vf74A()I

    move-result p4

    invoke-static {p1, p4}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p4

    if-eqz p4, :cond_a

    if-eqz p5, :cond_9

    if-gt p2, p6, :cond_8

    return p6

    :cond_8
    return p3

    :cond_9
    return p6

    :cond_a
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DEVICE-v7Vf74A()I

    move-result p4

    invoke-static {p1, p4}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p4

    if-eqz p4, :cond_b

    return p6

    :cond_b
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_SERVICE-v7Vf74A()I

    move-result p4

    invoke-static {p1, p4}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p4

    if-eqz p4, :cond_c

    return p6

    :cond_c
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DISCONNECTED-v7Vf74A()I

    move-result p4

    invoke-static {p1, p4}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p4

    if-eqz p4, :cond_d

    return p6

    :cond_d
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_ILLEGAL_ARGUMENT_EXCEPTION-v7Vf74A()I

    move-result p4

    invoke-static {p1, p4}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p4

    if-eqz p4, :cond_e

    return p6

    :cond_e
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_SECURITY_EXCEPTION-v7Vf74A()I

    move-result p4

    invoke-static {p1, p4}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p4

    if-eqz p4, :cond_10

    if-gt p2, p6, :cond_f

    return p6

    :cond_f
    return p3

    :cond_10
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_DO_NOT_DISTURB_ENABLED-v7Vf74A()I

    move-result p4

    invoke-static {p1, p4}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p4

    if-eqz p4, :cond_11

    return p3

    :cond_11
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_UNKNOWN_EXCEPTION-v7Vf74A()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_13

    if-gt p2, p6, :cond_12

    return p6

    :cond_12
    return p3

    :cond_13
    sget-object p0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p0

    if-eqz p0, :cond_14

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unexpected CameraError: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->Companion:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$Companion;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return p3
.end method

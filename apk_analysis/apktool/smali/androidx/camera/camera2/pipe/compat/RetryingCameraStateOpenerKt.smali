.class public final Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final activeResumeCameraRetryDelayBaseMs:J = 0x1f4L

.field private static final activeResumeCameraRetryThresholds:[Landroidx/camera/camera2/pipe/core/DurationNs;

.field private static final activeResumeCameraRetryTimeoutNs:J

.field private static final defaultCameraRetryDelayMs:J = 0x1f4L

.field private static final defaultCameraRetryTimeoutNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide v0, 0x2540be400L

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->defaultCameraRetryTimeoutNs:J

    const-wide v0, 0x1a3185c5000L

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->activeResumeCameraRetryTimeoutNs:J

    const-wide v0, 0x1bf08eb000L

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object v0

    const-wide v1, 0x45d964b800L

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/core/DurationNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object v1

    filled-new-array {v0, v1}, [Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->activeResumeCameraRetryThresholds:[Landroidx/camera/camera2/pipe/core/DurationNs;

    return-void
.end method

.method public static final synthetic access$getActiveResumeCameraRetryThresholds$p()[Landroidx/camera/camera2/pipe/core/DurationNs;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->activeResumeCameraRetryThresholds:[Landroidx/camera/camera2/pipe/core/DurationNs;

    return-object v0
.end method

.method public static final synthetic access$getActiveResumeCameraRetryTimeoutNs$p()J
    .locals 2

    sget-wide v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->activeResumeCameraRetryTimeoutNs:J

    return-wide v0
.end method

.method public static final synthetic access$getDefaultCameraRetryTimeoutNs$p()J
    .locals 2

    sget-wide v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerKt;->defaultCameraRetryTimeoutNs:J

    return-wide v0
.end method

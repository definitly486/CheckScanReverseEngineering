.class public final Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final REQUIRE_SURFACE_FOR_ALL_STREAMS:Z = false

.field private static final captureSequenceDebugIds:Lmt;

.field private static final captureSequenceProcessorDebugIds:Llt;

.field private static final requestTags:Lmt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lkt;->b(I)Llt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->captureSequenceProcessorDebugIds:Llt;

    invoke-static {}, Lkt;->c()Lmt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->captureSequenceDebugIds:Lmt;

    invoke-static {}, Lkt;->c()Lmt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->requestTags:Lmt;

    return-void
.end method

.method public static final getCaptureSequenceDebugIds()Lmt;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->captureSequenceDebugIds:Lmt;

    return-object v0
.end method

.method public static final getCaptureSequenceProcessorDebugIds()Llt;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->captureSequenceProcessorDebugIds:Llt;

    return-object v0
.end method

.method public static final getRequestTags()Lmt;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->requestTags:Lmt;

    return-object v0
.end method

.method public static final nextRequestNumber()J
    .locals 2

    sget-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->requestTags:Lmt;

    invoke-virtual {v0}, Lmt;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/RequestNumber;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

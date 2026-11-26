.class public final Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/RequestFailure;


# instance fields
.field private final captureFailure:Landroid/hardware/camera2/CaptureFailure;

.field private final frameNumber:J

.field private final reason:I

.field private final requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

.field private final wasImageCaptured:Z


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/RequestMetadata;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->captureFailure:Landroid/hardware/camera2/CaptureFailure;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/FrameNumber;->constructor-impl(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->frameNumber:J

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->reason:I

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->wasImageCaptured()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->wasImageCaptured:Z

    return-void
.end method


# virtual methods
.method public getFrameNumber-Ugla2oM()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->frameNumber:J

    return-wide v0
.end method

.method public getReason()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->reason:I

    return p0
.end method

.method public getRequestMetadata()Landroidx/camera/camera2/pipe/RequestMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    return-object p0
.end method

.method public getWasImageCaptured()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->wasImageCaptured:Z

    return p0
.end method

.method public unwrapAs(Lne4;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Landroid/hardware/camera2/CaptureFailure;

    invoke-static {p1, v0}, Lvh;->g(Lne4;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->captureFailure:Landroid/hardware/camera2/CaptureFailure;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.class public final Landroidx/camera/camera2/adapter/CaptureFailureAdapter;
.super Landroidx/camera/core/impl/CameraCaptureFailure;
.source "SourceFile"


# instance fields
.field private final requestFailure:Landroidx/camera/camera2/pipe/RequestFailure;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/core/impl/CameraCaptureFailure$Reason;->ERROR:Landroidx/camera/core/impl/CameraCaptureFailure$Reason;

    invoke-direct {p0, v0}, Landroidx/camera/core/impl/CameraCaptureFailure;-><init>(Landroidx/camera/core/impl/CameraCaptureFailure$Reason;)V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CaptureFailureAdapter;->requestFailure:Landroidx/camera/camera2/pipe/RequestFailure;

    return-void
.end method


# virtual methods
.method public getCaptureFailure()Landroid/hardware/camera2/CaptureFailure;
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureFailureAdapter;->requestFailure:Landroidx/camera/camera2/pipe/RequestFailure;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;

    const-class v0, Landroid/hardware/camera2/CaptureFailure;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/hardware/camera2/CaptureFailure;

    return-object p0
.end method

.method public bridge synthetic getCaptureFailure()Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CaptureFailureAdapter;->getCaptureFailure()Landroid/hardware/camera2/CaptureFailure;

    move-result-object p0

    return-object p0
.end method

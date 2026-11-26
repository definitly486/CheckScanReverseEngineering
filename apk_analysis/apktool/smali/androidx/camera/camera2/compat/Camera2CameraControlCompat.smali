.class public interface abstract Landroidx/camera/camera2/compat/Camera2CameraControlCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/Camera2CameraControlCompat$Bindings;,
        Landroidx/camera/camera2/compat/Camera2CameraControlCompat$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic access$onAborted$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/Request;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    return-void
.end method

.method public static synthetic access$onBufferLost-DlC0U5Y$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JI)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener;->onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/RequestMetadata;JI)V

    return-void
.end method

.method public static synthetic access$onBufferLost-iiEMlm4$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/camera/camera2/pipe/Request$Listener;->onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V

    return-void
.end method

.method public static synthetic access$onCaptureProgress$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/camera/camera2/pipe/Request$Listener;->onCaptureProgress(Landroidx/camera/camera2/pipe/RequestMetadata;I)V

    return-void
.end method

.method public static synthetic access$onComplete-CcXjc1I$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener;->onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method

.method public static synthetic access$onFailed-CcXjc1I$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener;->onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V

    return-void
.end method

.method public static synthetic access$onPartialCaptureResult-CcXjc1I$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener;->onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V

    return-void
.end method

.method public static synthetic access$onReadoutStarted-mP9r-9w$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/camera/camera2/pipe/Request$Listener;->onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    return-void
.end method

.method public static synthetic access$onRequestSequenceAborted$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceAborted(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public static synthetic access$onRequestSequenceCompleted-RuT0dZU$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;J)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/RequestMetadata;J)V

    return-void
.end method

.method public static synthetic access$onRequestSequenceCreated$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public static synthetic access$onRequestSequenceSubmitted$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public static synthetic access$onStarted-uGKBvU4$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/camera/camera2/pipe/Request$Listener;->onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    return-void
.end method

.method public static synthetic access$onTotalCaptureResult-CcXjc1I$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener;->onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method

.method public static synthetic applyAsync$default(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;ZILjava/lang/Object;)Lmk2;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->applyAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Z)Lmk2;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: applyAsync"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract addRequestOption(Landroidx/camera/camera2/interop/CaptureRequestOptions;)V
.end method

.method public abstract applyAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Z)Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            "Z)",
            "Lmk2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract cancelCurrentTask()V
.end method

.method public abstract clearRequestOption()V
.end method

.method public abstract getRequestOption()Landroidx/camera/camera2/interop/CaptureRequestOptions;
.end method

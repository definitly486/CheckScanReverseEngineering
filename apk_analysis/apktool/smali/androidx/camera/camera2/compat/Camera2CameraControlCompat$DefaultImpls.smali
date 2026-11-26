.class public final Landroidx/camera/camera2/compat/Camera2CameraControlCompat$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/Camera2CameraControlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic applyAsync$default(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;ZILjava/lang/Object;)Lmk2;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->applyAsync$default(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;ZILjava/lang/Object;)Lmk2;

    move-result-object p0

    return-object p0
.end method

.method public static onAborted(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/Request;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->access$onAborted$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/Request;)V

    return-void
.end method

.method public static onBufferLost-DlC0U5Y(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->access$onBufferLost-DlC0U5Y$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JI)V

    return-void
.end method

.method public static onBufferLost-iiEMlm4(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->access$onBufferLost-iiEMlm4$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JII)V

    return-void
.end method

.method public static onCaptureProgress(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->access$onCaptureProgress$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;I)V

    return-void
.end method

.method public static onComplete-CcXjc1I(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->access$onComplete-CcXjc1I$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method

.method public static onFailed-CcXjc1I(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->access$onFailed-CcXjc1I$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V

    return-void
.end method

.method public static onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->access$onPartialCaptureResult-CcXjc1I$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V

    return-void
.end method

.method public static onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->access$onReadoutStarted-mP9r-9w$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    return-void
.end method

.method public static onRequestSequenceAborted(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->access$onRequestSequenceAborted$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public static onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->access$onRequestSequenceCompleted-RuT0dZU$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;J)V

    return-void
.end method

.method public static onRequestSequenceCreated(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->access$onRequestSequenceCreated$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public static onRequestSequenceSubmitted(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->access$onRequestSequenceSubmitted$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public static onStarted-uGKBvU4(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->access$onStarted-uGKBvU4$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    return-void
.end method

.method public static onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/compat/Camera2CameraControlCompat;->access$onTotalCaptureResult-CcXjc1I$jd(Landroidx/camera/camera2/compat/Camera2CameraControlCompat;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method

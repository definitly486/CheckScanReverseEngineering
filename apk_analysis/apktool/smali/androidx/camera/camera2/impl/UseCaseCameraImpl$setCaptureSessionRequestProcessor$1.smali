.class public final Landroidx/camera/camera2/impl/UseCaseCameraImpl$setCaptureSessionRequestProcessor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/SessionProcessor$CaptureSessionRequestProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/UseCaseCameraImpl;->setCaptureSessionRequestProcessor-9O56998(Landroidx/camera/camera2/pipe/StreamId;Landroidx/camera/camera2/pipe/CameraGraph;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

.field final synthetic $stillCaptureStreamId:Landroidx/camera/camera2/pipe/StreamId;

.field final synthetic this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/StreamId;Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/impl/UseCaseCameraImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setCaptureSessionRequestProcessor$1;->$stillCaptureStreamId:Landroidx/camera/camera2/pipe/StreamId;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setCaptureSessionRequestProcessor$1;->$cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setCaptureSessionRequestProcessor$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRealtimeStillCaptureLatency()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setCaptureSessionRequestProcessor$1;->$stillCaptureStreamId:Landroidx/camera/camera2/pipe/StreamId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setCaptureSessionRequestProcessor$1;->$cameraGraph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->getStreams()Landroidx/camera/camera2/pipe/StreamGraph;

    move-result-object v0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setCaptureSessionRequestProcessor$1;->$stillCaptureStreamId:Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result p0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Landroidx/camera/camera2/pipe/StreamGraph;->getOutputLatency-IL232MI$default(Landroidx/camera/camera2/pipe/StreamGraph;ILandroidx/camera/camera2/pipe/OutputId;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->getEstimatedCaptureLatencyNs()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->getEstimatedProcessingLatencyNs()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public setExtensionStrength(I)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl$setCaptureSessionRequestProcessor$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object v0

    invoke-static {}, Lyq;->b()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lb36;

    invoke-direct {v1, p0, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lb36;

    move-result-object p0

    invoke-static {p0}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->setParametersAsync$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;ILjava/lang/Object;)Lmk2;

    :cond_0
    return-void
.end method

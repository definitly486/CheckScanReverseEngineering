.class public final Landroidx/camera/camera2/impl/ResultListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;


# instance fields
.field private final checker:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/camera/camera2/pipe/FrameInfo;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final completeSignal:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Landroidx/camera/camera2/pipe/FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final timeLimitNs:J

.field private volatile timestampOfFirstUpdateNs:Ljava/lang/Long;


# direct methods
.method public constructor <init>(JLnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameInfo;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/camera/camera2/impl/ResultListener;->timeLimitNs:J

    iput-object p3, p0, Landroidx/camera/camera2/impl/ResultListener;->checker:Lnl3;

    new-instance p1, Lyp1;

    invoke-direct {p1}, Lyp1;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/ResultListener;->completeSignal:Lxp1;

    return-void
.end method


# virtual methods
.method public final getResult()Lmk2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/FrameInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/ResultListener;->completeSignal:Lxp1;

    return-object p0
.end method

.method public onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/camera/camera2/impl/ResultListener;->completeSignal:Lxp1;

    invoke-interface {p1}, Lmb4;->P()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/camera/camera2/impl/ResultListener;->completeSignal:Lxp1;

    invoke-interface {p1}, Lmb4;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p2}, Landroidx/camera/camera2/pipe/FrameMetadata;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    iget-object p2, p0, Landroidx/camera/camera2/impl/ResultListener;->timestampOfFirstUpdateNs:Ljava/lang/Long;

    if-nez p2, :cond_1

    iput-object p1, p0, Landroidx/camera/camera2/impl/ResultListener;->timestampOfFirstUpdateNs:Ljava/lang/Long;

    :cond_1
    iget-object p2, p0, Landroidx/camera/camera2/impl/ResultListener;->timestampOfFirstUpdateNs:Ljava/lang/Long;

    iget-wide v0, p0, Landroidx/camera/camera2/impl/ResultListener;->timeLimitNs:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/camera/camera2/impl/ResultListener;->timeLimitNs:J

    cmp-long p3, v0, v2

    if-lez p3, :cond_2

    iget-object p0, p0, Landroidx/camera/camera2/impl/ResultListener;->completeSignal:Lxp1;

    const/4 p3, 0x0

    invoke-interface {p0, p3}, Lxp1;->f(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Wait for capture result timeout, current: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " first: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p1, p0, Landroidx/camera/camera2/impl/ResultListener;->checker:Lnl3;

    invoke-interface {p1, p4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/camera/camera2/impl/ResultListener;->completeSignal:Lxp1;

    invoke-interface {p0, p4}, Lxp1;->f(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

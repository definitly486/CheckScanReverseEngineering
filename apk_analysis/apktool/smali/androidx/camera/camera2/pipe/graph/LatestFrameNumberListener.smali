.class public final Landroidx/camera/camera2/pipe/graph/LatestFrameNumberListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;


# instance fields
.field private latestFrameNumber:J

.field private final onNextFrameNumber:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/camera/camera2/pipe/FrameNumber;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameNumber;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/LatestFrameNumberListener;->onNextFrameNumber:Lnl3;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/camera/camera2/pipe/graph/LatestFrameNumberListener;->latestFrameNumber:J

    return-void
.end method


# virtual methods
.method public onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide p4, p0, Landroidx/camera/camera2/pipe/graph/LatestFrameNumberListener;->latestFrameNumber:J

    cmp-long p1, p2, p4

    if-lez p1, :cond_1

    iput-wide p2, p0, Landroidx/camera/camera2/pipe/graph/LatestFrameNumberListener;->latestFrameNumber:J

    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/LatestFrameNumberListener;->onNextFrameNumber:Lnl3;

    invoke-static {p2, p3}, Landroidx/camera/camera2/pipe/FrameNumber;->box-impl(J)Landroidx/camera/camera2/pipe/FrameNumber;

    move-result-object p2

    invoke-interface {p1, p2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

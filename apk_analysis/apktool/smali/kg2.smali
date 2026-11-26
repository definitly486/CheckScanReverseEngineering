.class public final synthetic Lkg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lkg2;->b:I

    iput-object p1, p0, Lkg2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lkg2;->b:I

    iget-object p0, p0, Lkg2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lio/appmetrica/analytics/impl/e;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/e;->a()V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/video/Recorder;

    invoke-static {p0}, Landroidx/camera/video/Recorder;->g(Landroidx/camera/video/Recorder;)V

    return-void

    :pswitch_1
    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->b(Ljava/util/concurrent/ScheduledFuture;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-static {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->R(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

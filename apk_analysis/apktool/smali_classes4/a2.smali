.class public final synthetic La2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, La2;->b:I

    iput-object p2, p0, La2;->c:Ljava/lang/Object;

    iput-object p3, p0, La2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, La2;->b:I

    iget-object v1, p0, La2;->d:Ljava/lang/Object;

    iget-object p0, p0, La2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/n25;

    check-cast v1, Lyads/m4;

    invoke-static {p0, v1}, Lyads/n25;->a(Lyads/n25;Lyads/m4;)V

    return-void

    :pswitch_0
    check-cast p0, Lio/appmetrica/analytics/impl/O0;

    check-cast v1, Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    invoke-static {p0, v1}, Lio/appmetrica/analytics/impl/O0;->a(Lio/appmetrica/analytics/impl/O0;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    check-cast v1, Landroid/media/metrics/PlaybackErrorEvent;

    invoke-static {p0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->a(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/PlaybackErrorEvent;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    check-cast v1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {p0, v1}, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;->b(Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

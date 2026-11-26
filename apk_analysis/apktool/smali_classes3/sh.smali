.class public final synthetic Lsh;
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

    iput p2, p0, Lsh;->b:I

    iput-object p1, p0, Lsh;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lsh;->b:I

    iget-object p0, p0, Lsh;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/webkit/WebViewOutcomeReceiver;

    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->a(Landroidx/webkit/WebViewOutcomeReceiver;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/common/util/ListenerSet;

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->b(Landroidx/media3/common/util/ListenerSet;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    invoke-static {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lyu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lyu;->b:I

    iput-object p1, p0, Lyu;->c:Ljava/lang/Object;

    iput-object p2, p0, Lyu;->d:Ljava/lang/Object;

    iput-object p3, p0, Lyu;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lyu;->b:I

    iget-object v1, p0, Lyu;->e:Ljava/lang/Object;

    iget-object v2, p0, Lyu;->d:Ljava/lang/Object;

    iget-object p0, p0, Lyu;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/tracker/obfuscated/d;

    check-cast v2, Ljava/lang/Exception;

    check-cast v1, Ljava/util/List;

    invoke-static {p0, v2, v1}, Lcom/my/tracker/obfuscated/d;->d(Lcom/my/tracker/obfuscated/d;Ljava/lang/Exception;Ljava/util/List;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource;

    check-cast v1, Lbf6;

    invoke-static {p0, v2, v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->h(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/MediaSource;Lbf6;)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/media/AudioTrack;

    check-cast v2, Landroid/os/Handler;

    check-cast v1, Landroidx/media3/common/util/ListenerSet;

    invoke-static {p0, v2, v1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a(Landroid/media/AudioTrack;Landroid/os/Handler;Landroidx/media3/common/util/ListenerSet;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

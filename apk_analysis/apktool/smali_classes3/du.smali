.class public final synthetic Ldu;
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

    iput p1, p0, Ldu;->b:I

    iput-object p2, p0, Ldu;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldu;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Ldu;->b:I

    iget-object v1, p0, Ldu;->d:Ljava/lang/Object;

    iget-object p0, p0, Ldu;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/m4;

    check-cast v1, Lyads/r25;

    invoke-static {p0, v1}, Lyads/r25;->a(Lyads/m4;Lyads/r25;)V

    return-void

    :pswitch_0
    check-cast p0, Lyads/bp5;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v1}, Lyads/bp5;->a(Landroid/graphics/SurfaceTexture;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/core/impl/LiveDataObservable;

    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {p0, v1}, Landroidx/camera/core/impl/LiveDataObservable;->g(Landroidx/camera/core/impl/LiveDataObservable;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;

    invoke-static {p0, v1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->c(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    check-cast v1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    invoke-static {p0, v1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->j(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

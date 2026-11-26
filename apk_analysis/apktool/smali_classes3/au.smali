.class public final synthetic Lau;
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

    iput p1, p0, Lau;->b:I

    iput-object p2, p0, Lau;->c:Ljava/lang/Object;

    iput-object p3, p0, Lau;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lau;->b:I

    iget-object v1, p0, Lau;->d:Ljava/lang/Object;

    iget-object p0, p0, Lau;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/common/util/NetworkTypeObserver;

    check-cast v1, Landroid/content/Context;

    invoke-static {p0, v1}, Landroidx/media3/common/util/NetworkTypeObserver;->a(Landroidx/media3/common/util/NetworkTypeObserver;Landroid/content/Context;)V

    return-void

    :pswitch_0
    check-cast p0, Lwp2$b;

    check-cast v1, Lio/grpc/l$e;

    iget-object p0, p0, Lwp2$b;->b:Lio/grpc/l$d;

    invoke-virtual {p0, v1}, Lio/grpc/l$d;->a(Lio/grpc/l$e;)Lh88;

    return-void

    :pswitch_1
    check-cast p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    check-cast v1, Landroidx/media3/exoplayer/DecoderCounters;

    invoke-static {p0, v1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->d(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lyg4;
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

    iput p1, p0, Lyg4;->b:I

    iput-object p2, p0, Lyg4;->c:Ljava/lang/Object;

    iput-object p3, p0, Lyg4;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lyg4;->b:I

    iget-object v1, p0, Lyg4;->d:Ljava/lang/Object;

    iget-object p0, p0, Lyg4;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/mq2;

    check-cast v1, Lyads/uw4;

    invoke-virtual {p0, v1}, Lyads/mq2;->b(Lyads/uw4;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    check-cast v1, Landroidx/media3/common/VideoSize;

    invoke-static {p0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->f(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/common/VideoSize;)V

    return-void

    :pswitch_1
    check-cast p0, Lio/appmetrica/analytics/impl/L9;

    check-cast v1, Lio/appmetrica/analytics/impl/qg;

    invoke-static {p0, v1}, Lio/appmetrica/analytics/impl/L9;->a(Lio/appmetrica/analytics/impl/L9;Lio/appmetrica/analytics/impl/qg;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

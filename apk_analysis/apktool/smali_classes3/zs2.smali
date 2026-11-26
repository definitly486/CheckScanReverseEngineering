.class public final synthetic Lzs2;
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

    iput p1, p0, Lzs2;->b:I

    iput-object p2, p0, Lzs2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lzs2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lzs2;->b:I

    iget-object v1, p0, Lzs2;->d:Ljava/lang/Object;

    iget-object p0, p0, Lzs2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/zt;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {p0, v1}, Lyads/zt;->a(Lyads/zt;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    check-cast p0, Lyads/eq2;

    check-cast v1, Lyads/iq2;

    invoke-virtual {p0, v1}, Lyads/eq2;->a(Lyads/iq2;)V

    return-void

    :pswitch_1
    check-cast p0, Lnr7;

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {p0, v1}, Landroidx/media3/common/util/Util;->b(Lnr7;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/video/Recorder;

    check-cast v1, Landroidx/camera/video/VideoOutput$SourceState;

    invoke-static {p0, v1}, Landroidx/camera/video/Recorder;->h(Landroidx/camera/video/Recorder;Landroidx/camera/video/VideoOutput$SourceState;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    invoke-static {p0, v1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->e(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

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

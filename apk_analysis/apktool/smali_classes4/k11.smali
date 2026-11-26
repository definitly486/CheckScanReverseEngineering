.class public final synthetic Lk11;
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

    iput p1, p0, Lk11;->b:I

    iput-object p2, p0, Lk11;->c:Ljava/lang/Object;

    iput-object p3, p0, Lk11;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lk11;->b:I

    iget-object v1, p0, Lk11;->d:Ljava/lang/Object;

    iget-object p0, p0, Lk11;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/tapjoy/TJCurrency;

    check-cast v1, Lcom/tapjoy/TJGetCurrencyBalanceListener;

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJCurrency;->a(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    check-cast v1, Landroidx/media3/common/Timeline;

    invoke-static {p0, v1}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->f(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;Landroidx/media3/common/Timeline;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/core/impl/CameraPresenceProvider;

    check-cast v1, Landroidx/camera/core/CameraPresenceListener;

    invoke-static {p0, v1}, Landroidx/camera/core/impl/CameraPresenceProvider;->b(Landroidx/camera/core/impl/CameraPresenceProvider;Landroidx/camera/core/CameraPresenceListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

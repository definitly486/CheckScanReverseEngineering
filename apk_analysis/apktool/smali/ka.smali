.class public final synthetic Lka;
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

    iput p2, p0, Lka;->b:I

    iput-object p1, p0, Lka;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lka;->b:I

    iget-object p0, p0, Lka;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/tapjoy/TJSetUserIDListener;

    invoke-static {p0}, Lcom/tapjoy/TJUser;->e(Lcom/tapjoy/TJSetUserIDListener;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->a(Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {p0}, Landroidx/camera/core/impl/DeferrableSurfaces;->b(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->a(Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    invoke-static {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->d(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;)V

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

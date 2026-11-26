.class public final synthetic Lfg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/arch/core/util/Function;
.implements Lxl3;
.implements Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ActivationBarrierCallback;
.implements Lyads/tt3;
.implements Lyads/kd6;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lfg2;->b:I

    iput-object p1, p0, Lfg2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Display;)V
    .locals 0

    iget-object p0, p0, Lfg2;->c:Ljava/lang/Object;

    check-cast p0, Lyads/pd6;

    invoke-virtual {p0, p1}, Lyads/pd6;->a(Landroid/view/Display;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lfg2;->b:I

    iget-object p0, p0, Lfg2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lie1;

    invoke-virtual {p0, p1}, Lie1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lus5;

    return-object p0

    :pswitch_0
    check-cast p0, Lcj4;

    invoke-virtual {p0, p1}, Lcj4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwr5;

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/arch/core/util/Function;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Landroidx/paging/ItemKeyedDataSource;->f(Landroidx/arch/core/util/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfg2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {p0, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->c(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lfg2;->b:I

    iget-object p0, p0, Lfg2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/bw4;

    check-cast p1, Lyads/iw4;

    invoke-static {p0, p1}, Lyads/eq2;->h(Lyads/bw4;Lyads/iw4;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->s0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onWaitFinished()V
    .locals 0

    iget-object p0, p0, Lfg2;->c:Ljava/lang/Object;

    check-cast p0, Lio/appmetrica/analytics/impl/T5;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/T5;->a(Lio/appmetrica/analytics/impl/T5;)V

    return-void
.end method

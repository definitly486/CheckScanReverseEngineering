.class public final Lt32;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;I)V
    .locals 0

    .line 10
    iput p2, p0, Lt32;->f:I

    iput-object p1, p0, Lt32;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lfz7;Lez7;)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, Lt32;->f:I

    iput-object p1, p0, Lt32;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lt32;->f:I

    iget-object p0, p0, Lt32;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lfz7;

    iget-object p0, p0, Lfz7;->i:Lpb8;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lpb8;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;->n()Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->showSortDialog()Lj59;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->onGoToAllOperationsClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

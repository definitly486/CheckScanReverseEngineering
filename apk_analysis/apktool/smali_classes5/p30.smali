.class public final Lp30;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lil2;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lil2;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lp30;->f:I

    iput-object p1, p0, Lp30;->g:Lil2;

    iput-object p2, p0, Lp30;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lp30;->f:I

    iget-object v1, p0, Lp30;->h:Ljava/lang/Object;

    iget-object p0, p0, Lp30;->g:Lil2;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lfj9;

    iget-object p0, p0, Lfj9;->b:Lw76;

    check-cast v1, Lcom/warefly/checkscan/databinding/ItemWithdrawalCardInfoBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalCardInfoBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lwi9;

    invoke-virtual {p0, p1}, Lw76;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lii6;

    iget-object p0, p0, Lii6;->b:Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;

    check-cast v1, Lji6;

    iget p1, v1, Lji6;->a:I

    invoke-interface {p0, p1}, Lii6$a;->onShopItemClicked(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lvo5;

    iget-object p0, p0, Lvo5;->b:Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;

    check-cast v1, Lcp5;

    iget-boolean p1, v1, Lcp5;->f:Z

    iget-object v0, v1, Lcp5;->j:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Lvo5$a;->onNotificationCardClicked(ZLjava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Leo0;

    iget-object p0, p0, Leo0;->c:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    check-cast v1, Lfo0;

    iget p1, v1, Lfo0;->a:I

    iget-object v0, v1, Lfo0;->f:Lfo0$c;

    invoke-interface {p0, p1, v0}, Leo0$a;->onBonusPointsClaimClicked(ILfo0$c;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_3
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ln30;

    iget-object p0, p0, Ln30;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    check-cast v1, Lr30;

    iget p1, v1, Lr30;->a:I

    invoke-interface {p0, p1}, Ln30$a;->onHideHidableBanner(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

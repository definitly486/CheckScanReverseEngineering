.class public final Lrb;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lrb;->f:I

    iput-object p1, p0, Lrb;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lrb;->f:I

    iget-object p0, p0, Lrb;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->p()Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->onBackPressed()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->o()Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->loadContent()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseFragment;->o()Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;->getCountdownFlow(I)Ly68;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ll17;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lle9;->b(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->n()Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->onRegionSelected(Ll17;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lbm0;

    new-instance v0, Lan0;

    invoke-direct {v0, p0, p1}, Lan0;-><init>(Lbm0;Ljava/util/List;)V

    new-instance p0, Ll08;

    invoke-direct {p0, v0}, Ll08;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    :pswitch_4
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/stock/view/AgreementDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

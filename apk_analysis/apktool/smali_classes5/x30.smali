.class public final Lx30;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lx30;->f:I

    iput-object p2, p0, Lx30;->g:Ljava/lang/Object;

    iput-object p3, p0, Lx30;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lx30;->f:I

    iget-object v1, p0, Lx30;->h:Ljava/lang/Object;

    iget-object p0, p0, Lx30;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lij9;

    iget-object p0, p0, Lij9;->b:Lrj9;

    check-cast v1, Lcom/warefly/checkscan/databinding/ItemWithdrawalCommonBannerBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalCommonBannerBinding;->getRoot()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lwi9;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lrj9;->onWithdrawClicked(Lwi9;Lpw7;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ll58;

    iget-object p0, p0, Ll58;->i:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    check-cast v1, Lo58;

    invoke-interface {p0, v1}, Ll58$c;->onSpecialItemClick(Lo58;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lpo0;

    iget-object p0, p0, Lpo0;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    check-cast v1, Lto0;

    iget-object p1, v1, Lto0;->a:Lno0$a;

    iget p1, p1, Lno0;->a:I

    invoke-interface {p0, p1}, Lpo0$a;->onHidePromoBanner(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ly30;

    iget-object p0, p0, Ly30;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    check-cast v1, Lcom/warefly/checkscan/databinding/ItemRvBalanceIncreaseCashbackBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/databinding/ItemRvBalanceIncreaseCashbackBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ll60;->onPromotionItemClick(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

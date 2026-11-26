.class public final Lso0;
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

    iput p1, p0, Lso0;->f:I

    iput-object p2, p0, Lso0;->g:Ljava/lang/Object;

    iput-object p3, p0, Lso0;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lso0;->f:I

    iget-object v1, p0, Lso0;->h:Ljava/lang/Object;

    iget-object p0, p0, Lso0;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lmj9;

    iget-object p0, p0, Lmj9;->c:Lrj9;

    check-cast v1, Lcom/warefly/checkscan/databinding/ItemWithdrawalHeaderLogoBannerBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalHeaderLogoBannerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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

    check-cast v1, Lpq6;

    iget-object v0, v1, Lpq6;->b:Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lqq6;

    iget-object p1, p0, Lqq6;->a:Lqq6$a;

    sget-object v1, Lpq6$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lpq6$a;->onCheckRewardClicked()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lqq6;->c:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    iget p0, p0, Lqq6;->b:I

    const/4 v1, 0x0

    invoke-interface {v0, p1, p0, v1}, Lpq6$a;->onActivatePromocodeClicked(Ljava/lang/String;IZ)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lvi6;

    iget-object p0, p0, Lvi6;->b:Lnl3;

    check-cast v1, Lui6;

    iget p1, v1, Lui6;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lpo0;

    iget-object p0, p0, Lpo0;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    check-cast v1, Lto0;

    iget-object p1, v1, Lto0;->a:Lno0$a;

    iget p1, p1, Lno0;->a:I

    invoke-interface {p0, p1}, Lpo0$a;->onOpenPromoLink(I)V

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

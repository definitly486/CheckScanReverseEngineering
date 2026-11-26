.class public final Lqo0;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lvd9;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lvd9;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lqo0;->f:I

    iput-object p1, p0, Lqo0;->g:Lvd9;

    iput-object p2, p0, Lqo0;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lqo0;->f:I

    iget-object v1, p0, Lqo0;->h:Ljava/lang/Object;

    iget-object p0, p0, Lqo0;->g:Lvd9;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lk58;

    iget-object p0, p0, Lk58;->b:Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;

    check-cast v1, Lb06;

    invoke-interface {p0, v1}, Lk58$a;->onSpecialAdClicked(Lb06;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lup6;

    iget-object p0, p0, Lup6;->b:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    check-cast v1, Lvp6;

    iget p1, v1, Lvp6;->a:I

    invoke-interface {p0, p1}, Lco7;->onSelectionClicked(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lli6;

    iget-object p0, p0, Lli6;->b:Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;

    check-cast v1, Lni6;

    iget-boolean p1, v1, Lni6;->b:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Lli6$a;->onCollapseShops(Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lvo5;

    iget-object p0, p0, Lvo5;->b:Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;

    const/4 p1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, p1, v1}, Lvo5$a;->onNotificationCardClicked(ZLjava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_3
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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

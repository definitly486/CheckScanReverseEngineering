.class public final La70;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lil2;

.field public final synthetic h:Lpz3;


# direct methods
.method public synthetic constructor <init>(Lil2;Lpz3;I)V
    .locals 0

    iput p3, p0, La70;->f:I

    iput-object p1, p0, La70;->g:Lil2;

    iput-object p2, p0, La70;->h:Lpz3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, La70;->f:I

    iget-object v1, p0, La70;->h:Lpz3;

    iget-object p0, p0, La70;->g:Lil2;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lqh9;

    iget-object p0, p0, Lqh9;->c:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    check-cast v1, Lrh9;

    iget p1, v1, Lrh9;->a:I

    iget-object v0, v1, Lrh9;->g:Lfo0$c;

    invoke-interface {p0, p1, v0}, Leo0$a;->onBonusPointsClaimClicked(ILfo0$c;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lz60;

    iget-object p0, p0, Lz60;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    check-cast v1, Lec8;

    iget-object p1, v1, Lec8;->f:Ljava/lang/String;

    invoke-interface {p0, p1}, Lz60$a;->onSubscriptionBannerClicked(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

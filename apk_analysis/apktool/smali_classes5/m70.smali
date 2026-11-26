.class public final Lm70;
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

    iput p1, p0, Lm70;->f:I

    iput-object p2, p0, Lm70;->g:Ljava/lang/Object;

    iput-object p3, p0, Lm70;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lm70;->f:I

    iget-object v1, p0, Lm70;->h:Ljava/lang/Object;

    iget-object p0, p0, Lm70;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lyg1;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    check-cast v1, Lhv6;

    new-instance p1, Lvg1;

    invoke-direct {p1, p0, v2, v3, v1}, Lvg1;-><init>(Lyg1;JLhv6;)V

    invoke-virtual {p0, v2, v3, v1, p1}, Lyg1;->e(JLhv6;Lnl3;)Lrp1;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ln70;

    iget-object p0, p0, Ln70;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    check-cast v1, Lcom/warefly/checkscan/databinding/ItemRvBalanceWithdrawAnonBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/databinding/ItemRvBalanceWithdrawAnonBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lp70;

    invoke-interface {p0, p1}, Lq70;->onWithdrawClick(Lp70;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

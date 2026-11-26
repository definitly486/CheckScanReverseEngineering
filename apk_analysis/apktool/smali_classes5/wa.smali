.class public final Lwa;
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

    iput p1, p0, Lwa;->f:I

    iput-object p2, p0, Lwa;->g:Ljava/lang/Object;

    iput-object p3, p0, Lwa;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lwa;->f:I

    iget-object v1, p0, Lwa;->h:Ljava/lang/Object;

    iget-object p0, p0, Lwa;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ldv7;

    iget-object p0, p0, Ldv7;->b:Lbv7;

    check-cast v1, Ldn1;

    iget-object p1, v1, Ldn1;->e:Lb06;

    invoke-interface {p0, p1}, Lbv7;->onOrdClick(Lb06;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lss4;

    iget-object p0, p0, Lss4;->b:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    check-cast v1, Lws4;

    iget p1, v1, Lws4;->a:I

    iget-object v0, v1, Lws4;->e:Lws4$b;

    iget-object v0, v0, Lws4$b;->b:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Lss4$a;->onLoanClicked(ILjava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Le20;

    iget-object p0, p0, Le20;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    check-cast v1, Lcom/warefly/checkscan/databinding/ItemRvBalanceCardTextWithButtonsBinding;

    iget-object p1, v1, Lcom/warefly/checkscan/databinding/ItemRvBalanceCardTextWithButtonsBinding;->btnBottom:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lo10;

    invoke-interface {p0, p1}, Lp10;->onButtonClick(Lo10;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Li80$a;

    check-cast p0, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Li80$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0604fc

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p1, Li80$a;->l:I

    invoke-virtual {p1}, Li80$a;->f()V

    invoke-virtual {p1}, Li80$a;->d()V

    check-cast v1, Lxa;

    iget-object v1, v1, Lxa;->h:Lxa$f;

    iget-object v1, v1, Lxa$f;->c:Ljava/lang/String;

    iput-object v1, p1, Li80$a;->n:Ljava/lang/CharSequence;

    const/high16 v1, 0x41600000    # 14.0f

    iput v1, p1, Li80$a;->p:F

    sget-object v1, Lbs;->ALIGN_ANCHOR:Lbs;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p1, Li80$a;->i:Lbs;

    invoke-virtual {p1}, Li80$a;->a()V

    invoke-virtual {p1}, Li80$a;->b()V

    invoke-virtual {p1}, Li80$a;->e()V

    invoke-virtual {p1}, Li80$a;->c()V

    const v1, 0x7f0600c4

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Li80$a;->o:I

    new-instance v1, Li80;

    invoke-direct {v1, v0, p1}, Li80;-><init>(Landroid/content/Context;Li80$a;)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->ivPskInfo:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Li80;->j(Li80;Landroid/view/View;)V

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

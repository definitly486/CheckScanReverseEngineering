.class public final Lpb;
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

    iput p3, p0, Lpb;->f:I

    iput-object p1, p0, Lpb;->g:Lil2;

    iput-object p2, p0, Lpb;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lpb;->f:I

    iget-object v1, p0, Lpb;->h:Ljava/lang/Object;

    iget-object p0, p0, Lpb;->g:Lil2;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lgm7;

    iget-object p0, p0, Lgm7;->b:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    check-cast v1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lgm7$a;->onSelectPromocodeClicked(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lho6;

    iget-object p0, p0, Lho6;->b:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    check-cast v1, Lio6;

    iget p1, v1, Lio6;->a:I

    iget-object v0, v1, Lio6;->c:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Lho6$a;->onSelectCardClicked(ILjava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lz64;

    iget-object p0, p0, Lz64;->c:Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;

    check-cast v1, La74;

    iget-object p1, v1, La74;->g:La74$a;

    iget-object p1, p1, La74$a;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Lz64$a;->onInsuranceUrlClicked(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lob;

    iget-object p0, p0, Lob;->c:Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;

    check-cast v1, Lub;

    iget-object p1, v1, Lub;->a:Lub$a;

    invoke-interface {p0, p1}, Lob$a;->onAgreementClicked(Lub$a;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Li60;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lvd9;

.field public final synthetic h:Lpz3;


# direct methods
.method public synthetic constructor <init>(Lvd9;Lpz3;I)V
    .locals 0

    iput p3, p0, Li60;->f:I

    iput-object p1, p0, Li60;->g:Lvd9;

    iput-object p2, p0, Li60;->h:Lpz3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Li60;->f:I

    iget-object v1, p0, Li60;->h:Lpz3;

    iget-object p0, p0, Li60;->g:Lvd9;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lrd5;

    iget-object p0, p0, Lrd5;->b:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    check-cast v1, Lpd5;

    iget p1, v1, Lpd5;->a:I

    invoke-interface {p0, p1}, Lco7;->onSelectionClicked(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lob1;

    iget-object p0, p0, Lob1;->b:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    check-cast v1, Lpb1;

    iget-boolean p1, v1, Lpb1;->d:Z

    invoke-interface {p0, p1}, Lob1$a;->onClaimClicked(Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lk60;

    iget-object p0, p0, Lk60;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    check-cast v1, Lb70;

    iget p1, v1, Lb70;->a:I

    invoke-interface {p0, p1}, Ld60;->onPromoBannerHideClicked(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

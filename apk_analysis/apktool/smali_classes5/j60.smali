.class public final Lj60;
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

    iput p3, p0, Lj60;->f:I

    iput-object p1, p0, Lj60;->g:Lvd9;

    iput-object p2, p0, Lj60;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lj60;->f:I

    iget-object v1, p0, Lj60;->h:Ljava/lang/Object;

    iget-object p0, p0, Lj60;->g:Lvd9;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lfl6;

    iget-object p0, p0, Lfl6;->b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    check-cast v1, Lhl6;

    iget-object p1, v1, Lhl6;->h:Lkw2;

    iget-object p1, p1, Lkw2;->e:Ljava/lang/String;

    invoke-interface {p0, p1}, Lfl6$a;->onAddEmailClicked(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lrb1;

    iget-object p0, p0, Lrb1;->c:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    check-cast v1, Lsb1;

    iget p1, v1, Lsb1;->b:I

    iget-object v0, v1, Lsb1;->e:Lsb1$a;

    iget-boolean v0, v0, Lsb1$a;->e:Z

    invoke-interface {p0, p1, v0}, Lrb1$a;->onCheckboxButtonClicked(IZ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lk60;

    iget-object p0, p0, Lk60;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    check-cast v1, Lb06;

    invoke-interface {p0, v1}, Ld60;->onPromoBannerOrdClicked(Lb06;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

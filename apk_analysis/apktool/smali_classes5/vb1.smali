.class public final Lvb1;
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

    iput p1, p0, Lvb1;->f:I

    iput-object p2, p0, Lvb1;->g:Ljava/lang/Object;

    iput-object p3, p0, Lvb1;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lvb1;->f:I

    iget-object v1, p0, Lvb1;->h:Ljava/lang/Object;

    iget-object p0, p0, Lvb1;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lhl6;

    iget-object p0, p0, Lhl6;->g:Lvm6;

    iget-object p0, p0, Lvm6;->e:Ljava/lang/String;

    if-eqz p0, :cond_0

    check-cast v1, Lfl6;

    iget-object p1, v1, Lfl6;->b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    invoke-interface {p1, p0}, Lfl6$a;->onExpiredSubscriptionClicked(Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lub1;

    iget-object p0, p0, Lub1;->b:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    check-cast v1, Lfc1;

    invoke-interface {p0, v1}, Lub1$a;->onCheckboxClicked(Lfc1;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

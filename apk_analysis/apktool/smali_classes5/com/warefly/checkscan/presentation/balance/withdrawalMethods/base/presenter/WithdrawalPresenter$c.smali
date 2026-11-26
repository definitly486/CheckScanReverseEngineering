.class public final Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.balance.withdrawalMethods.base.presenter.WithdrawalPresenter$onTransferCardClicked$1"
    f = "WithdrawalPresenter.kt"
    l = {
        0xba
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->onTransferCardClicked(Lwi9;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Li57<",
        "+",
        "La40;",
        ">;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic o:Lwi9;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;Lwi9;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter<",
            "TV;>;",
            "Lwi9;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;->n:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;->o:Lwi9;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;->n:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;->o:Lwi9;

    invoke-direct {v0, v1, p0, p2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;Lwi9;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;->l:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;->m:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v1, p1, Li57$a;

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;->n:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->showSomethingWrong()V

    goto :goto_0

    :cond_2
    sget-object v1, Li57$b;->a:Li57$b;

    invoke-static {p1, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    instance-of v1, p1, Li57$c;

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;

    if-eqz v1, :cond_3

    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, La40;

    invoke-interface {v1, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->showInfoDialog(La40;)V

    :cond_3
    iput v2, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;->l:I

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;->o:Lwi9;

    invoke-virtual {v3, p1, p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->onWithdrawEventHandled(Lwi9;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

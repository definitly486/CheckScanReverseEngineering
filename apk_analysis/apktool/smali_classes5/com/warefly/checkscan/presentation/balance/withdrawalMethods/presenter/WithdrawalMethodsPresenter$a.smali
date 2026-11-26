.class public final Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.balance.withdrawalMethods.presenter.WithdrawalMethodsPresenter$onFirstViewAttach$1"
    f = "WithdrawalMethodsPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lb40$d;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter$a;->m:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
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

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter$a;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter$a;->m:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter$a;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb40$d;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter$a;->l:Ljava/lang/Object;

    check-cast p1, Lb40$d;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter$a;->m:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lb40$d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView;->setToolbarTitle(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView;

    if-eqz p0, :cond_1

    iget-object p1, p1, Lb40$d;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView;->showWithdrawalMethods(Ljava/util/List;)V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

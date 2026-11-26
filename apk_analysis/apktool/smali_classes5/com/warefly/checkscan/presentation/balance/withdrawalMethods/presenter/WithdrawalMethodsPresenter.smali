.class public final Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;
.super Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;
.source "SourceFile"

# interfaces
.implements Lrj9;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter<",
        "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/view/WithdrawalMethodsView;",
        ">;",
        "Lrj9;"
    }
.end annotation


# instance fields
.field private final balanceInteractor:Lb40;

.field private final flowRouter:Luf3;

.field private final preferencesRepository:Ljf6;


# direct methods
.method public constructor <init>(Lb40;Ljf6;Luf3;Lmk1;Liw2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;-><init>(Lb40;Ljf6;Lmk1;Liw2;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;->balanceInteractor:Lb40;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;->preferencesRepository:Ljf6;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;->flowRouter:Luf3;

    return-void
.end method


# virtual methods
.method public onAddEmailClicked()V
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;->flowRouter:Luf3;

    new-instance v0, Lix;

    sget-object v1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$AddEmail;->b:Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$AddEmail;

    invoke-direct {v0, v1}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;->balanceInteractor:Lb40;

    iget-object v0, v0, Lb40;->g:Lz68;

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onWithdrawClicked(Lwi9;Lpw7;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->onWithdrawEvent(Lwi9;)V

    return-void
.end method

.method public onWithdrawEventHandled(Lwi9;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwi9;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p1, p1, Lwi9$a;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/presenter/WithdrawalMethodsPresenter;->balanceInteractor:Lb40;

    const/4 p1, 0x2

    invoke-static {p1, p0, p2}, Lb40;->d(ILb40;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.class public final Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a0;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$refreshBlocks$1"
    f = "BalancePresenter.kt"
    l = {
        0x104
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->refreshBlocks(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
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

.field public final synthetic m:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

.field public final synthetic n:Z


# direct methods
.method public constructor <init>(Le02;Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Z)V
    .locals 0

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a0;->m:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    iput-boolean p3, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a0;->n:Z

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lpg8;-><init>(ILe02;)V

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

    new-instance p1, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a0;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a0;->m:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a0;->n:Z

    invoke-direct {p1, p2, v0, p0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a0;-><init>(Le02;Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Z)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a0;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a0;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a0;->l:I

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a0;->m:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->access$getInteractor$p(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)Lb40;

    move-result-object p1

    iput v3, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a0;->l:I

    iget-boolean v1, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a0;->n:Z

    invoke-virtual {p1, v3, v1, p0}, Lb40;->c(ZZLe02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {v2}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;->turnOffRefreshing()V

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

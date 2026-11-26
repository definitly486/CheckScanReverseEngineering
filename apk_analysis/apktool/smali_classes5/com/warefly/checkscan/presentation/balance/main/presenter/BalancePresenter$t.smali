.class public final Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$t;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$onFirstViewAttach$5"
    f = "BalancePresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/lang/Boolean;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Z

.field public final synthetic m:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$t;->m:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$t;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$t;->m:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$t;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$t;->l:Z

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$t;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$t;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$t;->l:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$t;->m:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)Luf3;

    move-result-object p0

    sget-object p1, Lih7;->a:Lih7;

    invoke-virtual {p0, p1}, Lo87;->d(Ldf7;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

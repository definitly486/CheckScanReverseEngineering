.class public final Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$f;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$handleVerificationEvent$2"
    f = "BalancePresenter.kt"
    l = {
        0xf0
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->handleVerificationEvent(Lu37;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lj59;",
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

.field public final synthetic m:Z

.field public final synthetic n:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;


# direct methods
.method public constructor <init>(Le02;Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Z)V
    .locals 0

    iput-boolean p3, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$f;->m:Z

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$f;->n:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

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

    new-instance p1, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$f;

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$f;->m:Z

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$f;->n:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    invoke-direct {p1, p2, p0, v0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$f;-><init>(Le02;Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Z)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lj59;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$f;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$f;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$f;->l:I

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

    iget-boolean p1, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$f;->m:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$f;->n:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    invoke-static {p1}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->access$getInteractor$p(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)Lb40;

    move-result-object p1

    iput v2, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$f;->l:I

    const/4 v1, 0x3

    invoke-static {v1, p1, p0}, Lb40;->d(ILb40;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

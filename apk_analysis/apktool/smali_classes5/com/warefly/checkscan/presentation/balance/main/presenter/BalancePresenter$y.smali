.class public final Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.balance.main.presenter.BalancePresenter$onPromoBannerHideClicked$1"
    f = "BalancePresenter.kt"
    l = {
        0xca
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->onPromoBannerHideClicked(I)V
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

.field public final synthetic n:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;ILe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;",
            "I",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;->m:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    iput p2, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;->n:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

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

    new-instance p1, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;->m:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    iget p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;->n:I

    invoke-direct {p1, v0, p0, p2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;ILe02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;->l:I

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

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;->m:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    invoke-static {p1}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->access$getInteractor$p(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)Lb40;

    move-result-object p1

    iput v2, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;->l:I

    iget v1, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;->n:I

    invoke-virtual {p1, v1, p0}, Lb40;->q(ILf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

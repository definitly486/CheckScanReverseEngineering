.class public final Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.balance.promocodes.presenter.SelectPromocodePresenter$onSelectPromocodeClicked$1"
    f = "SelectPromocodePresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->onSelectPromocodeClicked(I)V
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
        "Lkm7;",
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
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

.field public final synthetic n:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;ILe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;",
            "I",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;->m:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    iput p2, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;->n:I

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

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;->m:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    iget p0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;->n:I

    invoke-direct {v0, v1, p0, p2}, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;-><init>(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;ILe02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;->m:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    invoke-virtual {v0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;->showLoading(Z)V

    :cond_0
    instance-of v1, p1, Li57$a;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;

    if-eqz p0, :cond_3

    sget-object p1, Ljm7$a;->e:Ljm7$a;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;->showErrorSheet(Ljm7$a;)V

    goto :goto_0

    :cond_1
    sget-object v1, Li57$b;->a:Li57$b;

    invoke-static {p1, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;->showLoading(Z)V

    goto :goto_0

    :cond_2
    instance-of v1, p1, Li57$c;

    if-eqz v1, :cond_3

    new-instance v1, Lkd$k0$b;

    iget p0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;->n:I

    const-string v2, "Click_promocode"

    invoke-static {p0, v2}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v1, p0}, Lkd$k0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkd;->c()V

    invoke-virtual {v0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;

    if-eqz p0, :cond_3

    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Lkm7;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;->showSelectingSheet(Lkm7;)V

    :cond_3
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

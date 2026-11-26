.class public final Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.insuranceShowcase.presentation.showcase.presenter.InsuranceShowcasePresenter$onFirstViewAttach$1"
    f = "InsuranceShowcasePresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;->onFirstViewAttach()V
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
        "Lx64;",
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

.field public final synthetic m:Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter$a;->m:Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;

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

    new-instance v0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter$a;

    iget-object p0, p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter$a;->m:Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter$a;-><init>(Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter$a;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter$a;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v0, p1, Li57$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter$a;->m:Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;->showLoading(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;

    if-eqz p0, :cond_8

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;->showError(Z)V

    goto/16 :goto_1

    :cond_1
    sget-object v0, Li57$b;->a:Li57$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;

    if-eqz p0, :cond_8

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;->showLoading(Z)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Li57$c;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;->showError(Z)V

    :cond_3
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, Li57$c;

    iget-object v1, v1, Li57$c;->a:Ljava/lang/Object;

    check-cast v1, Lx64;

    iget-object v1, v1, Lx64;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;->setToolbarTitle(Ljava/lang/String;)V

    :cond_4
    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Lx64;

    iget-object v0, p1, Lx64;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpz3;

    instance-of v3, v1, La74;

    if-eqz v3, :cond_5

    check-cast v1, La74;

    iget-object v3, v1, La74;->f:Ljava/lang/Long;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget v1, v1, La74;->a:I

    invoke-static {p0, v1, v3, v4}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;->access$setCountdownFlow(Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/presenter/InsuranceShowcasePresenter;IJ)Ly68;

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;

    if-eqz v0, :cond_7

    invoke-interface {v0, v2}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;->showLoading(Z)V

    :cond_7
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;

    if-eqz p0, :cond_8

    iget-object p1, p1, Lx64;->b:Ljava/util/ArrayList;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;->showItems(Ljava/util/List;)V

    :cond_8
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.class public final Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$b;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.tasks.checkboxSteps.presenter.CheckboxTaskStepsDetailsPresenter$loadContent$1"
    f = "CheckboxTaskStepsDetailsPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->loadContent()V
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
        "Lec1;",
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

.field public final synthetic m:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$b;->m:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$b;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$b;->m:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$b;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$b;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$b;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$b;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v0, p1, Li57$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter$b;->m:Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;->showLoading(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;->showErrorState(Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Li57$b;->a:Li57$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;

    invoke-interface {p1, v2}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;->showErrorState(Z)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;->showLoading(Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Li57$c;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;

    invoke-interface {v0, v2}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;->showErrorState(Z)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;

    invoke-interface {v0, v2}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;->showLoading(Z)V

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;->access$getSheetContent$p(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/presenter/CheckboxTaskStepsDetailsPresenter;)Lxg5;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lec1;

    move-object v1, p1

    check-cast v1, Li57$c;

    iget-object v1, v1, Li57$c;->a:Ljava/lang/Object;

    check-cast v1, Lec1;

    invoke-interface {p0, v0, v1}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_4
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

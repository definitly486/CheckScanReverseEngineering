.class public final Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$b;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.support.presentation.form.presenter.SupportFormPresenter$onConfirmClicked$1"
    f = "SupportFormPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->onConfirmClicked()V
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
        "Lwe8;",
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

.field public final synthetic m:Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$b;->m:Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$b;

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$b;->m:Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$b;-><init>(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$b;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$b;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$b;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$b;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v0, p1, Li57$c;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$b;->m:Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->setButtonLoading(Z)V

    :cond_0
    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Lwe8;

    iget-boolean v0, p1, Lwe8;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->showFailBottomSheet(Lwe8;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->showSuccessBottomSheet(Lwe8;)V

    goto :goto_0

    :cond_2
    sget-object v0, Li57$b;->a:Li57$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz p0, :cond_5

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->setButtonLoading(Z)V

    goto :goto_0

    :cond_3
    instance-of p1, p1, Li57$a;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->setButtonLoading(Z)V

    :cond_4
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->access$defaultErrorResult(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;)Lwe8;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->showFailBottomSheet(Lwe8;)V

    :cond_5
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.class public final Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.support.presentation.form.presenter.SupportFormPresenter$loadForm$1"
    f = "SupportFormPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->loadForm()V
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
        "Lni3;",
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
            "Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$a;->m:Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$a;

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$a;->m:Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$a;-><init>(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$a;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$a;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v0, p1, Li57$c;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$a;->m:Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->showLoading(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->showError(Z)V

    :cond_1
    invoke-static {p0}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->access$getPreferencesRepository$p(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;)Ljf6;

    move-result-object v0

    invoke-interface {v0}, Ljf6;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->access$getEmailValidator$p(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;)Liw2;

    move-result-object v1

    invoke-virtual {v1, v0}, Liw2;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-static {p0, v0}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->access$setEmailCache$p(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->access$getPreferencesRepository$p(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;)Ljf6;

    move-result-object v0

    invoke-interface {v0}, Ljf6;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->access$setNameCache$p(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;Ljava/lang/String;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->access$getNameCache$p(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->setNameField(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->access$getEmailCache$p(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->setEmailField(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz p0, :cond_a

    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Lni3;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->setScreenInfo(Lni3;)V

    goto :goto_1

    :cond_6
    sget-object v0, Li57$b;->a:Li57$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz p1, :cond_7

    invoke-interface {p1, v2}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->showLoading(Z)V

    :cond_7
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz p0, :cond_a

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->showError(Z)V

    goto :goto_1

    :cond_8
    instance-of p1, p1, Li57$a;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz p1, :cond_9

    invoke-interface {p1, v1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->showLoading(Z)V

    :cond_9
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz p0, :cond_a

    invoke-interface {p0, v2}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->showError(Z)V

    :cond_a
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

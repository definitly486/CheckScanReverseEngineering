.class public final Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.profile.presentation.main.dialogs.enter.presenter.ProfilePromocodeEnterPresenter$onPromocodeButtonActivate$1"
    f = "ProfilePromocodeEnterPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;->onPromocodeButtonActivate()V
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
        "Lo6;",
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

.field public final synthetic m:Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter$a;->m:Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter$a;

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter$a;->m:Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter$a;-><init>(Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter$a;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter$a;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v0, p1, Li57$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter$a;->m:Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;

    if-eqz p1, :cond_0

    invoke-interface {p1, v2, v1}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;->showPromocodeError(ZLjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;

    if-eqz p0, :cond_6

    invoke-interface {p0, v3}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;->showButtonLoading(Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Li57$b;->a:Li57$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;

    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;->showButtonLoading(Z)V

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;

    if-eqz p0, :cond_6

    invoke-interface {p0, v3, v1}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;->showPromocodeError(ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Li57$c;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;

    if-eqz v0, :cond_4

    invoke-interface {v0, v3, v1}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;->showPromocodeError(ZLjava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;

    if-eqz v0, :cond_5

    invoke-interface {v0, v3}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;->showButtonLoading(Z)V

    :cond_5
    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Lo6;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;->access$handlePromocodeActivationResult(Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;Lo6;)Lj59;

    :cond_6
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

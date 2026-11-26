.class public final Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$b;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.auth.presentation.main.presenter.PhoneSignUpPresenter$onFirstViewAttach$1"
    f = "PhoneSignUpPresenter.kt"
    l = {
        0x37
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->onFirstViewAttach()V
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

.field public final synthetic m:Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$b;->m:Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0
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

    new-instance p1, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$b;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$b;->m:Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;

    invoke-direct {p1, p0, p2}, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$b;-><init>(Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$b;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$b;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$b;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$b;->m:Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->access$getFetchUserAgreementsUseCase$p(Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;)Ls83;

    move-result-object p1

    iput v3, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$b;->l:I

    invoke-virtual {p1, p0}, Ls83;->a(Lf02;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/Map;

    invoke-static {v4}, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->access$getAuthState$p(Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;)Lxg5;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lz76;

    const/4 v3, 0x3

    invoke-static {v1, v2, v2, p1, v3}, Lz76;->a(Lz76;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lz76;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;

    if-eqz p0, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;->showAgreements(Ljava/util/List;)V

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.class public final Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$b;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.auth.presentation.addEmail.presenter.AddEmailPresenter$onAddEmailClicked$2"
    f = "AddEmailPresenter.kt"
    l = {
        0x27
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->onAddEmailClicked()V
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

.field public final synthetic m:Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$b;->m:Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;

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

    new-instance p1, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$b;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$b;->m:Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;

    invoke-direct {p1, p0, p2}, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$b;-><init>(Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$b;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$b;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$b;->l:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$b;->m:Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;

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

    invoke-virtual {v3}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;

    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;->showButtonLoading(Z)V

    :cond_2
    invoke-static {v3}, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->access$getAddEmailUseCase$p(Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;)Lz8;

    move-result-object p1

    invoke-static {v3}, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->access$getEmailCache$p(Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;)Ljava/lang/String;

    move-result-object v1

    iput v2, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$b;->l:I

    iget-object p1, p1, Lz8;->a:Lvw;

    invoke-interface {p1, v1, p0}, Lvw;->d(Ljava/lang/String;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lfw2;

    invoke-virtual {v3}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;->showButtonLoading(Z)V

    :cond_4
    instance-of p0, p1, Lfw2$a;

    if-eqz p0, :cond_5

    invoke-static {v3}, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->access$getEmailCache$p(Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->access$setEmailForWhichCodeSend$p(Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->access$getFlowRouter$p(Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;)Luf3;

    move-result-object p0

    new-instance p1, Lkx;

    invoke-static {v3}, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->access$getEmailCache$p(Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljw2;->AddEmail:Ljw2;

    invoke-direct {p1, v1, v3}, Lkx;-><init>(Ljava/lang/String;Ljw2;)V

    new-array v1, v2, [Llk3;

    aput-object p1, v1, v0

    invoke-virtual {p0, v1}, Luf3;->j([Llk3;)V

    goto :goto_1

    :cond_5
    sget-object p0, Lfw2$c;->a:Lfw2$c;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v3}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;->showEmailPlacedError()V

    goto :goto_1

    :cond_6
    sget-object p0, Lfw2$b;->a:Lfw2$b;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v3}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;->showEmailTimeoutError()V

    goto :goto_1

    :cond_7
    sget-object p0, Lfw2$d;->a:Lfw2$d;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v3}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;->showEmailUnknownError()V

    :cond_8
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.class public final Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$c;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.auth.presentation.callVerification.presenter.VerificationCallPresenter$onOtpCodeReady$1"
    f = "VerificationCallPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->onOtpCodeReady(Ljava/lang/String;)V
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
        "Laq8;",
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

.field public final synthetic m:Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$c;->m:Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$c;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$c;->m:Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$c;-><init>(Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$c;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$c;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$c;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$c;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v0, p1, Li57$a;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$c;->m:Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;->dismissLoadingDialog()V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;->showUnknownError()V

    goto :goto_0

    :cond_1
    sget-object v0, Li57$b;->a:Li57$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;->showLoadingDialog()V

    goto :goto_0

    :cond_2
    instance-of p1, p1, Li57$c;

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->access$sendUserRegistered(Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;->dismissLoadingDialog()V

    :cond_3
    invoke-static {p0}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->access$getFlowRouter$p(Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;)Luf3;

    move-result-object p1

    invoke-virtual {p1}, Luf3;->i()V

    invoke-static {p0}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->access$getFlowRouter$p(Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;)Luf3;

    move-result-object p0

    const-string p1, "auth_verification_result"

    sget-object v0, Lox;->SignUp:Lox;

    invoke-virtual {p0, v0, p1}, Luf3;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

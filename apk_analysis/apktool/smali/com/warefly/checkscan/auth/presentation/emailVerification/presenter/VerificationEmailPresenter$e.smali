.class public final Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$e;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.auth.presentation.emailVerification.presenter.VerificationEmailPresenter$showOtpError$1"
    f = "VerificationEmailPresenter.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->showOtpError()V
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

.field public final synthetic m:Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$e;->m:Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;

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

    new-instance p1, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$e;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$e;->m:Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;

    invoke-direct {p1, p0, p2}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$e;-><init>(Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$e;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$e;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$e;->l:I

    iget-object v2, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$e;->m:Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;

    if-eqz p1, :cond_2

    invoke-interface {p1, v3}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;->showOtpError(Z)V

    :cond_2
    iput v3, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$e;->l:I

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    invoke-virtual {v2}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;

    if-eqz p0, :cond_4

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;->showOtpError(Z)V

    :cond_4
    invoke-virtual {v2}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;->clearOtp()V

    :cond_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

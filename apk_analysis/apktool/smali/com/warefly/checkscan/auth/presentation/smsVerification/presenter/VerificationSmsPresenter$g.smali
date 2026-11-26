.class public final Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$g;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.auth.presentation.smsVerification.presenter.VerificationSmsPresenter$startTimer$3"
    f = "VerificationSmsPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/lang/Long;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:J

.field public final synthetic m:Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$g;->m:Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$g;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$g;->m:Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$g;-><init>(Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;Le02;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$g;->l:J

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Le02;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$g;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$g;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$g;->l:J

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$g;->m:Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0, v1}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsView;->setTimer(J)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

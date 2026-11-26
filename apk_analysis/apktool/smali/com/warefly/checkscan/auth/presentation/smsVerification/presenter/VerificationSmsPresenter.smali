.class public final Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lg06$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsView;",
        ">;",
        "Lg06$a;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$a;

.field private static final ONE_MINUTE:J = 0x1d4c0L


# instance fields
.field private final analyticsRepository:Lqe;

.field private final flowRouter:Luf3;

.field private final phone:Ljava/lang/String;

.field private final signInRetryUseCase:Lgx7;

.field private final signUpConfirmInteractor:Lmx7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->Companion:Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Luf3;Lmx7;Lgx7;Lqe;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->phone:Ljava/lang/String;

    iput-object p2, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->flowRouter:Luf3;

    iput-object p3, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->signUpConfirmInteractor:Lmx7;

    iput-object p4, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->signInRetryUseCase:Lgx7;

    iput-object p5, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->analyticsRepository:Lqe;

    return-void
.end method

.method public static final synthetic access$getFlowRouter$p(Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->flowRouter:Luf3;

    return-object p0
.end method

.method public static final synthetic access$sendUserRegistered(Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->sendUserRegistered()V

    return-void
.end method

.method private final sendUserRegistered()V
    .locals 1

    sget-object v0, Lkd$a$k$a;->e:Lkd$a$k$a;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->analyticsRepository:Lqe;

    invoke-interface {p0}, Lqe;->f()V

    return-void
.end method

.method private final startTimer()V
    .locals 4

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$e;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpg8;-><init>(ILe02;)V

    new-instance v1, Ltb7;

    invoke-direct {v1, v0}, Ltb7;-><init>(Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$f;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$f;-><init>(Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;Le02;)V

    new-instance v3, Lce3;

    invoke-direct {v3, v1, v0}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$g;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$g;-><init>(Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, v3, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$h;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$h;-><init>(Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;Le02;)V

    new-instance v2, Lbe3;

    invoke-direct {v2, v1, v0}, Lbe3;-><init>(Lhd3;Ldm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method


# virtual methods
.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 2

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->phone:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsView;->setPhoneTyped(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->startTimer()V

    return-void
.end method

.method public onOtpCodeChange(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onOtpCodeReady(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->signUpConfirmInteractor:Lmx7;

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->phone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llx7;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Llx7;-><init>(Lmx7;Ljava/lang/String;Ljava/lang/String;Le02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$b;

    invoke-direct {v0, p0, v3}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$b;-><init>(Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onSendCodeAgainClicked()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->startTimer()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsView;->showSendAgainButton(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->signInRetryUseCase:Lgx7;

    sget-object v1, Ldw1;->SMS:Ldw1;

    invoke-virtual {v0, v1}, Lgx7;->a(Ldw1;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$c;-><init>(Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onTryCallVerificationClicked()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->flowRouter:Luf3;

    new-instance v1, Ljx;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->phone:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo87;->h(Ldf7;)V

    return-void
.end method

.method public final sendSmsCodeFromReceiver(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_3

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0, p1}, Lua8;->l0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsView;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsView;->setCodeFromSms(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final showOtpError()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsView;->vibrateError()V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter$d;-><init>(Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

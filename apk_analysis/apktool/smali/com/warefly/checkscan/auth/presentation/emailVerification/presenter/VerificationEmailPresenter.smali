.class public final Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lg06$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$a;,
        Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;",
        ">;",
        "Lg06$a;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$a;

.field private static final ONE_MINUTE:J = 0x1d4c0L


# instance fields
.field private final addEmailUseCase:Lz8;

.field private final confirmEmailUseCase:Law1;

.field private final email:Ljava/lang/String;

.field private final emailVerificationReason:Ljw2;

.field private final flowRouter:Luf3;

.field private otpCode:Ljava/lang/String;

.field private final signInConfirmInteractor:Lcx7;

.field private final signInRetryUseCase:Lgx7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->Companion:Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Luf3;Ljw2;Lgx7;Lcx7;Law1;Lz8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->email:Ljava/lang/String;

    iput-object p2, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->flowRouter:Luf3;

    iput-object p3, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->emailVerificationReason:Ljw2;

    iput-object p4, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->signInRetryUseCase:Lgx7;

    iput-object p5, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->signInConfirmInteractor:Lcx7;

    iput-object p6, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->confirmEmailUseCase:Law1;

    iput-object p7, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->addEmailUseCase:Lz8;

    return-void
.end method

.method public static final synthetic access$checkAddEmailVerificationResult(Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;Lgw2;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->checkAddEmailVerificationResult(Lgw2;)V

    return-void
.end method

.method public static final synthetic access$checkSignInVerificationResult(Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;Li57;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->checkSignInVerificationResult(Li57;)V

    return-void
.end method

.method public static final synthetic access$getAddEmailUseCase$p(Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;)Lz8;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->addEmailUseCase:Lz8;

    return-object p0
.end method

.method public static final synthetic access$getEmail$p(Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->email:Ljava/lang/String;

    return-object p0
.end method

.method private final checkAddEmailVerificationResult(Lgw2;)V
    .locals 1

    sget-object v0, Lgw2$a;->a:Lgw2$a;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;->showEmailCodeSendError()V

    return-void

    :cond_0
    sget-object v0, Lgw2$b;->a:Lgw2$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;->showEmailPlacedError()V

    return-void

    :cond_1
    instance-of v0, p1, Lgw2$c;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;->showEmailAddedBottomSheet()V

    :cond_2
    iget-object p1, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->flowRouter:Luf3;

    invoke-virtual {p1}, Luf3;->i()V

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->flowRouter:Luf3;

    const-string p1, "add_email_key"

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1}, Luf3;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v0, Lgw2$d;->a:Lgw2$d;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;->showUnknownError()V

    :cond_4
    return-void
.end method

.method private final checkSignInVerificationResult(Li57;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li57<",
            "Lj3;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Li57$a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;->dismissLoadingDialog()V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;->showUnknownError()V

    return-void

    :cond_1
    sget-object v0, Li57$b;->a:Li57$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;->showLoadingDialog()V

    return-void

    :cond_2
    instance-of p1, p1, Li57$c;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;->dismissLoadingDialog()V

    :cond_3
    iget-object p1, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->flowRouter:Luf3;

    invoke-virtual {p1}, Luf3;->i()V

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->flowRouter:Luf3;

    const-string p1, "auth_verification_result"

    sget-object v0, Lox;->Login:Lox;

    invoke-virtual {p0, v0, p1}, Luf3;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private final retryAddingEmail()V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$c;-><init>(Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method private final retrySignIn()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->signInRetryUseCase:Lgx7;

    sget-object v1, Ldw1;->EMAIL:Ldw1;

    invoke-virtual {v0, v1}, Lgx7;->a(Ldw1;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$d;-><init>(Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method private final startTimer()V
    .locals 4

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$f;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpg8;-><init>(ILe02;)V

    new-instance v1, Ltb7;

    invoke-direct {v1, v0}, Ltb7;-><init>(Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$g;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$g;-><init>(Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;Le02;)V

    new-instance v3, Lce3;

    invoke-direct {v3, v1, v0}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$h;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$h;-><init>(Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, v3, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$i;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$i;-><init>(Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;Le02;)V

    new-instance v2, Lbe3;

    invoke-direct {v2, v1, v0}, Lbe3;-><init>(Lhd3;Ldm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method private final verifyAddEmail(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->confirmEmailUseCase:Law1;

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->email:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lzv1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Lzv1;-><init>(Law1;Ljava/lang/String;Ljava/lang/String;Le02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$j;

    invoke-direct {v0, p0, v3}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$j;-><init>(Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method private final verifySignIn(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->signInConfirmInteractor:Lcx7;

    sget-object v1, Lam2;->EMAIL:Lam2;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, p1, v2}, Lcx7;->a(Lcx7;Ljava/lang/String;Lam2;Ljava/lang/String;I)Lde3;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$k;

    invoke-direct {v0, p0, v3}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$k;-><init>(Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method


# virtual methods
.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 2

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->email:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;->setEmailTyped(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->startTimer()V

    return-void
.end method

.method public onOtpCodeChange(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->otpCode:Ljava/lang/String;

    return-void
.end method

.method public onOtpCodeReady(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->otpCode:Ljava/lang/String;

    return-void
.end method

.method public final onSendCodeAgainAgainClicked()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->startTimer()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;->showSendAgainButton(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->emailVerificationReason:Ljw2;

    sget-object v1, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->retryAddingEmail()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->retrySignIn()V

    return-void
.end method

.method public final onVerifyClicked()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->otpCode:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->emailVerificationReason:Ljw2;

    sget-object v2, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->verifyAddEmail(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->verifySignIn(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final showOtpError()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;->vibrateError()V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter$e;-><init>(Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

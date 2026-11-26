.class public final Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lg06$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;",
        ">;",
        "Lg06$a;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$a;

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

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->Companion:Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$a;

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

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->phone:Ljava/lang/String;

    iput-object p2, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->flowRouter:Luf3;

    iput-object p3, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->signUpConfirmInteractor:Lmx7;

    iput-object p4, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->signInRetryUseCase:Lgx7;

    iput-object p5, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->analyticsRepository:Lqe;

    return-void
.end method

.method public static final synthetic access$getFlowRouter$p(Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->flowRouter:Luf3;

    return-object p0
.end method

.method public static final synthetic access$sendUserRegistered(Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->sendUserRegistered()V

    return-void
.end method

.method private final sendUserRegistered()V
    .locals 1

    sget-object v0, Lkd$a$k$a;->e:Lkd$a$k$a;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->analyticsRepository:Lqe;

    invoke-interface {p0}, Lqe;->f()V

    return-void
.end method

.method private final startTimer()V
    .locals 4

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$e;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpg8;-><init>(ILe02;)V

    new-instance v1, Ltb7;

    invoke-direct {v1, v0}, Ltb7;-><init>(Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$f;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$f;-><init>(Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;Le02;)V

    new-instance v3, Lce3;

    invoke-direct {v3, v1, v0}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$g;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$g;-><init>(Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, v3, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$h;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$h;-><init>(Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;Le02;)V

    new-instance v2, Lbe3;

    invoke-direct {v2, v1, v0}, Lbe3;-><init>(Lhd3;Ldm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method


# virtual methods
.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onCallAgainAgainClicked()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->startTimer()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;->showSendAgainButton(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->signInRetryUseCase:Lgx7;

    sget-object v1, Ldw1;->CALL:Ldw1;

    invoke-virtual {v0, v1}, Lgx7;->a(Ldw1;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$b;-><init>(Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;

    if-eqz v0, :cond_0

    sget-object v1, Lo76;->a:Lg17;

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->phone:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lo76;->a:Lg17;

    const-string v3, "$1 $2 $3 $4 $5"

    invoke-virtual {v2, v3, v1}, Lg17;->g(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;->setPhoneTyped(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->startTimer()V

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

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->signUpConfirmInteractor:Lmx7;

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->phone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llx7;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Llx7;-><init>(Lmx7;Ljava/lang/String;Ljava/lang/String;Le02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$c;

    invoke-direct {v0, p0, v3}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$c;-><init>(Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onTrySmsVerificationClicked()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->flowRouter:Luf3;

    new-instance v1, Lmx;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->phone:Ljava/lang/String;

    invoke-direct {v1, p0}, Lmx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo87;->h(Ldf7;)V

    return-void
.end method

.method public final showOtpError()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;->vibrateError()V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter$d;-><init>(Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

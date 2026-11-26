.class public final Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;",
        ">;"
    }
.end annotation


# instance fields
.field private final callPhone:Ljava/lang/String;

.field private final email:Ljava/lang/String;

.field private final flowRouter:Luf3;

.field private final observeCallVerifiedUseCase:Lgs5;

.field private final phone:Ljava/lang/String;

.field private pollingJob:Lmb4;

.field private final signInConfirmInteractor:Lcx7;

.field private final signInRetryUseCase:Lgx7;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Luf3;Lgx7;Lcx7;Lgs5;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->phone:Ljava/lang/String;

    iput-object p2, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->callPhone:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->email:Ljava/lang/String;

    iput-object p4, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->flowRouter:Luf3;

    iput-object p5, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->signInRetryUseCase:Lgx7;

    iput-object p6, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->signInConfirmInteractor:Lcx7;

    iput-object p7, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->observeCallVerifiedUseCase:Lgs5;

    return-void
.end method

.method public static final synthetic access$getEmail$p(Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->email:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getFlowRouter$p(Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->flowRouter:Luf3;

    return-object p0
.end method

.method public static final synthetic access$getPhone$p(Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->phone:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSignInConfirmInteractor$p(Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;)Lcx7;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->signInConfirmInteractor:Lcx7;

    return-object p0
.end method


# virtual methods
.method public final getPollingJob()Lmb4;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->pollingJob:Lmb4;

    return-object p0
.end method

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onCallClicked()V
    .locals 11

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;->showLoadingButton(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->callPhone:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;->openPhoneCallApp(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->pollingJob:Lmb4;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    new-instance v9, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$b;

    invoke-direct {v9, p0, v2}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$b;-><init>(Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;Le02;)V

    sget-object v0, Lwt2;->c:Lwt2$a;

    const/16 v0, 0xa

    sget-object v3, Lau2;->SECONDS:Lau2;

    invoke-static {v0, v3}, Lyt2;->e(ILau2;)J

    move-result-wide v7

    const/4 v0, 0x5

    sget-object v3, Lau2;->MINUTES:Lau2;

    invoke-static {v0, v3}, Lyt2;->e(ILau2;)J

    move-result-wide v4

    new-instance v6, Ldg3;

    invoke-direct {v6, v1, v2}, Lpg8;-><init>(ILe02;)V

    new-instance v3, Lcg3;

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcg3;-><init>(JLdg3;JLcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$b;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v3}, Ltb7;-><init>(Lbm3;)V

    iget-object v3, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->observeCallVerifiedUseCase:Lgs5;

    iget-object v4, v3, Lgs5;->a:Lka7;

    invoke-interface {v4}, Lka7;->c()Lfy6;

    move-result-object v4

    new-instance v5, Lfs5;

    invoke-direct {v5, v3, v2}, Lfs5;-><init>(Lgs5;Le02;)V

    new-instance v3, Lce3;

    invoke-direct {v3, v4, v5}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v4, Lds5;

    invoke-direct {v4, v3}, Lds5;-><init>(Lce3;)V

    new-instance v3, Les5;

    invoke-direct {v3, v4}, Les5;-><init>(Lds5;)V

    const/4 v4, 0x2

    new-array v4, v4, [Lhd3;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v3, v4, v1

    sget v0, Lse3;->a:I

    new-instance v0, Lsr;

    invoke-direct {v0, v4}, Lsr;-><init>([Ljava/lang/Object;)V

    new-instance v1, Lm91;

    const/4 v3, -0x2

    sget-object v4, Lcu0;->SUSPEND:Lcu0;

    sget-object v5, Lgx2;->b:Lgx2;

    invoke-direct {v1, v0, v5, v3, v4}, Lm91;-><init>(Ljava/lang/Iterable;Lo22;ILcu0;)V

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$a;

    invoke-direct {v0, v1, p0}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$a;-><init>(Lm91;Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;)V

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$c;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$c;-><init>(Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->pollingJob:Lmb4;

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 11

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    sget-object v3, Lo76;->a:Lg17;

    iget-object v3, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->phone:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x9

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "+"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "** *** "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    sget-object v4, Lo76;->a:Lg17;

    iget-object v4, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->callPhone:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lo76;->a:Lg17;

    const-string v6, "$1 ($2) $3 $4 $5"

    invoke-virtual {v5, v6, v4}, Lg17;->g(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;->setDescription(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->email:Ljava/lang/String;

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    invoke-interface {v0, v1}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;->showEmailMethod(Z)V

    :cond_5
    return-void
.end method

.method public final onTryEmailClicked()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->email:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;->showLoadingButton(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->pollingJob:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->signInRetryUseCase:Lgx7;

    sget-object v2, Ldw1;->EMAIL:Ldw1;

    invoke-virtual {v0, v2}, Lgx7;->a(Ldw1;)Lde3;

    move-result-object v0

    new-instance v2, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$d;

    invoke-direct {v2, p0, v1}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$d;-><init>(Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, v0, v2}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    :cond_2
    return-void
.end method

.method public final setPollingJob(Lmb4;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->pollingJob:Lmb4;

    return-void
.end method

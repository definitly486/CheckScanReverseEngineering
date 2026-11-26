.class public abstract Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;",
        ">",
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final BUTTON_EVENT_REFRESH_TIMEOUT:J

.field private static final BUTTON_EVENT_TIMEOUT:J

.field private static final Companion:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$a;


# instance fields
.field private final balanceInteractor:Lb40;

.field private buttonEventJob:Lmb4;

.field private final claimTaskRewardUseCase:Lmk1;

.field private final emailValidator:Liw2;

.field private eventAfterAlert:Lwi9;

.field private final preferencesRepository:Ljf6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->Companion:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$a;

    sget-object v0, Lwt2;->c:Lwt2$a;

    sget-object v0, Lau2;->SECONDS:Lau2;

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lyt2;->e(ILau2;)J

    move-result-wide v1

    sput-wide v1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->BUTTON_EVENT_TIMEOUT:J

    const/16 v1, 0xf

    invoke-static {v1, v0}, Lyt2;->e(ILau2;)J

    move-result-wide v0

    sput-wide v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->BUTTON_EVENT_REFRESH_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Lb40;Ljf6;Lmk1;Liw2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->balanceInteractor:Lb40;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->preferencesRepository:Ljf6;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->claimTaskRewardUseCase:Lmk1;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->emailValidator:Liw2;

    return-void
.end method

.method public static final synthetic access$getBUTTON_EVENT_REFRESH_TIMEOUT$cp()J
    .locals 2

    sget-wide v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->BUTTON_EVENT_REFRESH_TIMEOUT:J

    return-wide v0
.end method

.method public static final synthetic access$getBUTTON_EVENT_TIMEOUT$cp()J
    .locals 2

    sget-wide v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->BUTTON_EVENT_TIMEOUT:J

    return-wide v0
.end method

.method public static final synthetic access$getBalanceInteractor$p(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;)Lb40;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->balanceInteractor:Lb40;

    return-object p0
.end method

.method public static final synthetic access$handleClaimResult(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;ILkk1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->handleClaimResult(ILkk1;)V

    return-void
.end method

.method public static final synthetic access$refreshAfterButtonEvent(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;Lwi9;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->refreshAfterButtonEvent(Lwi9;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final handleClaimResult(ILkk1;)V
    .locals 1

    instance-of v0, p2, Lno8;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;

    if-eqz p0, :cond_1

    check-cast p2, Lno8;

    invoke-interface {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->showTaskSuccess(ILno8;)V

    return-void

    :cond_0
    instance-of p1, p2, Lhn8;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;

    if-eqz p0, :cond_1

    check-cast p2, Lhn8;

    invoke-interface {p0, p2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->showTaskError(Lhn8;)V

    :cond_1
    return-void
.end method

.method private final hasEmail()Z
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->emailValidator:Liw2;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->preferencesRepository:Ljf6;

    invoke-interface {p0}, Ljf6;->c0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Liw2;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final onTransferCardClicked(Lwi9;J)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->balanceInteractor:Lb40;

    iget-object v0, v0, Lb40;->a:Ln60;

    invoke-interface {v0, p2, p3}, Ln60;->k(J)Lde3;

    move-result-object p2

    new-instance p3, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, v0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;Lwi9;Le02;)V

    new-instance p1, Ldf3;

    invoke-direct {p1, p2, p3}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance p2, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$d;

    invoke-direct {p2, p0, v0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;Le02;)V

    new-instance p3, Lbe3;

    invoke-direct {p3, p1, p2}, Lbe3;-><init>(Lhd3;Ldm3;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$e;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;)V

    const-string p2, "onTransferClick"

    invoke-static {p3, p2, p1}, Lm13;->b(Lhd3;Ljava/lang/String;Lnl3;)Lde3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public static synthetic onWithdrawEventHandled$suspendImpl(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;Lwi9;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;",
            ">(",
            "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter<",
            "TV;>;",
            "Lwi9;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final refreshAfterButtonEvent(Lwi9;Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwi9;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-wide v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->BUTTON_EVENT_REFRESH_TIMEOUT:J

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$g;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$g;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;Lwi9;Le02;)V

    invoke-static {v0, v1}, Lyk2;->d(J)J

    move-result-wide p0

    invoke-static {p0, p1, v2, p2}, Lyv8;->c(JLbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final sendButtonEvent(Lwi9;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->balanceInteractor:Lb40;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lb40;->a:Ln60;

    invoke-interface {v0, p2}, Ln60;->b(Ljava/lang/String;)Ltb7;

    move-result-object p2

    sget-wide v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->BUTTON_EVENT_TIMEOUT:J

    new-instance v2, Lxd3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p2, v3}, Lxd3;-><init>(JLhd3;Le02;)V

    new-instance p2, Lmd3;

    invoke-direct {p2, v2}, Lmd3;-><init>(Ldm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$h;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v3}, Lpg8;-><init>(ILe02;)V

    new-instance v1, Lde3;

    invoke-direct {v1, p2, v0}, Lde3;-><init>(Lhd3;Ldm3;)V

    new-instance p2, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$i;

    invoke-direct {p2, p0, v3}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$i;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;Le02;)V

    new-instance v0, Lce3;

    invoke-direct {v0, v1, p2}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance p2, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$j;

    invoke-direct {p2, p0, p1, v3}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$j;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;Lwi9;Le02;)V

    new-instance p1, Ldf3;

    invoke-direct {p1, v0, p2}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance p2, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$k;

    invoke-direct {p2, p0, v3}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$k;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;Le02;)V

    new-instance v0, Lbe3;

    invoke-direct {v0, p1, p2}, Lbe3;-><init>(Lhd3;Ldm3;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$l;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$l;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;)V

    const-string p2, "sendButtonEvent"

    invoke-static {v0, p2, p1}, Lm13;->b(Lhd3;Ljava/lang/String;Lnl3;)Lde3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->buttonEventJob:Lmb4;

    return-void
.end method

.method private final sendsButtonEvent(Lwi9;)Z
    .locals 2

    instance-of v0, p1, Lwi9$j;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lwi9$i;

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    instance-of v0, p1, Lwi9$k;

    if-eqz v0, :cond_2

    check-cast p1, Lwi9$k;

    iget-object p1, p1, Lwi9$k;->b:Lwi9;

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->sendsButtonEvent(Lwi9;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final handleFinalCardAlertResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->eventAfterAlert:Lwi9;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->onWithdrawEvent(Lwi9;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->eventAfterAlert:Lwi9;

    :cond_0
    return-void
.end method

.method public abstract onAddEmailClicked()V
.end method

.method public final onClaimRewardClicked(I)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->claimTaskRewardUseCase:Lmk1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llk1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Llk1;-><init>(Lmk1;ILe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$b;

    invoke-direct {v1, p0, p1, v2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;ILe02;)V

    new-instance p1, Ldf3;

    invoke-direct {p1, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    const-string v0, "onClaimRewardClicked"

    const/4 v1, 0x2

    invoke-static {p1, v0, v2, v1}, Lm13;->c(Lhd3;Ljava/lang/String;Lnl3;I)Lde3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onWithdrawEvent(Lwi9;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->sendsButtonEvent(Lwi9;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->buttonEventJob:Lmb4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmb4;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lwi9$f;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;

    if-eqz p0, :cond_f

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of v0, p1, Lwi9$e;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;

    if-eqz p0, :cond_f

    check-cast p1, Lwi9$e;

    iget-object p1, p1, Lwi9$e;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->openCustomTab(Ljava/lang/String;)V

    return-void

    :cond_2
    instance-of v0, p1, Lwi9$d;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;

    if-eqz p0, :cond_f

    check-cast p1, Lwi9$d;

    iget-object p1, p1, Lwi9$d;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->showBankPageDialog(Ljava/lang/String;)V

    return-void

    :cond_3
    instance-of v0, p1, Lwi9$m;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;

    if-eqz p0, :cond_f

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->startTransferToBankCard(J)V

    return-void

    :cond_4
    instance-of v0, p1, Lwi9$g;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->hasEmail()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;

    if-eqz p0, :cond_f

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->startTransferToPhone()V

    return-void

    :cond_5
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;

    if-eqz p0, :cond_f

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->showAddEmailDialog()V

    return-void

    :cond_6
    instance-of v0, p1, Lwi9$h;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;

    if-eqz p0, :cond_f

    check-cast p1, Lwi9$h;

    iget-object p1, p1, Lwi9$h;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->startTransferSBP(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;

    if-eqz p0, :cond_f

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->showAddEmailDialog()V

    return-void

    :cond_8
    instance-of v0, p1, Lwi9$j;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lwi9$j;

    iget-object v0, v0, Lwi9$j;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->sendButtonEvent(Lwi9;Ljava/lang/String;)V

    return-void

    :cond_9
    instance-of v0, p1, Lwi9$i;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;

    if-eqz v0, :cond_a

    move-object v1, p1

    check-cast v1, Lwi9$i;

    iget-object v1, v1, Lwi9$i;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_a
    move-object v0, p1

    check-cast v0, Lwi9$i;

    iget-object v0, v0, Lwi9$i;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->sendButtonEvent(Lwi9;Ljava/lang/String;)V

    return-void

    :cond_b
    instance-of v0, p1, Lwi9$l;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;

    if-eqz v0, :cond_f

    check-cast p1, Lwi9$l;

    iget-object p1, p1, Lwi9$l;->a:Ljava/util/List;

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter$f;

    const-string v6, "onWithdrawEvent(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/listener/WithdrawEvent;)V"

    const/4 v7, 0x0

    const/4 v2, 0x1

    const-class v4, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;

    const-string v5, "onWithdrawEvent"

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, p1, v1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->showWithdrawalCards(Ljava/util/List;Lnl3;)V

    return-void

    :cond_c
    move-object v3, p0

    instance-of p0, p1, Lwi9$c;

    if-eqz p0, :cond_d

    move-object p0, p1

    check-cast p0, Lwi9$c;

    iget-wide v0, p0, Lwi9$c;->a:J

    invoke-direct {v3, p1, v0, v1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->onTransferCardClicked(Lwi9;J)V

    return-void

    :cond_d
    instance-of p0, p1, Lwi9$a;

    if-eqz p0, :cond_e

    check-cast p1, Lwi9$a;

    iget p0, p1, Lwi9$a;->a:I

    invoke-virtual {v3, p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->onClaimRewardClicked(I)V

    return-void

    :cond_e
    instance-of p0, p1, Lwi9$k;

    if-eqz p0, :cond_10

    check-cast p1, Lwi9$k;

    iget-object p0, p1, Lwi9$k;->b:Lwi9;

    iput-object p0, v3, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->eventAfterAlert:Lwi9;

    invoke-virtual {v3}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;

    if-eqz p0, :cond_f

    iget-object p1, p1, Lwi9$k;->a:Lec;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->showAlertBeforeWithdrawAction(Lec;)V

    :cond_f
    :goto_0
    return-void

    :cond_10
    sget-object p0, Lwi9$b;->a:Lwi9$b;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public onWithdrawEventHandled(Lwi9;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwi9;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->onWithdrawEventHandled$suspendImpl(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;Lwi9;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingView;",
        ">;"
    }
.end annotation


# instance fields
.field private final bankId:I

.field private final fetchBankLandingInfoUseCase:Lt63;

.field private final flowRouter:Luf3;

.field private final sendBankCardPageEventUseCase:Llo7;

.field private final state:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Li57<",
            "Lna0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt63;Luf3;ILlo7;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;->fetchBankLandingInfoUseCase:Lt63;

    iput-object p2, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;->flowRouter:Luf3;

    iput p3, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;->bankId:I

    iput-object p4, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;->sendBankCardPageEventUseCase:Llo7;

    sget-object p1, Li57$b;->a:Li57$b;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;->state:Lxg5;

    return-void
.end method

.method public static final synthetic access$getBankId$p(Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;)I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;->bankId:I

    return p0
.end method

.method public static final synthetic access$getSendBankCardPageEventUseCase$p(Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;)Llo7;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;->sendBankCardPageEventUseCase:Llo7;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;->state:Lxg5;

    return-object p0
.end method


# virtual methods
.method public final fetchInfo()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;->fetchBankLandingInfoUseCase:Lt63;

    iget v1, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;->bankId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ls63;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Ls63;-><init>(Lt63;ILe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter$a;

    invoke-direct {v1, p0, v3}, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter$a;-><init>(Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;->state:Lxg5;

    new-instance v1, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter$b;-><init>(Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    invoke-virtual {p0}, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;->fetchInfo()V

    return-void
.end method

.method public final onIssueCardClicked(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter$c;-><init>(Lcom/warefly/checkscan/bankLanding/presentation/bank/presenter/BankLandingPresenter;Le02;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

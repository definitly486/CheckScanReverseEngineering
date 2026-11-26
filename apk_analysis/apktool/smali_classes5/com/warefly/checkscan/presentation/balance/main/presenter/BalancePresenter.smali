.class public final Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;
.super Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;
.source "SourceFile"

# interfaces
.implements Lg30;
.implements Lb10;
.implements Lq70;
.implements Lp10;
.implements Lg20;
.implements Lf70;
.implements Lq20;
.implements Ll60;
.implements Ld60;
.implements Ls10;
.implements Ln30$a;
.implements Lyi9$a;
.implements Lxj9$a;
.implements Lz60$a;
.implements Ly00$a;
.implements Lo10$c;
.implements Lp70$d;
.implements Lrj9;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter<",
        "Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;",
        ">;",
        "Lg30;",
        "Lb10;",
        "Lq70;",
        "Lp10;",
        "Lg20;",
        "Lf70;",
        "Lq20;",
        "Ll60;",
        "Ld60;",
        "Ls10;",
        "Ln30$a;",
        "Lyi9$a;",
        "Lxj9$a;",
        "Lz60$a;",
        "Ly00$a;",
        "Lo10$c;",
        "Lp70$d;",
        "Lrj9;"
    }
.end annotation


# instance fields
.field private final desktopInteractor:Lzl2;

.field private final flowRouter:Luf3;

.field private final interactor:Lb40;

.field private final isOpenAlfa:Z

.field private final onboardingCardSlidesInteractor:Luw5;

.field private final sendBannerWatchUseCase:Lmo7;


# direct methods
.method public constructor <init>(Lb40;Luw5;Lmo7;Lzl2;Luf3;Ljf6;Lmk1;Liw2;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p6, p7, p8}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;-><init>(Lb40;Ljf6;Lmk1;Liw2;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->interactor:Lb40;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->onboardingCardSlidesInteractor:Luw5;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->sendBannerWatchUseCase:Lmo7;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->desktopInteractor:Lzl2;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->flowRouter:Luf3;

    iput-boolean p9, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->isOpenAlfa:Z

    return-void
.end method

.method public static final synthetic access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->flowRouter:Luf3;

    return-object p0
.end method

.method public static final synthetic access$getInteractor$p(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)Lb40;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->interactor:Lb40;

    return-object p0
.end method

.method public static final synthetic access$getPresenterScope(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)Ly22;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object p0

    return-object p0
.end method

.method private final newAlternativeTransfer()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->interactor:Lb40;

    iget-object v0, v0, Lb40;->a:Ln60;

    invoke-interface {v0}, Ln60;->i()Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$h;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    new-instance v3, Ldf3;

    invoke-direct {v3, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$i;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$i;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    new-instance v1, Lbe3;

    invoke-direct {v1, v3, v0}, Lbe3;-><init>(Lhd3;Ldm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$j;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$j;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    const-string v2, "onTransferClicked"

    invoke-static {v1, v2, v0}, Lm13;->b(Lhd3;Ljava/lang/String;Lnl3;)Lde3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method private final oldAlfaTransfer()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->interactor:Lb40;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lc40;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lc40;-><init>(Lb40;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v1}, Ltb7;-><init>(Lbm3;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$k;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$k;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    new-instance v3, Lce3;

    invoke-direct {v3, v0, v1}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$l;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$l;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, v3, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$m;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$m;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    new-instance v2, Lbe3;

    invoke-direct {v2, v1, v0}, Lbe3;-><init>(Lhd3;Ldm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$n;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$n;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    const-string v1, "onTransferClick"

    invoke-static {v2, v1, v0}, Lm13;->b(Lhd3;Ljava/lang/String;Lnl3;)Lde3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method


# virtual methods
.method public fetchAlfaIdLink()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->interactor:Lb40;

    iget-object v1, v0, Lb40;->a:Ln60;

    invoke-interface {v1}, Ln60;->fetchAlfaIdLink()Ltb7;

    move-result-object v1

    new-instance v2, Ld40;

    invoke-direct {v2, v1, v0}, Ld40;-><init>(Lhd3;Lb40;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    new-instance v3, Lce3;

    invoke-direct {v3, v2, v0}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$b;

    invoke-direct {v0, p0, v1}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$b;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v3, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$c;

    invoke-direct {v0, p0, v1}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$c;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    new-instance v1, Lbe3;

    invoke-direct {v1, v2, v0}, Lbe3;-><init>(Lhd3;Ldm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$d;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$d;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    const-string v2, "fetchAlfaIdLink"

    invoke-static {v1, v2, v0}, Lm13;->b(Lhd3;Ljava/lang/String;Lnl3;)Lde3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public handleCardWithdrawEvent(J)V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->startTransferToBankCard(J)V

    :cond_0
    return-void
.end method

.method public handleCommonWithdrawEvent(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleErrorAlfaIdLink(La40;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->showInfoDialog(La40;)V

    :cond_0
    return-void
.end method

.method public handlePhoneWithdrawEvent()V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->startTransferToPhone()V

    :cond_0
    return-void
.end method

.method public handleSuccessAlfaIdLink(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleVerificationEvent(Lu37;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->interactor:Lb40;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lb40;->a:Ln60;

    invoke-interface {v0, p1, p2, p3}, Ln60;->p(Lu37;Ljava/lang/String;Ljava/lang/String;)Ltb7;

    move-result-object p1

    new-instance p2, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$e;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$e;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    new-instance v0, Lce3;

    invoke-direct {v0, p1, p2}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$f;

    invoke-direct {p1, p3, p0, p4}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$f;-><init>(Le02;Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Z)V

    new-instance p2, Ldf3;

    invoke-direct {p2, v0, p1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$g;

    invoke-direct {p1, p0, p3}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$g;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    new-instance p4, Lbe3;

    invoke-direct {p4, p2, p1}, Lbe3;-><init>(Lhd3;Ldm3;)V

    const-string p1, "sendAlfaVerificationButtonEvent"

    const/4 p2, 0x2

    invoke-static {p4, p1, p3, p2}, Lm13;->c(Lhd3;Ljava/lang/String;Lnl3;I)Lde3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onAccrualClick()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->interactor:Lb40;

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$o;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$o;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lb40;->f:Lz68;

    invoke-virtual {p0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ll30;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    check-cast v0, Ll30;

    iget-object p0, v0, Ll30;->f:Lw00;

    if-eqz p0, :cond_2

    invoke-virtual {v1, p0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$o;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public onAddEmailClicked()V
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->flowRouter:Luf3;

    new-instance v0, Lix;

    sget-object v1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$AddEmail;->b:Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$AddEmail;

    invoke-direct {v0, v1}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onBackClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onBannerClick(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onButtonClick(Lo10;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lo10;->a(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    return-void
.end method

.method public onButtonClickByStateVerification(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCompactBannerClick(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onExpandChange()V
    .locals 7

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->interactor:Lb40;

    iget-object v0, p0, Lb40;->f:Lz68;

    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lp20;

    if-eqz v4, :cond_0

    check-cast v3, Lp20;

    iget-boolean v2, v3, Lp20;->b:Z

    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpz3;

    invoke-interface {v5}, Lpz3;->id()Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x7f

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-static {v5, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_1
    iget-object p0, p0, Lb40;->b:Ls47;

    if-nez v2, :cond_3

    const v3, 0x7f1400a0

    goto :goto_2

    :cond_3
    const v3, 0x7f1400a1

    :goto_2
    invoke-interface {p0, v3}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez v2, :cond_4

    const v3, 0x7f0801b4

    goto :goto_3

    :cond_4
    const v3, 0x7f0801a3

    :goto_3
    xor-int/lit8 v2, v2, 0x1

    new-instance v5, Lp20;

    invoke-direct {v5, v3, p0, v2}, Lp20;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_5
    const-string p0, "Collection contains no element matching the predicate."

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 5

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->interactor:Lb40;

    iget-object v1, v0, Lb40;->f:Lz68;

    :cond_0
    invoke-virtual {v1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v3, v0, Lb40;->e:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lb40;->g:Lz68;

    :cond_1
    invoke-virtual {v2}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lb40$d;

    sget-object v3, Lb40$d;->c:Lb40$d;

    invoke-virtual {v2, v1, v3}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lb40;->h:Lz68;

    :cond_2
    invoke-virtual {v1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    sget-object v2, Lkx2;->b:Lkx2;

    invoke-virtual {v1, v0, v2}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$p;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->desktopInteractor:Lzl2;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v1

    new-instance v3, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$q;

    invoke-direct {v3, p0, v2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$q;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    invoke-virtual {v0, v1, v3}, Lzl2;->c(Ly22;Lbm3;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->interactor:Lb40;

    iget-object v0, v0, Lb40;->f:Lz68;

    new-instance v1, Lw40;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lpg8;-><init>(ILe02;)V

    invoke-static {v0, v1}, Lse3;->a(Lhd3;Lbm3;)Lj91;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$r;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$r;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    new-instance v4, Ldf3;

    invoke-direct {v4, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$s;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$s;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    const/4 v1, 0x1

    invoke-static {v4, v2, v0, v1}, Lm13;->c(Lhd3;Ljava/lang/String;Lnl3;I)Lde3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->onboardingCardSlidesInteractor:Luw5;

    iget-object v1, v0, Luw5;->a:Low5;

    invoke-interface {v1}, Low5;->b()Ltb7;

    move-result-object v1

    new-instance v4, Ltw5;

    invoke-direct {v4, v0, v2}, Ltw5;-><init>(Luw5;Le02;)V

    invoke-static {v1, v4}, Lse3;->a(Lhd3;Lbm3;)Lj91;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$t;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$t;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    new-instance v4, Ldf3;

    invoke-direct {v4, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    const-string v0, "fetchSlides"

    invoke-static {v4, v0, v2, v3}, Lm13;->c(Lhd3;Ljava/lang/String;Lnl3;I)Lde3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->isOpenAlfa:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->onManagementClick()V

    :cond_3
    return-void
.end method

.method public onHidableBannerClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onHideHidableBanner(I)V
    .locals 6

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->interactor:Lb40;

    iget-object v0, p0, Lb40;->d:Lkz1;

    new-instance v1, Lt40;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lt40;-><init>(ILb40;Le02;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    iget-object p0, p0, Lb40;->f:Lz68;

    :cond_0
    invoke-virtual {p0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lpz3;

    instance-of v5, v4, Lr30;

    if-eqz v5, :cond_2

    check-cast v4, Lr30;

    iget v4, v4, Lr30;->a:I

    if-eq v4, p1, :cond_1

    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, v2}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onManagementClick()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->interactor:Lb40;

    iget-object v0, v0, Lb40;->a:Ln60;

    invoke-interface {v0}, Ln60;->r()Ltb7;

    move-result-object v0

    new-instance v1, Lh40;

    invoke-direct {v1, v0}, Lh40;-><init>(Lhd3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$u;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$u;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    new-instance v3, Lce3;

    invoke-direct {v3, v1, v0}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$v;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$v;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, v3, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$w;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$w;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Le02;)V

    new-instance v2, Lbe3;

    invoke-direct {v2, v1, v0}, Lbe3;-><init>(Lhd3;Ldm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$x;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$x;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    const-string v1, "onManagementClick"

    invoke-static {v2, v1, v0}, Lm13;->b(Lhd3;Ljava/lang/String;Lnl3;)Lde3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onPromoBannerClicked(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$m$a$a;

    invoke-direct {v0, p1}, Lkd$m$a$a;-><init>(I)V

    invoke-virtual {v0}, Lkd;->c()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPromoBannerHideClicked(I)V
    .locals 3

    new-instance v0, Lkd$m$a$b;

    invoke-direct {v0, p1}, Lkd$m$a$b;-><init>(I)V

    invoke-virtual {v0}, Lkd;->c()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$y;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;ILe02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public onPromoBannerOrdClicked(Lb06;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;->showOrdDialog(Lb06;)V

    :cond_0
    return-void
.end method

.method public onPromotionItemClick(Ljava/lang/String;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->interactor:Lb40;

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$z;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$z;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lb40;->f:Lz68;

    invoke-virtual {p0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lpz3;

    invoke-interface {v4}, Lpz3;->id()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    instance-of p0, v2, Lz30;

    if-eqz p0, :cond_2

    check-cast v2, Lz30;

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v6, v2, Lz30;->d:Ljava/lang/String;

    invoke-static {v6}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    iget-object v5, v2, Lz30;->b:Ljava/lang/String;

    iget-object v7, v2, Lz30;->a:Ljava/lang/String;

    new-instance v8, La40$a;

    iget-object p0, v0, Lb40;->b:Ls47;

    const p1, 0x7f1400a2

    invoke-interface {p0, p1}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v8, p0, v3}, La40$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, La40;

    const/4 v10, 0x0

    const/16 v11, 0x30

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, La40;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La40$a;La40$a;Ljava/lang/Integer;I)V

    invoke-virtual {v1, v4}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$z;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method public onSubscriptionBannerClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onSupportClick()V
    .locals 2

    new-instance v0, Lkd$a$h$d;

    invoke-direct {v0}, Lkd$a$h$d;-><init>()V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->flowRouter:Luf3;

    new-instance v0, Ltf8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltf8;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onTitleWithButtonClick()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->flowRouter:Luf3;

    new-instance v0, Lnh7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onTransferClick()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->interactor:Lb40;

    invoke-virtual {v0}, Lb40;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->newAlternativeTransfer()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->oldAlfaTransfer()V

    return-void
.end method

.method public onWithdrawClick(Lp70;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lp70;->a(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    return-void
.end method

.method public onWithdrawClicked(Lwi9;Lpw7;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->onWithdrawEvent(Lwi9;)V

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

    instance-of p1, p1, Lwi9$a;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->interactor:Lb40;

    const/4 p1, 0x3

    invoke-static {p1, p0, p2}, Lb40;->d(ILb40;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public onWithdrawalMoreMethodsClicked()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->flowRouter:Luf3;

    sget-object v0, Lqi7;->a:Lqi7;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onWithdrawalTransferButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->interactor:Lb40;

    invoke-virtual {v0}, Lb40;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->newAlternativeTransfer()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->oldAlfaTransfer()V

    return-void
.end method

.method public final refreshBlocks(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter$a0;-><init>(Le02;Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;Z)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public final sendPromoBannerShown(I)V
    .locals 1

    new-instance v0, Lkd$m$a$c;

    invoke-direct {v0, p1}, Lkd$m$a$c;-><init>(I)V

    invoke-virtual {v0}, Lkd;->c()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->sendBannerWatchUseCase:Lmo7;

    invoke-virtual {p0, p1}, Lmo7;->a(I)V

    return-void
.end method

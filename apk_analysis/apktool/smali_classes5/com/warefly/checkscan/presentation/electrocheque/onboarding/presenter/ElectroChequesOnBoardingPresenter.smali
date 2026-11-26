.class public final Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;",
        ">;"
    }
.end annotation


# instance fields
.field private final flowRouter:Luf3;

.field private final onboardingRepository:Lvv2;

.field private final preferencesRepository:Ljf6;


# direct methods
.method public constructor <init>(Luf3;Ljf6;Lvv2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;->preferencesRepository:Ljf6;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;->onboardingRepository:Lvv2;

    return-void
.end method

.method private final loadInstructions()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;->onboardingRepository:Lvv2;

    invoke-interface {p0}, Lvv2;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;->showInstructions(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private final loadQuestions()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;->onboardingRepository:Lvv2;

    invoke-interface {p0}, Lvv2;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;->showQuestions(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final checkButtonState()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;->preferencesRepository:Ljf6;

    invoke-interface {p0}, Ljf6;->f1()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingView;->enableRegisteredButton(Z)V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onConnectClicked()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->f1()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkd$a$e$b;

    const-string v1, "Registered_main_button"

    invoke-direct {v0, v1}, Lkd$a$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void

    :cond_0
    new-instance v0, Lkd$a$e$c;

    const-string v1, "Unregistered_main_button"

    invoke-direct {v0, v1}, Lkd$a$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;->flowRouter:Luf3;

    const/4 v0, 0x1

    new-array v0, v0, [Llk3;

    sget-object v1, Lpi7;->a:Lpi7;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Luf3;->j([Llk3;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 1

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;->checkButtonState()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;->loadInstructions()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;->loadQuestions()V

    new-instance p0, Lkd$a$e$a;

    const-string v0, "Open"

    invoke-direct {p0, v0}, Lkd$a$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkd;->a()V

    return-void
.end method

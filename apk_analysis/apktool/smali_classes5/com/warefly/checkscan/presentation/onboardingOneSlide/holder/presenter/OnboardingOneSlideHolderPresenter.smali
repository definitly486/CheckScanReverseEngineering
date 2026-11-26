.class public final Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/view/OnboardingOneSlideHolderView;",
        ">;"
    }
.end annotation


# instance fields
.field private final flowRouter:Luf3;

.field private final onboardingOneSlideInteractor:Lbx5;

.field private final preferencesRepository:Ljf6;


# direct methods
.method public constructor <init>(Lbx5;Ljf6;Luf3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;->onboardingOneSlideInteractor:Lbx5;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;->preferencesRepository:Ljf6;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;->flowRouter:Luf3;

    return-void
.end method

.method public static final synthetic access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;->flowRouter:Luf3;

    return-object p0
.end method

.method public static final synthetic access$getOnboardingOneSlideInteractor$p(Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;)Lbx5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;->onboardingOneSlideInteractor:Lbx5;

    return-object p0
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;->setUpScreen()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;->preferencesRepository:Ljf6;

    invoke-interface {p0}, Ljf6;->V0()V

    return-void
.end method

.method public final setUpScreen()V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;Le02;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v3, v2, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

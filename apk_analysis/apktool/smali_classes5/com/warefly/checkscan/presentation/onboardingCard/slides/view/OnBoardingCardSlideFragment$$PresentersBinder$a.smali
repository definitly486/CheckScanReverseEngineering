.class public final Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;

    check-cast p2, Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;->presenter:Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;->providePresenter()Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;

    move-result-object p0

    return-object p0
.end method

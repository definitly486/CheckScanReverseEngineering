.class public final Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnboardingCardSlideView;",
        ">;"
    }
.end annotation


# instance fields
.field private final onboardingCardSlidesInteractor:Luw5;

.field private final slideId:J


# direct methods
.method public constructor <init>(JLuw5;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-wide p1, p0, Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;->slideId:J

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;->onboardingCardSlidesInteractor:Luw5;

    return-void
.end method

.method public static final synthetic access$getSlideId$p(Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;)J
    .locals 2

    iget-wide v0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;->slideId:J

    return-wide v0
.end method


# virtual methods
.method public final onButtonActionClick(La41;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;->onboardingCardSlidesInteractor:Luw5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luw5;->b:Lzs7;

    invoke-virtual {p0, p1}, Lzs7;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    sget-object v0, Lkd$x$a$c;->e:Lkd$x$a$c;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;->onboardingCardSlidesInteractor:Luw5;

    iget-object v0, v0, Luw5;->c:Lz68;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter$a;

    invoke-direct {v1, v0, p0}, Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter$a;-><init>(Lgy6;Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter$b;-><init>(Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

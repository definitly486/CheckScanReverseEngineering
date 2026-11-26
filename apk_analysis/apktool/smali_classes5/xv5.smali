.class public final Lxv5;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public final synthetic i:Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;)V
    .locals 0

    iput-object p1, p0, Lxv5;->i:Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 0

    iget-object p0, p0, Lxv5;->i:Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;->presenter:Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->onSlideSelected(I)V

    return-void

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

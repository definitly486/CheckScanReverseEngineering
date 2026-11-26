.class public final Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment$c;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment;->setUpSlides(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic i:Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment$c;->i:Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment$c;->i:Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment;->o()Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/presenter/OnboardingOneSlidePresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/presenter/OnboardingOneSlidePresenter;->onImageSlideSelected(I)V

    return-void
.end method

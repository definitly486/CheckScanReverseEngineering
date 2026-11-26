.class public final Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView;"
    }
.end annotation


# static fields
.field public static final synthetic i:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final f:I

.field public final g:Lol4;

.field public h:Luv5;

.field public presenter:Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;->i:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00d1

    iput v0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;->i:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;->btnLeft:Landroid/widget/ImageView;

    new-instance v0, Lvv5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvv5;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;->btnRight:Landroid/widget/ImageView;

    new-instance v0, Lwv5;

    invoke-direct {v0, p0, v1}, Lwv5;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;->btnRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;->vpCards:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Luv5;

    invoke-direct {v0, p0}, Luv5;-><init>(Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;->h:Luv5;

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;->vpCards:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lxv5;

    invoke-direct {v0, p0}, Lxv5;-><init>(Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;)V

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;->dotsIndicator:Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;->vpCards:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->b(Landroidx/viewpager2/widget/ViewPager2;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Luw5;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luw5;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v2

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v4, Luf3;

    invoke-static {v4, p0, v2, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    invoke-direct {v0, v1, p0}, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;-><init>(Luw5;Luf3;)V

    return-object v0
.end method

.method public final setLeftButtonVisible(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;->btnLeft:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setSelectedSlide(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlidesBinding;->vpCards:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method

.method public final showFragments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnBoardingCardSlidesFragment;->h:Luv5;

    if-eqz p0, :cond_0

    iget-object v0, p0, Luv5;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

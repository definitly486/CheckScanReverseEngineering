.class public final Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashView;"
    }
.end annotation


# static fields
.field public static final synthetic h:[Lze4;
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

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;->h:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00ab

    iput v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;->f:I

    return p0
.end method

.method public final initProgressBarSlider(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb28;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;->n()Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;->pbSlides:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;->presenter:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;

    const/4 v1, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->i:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;

    iget-object p0, v0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;

    invoke-virtual {v3}, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->d:I

    iget v4, v0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->e:I

    mul-int v5, v2, v4

    sub-int/2addr v3, v5

    div-int/2addr v3, v2

    if-lt v3, v4, :cond_1

    div-int/lit8 v2, v3, 0x2

    if-ge v2, v4, :cond_2

    :cond_1
    div-int/lit8 v4, v3, 0x2

    :cond_2
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->f:Landroid/widget/LinearLayout$LayoutParams;

    :goto_1
    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb28;

    iget v5, v4, Lb28;->a:I

    iget-wide v6, v4, Lb28;->b:J

    new-instance v8, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v8, v9, v5, v6, v7}, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;-><init>(Landroid/content/Context;IJ)V

    iget-object v5, v0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->b:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->i:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;

    invoke-virtual {v8, v5}, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->setEndAnimationListener(Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$b;)V

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget v4, v4, Lb28;->a:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    new-instance v4, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    iget-boolean p1, v0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->h:Z

    if-eqz p1, :cond_a

    iget p1, v0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->g:I

    const/4 v2, -0x1

    if-ne p1, v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_8

    check-cast v4, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;

    if-ge v3, p1, :cond_7

    invoke-virtual {v4}, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->setMax()V

    :cond_7
    move v3, v5

    goto :goto_3

    :cond_8
    invoke-static {}, Lu96;->o()V

    throw v1

    :cond_9
    iput-boolean v2, v0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->h:Z

    :cond_a
    :goto_4
    return-void

    :cond_b
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v1
.end method

.method public final n()Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;->h:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;->n()Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;->n()Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;->vp:Landroidx/viewpager2/widget/ViewPager2;

    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;->h:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lb36;

    const-string v5, "page"

    invoke-direct {v4, v5, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4}, [Lb36;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ler0;

    invoke-direct {v0, p2, p0}, Ler0;-><init>(Ljava/util/ArrayList;Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;->n()Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;->vp:Landroidx/viewpager2/widget/ViewPager2;

    new-instance p2, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment$a;

    invoke-direct {p2, p0}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Luf3;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v2, Lvw5;

    invoke-static {v2, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvw5;

    invoke-direct {v0, v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;-><init>(Luf3;Lvw5;)V

    return-object v0
.end method

.method public final setPage(I)V
    .locals 14

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;->n()Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;->vp:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashFragment;->n()Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;->pbSlides:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;

    iput p1, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->g:I

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v2

    invoke-virtual {v2, p1}, Ly74;->c(I)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    if-ltz v0, :cond_5

    check-cast v2, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;

    iget v4, p0, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;->g:I

    if-ge v0, v4, :cond_0

    invoke-virtual {v2}, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->setMax()V

    goto :goto_3

    :cond_0
    if-le v0, v4, :cond_1

    invoke-virtual {v2}, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->setMin()V

    goto :goto_3

    :cond_1
    iget-object v0, v2, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->f:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$a;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v5, v2, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->g:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$a;

    iget-wide v6, v2, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->d:J

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, v2, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->g:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$a;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_1
    iget-object v0, v2, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->g:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$a;

    if-eqz v0, :cond_3

    new-instance v4, Lcom/warefly/checkscan/core/ui/slides/a;

    invoke-direct {v4, v2}, Lcom/warefly/checkscan/core/ui/slides/a;-><init>(Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_3
    iget-object v0, v2, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->g:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$a;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    :goto_2
    iget-object v0, v2, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->e:Landroid/view/View;

    iget-object v2, v2, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar;->g:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressBar$a;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_3
    move v0, v3

    goto :goto_0

    :cond_5
    invoke-static {}, Lu96;->o()V

    const/4 p0, 0x0

    throw p0

    :cond_6
    return-void
.end method

.class public final Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bannerBarrier:Landroidx/constraintlayout/widget/Barrier;

.field public final btnBack:Landroid/widget/ImageView;

.field public final btnPrimary:Landroid/widget/TextView;

.field public final btnSecondary:Landroid/widget/TextView;

.field public final dotsIndicator:Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;

.field public final incldConfetti:Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;

.field public final ivBanner:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final spacerButtons:Landroid/widget/Space;

.field public final tvDescription:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final vpBankSlider:Landroidx/viewpager2/widget/ViewPager2;

.field public final vpBankSliderIndicator:Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;Landroid/widget/ImageView;Landroid/widget/Space;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/viewpager2/widget/ViewPager2;Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->bannerBarrier:Landroidx/constraintlayout/widget/Barrier;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->btnBack:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->btnPrimary:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->btnSecondary:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->dotsIndicator:Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->incldConfetti:Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->ivBanner:Landroid/widget/ImageView;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->spacerButtons:Landroid/widget/Space;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->tvDescription:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->tvTitle:Landroid/widget/TextView;

    iput-object p12, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->vpBankSlider:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p13, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->vpBankSliderIndicator:Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f0a00c2

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0107

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0187

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a019b

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a024b

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;

    if-eqz v9, :cond_0

    const v1, 0x7f0a031a

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;

    move-result-object v10

    const v1, 0x7f0a0358

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a0631

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/Space;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0719

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0814

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0881

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0882

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;

    if-eqz v16, :cond_0

    new-instance v3, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v16}, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;Landroid/widget/ImageView;Landroid/widget/Space;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/viewpager2/widget/ViewPager2;Lcom/warefly/checkscan/ui/dotindicator/DotsIndicator;)V

    return-object v3

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;
    .locals 2

    const v0, 0x7f0d00d3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingOneSlideBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

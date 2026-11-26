.class public final Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivClose:Landroid/widget/ImageView;

.field public final pbSlides:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final vp:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;->ivClose:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;->pbSlides:Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;

    iput-object p4, p0, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;->vp:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;
    .locals 4

    const v0, 0x7f0a0371

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const v0, 0x7f0a0556

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;

    if-eqz v2, :cond_0

    const v0, 0x7f0a0880

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v3, :cond_0

    new-instance v0, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/warefly/checkscan/core/ui/slides/SlidesProgressView;Landroidx/viewpager2/widget/ViewPager2;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;
    .locals 2

    const v0, 0x7f0d00ab

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentBonusesHowGetCashBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method

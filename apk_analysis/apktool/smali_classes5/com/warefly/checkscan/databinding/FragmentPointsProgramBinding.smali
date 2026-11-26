.class public final Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnWithdraw:Landroid/widget/TextView;

.field public final fragmentContainerViewOperations:Landroidx/fragment/app/FragmentContainerView;

.field public final groupHeader:Landroidx/constraintlayout/widget/Group;

.field public final pbUpdateBalance:Landroidx/core/widget/ContentLoadingProgressBar;

.field public final pinnedToolbar:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final termsHeading:Lcom/warefly/checkscan/databinding/LayoutTermsHeadingBinding;

.field public final viewDescription:Lcom/warefly/checkscan/databinding/LayoutDescriptionBinding;

.field public final viewHeading:Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;

.field public final viewLoading:Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;

.field public final viewLoadingFailed:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

.field public final viewRewards:Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;

.field public final viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/TextView;Landroidx/fragment/app/FragmentContainerView;Landroidx/constraintlayout/widget/Group;Landroidx/core/widget/ContentLoadingProgressBar;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/warefly/checkscan/databinding/LayoutTermsHeadingBinding;Lcom/warefly/checkscan/databinding/LayoutDescriptionBinding;Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->btnWithdraw:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->fragmentContainerViewOperations:Landroidx/fragment/app/FragmentContainerView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->groupHeader:Landroidx/constraintlayout/widget/Group;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->pbUpdateBalance:Landroidx/core/widget/ContentLoadingProgressBar;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->pinnedToolbar:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->termsHeading:Lcom/warefly/checkscan/databinding/LayoutTermsHeadingBinding;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewDescription:Lcom/warefly/checkscan/databinding/LayoutDescriptionBinding;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewHeading:Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewLoading:Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewLoadingFailed:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    iput-object p12, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewRewards:Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;

    iput-object p13, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f0a01be

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a02aa

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a02ce

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/Group;

    if-eqz v7, :cond_0

    const v1, 0x7f0a0558

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/core/widget/ContentLoadingProgressBar;

    if-eqz v8, :cond_0

    const v1, 0x7f0a0562

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f0a0670

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/databinding/LayoutTermsHeadingBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutTermsHeadingBinding;

    move-result-object v10

    const v1, 0x7f0a0853

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/databinding/LayoutDescriptionBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutDescriptionBinding;

    move-result-object v11

    const v1, 0x7f0a085e

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;

    move-result-object v12

    const v1, 0x7f0a0862

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;

    move-result-object v13

    const v1, 0x7f0a0863

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    move-result-object v14

    const v1, 0x7f0a0869

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;

    move-result-object v15

    const v1, 0x7f0a0873

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    move-result-object v16

    new-instance v3, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    move-object v4, v0

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct/range {v3 .. v16}, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/TextView;Landroidx/fragment/app/FragmentContainerView;Landroidx/constraintlayout/widget/Group;Landroidx/core/widget/ContentLoadingProgressBar;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/warefly/checkscan/databinding/LayoutTermsHeadingBinding;Lcom/warefly/checkscan/databinding/LayoutDescriptionBinding;Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;
    .locals 2

    const v0, 0x7f0d00df

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p0
.end method

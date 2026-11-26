.class public final Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field public final btnBack:Landroid/widget/ImageView;

.field public final btnIssueCard:Landroid/widget/TextView;

.field public final coordLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

.field public final ivLoading:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

.field public final layoutButtonIssueCard:Landroid/widget/FrameLayout;

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final rvContent:Landroidx/recyclerview/widget/RecyclerView;

.field public final toolbarBanner:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/warefly/checkscan/core/ui/SafeImageView;Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->appbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->btnBack:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->btnIssueCard:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->coordLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->ivLoading:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->layoutButtonIssueCard:Landroid/widget/FrameLayout;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->toolbarBanner:Lcom/google/android/material/appbar/AppBarLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;
    .locals 13

    const v0, 0x7f0a00a1

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0107

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0162

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    move-object v3, p0

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v0, 0x7f0a0358

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/warefly/checkscan/core/ui/SafeImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0393

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0a03ec

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f0a05c3

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a06a8

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v12, :cond_0

    new-instance v2, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;

    move-object v7, v3

    invoke-direct/range {v2 .. v12}, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/warefly/checkscan/core/ui/SafeImageView;Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/appbar/AppBarLayout;)V

    return-object v2

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;
    .locals 2

    const v0, 0x7f0d00b0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p0
.end method

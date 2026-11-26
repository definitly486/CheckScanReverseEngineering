.class public final Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field public final btnBack:Landroid/widget/ImageView;

.field public final btnScan:Landroid/widget/LinearLayout;

.field public final coordLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

.field public final incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

.field public final ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

.field public final ivLoading:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

.field public final layoutButtonScan:Lcom/google/android/material/card/MaterialCardView;

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final rvContent:Landroidx/recyclerview/widget/RecyclerView;

.field public final toolbarBanner:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;Lcom/warefly/checkscan/core/ui/SafeImageView;Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Lcom/google/android/material/card/MaterialCardView;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->appbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object p3, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->btnBack:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->btnScan:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->coordLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p6, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iput-object p7, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

    iput-object p8, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

    iput-object p9, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->ivLoading:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    iput-object p10, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->layoutButtonScan:Lcom/google/android/material/card/MaterialCardView;

    iput-object p11, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p12, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->toolbarBanner:Lcom/google/android/material/appbar/AppBarLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;
    .locals 15

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

    const v0, 0x7f0a0196

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    move-object v3, p0

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v0, 0x7f0a031d

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    move-result-object v8

    const v0, 0x7f0a0324

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

    move-result-object v9

    const v0, 0x7f0a0358

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/warefly/checkscan/core/ui/SafeImageView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0393

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    if-eqz v11, :cond_0

    const v0, 0x7f0a03ed

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a05c3

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_0

    const v0, 0x7f0a06a8

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v14, :cond_0

    new-instance v2, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;

    move-object v7, v3

    invoke-direct/range {v2 .. v14}, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;Lcom/warefly/checkscan/core/ui/SafeImageView;Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Lcom/google/android/material/card/MaterialCardView;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/appbar/AppBarLayout;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;
    .locals 2

    const v0, 0x7f0d00e0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentProductBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p0
.end method

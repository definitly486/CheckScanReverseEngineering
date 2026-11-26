.class public final Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field public final btnBack:Landroid/widget/ImageView;

.field public final btnGetReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

.field public final coordLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final incldConfetti:Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;

.field public final ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

.field public final ivLoading:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

.field public final layoutButtonGetReward:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvContent:Landroidx/recyclerview/widget/RecyclerView;

.field public final toolbarBanner:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroid/widget/ImageView;Lcom/warefly/checkscan/core/ui/LoadingButton;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;Lcom/warefly/checkscan/core/ui/SafeImageView;Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->appbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object p3, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->btnBack:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->btnGetReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iput-object p5, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->coordLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p6, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->incldConfetti:Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;

    iput-object p7, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

    iput-object p8, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->ivLoading:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    iput-object p9, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->layoutButtonGetReward:Landroid/widget/LinearLayout;

    iput-object p10, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p11, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->toolbarBanner:Lcom/google/android/material/appbar/AppBarLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;
    .locals 14

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

    const v0, 0x7f0a0153

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/warefly/checkscan/core/ui/LoadingButton;

    if-eqz v6, :cond_0

    const v0, 0x7f0a021a

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a031a

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;

    move-result-object v8

    const v0, 0x7f0a0358

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/warefly/checkscan/core/ui/SafeImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0393

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f0a03eb

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    const v0, 0x7f0a05c3

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a06a8

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v13, :cond_0

    new-instance v2, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v13}, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroid/widget/ImageView;Lcom/warefly/checkscan/core/ui/LoadingButton;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;Lcom/warefly/checkscan/core/ui/SafeImageView;Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/appbar/AppBarLayout;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;
    .locals 2

    const v0, 0x7f0d00c0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentDailyTasksBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

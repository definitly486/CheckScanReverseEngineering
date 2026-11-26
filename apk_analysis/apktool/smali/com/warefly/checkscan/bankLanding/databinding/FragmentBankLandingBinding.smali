.class public final Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field public final btnBack:Landroid/widget/ImageView;

.field public final btnIssueCard:Landroid/widget/TextView;

.field public final coordLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

.field public final incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

.field public final ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

.field public final mcvIssueCard:Lcom/google/android/material/card/MaterialCardView;

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final rvContent:Landroidx/recyclerview/widget/RecyclerView;

.field public final toolbarBanner:Lcom/google/android/material/appbar/AppBarLayout;

.field public final tvSubtitle:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;Lcom/warefly/checkscan/core/ui/SafeImageView;Lcom/google/android/material/card/MaterialCardView;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->appbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object p3, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->btnBack:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->btnIssueCard:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->coordLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p6, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iput-object p7, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

    iput-object p8, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

    iput-object p9, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->mcvIssueCard:Lcom/google/android/material/card/MaterialCardView;

    iput-object p10, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p11, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->toolbarBanner:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p12, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->tvSubtitle:Landroid/widget/TextView;

    iput-object p13, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f0a00a1

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0107

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0162

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    move-object v4, v0

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f0a031d

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    move-result-object v9

    const v1, 0x7f0a0324

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

    move-result-object v10

    const v1, 0x7f0a0358

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/warefly/checkscan/core/ui/SafeImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a0465

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a05c3

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a06a8

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0a07f9

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0814

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    new-instance v3, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;

    move-object v8, v4

    invoke-direct/range {v3 .. v16}, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;Lcom/warefly/checkscan/core/ui/SafeImageView;Lcom/google/android/material/card/MaterialCardView;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;
    .locals 2

    const v0, 0x7f0d00a9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/bankLanding/databinding/FragmentBankLandingBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p0
.end method

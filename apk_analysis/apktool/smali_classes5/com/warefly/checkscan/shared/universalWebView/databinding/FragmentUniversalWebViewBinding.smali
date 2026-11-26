.class public final Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flFullScreenContainer:Landroid/widget/FrameLayout;

.field public final flWebViewContainer:Landroid/widget/FrameLayout;

.field public final incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

.field public final incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

.field public final pbPageProgress:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final srlContent:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public final toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutAppbarTitleBinding;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;Landroid/widget/ProgressBar;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lcom/warefly/checkscan/core/ui/databinding/LayoutAppbarTitleBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->flFullScreenContainer:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->flWebViewContainer:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iput-object p5, p0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

    iput-object p6, p0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->pbPageProgress:Landroid/widget/ProgressBar;

    iput-object p7, p0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->srlContent:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p8, p0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutAppbarTitleBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;
    .locals 11

    const v0, 0x7f0a02a0

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a02a1

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a031d

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    move-result-object v6

    const v0, 0x7f0a0324

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

    move-result-object v7

    const v0, 0x7f0a0554

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ProgressBar;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0641

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0a06a6

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAppbarTitleBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutAppbarTitleBinding;

    move-result-object v10

    new-instance v2, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v10}, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;Landroid/widget/ProgressBar;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lcom/warefly/checkscan/core/ui/databinding/LayoutAppbarTitleBinding;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;
    .locals 2

    const v0, 0x7f0d00ff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.class public final Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final incldError:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

.field public final incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvContent:Landroidx/recyclerview/widget/RecyclerView;

.field public final toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleTransparentBinding;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;Landroidx/recyclerview/widget/RecyclerView;Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleTransparentBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;->incldError:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleTransparentBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;
    .locals 8

    const v0, 0x7f0a031d

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    move-result-object v4

    const v0, 0x7f0a0324

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

    move-result-object v5

    const v0, 0x7f0a05c3

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a06a6

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleTransparentBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleTransparentBinding;

    move-result-object v7

    new-instance v2, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v7}, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;Landroidx/recyclerview/widget/RecyclerView;Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitleTransparentBinding;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;
    .locals 2

    const v0, 0x7f0d00f2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentSelectPromocodeBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

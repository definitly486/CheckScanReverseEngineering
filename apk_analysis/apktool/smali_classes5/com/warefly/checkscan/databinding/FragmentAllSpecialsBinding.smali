.class public final Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnChooseRegion:Landroid/widget/TextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvSpecials:Landroidx/recyclerview/widget/RecyclerView;

.field public final viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

.field public final viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

.field public final viewTryAgain:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;->btnChooseRegion:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;->rvSpecials:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;->viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;->viewTryAgain:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;
    .locals 9

    const v0, 0x7f0a0122

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a05df

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0862

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    move-result-object v6

    const v0, 0x7f0a0873

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    move-result-object v7

    const v0, 0x7f0a087b

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    move-result-object v8

    new-instance v2, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v8}, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;
    .locals 2

    const v0, 0x7f0d00a6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

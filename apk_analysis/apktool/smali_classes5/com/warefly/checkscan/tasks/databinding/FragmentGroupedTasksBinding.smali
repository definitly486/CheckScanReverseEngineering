.class public final Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final incldTryAgain:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvContent:Landroidx/recyclerview/widget/RecyclerView;

.field public final toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;Landroidx/recyclerview/widget/RecyclerView;Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;->incldTryAgain:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iput-object p3, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;
    .locals 4

    const v0, 0x7f0a032d

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    move-result-object v0

    const v1, 0x7f0a05c3

    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    const v1, 0x7f0a06a6

    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;

    move-result-object v1

    new-instance v3, Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;Landroidx/recyclerview/widget/RecyclerView;Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;)V

    return-object v3

    :cond_0
    move v0, v1

    :cond_1
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;
    .locals 2

    const v0, 0x7f0d00c6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/tasks/databinding/FragmentGroupedTasksBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

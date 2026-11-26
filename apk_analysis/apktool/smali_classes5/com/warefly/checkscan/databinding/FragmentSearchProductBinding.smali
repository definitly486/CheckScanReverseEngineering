.class public final Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final noPlacesNearbyView:Lcom/warefly/checkscan/databinding/NoPlacesNearbyLayoutBinding;

.field public final noProductsNearView:Lcom/warefly/checkscan/databinding/NoProductsNearFoundLayoutBinding;

.field public final pbLoading:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final rvPlaces:Landroidx/recyclerview/widget/RecyclerView;

.field public final rvProducts:Landroidx/recyclerview/widget/RecyclerView;

.field public final searchProductPlacesNearbyView:Landroid/widget/LinearLayout;

.field public final toolbarSearch:Lcom/warefly/checkscan/databinding/ToolbarSearchBinding;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/warefly/checkscan/databinding/NoPlacesNearbyLayoutBinding;Lcom/warefly/checkscan/databinding/NoProductsNearFoundLayoutBinding;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Lcom/warefly/checkscan/databinding/ToolbarSearchBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;->rootView:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;->noPlacesNearbyView:Lcom/warefly/checkscan/databinding/NoPlacesNearbyLayoutBinding;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;->noProductsNearView:Lcom/warefly/checkscan/databinding/NoProductsNearFoundLayoutBinding;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;->pbLoading:Landroid/widget/ProgressBar;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;->rvPlaces:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;->rvProducts:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;->searchProductPlacesNearbyView:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;->toolbarSearch:Lcom/warefly/checkscan/databinding/ToolbarSearchBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;
    .locals 11

    const v0, 0x7f0a0518

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/NoPlacesNearbyLayoutBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/NoPlacesNearbyLayoutBinding;

    move-result-object v4

    const v0, 0x7f0a0519

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/NoProductsNearFoundLayoutBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/NoProductsNearFoundLayoutBinding;

    move-result-object v5

    const v0, 0x7f0a0550

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ProgressBar;

    if-eqz v6, :cond_0

    const v0, 0x7f0a05d5

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a05d6

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0601

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0a06ad

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/ToolbarSearchBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ToolbarSearchBinding;

    move-result-object v10

    new-instance v2, Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v10}, Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;-><init>(Landroid/widget/LinearLayout;Lcom/warefly/checkscan/databinding/NoPlacesNearbyLayoutBinding;Lcom/warefly/checkscan/databinding/NoProductsNearFoundLayoutBinding;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Lcom/warefly/checkscan/databinding/ToolbarSearchBinding;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;
    .locals 2

    const v0, 0x7f0d00f1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentSearchProductBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method

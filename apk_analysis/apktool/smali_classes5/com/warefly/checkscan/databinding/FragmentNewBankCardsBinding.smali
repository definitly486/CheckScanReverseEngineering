.class public final Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivNoData:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final rvCards:Landroidx/recyclerview/widget/RecyclerView;

.field public final toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

.field public final tvDescription:Landroid/widget/TextView;

.field public final tvNoData:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->rootView:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->ivNoData:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->rvCards:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->tvDescription:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->tvNoData:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->tvTitle:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;
    .locals 11

    const v0, 0x7f0a039f

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a05ba

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a06a6

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

    move-result-object v6

    const v0, 0x7f0a0719

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0783

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0814

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0862

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    move-result-object v10

    new-instance v2, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v10}, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;
    .locals 2

    const v0, 0x7f0d00cc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.class public final Lcom/warefly/checkscan/databinding/RequisitesLoadingPlaceholderBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final placeholderCardNumber:Landroid/view/View;

.field public final placeholderCvv:Landroid/view/View;

.field public final placeholderDate:Landroid/view/View;

.field private final rootView:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;


# direct methods
.method private constructor <init>(Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/RequisitesLoadingPlaceholderBinding;->rootView:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/RequisitesLoadingPlaceholderBinding;->placeholderCardNumber:Landroid/view/View;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/RequisitesLoadingPlaceholderBinding;->placeholderCvv:Landroid/view/View;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/RequisitesLoadingPlaceholderBinding;->placeholderDate:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/RequisitesLoadingPlaceholderBinding;
    .locals 4

    const v0, 0x7f0a056e

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v0, 0x7f0a056f

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const v0, 0x7f0a0570

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/warefly/checkscan/databinding/RequisitesLoadingPlaceholderBinding;

    check-cast p0, Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/warefly/checkscan/databinding/RequisitesLoadingPlaceholderBinding;-><init>(Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-object v0

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/RequisitesLoadingPlaceholderBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/RequisitesLoadingPlaceholderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/RequisitesLoadingPlaceholderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/RequisitesLoadingPlaceholderBinding;
    .locals 2

    const v0, 0x7f0d0337

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/RequisitesLoadingPlaceholderBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/RequisitesLoadingPlaceholderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/RequisitesLoadingPlaceholderBinding;->getRoot()Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/RequisitesLoadingPlaceholderBinding;->rootView:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    return-object p0
.end method

.class public final Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final shimmerFirst:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

.field public final shimmerHeader:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

.field public final shimmerSecond:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

.field public final shimmerThird:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;->shimmerFirst:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;->shimmerHeader:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;->shimmerSecond:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;->shimmerThird:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;
    .locals 8

    const v0, 0x7f0a060f

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0610

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0611

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0612

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    if-eqz v7, :cond_0

    new-instance v2, Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v7}, Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;
    .locals 2

    const v0, 0x7f0d0196

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

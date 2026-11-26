.class public final Lcom/warefly/checkscan/databinding/LoadingBonusesSectionBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

.field public final skeletonLayout:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

.field public final viewSkeleton:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/LoadingBonusesSectionBinding;->rootView:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/LoadingBonusesSectionBinding;->skeletonLayout:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/LoadingBonusesSectionBinding;->viewSkeleton:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LoadingBonusesSectionBinding;
    .locals 3

    move-object v0, p0

    check-cast v0, Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    const v1, 0x7f0a086f

    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance p0, Lcom/warefly/checkscan/databinding/LoadingBonusesSectionBinding;

    invoke-direct {p0, v0, v0, v2}, Lcom/warefly/checkscan/databinding/LoadingBonusesSectionBinding;-><init>(Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Landroid/view/View;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/LoadingBonusesSectionBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/LoadingBonusesSectionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/LoadingBonusesSectionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/LoadingBonusesSectionBinding;
    .locals 2

    const v0, 0x7f0d02af

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/LoadingBonusesSectionBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LoadingBonusesSectionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LoadingBonusesSectionBinding;->getRoot()Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LoadingBonusesSectionBinding;->rootView:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    return-object p0
.end method

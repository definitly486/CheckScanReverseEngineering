.class public final Lcom/warefly/checkscan/core/ui/databinding/ItemRvPlaceholderDelegateBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final placeholder:Landroid/widget/FrameLayout;

.field private final rootView:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;


# direct methods
.method private constructor <init>(Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/core/ui/databinding/ItemRvPlaceholderDelegateBinding;->rootView:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/core/ui/databinding/ItemRvPlaceholderDelegateBinding;->placeholder:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/ItemRvPlaceholderDelegateBinding;
    .locals 2

    const v0, 0x7f0a0565

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/warefly/checkscan/core/ui/databinding/ItemRvPlaceholderDelegateBinding;

    check-cast p0, Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    invoke-direct {v0, p0, v1}, Lcom/warefly/checkscan/core/ui/databinding/ItemRvPlaceholderDelegateBinding;-><init>(Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Landroid/widget/FrameLayout;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/core/ui/databinding/ItemRvPlaceholderDelegateBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/core/ui/databinding/ItemRvPlaceholderDelegateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/core/ui/databinding/ItemRvPlaceholderDelegateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/core/ui/databinding/ItemRvPlaceholderDelegateBinding;
    .locals 2

    const v0, 0x7f0d01f8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/core/ui/databinding/ItemRvPlaceholderDelegateBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/ItemRvPlaceholderDelegateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/databinding/ItemRvPlaceholderDelegateBinding;->getRoot()Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/ItemRvPlaceholderDelegateBinding;->rootView:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    return-object p0
.end method

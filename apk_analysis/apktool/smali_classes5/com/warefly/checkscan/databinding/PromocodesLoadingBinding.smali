.class public final Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

.field public final viewFifthPromocode:Landroid/view/View;

.field public final viewFirstPromocode:Landroid/view/View;

.field public final viewForthPromocode:Landroid/view/View;

.field public final viewSecondPromocode:Landroid/view/View;

.field public final viewSixthPromocode:Landroid/view/View;

.field public final viewThirdPromocode:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;->rootView:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;->viewFifthPromocode:Landroid/view/View;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;->viewFirstPromocode:Landroid/view/View;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;->viewForthPromocode:Landroid/view/View;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;->viewSecondPromocode:Landroid/view/View;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;->viewSixthPromocode:Landroid/view/View;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;->viewThirdPromocode:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;
    .locals 9

    const v0, 0x7f0a0859

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const v0, 0x7f0a085a

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    const v0, 0x7f0a085b

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    const v0, 0x7f0a086a

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    const v0, 0x7f0a086e

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    const v0, 0x7f0a0871

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v1, Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;

    move-object v2, p0

    check-cast v2, Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    invoke-direct/range {v1 .. v8}, Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;-><init>(Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-object v1

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;
    .locals 2

    const v0, 0x7f0d0330

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;->getRoot()Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/PromocodesLoadingBinding;->rootView:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    return-object p0
.end method

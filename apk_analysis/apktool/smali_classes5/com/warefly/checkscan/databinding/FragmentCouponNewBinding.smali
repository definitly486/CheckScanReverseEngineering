.class public final Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final allBlocks:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final btnGoShop:Lcom/warefly/checkscan/core/ui/LoadingButton;

.field public final layoutDescription:Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;

.field public final layoutGetCashbackInfo:Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;

.field public final layoutPopularProducts:Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;

.field public final layoutTitle:Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;

.field public final nestedScroll:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final viewLoading:Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;

.field public final viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/warefly/checkscan/core/ui/LoadingButton;Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;Landroidx/core/widget/NestedScrollView;Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->allBlocks:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->btnGoShop:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutDescription:Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutGetCashbackInfo:Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutPopularProducts:Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->nestedScroll:Landroidx/core/widget/NestedScrollView;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->viewLoading:Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;
    .locals 13

    const v0, 0x7f0a0095

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0157

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/warefly/checkscan/core/ui/LoadingButton;

    if-eqz v5, :cond_0

    const v0, 0x7f0a03f7

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;

    move-result-object v6

    const v0, 0x7f0a03fb

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;

    move-result-object v7

    const v0, 0x7f0a0409

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;

    move-result-object v8

    const v0, 0x7f0a0418

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;

    move-result-object v9

    const v0, 0x7f0a0510

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/core/widget/NestedScrollView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0862

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;

    move-result-object v11

    const v0, 0x7f0a0873

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    move-result-object v12

    new-instance v2, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-direct/range {v2 .. v12}, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;-><init>(Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/warefly/checkscan/core/ui/LoadingButton;Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;Landroidx/core/widget/NestedScrollView;Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;
    .locals 2

    const v0, 0x7f0d00bd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method

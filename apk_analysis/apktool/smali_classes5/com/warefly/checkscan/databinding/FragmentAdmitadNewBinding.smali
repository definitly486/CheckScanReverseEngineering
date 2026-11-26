.class public final Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final allBlocks:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final btnGoShop:Landroid/widget/TextView;

.field public final layoutDescription:Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;

.field public final layoutGetCashbackInfo:Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;

.field public final layoutOfferExpired:Lcom/warefly/checkscan/databinding/ItemAdmitadOfferTakeOffBinding;

.field public final layoutPopularProducts:Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;

.field public final layoutPromocodesCoupons:Lcom/warefly/checkscan/databinding/ItemAdmitadPromocodeCouponsBinding;

.field public final layoutTitle:Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;

.field public final nestedScroll:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final viewLoading:Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;

.field public final viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;Lcom/warefly/checkscan/databinding/ItemAdmitadOfferTakeOffBinding;Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;Lcom/warefly/checkscan/databinding/ItemAdmitadPromocodeCouponsBinding;Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;Landroidx/core/widget/NestedScrollView;Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->allBlocks:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->btnGoShop:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutDescription:Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutGetCashbackInfo:Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutOfferExpired:Lcom/warefly/checkscan/databinding/ItemAdmitadOfferTakeOffBinding;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutPopularProducts:Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutPromocodesCoupons:Lcom/warefly/checkscan/databinding/ItemAdmitadPromocodeCouponsBinding;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->nestedScroll:Landroidx/core/widget/NestedScrollView;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->viewLoading:Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;

    iput-object p12, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;
    .locals 15

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

    check-cast v5, Landroid/widget/TextView;

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

    const v0, 0x7f0a0405

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/ItemAdmitadOfferTakeOffBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemAdmitadOfferTakeOffBinding;

    move-result-object v8

    const v0, 0x7f0a0409

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;

    move-result-object v9

    const v0, 0x7f0a040d

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/ItemAdmitadPromocodeCouponsBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemAdmitadPromocodeCouponsBinding;

    move-result-object v10

    const v0, 0x7f0a0418

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;

    move-result-object v11

    const v0, 0x7f0a0510

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/core/widget/NestedScrollView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a0862

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;

    move-result-object v13

    const v0, 0x7f0a0873

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    move-result-object v14

    new-instance v2, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-direct/range {v2 .. v14}, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;-><init>(Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;Lcom/warefly/checkscan/databinding/ItemAdmitadOfferTakeOffBinding;Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;Lcom/warefly/checkscan/databinding/ItemAdmitadPromocodeCouponsBinding;Lcom/warefly/checkscan/databinding/ItemAdmitadTitleBinding;Landroidx/core/widget/NestedScrollView;Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;
    .locals 2

    const v0, 0x7f0d00a3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAdmitadNewBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.class public final Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnCopyCode:Lcom/warefly/checkscan/core/ui/LoadingButton;

.field public final divider:Landroid/widget/ImageView;

.field public final ivBanner:Landroid/widget/ImageView;

.field public final ivImageCode:Landroid/widget/ImageView;

.field public final ivQrCode:Landroid/widget/ImageView;

.field public final layoutCode:Landroid/widget/FrameLayout;

.field public final layoutPromocode:Lcom/warefly/checkscan/databinding/ItemCouponPromocodeBinding;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvDescription:Landroid/widget/TextView;

.field public final tvExpiration:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final viewBarcode:Lcom/warefly/checkscan/databinding/LayoutBarcodeBinding;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/warefly/checkscan/core/ui/LoadingButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/warefly/checkscan/databinding/ItemCouponPromocodeBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/warefly/checkscan/databinding/LayoutBarcodeBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->btnCopyCode:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->divider:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->ivBanner:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->ivImageCode:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->ivQrCode:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->layoutCode:Landroid/widget/FrameLayout;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->layoutPromocode:Lcom/warefly/checkscan/databinding/ItemCouponPromocodeBinding;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->tvDescription:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->tvExpiration:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->tvTitle:Landroid/widget/TextView;

    iput-object p12, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->viewBarcode:Lcom/warefly/checkscan/databinding/LayoutBarcodeBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;
    .locals 15

    const v0, 0x7f0a0139

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/warefly/checkscan/core/ui/LoadingButton;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0247

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0358

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a038c

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a03b9

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a03f2

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0a040c

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/ItemCouponPromocodeBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemCouponPromocodeBinding;

    move-result-object v10

    const v0, 0x7f0a0719

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0735

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a0814

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v0, 0x7f0a084d

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/LayoutBarcodeBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutBarcodeBinding;

    move-result-object v14

    new-instance v2, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v14}, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/warefly/checkscan/core/ui/LoadingButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/warefly/checkscan/databinding/ItemCouponPromocodeBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/warefly/checkscan/databinding/LayoutBarcodeBinding;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;
    .locals 2

    const v0, 0x7f0d0135

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

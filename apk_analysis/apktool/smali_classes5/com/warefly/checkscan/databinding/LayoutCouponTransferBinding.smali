.class public final Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnCouponOne:Landroid/widget/TextView;

.field public final btnCouponThree:Landroid/widget/TextView;

.field public final btnCouponTwo:Landroid/widget/TextView;

.field public final btnFullRules:Landroid/widget/TextView;

.field public final btnSpendAmount:Lcom/warefly/checkscan/core/ui/LoadingButton;

.field public final ivIcMetro:Landroid/widget/ImageView;

.field public final ivYourBalance:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvCouponOne:Landroid/widget/TextView;

.field public final tvCouponThree:Landroid/widget/TextView;

.field public final tvCouponTwo:Landroid/widget/TextView;

.field public final tvDiscountAmount:Landroid/widget/TextView;

.field public final tvPerAmount:Landroid/widget/TextView;

.field public final tvSelectDiscount:Landroid/widget/TextView;

.field public final tvWithdrawCashback:Landroid/widget/TextView;

.field public final tvYourBalance:Landroid/widget/TextView;

.field public final viewSeparator:Landroid/view/View;

.field public final viewSeparatorBalance:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/warefly/checkscan/core/ui/LoadingButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponOne:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponThree:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponTwo:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnFullRules:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnSpendAmount:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->ivIcMetro:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->ivYourBalance:Landroid/widget/ImageView;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvCouponOne:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvCouponThree:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvCouponTwo:Landroid/widget/TextView;

    iput-object p12, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvDiscountAmount:Landroid/widget/TextView;

    iput-object p13, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvPerAmount:Landroid/widget/TextView;

    iput-object p14, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvSelectDiscount:Landroid/widget/TextView;

    iput-object p15, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvWithdrawCashback:Landroid/widget/TextView;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvYourBalance:Landroid/widget/TextView;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->viewSeparator:Landroid/view/View;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->viewSeparatorBalance:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;
    .locals 22

    move-object/from16 v0, p0

    const v1, 0x7f0a013d

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a013e

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a013f

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a0151

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a01ab

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/warefly/checkscan/core/ui/LoadingButton;

    if-eqz v9, :cond_0

    const v1, 0x7f0a0387

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a03e0

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a070f

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0710

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0711

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0728

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a07a2

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a07d8

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a082c

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a0830

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0a086c

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_0

    const v1, 0x7f0a086d

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_0

    new-instance v3, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v21}, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/warefly/checkscan/core/ui/LoadingButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    return-object v3

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;
    .locals 2

    const v0, 0x7f0d0280

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

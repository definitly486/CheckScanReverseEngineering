.class public final Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBack:Landroid/widget/ImageView;

.field public final btnDelete:Landroid/widget/ImageView;

.field public final cardReceiptData:Lcom/google/android/material/card/MaterialCardView;

.field public final incldHeader:Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;

.field public final ivReceiptDataQr:Landroid/widget/ImageView;

.field public final layoutReceiptDataQrInfo:Lcom/warefly/checkscan/databinding/LayoutQrInfoBinding;

.field public final queueChequeContent:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final toolbar:Lcom/google/android/material/appbar/AppBarLayout;

.field public final toolbarTitle:Landroid/widget/TextView;

.field public final tvReceiptDataSum:Landroid/widget/TextView;

.field public final tvReceiptDataTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/card/MaterialCardView;Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;Landroid/widget/ImageView;Lcom/warefly/checkscan/databinding/LayoutQrInfoBinding;Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->btnBack:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->btnDelete:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->cardReceiptData:Lcom/google/android/material/card/MaterialCardView;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->incldHeader:Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->ivReceiptDataQr:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->layoutReceiptDataQrInfo:Lcom/warefly/checkscan/databinding/LayoutQrInfoBinding;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->queueChequeContent:Landroidx/core/widget/NestedScrollView;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->toolbar:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->toolbarTitle:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->tvReceiptDataSum:Landroid/widget/TextView;

    iput-object p12, p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->tvReceiptDataTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;
    .locals 15

    const v0, 0x7f0a0107

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0140

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a01cf

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0320

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;

    move-result-object v7

    const v0, 0x7f0a03bb

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a040f

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/LayoutQrInfoBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutQrInfoBinding;

    move-result-object v9

    const v0, 0x7f0a058f

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/core/widget/NestedScrollView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a06a6

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v11, :cond_0

    const v0, 0x7f0a06af

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a07c0

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v0, 0x7f0a07c1

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    new-instance v2, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;

    move-object v3, p0

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct/range {v2 .. v14}, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/card/MaterialCardView;Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;Landroid/widget/ImageView;Lcom/warefly/checkscan/databinding/LayoutQrInfoBinding;Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;
    .locals 2

    const v0, 0x7f0d00a0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p0
.end method

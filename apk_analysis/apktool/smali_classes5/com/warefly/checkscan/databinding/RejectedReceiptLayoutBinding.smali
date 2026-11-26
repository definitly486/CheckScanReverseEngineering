.class public final Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

.field public final groupNotCorrectFormat:Landroidx/constraintlayout/widget/Group;

.field public final ivInfo:Landroid/widget/ImageView;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;

.field public final tvDescription:Landroid/widget/TextView;

.field public final tvHeader:Landroid/widget/TextView;

.field public final tvNotCorrectFormatFirst:Landroid/widget/TextView;

.field public final tvNotCorrectFormatSecond:Landroid/widget/TextView;

.field public final tvNumFirst:Landroid/widget/TextView;

.field public final tvNumSecond:Landroid/widget/TextView;

.field public final tvReason:Landroid/widget/TextView;

.field public final viewDescriptionBackground:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Lcom/warefly/checkscan/core/ui/LoadingButton;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->groupNotCorrectFormat:Landroidx/constraintlayout/widget/Group;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->ivInfo:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvDescription:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvHeader:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvNotCorrectFormatFirst:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvNotCorrectFormatSecond:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvNumFirst:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvNumSecond:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvReason:Landroid/widget/TextView;

    iput-object p12, p0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->viewDescriptionBackground:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;
    .locals 15

    const v0, 0x7f0a00fc

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/warefly/checkscan/core/ui/LoadingButton;

    if-eqz v4, :cond_0

    const v0, 0x7f0a02d4

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/Group;

    if-eqz v5, :cond_0

    const v0, 0x7f0a038e

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0719

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a074c

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a078c

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a078d

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0793

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0794

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a07bf

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v0, 0x7f0a0854

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_0

    new-instance v2, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;

    move-object v3, p0

    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    invoke-direct/range {v2 .. v14}, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/warefly/checkscan/core/ui/LoadingButton;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;
    .locals 2

    const v0, 0x7f0d0336

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object p0
.end method

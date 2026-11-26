.class public final Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBackPhone:Landroid/widget/ImageView;

.field public final btnGiveCode:Landroid/widget/TextView;

.field public final etNumberPhone:Landroid/widget/EditText;

.field public final iAgreeReceivedElectrochequesViaLayout:Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;

.field public final pbWaitCodeElectrocheque:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final toolbar:Lcom/google/android/material/appbar/AppBarLayout;

.field public final tvInputYourPhone:Landroid/widget/TextView;

.field public final tvNumberPhone:Landroid/widget/TextView;

.field public final tvTitlePhone:Landroid/widget/TextView;

.field public final tvWhenEditNumber:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/EditText;Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;Landroid/widget/ProgressBar;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->btnBackPhone:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->btnGiveCode:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->etNumberPhone:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->iAgreeReceivedElectrochequesViaLayout:Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->pbWaitCodeElectrocheque:Landroid/widget/ProgressBar;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->toolbar:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->tvInputYourPhone:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->tvNumberPhone:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->tvTitlePhone:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->tvWhenEditNumber:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;
    .locals 14

    const v0, 0x7f0a010c

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0154

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0280

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    const v0, 0x7f0a02fa

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;

    move-result-object v7

    const v0, 0x7f0a0559

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ProgressBar;

    if-eqz v8, :cond_0

    const v0, 0x7f0a06a6

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0763

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0796

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a081c

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a082b

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    new-instance v2, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v13}, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/EditText;Lcom/warefly/checkscan/databinding/LayoutIAgreeReceivedElectrochequesViaBinding;Landroid/widget/ProgressBar;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;
    .locals 2

    const v0, 0x7f0d00dc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

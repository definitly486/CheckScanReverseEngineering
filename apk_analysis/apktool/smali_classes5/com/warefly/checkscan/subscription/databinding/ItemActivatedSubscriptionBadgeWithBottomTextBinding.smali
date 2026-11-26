.class public final Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final centerOfBadge:Landroid/view/View;

.field public final clBadgeContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ivBottomTextIcon:Landroid/widget/ImageView;

.field public final ivLogo:Landroid/widget/ImageView;

.field public final llText:Landroid/widget/LinearLayout;

.field public final mcBadge:Lcom/google/android/material/card/MaterialCardView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textContainer:Landroid/widget/LinearLayout;

.field public final tvLeftText:Landroid/widget/TextView;

.field public final tvRightText:Landroid/widget/TextView;

.field public final tvSubtitle:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;->centerOfBadge:Landroid/view/View;

    iput-object p3, p0, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;->clBadgeContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p4, p0, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;->ivBottomTextIcon:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;->ivLogo:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;->llText:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;->mcBadge:Lcom/google/android/material/card/MaterialCardView;

    iput-object p8, p0, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;->textContainer:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;->tvLeftText:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;->tvRightText:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;->tvSubtitle:Landroid/widget/TextView;

    iput-object p12, p0, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;
    .locals 14

    const v0, 0x7f0a01e6

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const v0, 0x7f0a01f9

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a035e

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0394

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0434

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a045e

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0679

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0a076b

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a07ca

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a07f9

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

    new-instance v1, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;

    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v1 .. v13}, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;
    .locals 2

    const v0, 0x7f0d010a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/subscription/databinding/ItemActivatedSubscriptionBadgeWithBottomTextBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

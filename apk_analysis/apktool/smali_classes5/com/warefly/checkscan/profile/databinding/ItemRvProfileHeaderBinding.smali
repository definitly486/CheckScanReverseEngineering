.class public final Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barrierEditData:Landroidx/constraintlayout/widget/Barrier;

.field public final btnBadgeEdit:Lcom/google/android/material/card/MaterialCardView;

.field public final btnEdit:Landroid/widget/ImageView;

.field public final incldActiveSubscriptionBadge:Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;

.field public final incldAddEmailBadge:Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;

.field public final incldExpiredSubscriptionBadge:Lcom/warefly/checkscan/profile/databinding/LayoutProfileExpiredSubscriptionBadgeBinding;

.field public final ivBadgeIcon:Landroid/widget/ImageView;

.field public final ivPhotoProfile:Landroid/widget/ImageView;

.field public final llData:Landroid/widget/LinearLayout;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;

.field public final topBarrier:Landroidx/constraintlayout/widget/Barrier;

.field public final tvBadgeTitle:Landroid/widget/TextView;

.field public final tvEmail:Landroid/widget/TextView;

.field public final tvPhone:Landroid/widget/TextView;

.field public final tvUsernameProfile:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroidx/constraintlayout/widget/Barrier;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;Lcom/warefly/checkscan/profile/databinding/LayoutProfileExpiredSubscriptionBadgeBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    iput-object p2, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->barrierEditData:Landroidx/constraintlayout/widget/Barrier;

    iput-object p3, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->btnBadgeEdit:Lcom/google/android/material/card/MaterialCardView;

    iput-object p4, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->btnEdit:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->incldActiveSubscriptionBadge:Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;

    iput-object p6, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->incldAddEmailBadge:Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;

    iput-object p7, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->incldExpiredSubscriptionBadge:Lcom/warefly/checkscan/profile/databinding/LayoutProfileExpiredSubscriptionBadgeBinding;

    iput-object p8, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->ivBadgeIcon:Landroid/widget/ImageView;

    iput-object p9, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->ivPhotoProfile:Landroid/widget/ImageView;

    iput-object p10, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->llData:Landroid/widget/LinearLayout;

    iput-object p11, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->topBarrier:Landroidx/constraintlayout/widget/Barrier;

    iput-object p12, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->tvBadgeTitle:Landroid/widget/TextView;

    iput-object p13, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->tvEmail:Landroid/widget/TextView;

    iput-object p14, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->tvPhone:Landroid/widget/TextView;

    iput-object p15, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->tvUsernameProfile:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;
    .locals 19

    move-object/from16 v0, p0

    const v1, 0x7f0a00d1

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v5, :cond_0

    const v1, 0x7f0a010f

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0144

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a0311

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;

    move-result-object v8

    const v1, 0x7f0a0314

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;

    move-result-object v9

    const v1, 0x7f0a031e

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileExpiredSubscriptionBadgeBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/profile/databinding/LayoutProfileExpiredSubscriptionBadgeBinding;

    move-result-object v10

    const v1, 0x7f0a0356

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a03a9

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a042e

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a06b4

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v14, :cond_0

    const v1, 0x7f0a06d3

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a072a

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a07a3

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a0825

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    new-instance v3, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;

    move-object v4, v0

    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    invoke-direct/range {v3 .. v18}, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroidx/constraintlayout/widget/Barrier;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Lcom/warefly/checkscan/profile/databinding/LayoutProfileActiveSubscriptionBadgeBinding;Lcom/warefly/checkscan/profile/databinding/LayoutProfileAddEmailBadgeBinding;Lcom/warefly/checkscan/profile/databinding/LayoutProfileExpiredSubscriptionBadgeBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;
    .locals 2

    const v0, 0x7f0d01fd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileHeaderBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object p0
.end method

.class public final Lcom/warefly/checkscan/profile/databinding/LayoutProfileGiftBadgeBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnEdit:Landroid/widget/ImageView;

.field public final mcvBadge:Lcom/google/android/material/card/MaterialCardView;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;

.field public final tvBadgeText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/profile/databinding/LayoutProfileGiftBadgeBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    iput-object p2, p0, Lcom/warefly/checkscan/profile/databinding/LayoutProfileGiftBadgeBinding;->btnEdit:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/warefly/checkscan/profile/databinding/LayoutProfileGiftBadgeBinding;->mcvBadge:Lcom/google/android/material/card/MaterialCardView;

    iput-object p4, p0, Lcom/warefly/checkscan/profile/databinding/LayoutProfileGiftBadgeBinding;->tvBadgeText:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/profile/databinding/LayoutProfileGiftBadgeBinding;
    .locals 4

    const v0, 0x7f0a0144

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    const v2, 0x7f0a06d2

    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    new-instance p0, Lcom/warefly/checkscan/profile/databinding/LayoutProfileGiftBadgeBinding;

    invoke-direct {p0, v0, v1, v0, v3}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileGiftBadgeBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;)V

    return-object p0

    :cond_0
    move v0, v2

    :cond_1
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/profile/databinding/LayoutProfileGiftBadgeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileGiftBadgeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/profile/databinding/LayoutProfileGiftBadgeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/profile/databinding/LayoutProfileGiftBadgeBinding;
    .locals 2

    const v0, 0x7f0d0293

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileGiftBadgeBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/profile/databinding/LayoutProfileGiftBadgeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/databinding/LayoutProfileGiftBadgeBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/profile/databinding/LayoutProfileGiftBadgeBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object p0
.end method

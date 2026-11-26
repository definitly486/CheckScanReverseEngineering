.class public final Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final banner:Lcom/google/android/material/card/MaterialCardView;

.field public final incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

.field public final ivPicture:Landroid/widget/ImageView;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;->banner:Lcom/google/android/material/card/MaterialCardView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;->ivPicture:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;
    .locals 4

    move-object v0, p0

    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    const v1, 0x7f0a0315

    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    move-result-object v1

    const v2, 0x7f0a03aa

    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    new-instance p0, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;

    invoke-direct {p0, v0, v0, v1, v3}, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;Landroid/widget/ImageView;)V

    return-object p0

    :cond_0
    move v1, v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;
    .locals 2

    const v0, 0x7f0d0272

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object p0
.end method

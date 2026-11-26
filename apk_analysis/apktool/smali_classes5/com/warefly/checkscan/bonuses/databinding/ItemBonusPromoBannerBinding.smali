.class public final Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barrier:Landroidx/constraintlayout/widget/Barrier;

.field public final btnAction:Landroid/widget/TextView;

.field public final btnHide:Landroid/widget/TextView;

.field public final incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

.field public final incldBlurClose:Lcom/warefly/checkscan/core/ui/databinding/LayoutBlurCloseBinding;

.field public final ivWideBanner:Landroidx/appcompat/widget/AppCompatImageView;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;Lcom/warefly/checkscan/core/ui/databinding/LayoutBlurCloseBinding;Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    iput-object p2, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->barrier:Landroidx/constraintlayout/widget/Barrier;

    iput-object p3, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->btnAction:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->btnHide:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    iput-object p6, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->incldBlurClose:Lcom/warefly/checkscan/core/ui/databinding/LayoutBlurCloseBinding;

    iput-object p7, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->ivWideBanner:Landroidx/appcompat/widget/AppCompatImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;
    .locals 10

    const v0, 0x7f0a00c9

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v4, :cond_0

    const v0, 0x7f0a00fc

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a015f

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0315

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    move-result-object v7

    const v0, 0x7f0a0317

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutBlurCloseBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutBlurCloseBinding;

    move-result-object v8

    const v0, 0x7f0a03de

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v9, :cond_0

    new-instance v2, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;

    move-object v3, p0

    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    invoke-direct/range {v2 .. v9}, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;Lcom/warefly/checkscan/core/ui/databinding/LayoutBlurCloseBinding;Landroidx/appcompat/widget/AppCompatImageView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;
    .locals 2

    const v0, 0x7f0d0121

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemBonusPromoBannerBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object p0
.end method

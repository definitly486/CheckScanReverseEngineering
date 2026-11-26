.class public final Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnCheckMore:Landroid/widget/TextView;

.field public final first:Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

.field public final ivLogo:Landroid/widget/ImageView;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;

.field public final second:Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

.field public final table:Landroid/widget/LinearLayout;

.field public final third:Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

.field public final tvTitle:Landroid/widget/TextView;

.field public final viewTitleBackground:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;Landroid/widget/ImageView;Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;Landroid/widget/LinearLayout;Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    iput-object p2, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->btnCheckMore:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->first:Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

    iput-object p4, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->ivLogo:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->second:Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

    iput-object p6, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->table:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->third:Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

    iput-object p8, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->tvTitle:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->viewTitleBackground:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;
    .locals 12

    const v0, 0x7f0a011e

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0298

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

    move-result-object v5

    const v0, 0x7f0a0394

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0605

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

    move-result-object v7

    const v0, 0x7f0a065d

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0686

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

    move-result-object v9

    const v0, 0x7f0a0814

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0872

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    new-instance v2, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;

    move-object v3, p0

    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    invoke-direct/range {v2 .. v11}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;Landroid/widget/ImageView;Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;Landroid/widget/LinearLayout;Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;Landroid/widget/TextView;Landroid/view/View;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;
    .locals 2

    const v0, 0x7f0d01ca

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object p0
.end method

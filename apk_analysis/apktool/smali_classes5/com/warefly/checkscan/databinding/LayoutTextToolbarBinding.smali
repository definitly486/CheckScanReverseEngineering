.class public final Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBack:Landroid/widget/ImageView;

.field public final btnFave:Landroid/widget/ImageView;

.field public final btnShare:Landroid/widget/ImageView;

.field private final rootView:Lcom/google/android/material/appbar/AppBarLayout;

.field public final tvToolbarTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->rootView:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnBack:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnFave:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnShare:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->tvToolbarTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;
    .locals 8

    const v0, 0x7f0a0107

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a014a

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a01a5

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0820

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    new-instance v2, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    move-object v3, p0

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct/range {v2 .. v7}, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;
    .locals 2

    const v0, 0x7f0d029f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->getRoot()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->rootView:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

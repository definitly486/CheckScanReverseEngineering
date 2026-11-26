.class public final Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final incldPlaceholder:Lcom/warefly/checkscan/products/databinding/ProductsPlaceholderLayoutBinding;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tlProducts:Lcom/google/android/material/tabs/TabLayout;

.field public final vpProducts:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/warefly/checkscan/products/databinding/ProductsPlaceholderLayoutBinding;Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;->incldPlaceholder:Lcom/warefly/checkscan/products/databinding/ProductsPlaceholderLayoutBinding;

    iput-object p3, p0, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;->tlProducts:Lcom/google/android/material/tabs/TabLayout;

    iput-object p4, p0, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;->vpProducts:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;
    .locals 4

    const v0, 0x7f0a0328

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/warefly/checkscan/products/databinding/ProductsPlaceholderLayoutBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/products/databinding/ProductsPlaceholderLayoutBinding;

    move-result-object v0

    const v1, 0x7f0a06a3

    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v2, :cond_0

    const v1, 0x7f0a0884

    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v3, :cond_0

    new-instance v1, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/warefly/checkscan/products/databinding/ProductsPlaceholderLayoutBinding;Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;)V

    return-object v1

    :cond_0
    move v0, v1

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;
    .locals 2

    const v0, 0x7f0d00ca

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

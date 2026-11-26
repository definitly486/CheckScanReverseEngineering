.class public final Lcom/warefly/checkscan/databinding/BonusSpecialsLoadingBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;


# direct methods
.method private constructor <init>(Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/BonusSpecialsLoadingBinding;->rootView:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/BonusSpecialsLoadingBinding;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/warefly/checkscan/databinding/BonusSpecialsLoadingBinding;

    check-cast p0, Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/databinding/BonusSpecialsLoadingBinding;-><init>(Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;)V

    return-object v0

    :cond_0
    const-string p0, "rootView"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/BonusSpecialsLoadingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/BonusSpecialsLoadingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/BonusSpecialsLoadingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/BonusSpecialsLoadingBinding;
    .locals 2

    const v0, 0x7f0d0028

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/BonusSpecialsLoadingBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/BonusSpecialsLoadingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/BonusSpecialsLoadingBinding;->getRoot()Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/BonusSpecialsLoadingBinding;->rootView:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    return-object p0
.end method

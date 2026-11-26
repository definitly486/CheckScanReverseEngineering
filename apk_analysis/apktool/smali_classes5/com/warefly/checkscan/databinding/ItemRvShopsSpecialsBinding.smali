.class public final Lcom/warefly/checkscan/databinding/ItemRvShopsSpecialsBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;

.field public final rvSpecials:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;


# direct methods
.method private constructor <init>(Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/ItemRvShopsSpecialsBinding;->rootView:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/ItemRvShopsSpecialsBinding;->rvSpecials:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemRvShopsSpecialsBinding;
    .locals 1

    if-eqz p0, :cond_0

    check-cast p0, Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;

    new-instance v0, Lcom/warefly/checkscan/databinding/ItemRvShopsSpecialsBinding;

    invoke-direct {v0, p0, p0}, Lcom/warefly/checkscan/databinding/ItemRvShopsSpecialsBinding;-><init>(Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;)V

    return-object v0

    :cond_0
    const-string p0, "rootView"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/ItemRvShopsSpecialsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/ItemRvShopsSpecialsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvShopsSpecialsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvShopsSpecialsBinding;
    .locals 2

    const v0, 0x7f0d0229

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/ItemRvShopsSpecialsBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemRvShopsSpecialsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/ItemRvShopsSpecialsBinding;->getRoot()Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemRvShopsSpecialsBinding;->rootView:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;

    return-object p0
.end method

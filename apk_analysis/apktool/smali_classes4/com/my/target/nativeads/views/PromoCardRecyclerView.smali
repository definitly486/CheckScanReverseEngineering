.class public Lcom/my/target/nativeads/views/PromoCardRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/nativeads/views/PromoCardRecyclerView$c;,
        Lcom/my/target/nativeads/views/PromoCardRecyclerView$a;
    }
.end annotation


# static fields
.field public static final synthetic q:I


# instance fields
.field public final l:Lcom/my/target/core/ui/views/nativeslider/CardRecyclerLayoutManager;

.field public m:Z

.field public n:Z

.field public final o:Lcom/my/target/nativeads/views/PromoCardRecyclerView$b;

.field public p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/my/target/nativeads/views/PromoCardRecyclerView$b;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->o:Lcom/my/target/nativeads/views/PromoCardRecyclerView$b;

    const/4 p2, -0x1

    iput p2, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->p:I

    new-instance p2, Lcom/my/target/core/ui/views/nativeslider/CardRecyclerLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/my/target/core/ui/views/nativeslider/CardRecyclerLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->l:Lcom/my/target/core/ui/views/nativeslider/CardRecyclerLayoutManager;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const/16 p2, 0x10

    invoke-static {p2, p1}, Ll3a;->d(ILandroid/content/Context;)I

    move-result p1

    new-instance p2, Lxn6;

    invoke-direct {p2, p1, p0}, Lxn6;-><init>(ILcom/my/target/nativeads/views/PromoCardRecyclerView;)V

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance p2, Lcom/my/target/nativeads/views/PromoCardRecyclerView$c;

    invoke-direct {p2, p1}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$c;-><init>(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Lwn6;

    invoke-direct {p1, p0}, Lwn6;-><init>(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public getState()Landroid/os/Parcelable;
    .locals 0

    iget-object p0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->l:Lcom/my/target/core/ui/views/nativeslider/CardRecyclerLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleCardNumbers()[I
    .locals 5

    iget-object p0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->l:Lcom/my/target/core/ui/views/nativeslider/CardRecyclerLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_6

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Ll3a;->a(Landroid/view/View;)F

    move-result v3

    const/high16 v4, 0x42480000    # 50.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Ll3a;->a(Landroid/view/View;)F

    move-result p0

    cmpg-float p0, p0, v4

    if-gez p0, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    if-le v0, v1, :cond_3

    new-array p0, v2, [I

    return-object p0

    :cond_3
    if-ne v0, v1, :cond_4

    filled-new-array {v0}, [I

    move-result-object p0

    return-object p0

    :cond_4
    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array p0, v1, [I

    :goto_0
    if-ge v2, v1, :cond_5

    aput v0, p0, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object p0

    :cond_6
    :goto_1
    new-array p0, v2, [I

    return-object p0
.end method

.method public final onScrollStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->l:Lcom/my/target/core/ui/views/nativeslider/CardRecyclerLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->p:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->p:I

    :cond_2
    :goto_1
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    instance-of v0, p1, Lcom/my/target/nativeads/views/PromoCardRecyclerView$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/my/target/nativeads/views/PromoCardRecyclerView$a;

    invoke-virtual {p0, p1}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->setPromoCardAdapter(Lcom/my/target/nativeads/views/PromoCardRecyclerView$a;)V

    return-void

    :cond_0
    const-string p0, "PromoCardRecyclerView: You must use setPromoCardAdapter(PromoCardAdapter) method with custom CardRecyclerView"

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPromoCardAdapter(Lcom/my/target/nativeads/views/PromoCardRecyclerView$a;)V
    .locals 0

    return-void
.end method

.method public setPromoCardSliderListener(Lmp9;)V
    .locals 0

    return-void
.end method

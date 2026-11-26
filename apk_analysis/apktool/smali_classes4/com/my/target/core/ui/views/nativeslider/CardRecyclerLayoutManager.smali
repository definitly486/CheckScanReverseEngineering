.class public Lcom/my/target/core/ui/views/nativeslider/CardRecyclerLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public final e:F

.field public f:Lk4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/high16 p1, -0x40800000    # -1.0f

    invoke-static {p1, p1}, Ly14;->a(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/high16 p1, 0x3f400000    # 0.75f

    :cond_0
    iput p1, p0, Lcom/my/target/core/ui/views/nativeslider/CardRecyclerLayoutManager;->e:F

    return-void
.end method


# virtual methods
.method public final measureChildWithMargins(Landroid/view/View;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/my/target/core/ui/views/nativeslider/CardRecyclerLayoutManager;->e:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    return-void
.end method

.method public final onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object p0, p0, Lcom/my/target/core/ui/views/nativeslider/CardRecyclerLayoutManager;->f:Lk4;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lk4;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    sget p1, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->q:I

    iget-object p1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->l:Lcom/my/target/core/ui/views/nativeslider/CardRecyclerLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->p:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->p:I

    :cond_1
    :goto_0
    return-void
.end method

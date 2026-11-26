.class public final Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;
.super Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.source "SourceFile"

# interfaces
.implements Lyads/tg1;


# instance fields
.field private final a:Lyads/tt;

.field private final b:Lyads/cy1;

.field private final c:Lyads/og1;

.field private final d:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lyads/tt;Lyads/cy1;Lyads/og1;I)V
    .locals 8

    iget-object v0, p3, Lyads/og1;->h:Lyads/as2;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lyads/tt;->b()Lyads/fs2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 v2, 0x1f

    shr-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    const v0, 0x7fffffff

    goto :goto_1

    :cond_1
    const/high16 v0, -0x80000000

    goto :goto_1

    :cond_2
    :goto_0
    long-to-int v0, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    iput-object p1, p0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->a:Lyads/tt;

    iput-object p2, p0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->b:Lyads/cy1;

    iput-object p3, p0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->c:Lyads/og1;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->d:Ljava/util/HashSet;

    return-void
.end method

.method private final c(I)I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->l()I

    move-result p0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->c:Lyads/og1;

    iget-object p1, p1, Lyads/og1;->k:Lyads/as2;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->a:Lyads/tt;

    iget-object v0, v0, Lyads/tt;->b:Lyads/fs2;

    invoke-virtual {p1, v0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p0, p0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->b:Lyads/cy1;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->l()I

    move-result p0

    return p0
.end method

.method private final l()I
    .locals 2

    iget-object v0, p0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->c:Lyads/og1;

    iget-object v0, v0, Lyads/og1;->t:Lyads/as2;

    iget-object v1, p0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->a:Lyads/tt;

    iget-object v1, v1, Lyads/tt;->b:Lyads/fs2;

    invoke-virtual {v0, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object p0, p0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->b:Lyads/cy1;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v0, p0}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(I)Lyads/cn1;
    .locals 0

    iget-object p0, p0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->b:Lyads/cy1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lyads/pg1;

    invoke-virtual {p0}, Lyads/e71;->d()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p1, p0}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cn1;

    return-object p0
.end method

.method public final a()Lyads/og1;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->c:Lyads/og1;

    return-object p0
.end method

.method public final a(IILyads/id5;)V
    .locals 0

    .line 25
    invoke-interface {p0, p1, p2, p3}, Lyads/tg1;->b(IILyads/id5;)V

    return-void
.end method

.method public final a(ILyads/id5;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-interface {p0, p1, v0, p2}, Lyads/tg1;->b(IILyads/id5;)V

    return-void
.end method

.method public final a(Landroid/view/View;IIII)V
    .locals 0

    .line 23
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public final b(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final b()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->b:Lyads/cy1;

    return-object p0
.end method

.method public final c(Landroid/view/View;)I
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public final c()Lyads/tt;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->a:Lyads/tt;

    return-object p0
.end method

.method public final calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->a(I)Lyads/cn1;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p1, p1, Lyads/cn1;->a:Lyads/br0;

    invoke-virtual {p1}, Lyads/br0;->a()Lyads/p41;

    move-result-object p1

    invoke-interface {p1}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object v0

    instance-of v0, v0, Lyads/u02;

    invoke-interface {p1}, Lyads/p41;->getWidth()Lyads/x02;

    move-result-object p1

    instance-of p1, p1, Lyads/u02;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-direct {p0, v2}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->c(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    invoke-direct {p0, v3}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->c(I)I

    move-result p0

    div-int/lit8 v3, p0, 0x2

    :cond_4
    iget p0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v3

    iget p1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    invoke-virtual {p2, p0, p1, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final d()Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->d:Ljava/util/HashSet;

    return-object p0
.end method

.method public final detachView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lyads/tg1;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public final detachViewAt(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    invoke-virtual {p0, p1}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lyads/tg1;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public final e()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p0

    return p0
.end method

.method public final f()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    return-object p0
.end method

.method public final g()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-array v1, v0, [I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    aget p0, v1, v0

    return p0

    :cond_1
    const-string p0, "Array is empty."

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getPaddingBottom()I
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->c(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getPaddingEnd()I
    .locals 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result v0

    invoke-direct {p0}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->l()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getPaddingLeft()I
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->c(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getPaddingRight()I
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->c(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getPaddingStart()I
    .locals 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result v0

    invoke-direct {p0}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->l()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getPaddingTop()I
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->c(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public final h()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    invoke-static {v0}, Lyr;->H([I)I

    move-result p0

    return p0
.end method

.method public final i()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    invoke-static {v0}, Lyr;->H([I)I

    move-result p0

    return p0
.end method

.method public final j()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p0

    return p0
.end method

.method public final k()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-array v1, v0, [I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    aget p0, v1, v0

    return p0

    :cond_1
    const-string p0, "Array is empty."

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final layoutDecorated(Landroid/view/View;IIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lyads/tg1;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public final layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lyads/tg1;->a(Landroid/view/View;IIIIZ)V

    return-void
.end method

.method public final onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {p0, v3, v1}, Lyads/tg1;->a(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Lyads/tg1;->a(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9

    invoke-virtual {p0}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->d()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    const/4 v8, 0x1

    move-object v2, p0

    invoke-interface/range {v2 .. v8}, Lyads/tg1;->a(Landroid/view/View;IIIIZ)V

    goto :goto_0

    :cond_0
    move-object v2, p0

    invoke-virtual {v2}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->d()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    invoke-super {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public final removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 5

    invoke-virtual {p0}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {p0, v3, v4}, Lyads/tg1;->a(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lyads/tg1;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public final removeViewAt(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    invoke-virtual {p0, p1}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lyads/tg1;->a(Landroid/view/View;Z)V

    return-void
.end method

.class public final Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
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
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;->a:Lyads/tt;

    iput-object p2, p0, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;->b:Lyads/cy1;

    iput-object p3, p0, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;->c:Lyads/og1;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;->d:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final a(I)Lyads/cn1;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;->b:Lyads/cy1;

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

    .line 24
    iget-object p0, p0, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;->c:Lyads/og1;

    return-object p0
.end method

.method public final a(IILyads/id5;)V
    .locals 0

    .line 27
    invoke-interface {p0, p1, p2, p3}, Lyads/tg1;->b(IILyads/id5;)V

    return-void
.end method

.method public final a(ILyads/id5;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-interface {p0, p1, v0, p2}, Lyads/tg1;->b(IILyads/id5;)V

    return-void
.end method

.method public final a(Landroid/view/View;IIII)V
    .locals 0

    .line 26
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;IIIIZ)V
    .locals 0

    .line 23
    invoke-super/range {p0 .. p6}, Lyads/tg1;->a(Landroid/view/View;IIIIZ)V

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Z)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Lyads/tg1;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public bridge synthetic b(Landroid/view/View;)I
    .locals 0

    invoke-super {p0, p1}, Lyads/tg1;->b(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public final b(I)Landroid/view/View;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final b()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;->b:Lyads/cy1;

    return-object p0
.end method

.method public bridge synthetic b(IILyads/id5;)V
    .locals 0

    .line 5
    invoke-super {p0, p1, p2, p3}, Lyads/tg1;->b(IILyads/id5;)V

    return-void
.end method

.method public final c(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public final c()Lyads/tt;
    .locals 0

    .line 5
    iget-object p0, p0, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;->a:Lyads/tt;

    return-object p0
.end method

.method public final checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lyads/sb;

    return p0
.end method

.method public final d()Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;->d:Ljava/util/HashSet;

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

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;->b(I)Landroid/view/View;

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
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public final generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    new-instance p0, Lyads/sb;

    invoke-direct {p0}, Lyads/sb;-><init>()V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 54
    new-instance p0, Lyads/sb;

    invoke-direct {p0, p1, p2}, Lyads/sb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    instance-of p0, p1, Lyads/sb;

    if-eqz p0, :cond_0

    new-instance p0, Lyads/sb;

    check-cast p1, Lyads/sb;

    invoke-direct {p0, p1}, Lyads/sb;-><init>(Lyads/sb;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Lyads/sb;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p0, p1}, Lyads/sb;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-object p0

    :cond_1
    instance-of p0, p1, Lyads/ro1;

    if-eqz p0, :cond_2

    new-instance p0, Lyads/sb;

    check-cast p1, Lyads/ro1;

    invoke-direct {p0, p1}, Lyads/sb;-><init>(Lyads/ro1;)V

    return-object p0

    :cond_2
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_3

    new-instance p0, Lyads/sb;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lyads/sb;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_3
    new-instance p0, Lyads/sb;

    invoke-direct {p0, p1}, Lyads/sb;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final h()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public final i()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public final j()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p0

    return p0
.end method

.method public final k()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p0

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

.method public final measureChild(Landroid/view/View;II)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lyads/sb;

    iget-object v1, p0, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;->b:Lyads/cy1;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, p2

    iget p2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p2

    iget p2, v1, Landroid/graphics/Rect;->right:I

    add-int v4, v5, p2

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v6, v0, Lyads/sb;->b:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v7

    invoke-static/range {v2 .. v7}, Lyads/tg1;->a(IIIIIZ)I

    move-result p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, p3

    iget p3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p3

    iget p3, v1, Landroid/graphics/Rect;->bottom:I

    add-int v4, v5, p3

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v6, v0, Lyads/sb;->a:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v7

    invoke-static/range {v2 .. v7}, Lyads/tg1;->a(IIIIIZ)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public final measureChildWithMargins(Landroid/view/View;II)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lyads/sb;

    iget-object v1, p0, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;->b:Lyads/cy1;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v4

    add-int/2addr v5, p2

    iget p2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p2

    iget p2, v1, Landroid/graphics/Rect;->right:I

    add-int v4, v5, p2

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v6, v0, Lyads/sb;->b:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v7

    invoke-static/range {v2 .. v7}, Lyads/tg1;->a(IIIIIZ)I

    move-result p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v4

    add-int/2addr v5, p3

    iget p3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p3

    iget p3, v1, Landroid/graphics/Rect;->bottom:I

    add-int v4, v5, p3

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v6, v0, Lyads/sb;->a:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v7

    invoke-static/range {v2 .. v7}, Lyads/tg1;->a(IIIIIZ)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
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

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

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

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;->d()Ljava/util/HashSet;

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

    invoke-virtual {v2}, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;->d()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    invoke-super {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public final removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;->b()Landroidx/recyclerview/widget/RecyclerView;

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

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lyads/tg1;->a(Landroid/view/View;Z)V

    return-void
.end method

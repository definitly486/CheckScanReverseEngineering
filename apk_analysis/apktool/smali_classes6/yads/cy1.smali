.class public Lyads/cy1;
.super Lyads/ln;
.source "SourceFile"

# interfaces
.implements Lyads/wh1;


# instance fields
.field public final synthetic b:Lyads/xh1;

.field public c:I

.field public d:I

.field public e:I

.field public f:F

.field public g:Lyads/oq4;

.field public h:Lyads/lg1;

.field public i:Lyads/js4;

.field public j:Z

.field public k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0, p1, v2, v0, v1}, Lyads/cy1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0, v1}, Lyads/cy1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    sget v1, Lcom/yandex/mobile/ads/R$style;->monetization_ads_divkit_Div_Gallery:I

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2, p3}, Lyads/ln;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lyads/xh1;

    invoke-direct {p1}, Lyads/xh1;-><init>()V

    iput-object p1, p0, Lyads/cy1;->b:Lyads/xh1;

    const/4 p1, -0x1

    iput p1, p0, Lyads/cy1;->c:I

    sget-object p2, Lyads/lg1;->f:Lyads/lg1;

    iput-object p2, p0, Lyads/cy1;->h:Lyads/lg1;

    iput p1, p0, Lyads/cy1;->k:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lyads/cy1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a()Lyads/br0;
    .locals 0

    .line 8
    iget-object p0, p0, Lyads/cy1;->b:Lyads/xh1;

    .line 9
    iget-object p0, p0, Lyads/xh1;->c:Lyads/br0;

    .line 10
    check-cast p0, Lyads/wp0;

    return-object p0
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/cy1;->b:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0, p1}, Lyads/u16;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lyads/tp0;)V
    .locals 0

    .line 11
    iget-object p0, p0, Lyads/cy1;->b:Lyads/xh1;

    invoke-interface {p0, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 8
    iget-object p0, p0, Lyads/cy1;->b:Lyads/xh1;

    invoke-interface {p0}, Lyads/hs2;->b()V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/cy1;->b:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0, p1}, Lyads/u16;->b(Landroid/view/View;)V

    return-void
.end method

.method public final c()Lyads/tt;
    .locals 0

    iget-object p0, p0, Lyads/cy1;->b:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->d:Lyads/tt;

    return-object p0
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lyads/cy1;->b:Lyads/xh1;

    invoke-virtual {p0}, Lyads/xh1;->d()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-interface {p0}, Lyads/s51;->i()Lyads/l51;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    :try_start_0
    invoke-virtual {v0, p1}, Lyads/l51;->a(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, p1}, Lyads/l51;->b(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p1}, Lyads/tq;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lyads/cy1;->b:Lyads/xh1;

    invoke-virtual {p0}, Lyads/xh1;->e()V

    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/cy1;->b:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final fling(II)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p1

    iget-object p2, p0, Lyads/cy1;->h:Lyads/lg1;

    sget-object v0, Lyads/lg1;->e:Lyads/lg1;

    if-ne p2, v0, :cond_0

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Lyads/cy1;->j:Z

    :cond_0
    return p1
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Lyads/cy1;->b:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0}, Lyads/u16;->g()Z

    move-result p0

    return p0
.end method

.method public final h()Lyads/js4;
    .locals 0

    iget-object p0, p0, Lyads/cy1;->i:Lyads/js4;

    return-object p0
.end method

.method public final i()Lyads/l51;
    .locals 0

    iget-object p0, p0, Lyads/cy1;->b:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    iget-object p0, p0, Lyads/t51;->a:Lyads/l51;

    return-object p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lyads/cy1;->g:Lyads/oq4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Lyads/ms4;

    invoke-virtual {v0, p0, p1}, Lyads/ms4;->a(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lyads/cy1;->f:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-eqz v0, :cond_d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lyads/cy1;->c:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    iput v0, p0, Lyads/cy1;->d:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    iput v0, p0, Lyads/cy1;->e:I

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget v3, p0, Lyads/cy1;->c:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-gez v3, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-int v4, v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v3, v5

    float-to-int v3, v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v5

    if-ne v5, v2, :cond_7

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_7
    iget p1, p0, Lyads/cy1;->d:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v4, p0, Lyads/cy1;->e:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-nez p1, :cond_8

    if-nez v3, :cond_8

    return v1

    :cond_8
    if-eqz p1, :cond_9

    int-to-double v3, v3

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    goto :goto_1

    :cond_9
    const-wide v3, 0x4056800000000000L    # 90.0

    :goto_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lyads/cy1;->f:F

    float-to-double v5, p1

    cmpg-double p1, v3, v5

    if-lez p1, :cond_b

    :cond_a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p1

    if-eqz p1, :cond_c

    iget p0, p0, Lyads/cy1;->f:F

    float-to-double p0, p0

    cmpl-double p0, v3, p0

    if-lez p0, :cond_c

    :cond_b
    return v2

    :cond_c
    return v1

    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lyads/cy1;->c:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    iput v0, p0, Lyads/cy1;->d:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    iput v0, p0, Lyads/cy1;->e:I

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onScrollStateChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lyads/cy1;->k:I

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lyads/cy1;->k:I

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    return-void
.end method

.method public final onScrolled(II)V
    .locals 3

    iget v0, p0, Lyads/cy1;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-lez p2, :cond_3

    iget v0, p0, Lyads/cy1;->k:I

    :goto_1
    add-int/2addr v0, v1

    goto :goto_2

    :cond_3
    if-ne v0, v1, :cond_5

    if-gtz p2, :cond_5

    iget v0, p0, Lyads/cy1;->k:I

    :cond_4
    sub-int/2addr v0, v1

    goto :goto_2

    :cond_5
    iget v0, p0, Lyads/cy1;->k:I

    if-lez p1, :cond_4

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_3

    :cond_6
    move-object v0, v1

    :goto_3
    instance-of v2, v0, Lyads/pi2;

    if-eqz v2, :cond_7

    move-object v1, v0

    check-cast v1, Lyads/pi2;

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lyads/pi2;->j()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_8
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    iget-object p0, p0, Lyads/cy1;->b:Lyads/xh1;

    invoke-virtual {p0}, Lyads/xh1;->h()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lyads/cy1;->h:Lyads/lg1;

    sget-object v1, Lyads/lg1;->e:Lyads/lg1;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lyads/cy1;->j:Z

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_7

    iget-object p1, p0, Lyads/cy1;->h:Lyads/lg1;

    if-ne p1, v1, :cond_7

    iget-boolean p1, p0, Lyads/cy1;->j:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lyads/cy1;->i:Lyads/js4;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1, v4}, Lyads/js4;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    aget v1, p1, v3

    if-nez v1, :cond_6

    aget v3, p1, v2

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    aget p1, p1, v2

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_7
    :goto_1
    return v0
.end method

.method public final release()V
    .locals 1

    invoke-super {p0}, Lyads/wh1;->release()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of v0, p0, Lyads/r55;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/r55;

    invoke-interface {p0}, Lyads/r55;->release()V

    :cond_0
    return-void
.end method

.method public setBindingContext(Lyads/tt;)V
    .locals 0

    iget-object p0, p0, Lyads/cy1;->b:Lyads/xh1;

    iput-object p1, p0, Lyads/xh1;->d:Lyads/tt;

    return-void
.end method

.method public setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/cy1;->b:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    invoke-virtual {p0, p1, p2, p3}, Lyads/t51;->setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setDiv(Lyads/br0;)V
    .locals 0

    check-cast p1, Lyads/wp0;

    invoke-virtual {p0, p1}, Lyads/cy1;->setDiv(Lyads/wp0;)V

    return-void
.end method

.method public setDiv(Lyads/wp0;)V
    .locals 0

    iget-object p0, p0, Lyads/cy1;->b:Lyads/xh1;

    .line 6
    iput-object p1, p0, Lyads/xh1;->c:Lyads/br0;

    return-void
.end method

.method public setNeedClipping(Z)V
    .locals 0

    iget-object p0, p0, Lyads/cy1;->b:Lyads/xh1;

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    invoke-virtual {p0, p1}, Lyads/t51;->setNeedClipping(Z)V

    return-void
.end method

.method public setOnInterceptTouchEventListener(Lyads/oq4;)V
    .locals 0

    iput-object p1, p0, Lyads/cy1;->g:Lyads/oq4;

    return-void
.end method

.method public setPagerSnapStartHelper(Lyads/js4;)V
    .locals 0

    iput-object p1, p0, Lyads/cy1;->i:Lyads/js4;

    return-void
.end method

.method public setScrollInterceptionAngle(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42b40000    # 90.0f

    rem-float v0, p1, v0

    :goto_0
    iput v0, p0, Lyads/cy1;->f:F

    return-void
.end method

.method public setScrollMode(Lyads/lg1;)V
    .locals 0

    iput-object p1, p0, Lyads/cy1;->h:Lyads/lg1;

    return-void
.end method

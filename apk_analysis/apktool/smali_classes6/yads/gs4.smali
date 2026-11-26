.class public Lyads/gs4;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public a:Lyads/hg3;

.field public b:Lyads/et1;

.field public c:Lyads/cg3;

.field public final d:Lyads/fs4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 13
    invoke-direct {p0, p1, v2, v0, v1}, Lyads/gs4;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0, v1}, Lyads/gs4;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lyads/fs4;

    invoke-direct {p1, p0}, Lyads/fs4;-><init>(Lyads/gs4;)V

    iput-object p1, p0, Lyads/gs4;->d:Lyads/fs4;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lyads/gs4;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final a(Lyads/gs4;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lyads/gs4;->a:Lyads/hg3;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lyads/gs4;->a(Lyads/hg3;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lyads/et1;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lyads/gs4;->b:Lyads/et1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/gs4;->d:Lyads/fs4;

    .line 80
    iget-object v2, v0, Lyads/et1;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, v0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 82
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lyads/gs4;->d:Lyads/fs4;

    .line 84
    iget-object v1, p1, Lyads/et1;->d:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p1, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 87
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 88
    iget-object v0, p0, Lyads/gs4;->b:Lyads/et1;

    if-ne p1, v0, :cond_1

    return-void

    .line 89
    :cond_1
    iput-object p1, p0, Lyads/gs4;->b:Lyads/et1;

    .line 90
    iget-object v0, p1, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 91
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lyads/gs4;->a:Lyads/hg3;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lyads/gs4;->a(Lyads/hg3;)V

    .line 93
    :cond_2
    new-instance v0, Lid;

    invoke-direct {v0, p0}, Lid;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lyads/et1;->setPagerOnItemsCountChange$mobileads_externalRelease(Lyads/ct1;)V

    return-void

    .line 94
    :cond_3
    const-string p0, "Attached pager adapter is null!"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lyads/hg3;)V
    .locals 3

    iget-object v0, p0, Lyads/gs4;->b:Lyads/et1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lyads/wr1;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lyads/wr1;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lyads/e71;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p1, Lyads/hg3;->f:I

    iget-object v2, p1, Lyads/hg3;->c:Lyads/pf3;

    invoke-interface {v2, v0}, Lyads/pf3;->d(I)V

    invoke-virtual {p1}, Lyads/hg3;->a()V

    iget v0, p1, Lyads/hg3;->l:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput v0, p1, Lyads/hg3;->h:F

    iget-object v0, v1, Lyads/wr1;->n:Lyads/et1;

    iget-object v0, v0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-virtual {v1, v0}, Lyads/wr1;->e(I)I

    move-result v0

    iput v0, p1, Lyads/hg3;->m:I

    const/4 v1, 0x0

    iput v1, p1, Lyads/hg3;->n:F

    iget-object v2, p1, Lyads/hg3;->c:Lyads/pf3;

    invoke-interface {v2, v0}, Lyads/pf3;->onPageSelected(I)V

    invoke-virtual {p1, v0, v1}, Lyads/hg3;->a(IF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lyads/gs4;->a:Lyads/hg3;

    if-eqz p0, :cond_3

    iget-object v0, p0, Lyads/hg3;->e:Lyads/gg3;

    iget-object v0, v0, Lyads/gg3;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/fg3;

    iget-object v2, p0, Lyads/hg3;->b:Lyads/gl5;

    iget v4, v1, Lyads/fg3;->c:F

    iget v5, p0, Lyads/hg3;->h:F

    iget-object v6, v1, Lyads/fg3;->d:Lyads/yf3;

    iget-object v3, p0, Lyads/hg3;->c:Lyads/pf3;

    iget v7, v1, Lyads/fg3;->a:I

    invoke-interface {v3, v7}, Lyads/pf3;->b(I)I

    move-result v7

    iget-object v3, p0, Lyads/hg3;->c:Lyads/pf3;

    iget v8, v1, Lyads/fg3;->a:I

    invoke-interface {v3, v8}, Lyads/pf3;->e(I)F

    move-result v8

    iget-object v3, p0, Lyads/hg3;->c:Lyads/pf3;

    iget v1, v1, Lyads/fg3;->a:I

    invoke-interface {v3, v1}, Lyads/pf3;->c(I)I

    move-result v9

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Lyads/gl5;->a(Landroid/graphics/Canvas;FFLyads/yf3;IFI)V

    goto :goto_0

    :cond_0
    move-object v3, p1

    iget-object p1, p0, Lyads/hg3;->e:Lyads/gg3;

    iget-object p1, p1, Lyads/gg3;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lyads/fg3;

    iget-boolean v1, v1, Lyads/fg3;->b:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Lyads/fg3;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lyads/hg3;->c:Lyads/pf3;

    iget v0, v0, Lyads/fg3;->c:F

    iget v1, p0, Lyads/hg3;->h:F

    iget v2, p0, Lyads/hg3;->k:I

    int-to-float v2, v2

    iget-object v4, p0, Lyads/hg3;->d:Lyads/gs4;

    invoke-static {v4}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v4

    invoke-interface {p1, v0, v1, v2, v4}, Lyads/pf3;->a(FFFZ)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lyads/hg3;->b:Lyads/gl5;

    invoke-interface {p0, v3, p1}, Lyads/gl5;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_3
    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v1, p0, Lyads/gs4;->c:Lyads/cg3;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lyads/cg3;->b:Lyads/bg3;

    invoke-virtual {v1}, Lyads/bg3;->b()Lyads/yf3;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lyads/yf3;->a()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lyads/gs4;->c:Lyads/cg3;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lyads/cg3;->c:Lyads/bg3;

    invoke-virtual {v3}, Lyads/bg3;->b()Lyads/yf3;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lyads/yf3;->a()F

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-object v4, p0, Lyads/gs4;->c:Lyads/cg3;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lyads/cg3;->d:Lyads/bg3;

    invoke-virtual {v4}, Lyads/bg3;->b()Lyads/yf3;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lyads/yf3;->a()F

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_4

    move p2, v1

    goto :goto_3

    :cond_3
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_4
    :goto_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v1, p0, Lyads/gs4;->c:Lyads/cg3;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lyads/cg3;->b:Lyads/bg3;

    invoke-virtual {v1}, Lyads/bg3;->b()Lyads/yf3;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lyads/yf3;->b()F

    move-result v2

    :cond_5
    iget-object v1, p0, Lyads/gs4;->c:Lyads/cg3;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lyads/cg3;->e:Lyads/vf3;

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    instance-of v5, v1, Lyads/tf3;

    if-eqz v5, :cond_8

    check-cast v1, Lyads/tf3;

    iget v1, v1, Lyads/tf3;->a:F

    iget-object v5, p0, Lyads/gs4;->b:Lyads/et1;

    if-eqz v5, :cond_7

    iget-object v5, v5, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    int-to-float v5, v5

    mul-float/2addr v1, v5

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    :goto_6
    add-int/2addr v1, v2

    goto :goto_7

    :cond_8
    instance-of v5, v1, Lyads/uf3;

    if-eqz v5, :cond_9

    move v1, p1

    goto :goto_7

    :cond_9
    if-nez v1, :cond_d

    float-to-int v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    goto :goto_6

    :goto_7
    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_b

    move p1, v1

    goto :goto_8

    :cond_a
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_b
    :goto_8
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v0, p0, Lyads/gs4;->a:Lyads/hg3;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr p2, p0

    invoke-virtual {v0, p1, p2}, Lyads/hg3;->a(II)V

    :cond_c
    return-void

    :cond_d
    invoke-static {}, Lme0;->e()V

    return-void
.end method

.method public final setStyle(Lyads/cg3;)V
    .locals 4

    iput-object p1, p0, Lyads/gs4;->c:Lyads/cg3;

    new-instance v0, Lyads/hg3;

    iget-object v1, p1, Lyads/cg3;->b:Lyads/bg3;

    instance-of v2, v1, Lyads/ag3;

    if-eqz v2, :cond_0

    new-instance v1, Lyads/lb5;

    invoke-direct {v1, p1}, Lyads/lb5;-><init>(Lyads/cg3;)V

    goto :goto_0

    :cond_0
    instance-of v1, v1, Lyads/zf3;

    if-eqz v1, :cond_4

    new-instance v1, Lyads/kz;

    invoke-direct {v1, p1}, Lyads/kz;-><init>(Lyads/cg3;)V

    :goto_0
    iget-object v2, p1, Lyads/cg3;->a:Lyads/sf3;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    new-instance v2, Lyads/bn5;

    invoke-direct {v2, p1}, Lyads/bn5;-><init>(Lyads/cg3;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_2
    new-instance v2, Lyads/zk6;

    invoke-direct {v2, p1}, Lyads/zk6;-><init>(Lyads/cg3;)V

    goto :goto_1

    :cond_3
    new-instance v2, Lyads/rc5;

    invoke-direct {v2, p1}, Lyads/rc5;-><init>(Lyads/cg3;)V

    :goto_1
    invoke-direct {v0, p1, v1, v2, p0}, Lyads/hg3;-><init>(Lyads/cg3;Lyads/gl5;Lyads/pf3;Lyads/gs4;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lyads/hg3;->a(II)V

    invoke-virtual {p0, v0}, Lyads/gs4;->a(Lyads/hg3;)V

    iput-object v0, p0, Lyads/gs4;->a:Lyads/hg3;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_4
    invoke-static {}, Lme0;->e()V

    return-void
.end method

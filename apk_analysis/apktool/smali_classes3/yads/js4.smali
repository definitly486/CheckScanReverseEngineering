.class public final Lyads/js4;
.super Landroidx/recyclerview/widget/PagerSnapHelper;
.source "SourceFile"


# instance fields
.field public a:Landroidx/recyclerview/widget/OrientationHelper;

.field public b:Landroidx/recyclerview/widget/OrientationHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    :goto_0
    int-to-float p1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p0

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result p0

    div-int/lit8 p2, p0, 0x2

    :goto_2
    sub-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public final calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lyads/js4;->b:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-static {v3, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    :cond_0
    if-nez v2, :cond_2

    :cond_1
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    iput-object v2, p0, Lyads/js4;->b:Landroidx/recyclerview/widget/OrientationHelper;

    :cond_2
    invoke-static {p1, p2, v2}, Lyads/js4;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result p0

    const/4 p1, 0x0

    aput p0, v0, p1

    return-object v0

    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lyads/js4;->a:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-static {v3, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v2, v1

    :cond_4
    if-nez v2, :cond_6

    :cond_5
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    iput-object v2, p0, Lyads/js4;->a:Landroidx/recyclerview/widget/OrientationHelper;

    :cond_6
    invoke-static {p1, p2, v2}, Lyads/js4;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result p0

    const/4 p1, 0x1

    aput p0, v0, p1

    :cond_7
    return-object v0
.end method

.method public final findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, p1

    check-cast p0, Lyads/tg1;

    invoke-interface {p0}, Lyads/tg1;->j()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    neg-int p2, p2

    goto :goto_0

    :cond_1
    move p2, p3

    :goto_0
    if-gez p2, :cond_2

    invoke-interface {p0}, Lyads/tg1;->h()I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lyads/tg1;->k()I

    move-result p1

    :goto_1
    const/4 p3, -0x1

    if-eq p1, p3, :cond_3

    return p1

    :cond_3
    invoke-interface {p0}, Lyads/tg1;->i()I

    move-result p1

    invoke-interface {p0}, Lyads/tg1;->g()I

    move-result p0

    if-ne p0, p1, :cond_5

    if-eq p0, p3, :cond_4

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    if-gez p2, :cond_6

    return p1

    :cond_6
    :goto_2
    return p0
.end method

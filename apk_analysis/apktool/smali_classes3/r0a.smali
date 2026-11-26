.class public final Lr0a;
.super Landroidx/recyclerview/widget/LinearSnapHelper;
.source "SourceFile"


# instance fields
.field public final c:Landroid/view/animation/DecelerateInterpolator;

.field public d:I

.field public e:Landroidx/recyclerview/widget/OrientationHelper;

.field public f:Landroidx/recyclerview/widget/OrientationHelper;

.field public g:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    const/16 v0, 0x11

    iput v0, p0, Lr0a;->d:I

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3fd9999a    # 1.7f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lr0a;->c:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;IZ)Landroid/view/View;
    .locals 5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const v2, 0x800003

    const/4 v3, 0x1

    if-eqz p4, :cond_7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p4

    if-nez p4, :cond_1

    iget p4, p0, Lr0a;->d:I

    if-eq p4, v2, :cond_4

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p4

    if-eqz p4, :cond_2

    iget p4, p0, Lr0a;->d:I

    const v4, 0x800005

    if-eq p4, v4, :cond_4

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p4

    if-nez p4, :cond_3

    iget p4, p0, Lr0a;->d:I

    const/16 v4, 0x30

    if-eq p4, v4, :cond_4

    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p4

    if-eqz p4, :cond_5

    iget p4, p0, Lr0a;->d:I

    const/16 v4, 0x50

    if-ne p4, v4, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p4

    sub-int/2addr p4, v3

    if-ne p0, p4, :cond_7

    goto/16 :goto_4

    :cond_5
    iget p0, p0, Lr0a;->d:I

    const/16 p4, 0x11

    if-ne p0, p4, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p4

    sub-int/2addr p4, v3

    if-ne p0, p4, :cond_7

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p0

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    goto :goto_0

    :cond_8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result p0

    div-int/lit8 p1, p0, 0x2

    :goto_0
    const/4 p0, 0x0

    if-ne p3, v2, :cond_9

    goto :goto_1

    :cond_9
    move v3, p0

    :goto_1
    const p3, 0x7fffffff

    :goto_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p4

    if-ge p0, p4, :cond_c

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    if-eqz v3, :cond_a

    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    goto :goto_3

    :cond_a
    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    :goto_3
    if-ge v2, p3, :cond_b

    move-object v1, p4

    move p3, v2

    :cond_b
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_c
    :goto_4
    return-object v1
.end method

.method public final attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    iput-object p1, p0, Lr0a;->g:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lr0a;->g:Landroidx/recyclerview/widget/RecyclerView;

    :goto_0
    :try_start_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)Landroid/view/View;
    .locals 4

    iget v0, p0, Lr0a;->d:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_4

    const/16 v1, 0x30

    const v2, 0x800003

    if-eq v0, v1, :cond_3

    const/16 v1, 0x50

    const v3, 0x800005

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lr0a;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3, p2}, Lr0a;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lr0a;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2, p2}, Lr0a;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lr0a;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3, p2}, Lr0a;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p1}, Lr0a;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2, p2}, Lr0a;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, p1}, Lr0a;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lr0a;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final c(I)V
    .locals 2

    iget v0, p0, Lr0a;->d:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lr0a;->d:I

    iget-object p1, p0, Lr0a;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr0a;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lr0a;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v1}, Lr0a;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    iget-object p0, p0, Lr0a;->g:Landroidx/recyclerview/widget/RecyclerView;

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 6

    iget v0, p0, Lr0a;->d:I

    const/16 v1, 0x11

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p0

    if-nez p0, :cond_0

    new-array p0, v2, [I

    :cond_0
    return-object p0

    :cond_1
    new-array v1, v2, [I

    instance-of v3, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v3, :cond_2

    return-object v1

    :cond_2
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const v3, 0x800003

    const/4 v4, 0x0

    if-ne v0, v3, :cond_4

    invoke-virtual {p0, p1}, Lr0a;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p2

    div-int/2addr p2, v2

    if-lt p1, p2, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    sub-int/2addr p1, p0

    :cond_3
    aput p1, v1, v4

    return-object v1

    :cond_4
    invoke-virtual {p0, p1}, Lr0a;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/2addr v3, v2

    sub-int/2addr v0, v3

    if-lt p1, v0, :cond_5

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result p0

    :goto_0
    sub-int/2addr p1, p0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p0

    goto :goto_0

    :goto_1
    aput p1, v1, v4

    return-object v1
.end method

.method public final createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .locals 1

    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr0a;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lr0a$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lr0a$a;-><init>(Lr0a;Landroid/content/Context;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lr0a;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    iget-object v0, p0, Lr0a;->f:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lr0a;->f:Landroidx/recyclerview/widget/OrientationHelper;

    :cond_1
    iget-object p0, p0, Lr0a;->f:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p0
.end method

.method public final getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    iget-object v0, p0, Lr0a;->e:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lr0a;->e:Landroidx/recyclerview/widget/OrientationHelper;

    :cond_1
    iget-object p0, p0, Lr0a;->e:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p0
.end method

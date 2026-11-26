.class public Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;
.super Landroidx/recyclerview/widget/LinearSnapHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper$SnapListener;
    }
.end annotation


# instance fields
.field private gravity:I

.field private horizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private isRtlHorizontal:Z

.field private listener:Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper$SnapListener;

.field private mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private snapping:Z

.field private verticalHelper:Landroidx/recyclerview/widget/OrientationHelper;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;-><init>(ILcom/wdullaer/materialdatetimepicker/GravitySnapHelper$SnapListener;)V

    return-void
.end method

.method public constructor <init>(ILcom/wdullaer/materialdatetimepicker/GravitySnapHelper$SnapListener;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper$1;

    invoke-direct {v0, p0}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper$1;-><init>(Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    const v0, 0x800003

    if-eq p1, v0, :cond_1

    const v0, 0x800005

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_1

    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Invalid gravity value. Use START | END | BOTTOM | TOP constants"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->gravity:I

    iput-object p2, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->listener:Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper$SnapListener;

    return-void
.end method

.method public static synthetic access$002(Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->snapping:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;)Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper$SnapListener;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->listener:Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper$SnapListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->getSnappedPosition(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method private distanceToEnd(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;Z)I
    .locals 1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->isRtlHorizontal:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->distanceToStart(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;Z)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private distanceToStart(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;Z)I
    .locals 1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->isRtlHorizontal:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->distanceToEnd(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;Z)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private findEndView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 5

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    iget-boolean p0, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->isRtlHorizontal:Z

    if-eqz p0, :cond_1

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p2

    :goto_0
    int-to-float p2, p2

    div-float/2addr p0, p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p0

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    sub-int/2addr p0, v4

    int-to-float p0, p0

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p2

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_2

    move p2, v0

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v4

    if-lez p0, :cond_3

    if-nez p2, :cond_3

    return-object v3

    :cond_3
    if-eqz p2, :cond_4

    return-object v1

    :cond_4
    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1
.end method

.method private findStartView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 5

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    iget-boolean p0, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->isRtlHorizontal:Z

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p0

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    sub-int/2addr p0, v4

    int-to-float p0, p0

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p2

    :goto_0
    int-to-float p2, p2

    div-float/2addr p0, p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p2

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    if-ne p2, v0, :cond_2

    move p2, v4

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_3

    if-nez p2, :cond_3

    return-object v3

    :cond_3
    if-eqz p2, :cond_4

    return-object v1

    :cond_4
    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1
.end method

.method private getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->horizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->horizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p1

    :cond_0
    return-object v0
.end method

.method private getSnappedPosition(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_3

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->gravity:I

    const v0, 0x800003

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x800005

    if-eq p0, v0, :cond_1

    const/16 v0, 0x50

    if-ne p0, v0, :cond_3

    :cond_1
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p0

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->verticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->verticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->gravity:I

    const v1, 0x800003

    if-eq v0, v1, :cond_0

    const v1, 0x800005

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->isRtlHorizontal:Z

    :cond_2
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->listener:Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper$SnapListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->gravity:I

    const v3, 0x800003

    if-ne v1, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-direct {p0, p2, v1, v2}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->distanceToStart(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;Z)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-direct {p0, p2, v1, v2}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->distanceToEnd(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;Z)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_1
    aput v2, v0, v2

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->gravity:I

    const/16 v4, 0x30

    if-ne v1, v4, :cond_2

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    invoke-direct {p0, p2, p1, v2}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->distanceToStart(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;Z)I

    move-result p0

    aput p0, v0, v3

    return-object v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    invoke-direct {p0, p2, p1, v2}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->distanceToEnd(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;Z)I

    move-result p0

    aput p0, v0, v3

    return-object v0

    :cond_3
    aput v2, v0, v3

    return-object v0
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 2

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->gravity:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    const/16 v1, 0x50

    if-eq v0, v1, :cond_2

    const v1, 0x800003

    if-eq v0, v1, :cond_1

    const v1, 0x800005

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->findEndView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->findStartView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->findEndView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->findStartView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->snapping:Z

    return-object p1
.end method

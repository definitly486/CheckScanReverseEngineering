.class public final Lcom/warefly/checkscan/bonuses/presentation/layoutManager/ProminentLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public final e:F

.field public final f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/high16 p1, 0x3fc00000    # 1.5f

    iput p1, p0, Lcom/warefly/checkscan/bonuses/presentation/layoutManager/ProminentLayoutManager;->e:F

    const p1, 0x3e5c28f6    # 0.215f

    iput p1, p0, Lcom/warefly/checkscan/bonuses/presentation/layoutManager/ProminentLayoutManager;->f:F

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/warefly/checkscan/bonuses/presentation/layoutManager/ProminentLayoutManager;->e:F

    mul-float/2addr v2, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v7, v6

    int-to-float v6, v7

    div-float/2addr v6, v1

    sub-float v7, v6, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v9, v7, v8

    if-lez v9, :cond_0

    move v7, v8

    :cond_0
    iget v9, p0, Lcom/warefly/checkscan/bonuses/presentation/layoutManager/ProminentLayoutManager;->f:F

    mul-float/2addr v9, v7

    sub-float v7, v8, v9

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleY(F)V

    cmpl-float v6, v6, v0

    if-lez v6, :cond_1

    const/4 v6, -0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    mul-int/2addr v9, v6

    int-to-float v6, v9

    sub-float/2addr v8, v7

    mul-float/2addr v8, v6

    div-float/2addr v8, v1

    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonuses/presentation/layoutManager/ProminentLayoutManager;->n()V

    return-void
.end method

.method public final scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonuses/presentation/layoutManager/ProminentLayoutManager;->n()V

    :cond_0
    return p1
.end method

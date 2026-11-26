.class public final Lzi6;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    const/4 p4, -0x1

    if-ne p0, p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p2, p0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    goto :goto_0

    :cond_1
    move-object p0, p4

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p3, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p3, :cond_3

    move-object p4, p2

    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    :cond_3
    const/4 p2, 0x1

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p3

    goto :goto_2

    :cond_4
    move p3, p2

    :goto_2
    const/4 p4, 0x4

    if-nez p0, :cond_5

    invoke-static {p4}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_5
    sub-int/2addr p3, p2

    if-ne p0, p3, :cond_6

    invoke-static {p4}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_6
    invoke-static {p4}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p4}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :goto_3
    const/16 p0, 0x10

    invoke-static {p0}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

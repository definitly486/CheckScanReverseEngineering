.class public final Lim7;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lsg;->e(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    sget-object p2, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeFragment;->p:Ly74;

    iget p3, p2, Lw74;->b:I

    iget p2, p2, Lw74;->c:I

    if-gt p0, p2, :cond_0

    if-gt p3, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    invoke-static {p0}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    const/16 p0, 0x8

    invoke-static {p0}, Lpl2;->e(I)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {p0}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

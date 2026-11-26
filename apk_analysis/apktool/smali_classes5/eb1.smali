.class public final Leb1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lsg;->e(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    instance-of p3, p2, Leu1;

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    check-cast p2, Leu1;

    goto :goto_0

    :cond_0
    move-object p2, p4

    :goto_0
    if-eqz p2, :cond_1

    iget-object p2, p2, Leu1;->i:Lm8;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Lm8;->e(I)Lpz3;

    move-result-object p4

    :cond_1
    instance-of p0, p4, Lib1;

    const/16 p2, 0x18

    if-eqz p0, :cond_2

    invoke-static {p2}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_2
    instance-of p0, p4, Ldb1;

    const/16 p3, 0x8

    if-eqz p0, :cond_3

    invoke-static {p3}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p2}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_3
    instance-of p0, p4, Lxa1;

    if-eqz p0, :cond_4

    invoke-static {p3}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p3}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_4
    instance-of p0, p4, Lwm8;

    const/16 p2, 0x10

    if-eqz p0, :cond_5

    invoke-static {p2}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_5
    instance-of p0, p4, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;

    if-eqz p0, :cond_6

    invoke-static {p2}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_6
    return-void
.end method

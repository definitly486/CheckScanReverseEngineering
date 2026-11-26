.class public final Lyads/sg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lyads/tg1;

.field public final synthetic d:I

.field public final synthetic e:Lyads/id5;


# direct methods
.method public constructor <init>(ILyads/tg1;ILyads/id5;)V
    .locals 0

    iput p1, p0, Lyads/sg1;->b:I

    iput-object p2, p0, Lyads/sg1;->c:Lyads/tg1;

    iput p3, p0, Lyads/sg1;->d:I

    iput-object p4, p0, Lyads/sg1;->e:Lyads/id5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget p1, p0, Lyads/sg1;->b:I

    iget-object p2, p0, Lyads/sg1;->c:Lyads/tg1;

    if-nez p1, :cond_1

    invoke-interface {p2}, Lyads/tg1;->j()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p1}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-static {p1}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lyads/sg1;->d:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lyads/sg1;->d:I

    neg-int p1, p1

    :goto_0
    iget-object p0, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void

    :cond_1
    invoke-interface {p2}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p2}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result p2

    neg-int p2, p2

    iget-object p3, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p3}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result p3

    neg-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget-object p1, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p1}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget p3, p0, Lyads/sg1;->b:I

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    const/4 p3, 0x1

    if-nez p1, :cond_6

    iget-object p4, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p4}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p4

    if-nez p4, :cond_3

    iget-object p4, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p4}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p4

    if-eqz p4, :cond_6

    :cond_3
    iget-object p1, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p1}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_4
    iget-object p1, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p1}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_5

    iget p4, p0, Lyads/sg1;->b:I

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, p2

    :goto_2
    if-nez p1, :cond_6

    iget-object p3, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p3}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    iget-object p4, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p4}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    iget-object p5, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p5}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p5

    invoke-virtual {p3, p4, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_a

    iget-object p2, p0, Lyads/sg1;->e:Lyads/id5;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_8

    if-eq p2, p3, :cond_7

    goto :goto_3

    :cond_7
    const/4 p2, 0x0

    filled-new-array {p2, p2}, [I

    move-result-object p4

    filled-new-array {p2, p2}, [I

    move-result-object p5

    iget-object p6, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p6}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p6

    invoke-virtual {p6, p5}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p6, p4, p2

    aget p2, p5, p2

    sub-int/2addr p6, p2

    aget p2, p4, p3

    aget p3, p5, p3

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p4, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p4}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p4, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p4}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    sub-int/2addr p1, p4

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    iget-object p0, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void

    :cond_8
    iget-object p2, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-static {p2, p1}, Lyads/tg1;->a(Lyads/tg1;Landroid/view/View;)I

    move-result p1

    iget p2, p0, Lyads/sg1;->d:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p2}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-static {p2}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_9

    neg-int p1, p1

    :cond_9
    iget-object p0, p0, Lyads/sg1;->c:Lyads/tg1;

    invoke-interface {p0}, Lyads/tg1;->b()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_a
    :goto_3
    return-void
.end method

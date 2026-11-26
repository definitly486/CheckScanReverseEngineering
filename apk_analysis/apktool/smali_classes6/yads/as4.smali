.class public final Lyads/as4;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lyads/as4;->a:I

    iput p2, p0, Lyads/as4;->b:I

    iput p3, p0, Lyads/as4;->c:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    instance-of v0, p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, v1

    :goto_0
    if-ne p4, v1, :cond_9

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-eqz p4, :cond_a

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    goto :goto_5

    :cond_1
    sub-int/2addr p4, v1

    const/4 v0, 0x0

    if-ne p2, p4, :cond_2

    move p4, v1

    goto :goto_1

    :cond_2
    move p4, v0

    :goto_1
    iget v2, p0, Lyads/as4;->c:I

    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_3

    goto :goto_5

    :cond_3
    if-eqz p4, :cond_4

    move p0, v0

    goto :goto_2

    :cond_4
    iget p0, p0, Lyads/as4;->a:I

    :goto_2
    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_5
    invoke-static {p3}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_7

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    move v1, v0

    goto :goto_3

    :cond_7
    move v1, p4

    :goto_3
    if-eqz v1, :cond_8

    move p0, v0

    goto :goto_4

    :cond_8
    iget p0, p0, Lyads/as4;->a:I

    :goto_4
    invoke-virtual {p1, v0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_9
    iget p2, p0, Lyads/as4;->a:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lyads/as4;->b:I

    div-int/lit8 p3, p3, 0x2

    iget p0, p0, Lyads/as4;->c:I

    if-eqz p0, :cond_c

    if-eq p0, v1, :cond_b

    :cond_a
    :goto_5
    return-void

    :cond_b
    invoke-virtual {p1, p3, p2, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_c
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

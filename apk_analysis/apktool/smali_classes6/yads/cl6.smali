.class public final Lyads/cl6;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lyads/ts1;

.field public final c:Lyads/rr1;


# direct methods
.method public constructor <init>(ILyads/ts1;Lyads/rr1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lyads/cl6;->a:I

    iput-object p2, p0, Lyads/cl6;->b:Lyads/ts1;

    iput-object p3, p0, Lyads/cl6;->c:Lyads/rr1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Lyads/cl6;->c:Lyads/rr1;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lyads/cl6;->a:I

    int-to-float v0, v0

    iget-object p0, p0, Lyads/cl6;->b:Lyads/ts1;

    iget p0, p0, Lyads/ts1;->h:F

    sub-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    sub-float/2addr v0, p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0

    :cond_1
    iget p0, p0, Lyads/cl6;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float v0, p0, p1

    goto :goto_1

    :cond_2
    iget v0, p0, Lyads/cl6;->a:I

    int-to-float v0, v0

    iget-object p0, p0, Lyads/cl6;->b:Lyads/ts1;

    iget p0, p0, Lyads/ts1;->g:F

    sub-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    goto :goto_0

    :goto_1
    invoke-static {v0}, Lw65;->b(F)I

    move-result p0

    return p0
.end method

.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p4

    iget-object v0, p0, Lyads/cl6;->b:Lyads/ts1;

    iget v1, v0, Lyads/ts1;->c:F

    iget v0, v0, Lyads/ts1;->e:F

    add-float/2addr v1, v0

    invoke-static {v1}, Lw65;->b(F)I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    iget-object v0, p0, Lyads/cl6;->b:Lyads/ts1;

    iget v1, v0, Lyads/ts1;->d:F

    iget v0, v0, Lyads/ts1;->f:F

    add-float/2addr v1, v0

    invoke-static {v1}, Lw65;->b(F)I

    move-result v0

    sub-int/2addr p3, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p2, p4, p3}, Landroid/view/View;->measure(II)V

    instance-of p3, p2, Lyads/ws1;

    if-eqz p3, :cond_0

    check-cast p2, Lyads/ws1;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lyads/pi2;->j()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object p3, p0, Lyads/cl6;->b:Lyads/ts1;

    iget-object p3, p3, Lyads/ts1;->i:Ljava/lang/Integer;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lyads/cl6;->a(Landroid/view/View;)I

    move-result p3

    :goto_1
    iget-object p4, p0, Lyads/cl6;->b:Lyads/ts1;

    iget-object p4, p4, Lyads/ts1;->j:Ljava/lang/Integer;

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    goto :goto_3

    :cond_3
    iget-object p4, p0, Lyads/cl6;->c:Lyads/rr1;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    if-eqz p4, :cond_6

    if-eq p4, v2, :cond_5

    if-ne p4, v1, :cond_4

    iget p4, p0, Lyads/cl6;->a:I

    int-to-float p4, p4

    iget-object v3, p0, Lyads/cl6;->b:Lyads/ts1;

    iget v3, v3, Lyads/ts1;->h:F

    sub-float/2addr p4, v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p4, v3

    goto :goto_2

    :cond_4
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_5
    iget p4, p0, Lyads/cl6;->a:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p4, v3

    int-to-float p4, p4

    div-float/2addr p4, v0

    goto :goto_2

    :cond_6
    iget-object p4, p0, Lyads/cl6;->b:Lyads/ts1;

    iget p4, p4, Lyads/ts1;->g:F

    :goto_2
    invoke-static {p4}, Lw65;->b(F)I

    move-result p4

    :goto_3
    iget-object v3, p0, Lyads/cl6;->b:Lyads/ts1;

    iget-object v3, v3, Lyads/ts1;->k:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    :cond_7
    invoke-virtual {p0, p2}, Lyads/cl6;->a(Landroid/view/View;)I

    move-result v3

    :goto_4
    iget-object v4, p0, Lyads/cl6;->b:Lyads/ts1;

    iget-object v4, v4, Lyads/ts1;->l:Ljava/lang/Integer;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_6

    :cond_8
    iget-object v4, p0, Lyads/cl6;->c:Lyads/rr1;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_b

    if-eq v4, v2, :cond_a

    if-ne v4, v1, :cond_9

    iget-object p0, p0, Lyads/cl6;->b:Lyads/ts1;

    iget p0, p0, Lyads/ts1;->h:F

    goto :goto_5

    :cond_9
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_a
    iget p0, p0, Lyads/cl6;->a:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p0, p2

    int-to-float p0, p0

    div-float/2addr p0, v0

    goto :goto_5

    :cond_b
    iget v0, p0, Lyads/cl6;->a:I

    int-to-float v0, v0

    iget-object p0, p0, Lyads/cl6;->b:Lyads/ts1;

    iget p0, p0, Lyads/ts1;->g:F

    sub-float/2addr v0, p0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float p0, v0, p0

    :goto_5
    invoke-static {p0}, Lw65;->b(F)I

    move-result p0

    :goto_6
    invoke-virtual {p1, p3, p4, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_c
    :goto_7
    return-void
.end method

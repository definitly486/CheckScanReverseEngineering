.class public final Lyads/mq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public a:I

.field public final synthetic b:Lyads/a62;


# direct methods
.method public constructor <init>(Lyads/a62;)V
    .locals 0

    iput-object p1, p0, Lyads/mq;->b:Lyads/a62;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lyads/mq;->a:I

    return-void
.end method


# virtual methods
.method public final a(IF)V
    .locals 3

    iget-object v0, p0, Lyads/mq;->b:Lyads/a62;

    iget-object v1, v0, Lyads/oq;->e:Lyads/pg6;

    if-eqz v1, :cond_7

    iget-object v0, v0, Lyads/oq;->f:Lyads/og6;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast v0, Lyads/cq;

    sget v2, Lyads/rv3;->a:I

    sget-object v2, Lyads/vj5;->b:[Lyads/vj5;

    iput p1, v0, Lyads/cq;->e:I

    iput p2, v0, Lyads/cq;->f:F

    iget-boolean v0, v1, Lyads/pg6;->d:Z

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, v1, Lyads/pg6;->a:Lyads/og6;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lyads/og6;->a(IF)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, v1, Lyads/pg6;->c:Landroid/graphics/Rect;

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, v1, Lyads/pg6;->c:Landroid/graphics/Rect;

    :cond_3
    invoke-virtual {v1, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ne p2, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v2, v1, Lyads/pg6;->e:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_0
    invoke-interface {v0, p2, v2}, Lyads/og6;->a(II)I

    move-result p2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_7

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p2, p1, :cond_7

    if-gt v0, p2, :cond_7

    :goto_1
    iget-object p1, p0, Lyads/mq;->b:Lyads/a62;

    iget-object p1, p1, Lyads/oq;->e:Lyads/pg6;

    invoke-virtual {p1}, Landroid/view/View;->isInLayout()Z

    move-result p1

    iget-object p0, p0, Lyads/mq;->b:Lyads/a62;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lyads/oq;->e:Lyads/pg6;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lx;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Lx;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    iget-object p0, p0, Lyads/oq;->e:Lyads/pg6;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_7
    :goto_2
    return-void
.end method

.method public final onPageScrollStateChanged(I)V
    .locals 3

    iput p1, p0, Lyads/mq;->a:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lyads/mq;->b:Lyads/a62;

    iget-object p1, p1, Lyads/oq;->c:Lyads/ld5;

    invoke-virtual {p1}, Lyads/pb5;->getCurrentItem()I

    move-result p1

    iget-object v0, p0, Lyads/mq;->b:Lyads/a62;

    iget-object v1, v0, Lyads/oq;->f:Lyads/og6;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lyads/oq;->e:Lyads/pg6;

    if-eqz v0, :cond_0

    check-cast v1, Lyads/cq;

    sget v2, Lyads/rv3;->a:I

    sget-object v2, Lyads/vj5;->b:[Lyads/vj5;

    iput p1, v1, Lyads/cq;->e:I

    const/4 v2, 0x0

    iput v2, v1, Lyads/cq;->f:F

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    iget-object v0, p0, Lyads/mq;->b:Lyads/a62;

    iget-boolean v1, v0, Lyads/oq;->l:Z

    if-nez v1, :cond_3

    iget-object v0, v0, Lyads/oq;->b:Lyads/gq;

    check-cast v0, Lyads/uu5;

    iget-object v1, v0, Lyads/nr;->b:Lyads/kr;

    if-eqz v1, :cond_1

    iget v1, v1, Lyads/kr;->b:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    if-eq v1, p1, :cond_3

    iget-object v0, v0, Lyads/nr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/kr;

    if-eqz p1, :cond_3

    iget-object v0, p1, Lyads/kr;->c:Lyads/nr;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lyads/nr;->b(Lyads/kr;Z)V

    goto :goto_1

    :cond_2
    const-string p0, "Tab not attached to a TabLayout"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    iget-object p0, p0, Lyads/mq;->b:Lyads/a62;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyads/oq;->l:Z

    :cond_4
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    iget p3, p0, Lyads/mq;->a:I

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lyads/mq;->a(IF)V

    :cond_0
    iget-object p0, p0, Lyads/mq;->b:Lyads/a62;

    iget-boolean p3, p0, Lyads/oq;->l:Z

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lyads/oq;->b:Lyads/gq;

    invoke-interface {p0, p1, p2}, Lyads/gq;->setIntermediateState(IF)V

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lyads/mq;->b:Lyads/a62;

    iget-object v1, v0, Lyads/oq;->f:Lyads/og6;

    if-nez v1, :cond_0

    iget-object p0, v0, Lyads/oq;->c:Lyads/ld5;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_0
    iget p0, p0, Lyads/mq;->a:I

    if-nez p0, :cond_1

    iget-object p0, v0, Lyads/oq;->e:Lyads/pg6;

    if-eqz p0, :cond_1

    check-cast v1, Lyads/cq;

    sget v0, Lyads/rv3;->a:I

    sget-object v0, Lyads/vj5;->b:[Lyads/vj5;

    iput p1, v1, Lyads/cq;->e:I

    const/4 p1, 0x0

    iput p1, v1, Lyads/cq;->f:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

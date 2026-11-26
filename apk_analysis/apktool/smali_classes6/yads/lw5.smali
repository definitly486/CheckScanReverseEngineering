.class public final Lyads/lw5;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/nw5;


# direct methods
.method public constructor <init>(Lyads/nw5;)V
    .locals 0

    iput-object p1, p0, Lyads/lw5;->a:Lyads/nw5;

    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lyads/nd3;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyads/lw5;->a:Lyads/nw5;

    iget-object v0, v0, Lyads/nw5;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lyads/lw5;->a:Lyads/nw5;

    iget-object v0, v0, Lyads/nw5;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_3
    iget-object p0, p0, Lyads/lw5;->a:Lyads/nw5;

    iget-object p0, p0, Lyads/nw5;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/nd3;

    return-object p0
.end method

.method public final getVirtualViewAt(FF)I
    .locals 6

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object p0, p0, Lyads/lw5;->a:Lyads/nw5;

    iget-object v1, p0, Lyads/nw5;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Lyads/nd3;

    iget-object v3, v3, Lyads/nd3;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v3, v5}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    invoke-static {}, Lu96;->o()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final getVisibleVirtualViews(Ljava/util/List;)V
    .locals 3

    iget-object p0, p0, Lyads/lw5;->a:Lyads/nw5;

    iget-object p0, p0, Lyads/nw5;->n:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_0

    check-cast v1, Lyads/nd3;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lu96;->o()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public final onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lyads/lw5;->a(I)Lyads/nd3;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lyads/nd3;->f:Lyads/ld3;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lyads/ld3;->c:Lyads/md3;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x10

    if-ne p2, p3, :cond_1

    check-cast p0, Lnga;

    iget-object p1, p0, Lnga;->a:Lyads/vq0;

    iget-object p2, p0, Lnga;->b:Lyads/tt;

    iget-object p3, p0, Lnga;->c:Lyads/an2;

    iget-object p0, p0, Lnga;->d:Ljava/util/List;

    invoke-static {p1, p2, p3, p0}, Lyads/wo5;->a(Lyads/vq0;Lyads/tt;Landroid/widget/TextView;Ljava/util/List;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5

    invoke-virtual {p0, p1}, Lyads/lw5;->a(I)Lyads/nd3;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lyads/nd3;->f:Lyads/ld3;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lyads/ld3;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lyads/lw5;->a:Lyads/nw5;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p1, Lyads/nd3;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Lw65;->b(F)I

    move-result v1

    iget-object v2, p1, Lyads/nd3;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Lw65;->b(F)I

    move-result v2

    iget-object v3, p1, Lyads/nd3;->h:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Lw65;->b(F)I

    move-result v3

    iget-object v4, p1, Lyads/nd3;->h:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Lw65;->b(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lyads/lw5;->a:Lyads/nw5;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->offset(II)V

    iget-object p0, p1, Lyads/nd3;->f:Lyads/ld3;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lyads/ld3;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lyads/nd3;->f:Lyads/ld3;

    if-eqz p0, :cond_3

    iget-object v1, p0, Lyads/ld3;->c:Lyads/md3;

    :cond_3
    if-nez v1, :cond_4

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    goto :goto_2

    :cond_4
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    const/16 p0, 0x10

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :goto_2
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

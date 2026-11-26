.class public final Lyads/rr2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lyads/qr2;
    .locals 7

    invoke-static {p1}, Lyads/ih6;->a(Landroid/view/View;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lyads/eh6;->a(Landroid/view/View;)I

    move-result p0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz v1, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-static {p1, v2}, Lyads/ip0;->a(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-static {v3}, Lw65;->b(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-static {v4}, Lw65;->b(F)I

    move-result v4

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, v1

    div-float/2addr v1, p1

    invoke-static {v1}, Lw65;->b(F)I

    move-result p1

    int-to-float p1, p1

    sub-float v1, v4, v2

    sub-float v5, p1, v3

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    if-lez v1, :cond_2

    cmpl-float v1, v5, v6

    if-lez v1, :cond_2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v3, v4, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_1
    new-instance p1, Lyads/qr2;

    invoke-direct {p1, p0, v0}, Lyads/qr2;-><init>(ILandroid/graphics/RectF;)V

    return-object p1
.end method
